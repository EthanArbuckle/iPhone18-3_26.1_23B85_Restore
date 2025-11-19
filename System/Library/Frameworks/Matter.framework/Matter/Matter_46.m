uint64_t sub_2394D9C58(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = sub_2393C6B34(a2);
  if (!v4)
  {
    v5 = 0x30C000000B5;
    v6 = "src/app/ReadClient.cpp";
    do
    {
      sub_2393C5AAC(v44);
      sub_2393DD178(v43);
      sub_2393DD178(v42);
      sub_2393DD178(v41);
      sub_2393DD178(v40);
      v35 = 0;
      v36 = 0;
      v38 = 0;
      memset(v37, 0, 11);
      v33 = 0;
      v34 = 0;
      v7 = *(a2 + 48);
      v31[2] = *(a2 + 32);
      v31[3] = v7;
      v32 = *(a2 + 64);
      v8 = *(a2 + 16);
      v31[0] = *a2;
      v31[1] = v8;
      v9 = sub_2393DD7F4(v43, v31);
      if (v9)
      {
LABEL_58:
        v5 = v9;
        goto LABEL_59;
      }

      v10 = sub_2393DB43C(v43, v41);
      if (v10 == 33)
      {
        v9 = sub_2393DB490(v43, v42);
        if (v9)
        {
          goto LABEL_58;
        }

        v9 = sub_2393DA78C(v42, v40);
        if (v9)
        {
          goto LABEL_58;
        }

        if (sub_2393DAC08(v40, &v35, 1))
        {
          goto LABEL_59;
        }

        if (!sub_2394DA694(&v35))
        {
          v25 = sub_2393D9044(0xDu);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v53[0] = 67110144;
            v53[1] = v35;
            v54 = 1024;
            v55 = HIWORD(v37[0]);
            v56 = 1024;
            v57 = LOWORD(v37[0]);
            v58 = 1024;
            v59 = HIWORD(v37[1]);
            v60 = 1024;
            v61 = LOWORD(v37[1]);
            _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Skipping AttributeDataIB  with out-of-range IDs: (%d, 0x%04X_%04X, 0x%04X_%04X) ", v53, 0x20u);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_56;
          }

LABEL_51:
          sub_2393D5320(0xDu, 1);
          goto LABEL_56;
        }

        v30 = 0;
        v9 = sub_2393DA7E0(v42, &v30);
        if (v9)
        {
          goto LABEL_58;
        }

        v38 = 1;
        v39 = v30;
        if (*(a1 + 280) && *(a1 + 288))
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = *(a1 + 280);
            if (*(v15 + v13 + 12) == v35 && *(v15 + v13) == v37[0])
            {
              v16 = v15 + v13;
              v17 = v38;
              *(v16 + 4) = v38;
              if (v17 == 1)
              {
                *(v16 + 8) = v39;
              }
            }

            ++v14;
            v13 += 16;
          }

          while (v14 < *(a1 + 288));
        }

        v9 = sub_2393DA7F0(v42, v44);
        if (v9)
        {
          goto LABEL_58;
        }

        if (!BYTE2(v37[2]))
        {
          BYTE2(v37[2]) = sub_2393C5C40(v44) == 22;
        }

        if (!v35 && v37[0] == 70 && v37[1] == 8)
        {
          v29 = 0;
          sub_2393C5AAC(v53);
          v20 = sub_2393C5BDC(v19, v44);
          if (sub_2394DA598(v20, v53, &v29))
          {
            v21 = v6;
            v22 = sub_2393D9044(0xDu);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = sub_2393C9138();
              buf = 136315138;
              *v46 = v23;
              _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Failed to get ICD state from attribute data with error'%s'", &buf, 0xCu);
            }

            v6 = v21;
            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              sub_2393D5320(0xDu, 1);
            }
          }

          else
          {
            v26 = sub_2394C7C20();
            sub_2394CB080(v26, *(a1 + 64), *(a1 + 72), v29);
          }
        }

        if ((*(a1 + 49) & 1) == 0)
        {
          (*(**(a1 + 40) + 24))(*(a1 + 40));
          *(a1 + 49) = 1;
        }

        (*(**(a1 + 40) + 48))(*(a1 + 40), &v35, v44, &v33, v18);
      }

      else if (!v10)
      {
        sub_2393DD178(v53);
        v9 = sub_2393DB6C8(v41, v40);
        if (v9)
        {
          goto LABEL_58;
        }

        if (sub_2393DAC08(v40, &v35, 1))
        {
          v11 = 0x30C000000B5;
        }

        else
        {
          v11 = 0;
        }

        if ((v11 & 0xB5) != 0)
        {
          v5 = v11;
          goto LABEL_59;
        }

        if (!sub_2394DA694(&v35))
        {
          v24 = sub_2393D9044(0xDu);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            buf = 67110144;
            *v46 = v35;
            *&v46[4] = 1024;
            *&v46[6] = HIWORD(v37[0]);
            v47 = 1024;
            v48 = LOWORD(v37[0]);
            v49 = 1024;
            v50 = HIWORD(v37[1]);
            v51 = 1024;
            v52 = LOWORD(v37[1]);
            _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Skipping AttributeStatusIB with out-of-range IDs: (%d, 0x%04X_%04X, 0x%04X_%04X) ", &buf, 0x20u);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        v9 = sub_2393DB490(v41, v53);
        if (v9)
        {
          goto LABEL_58;
        }

        v9 = sub_2393DD458(v53, &v33);
        if (v9)
        {
          goto LABEL_58;
        }

        if ((*(a1 + 49) & 1) == 0)
        {
          (*(**(a1 + 40) + 24))(*(a1 + 40));
          *(a1 + 49) = 1;
        }

        (*(**(a1 + 40) + 48))(*(a1 + 40), &v35, 0, &v33, v12);
      }

LABEL_56:
      v4 = sub_2393C6B34(a2);
    }

    while (!v4);
  }

  if (v4 == 33)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

LABEL_59:
  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2394DA288(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 3)
  {
    v2 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
    (*(*v2 + 72))(v2, sub_2394DA91C, a1);
    result = sub_2394DA7E0(a1, &v15);
    if (!result)
    {
      v4 = sub_2393D9044(0xDu);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      v6 = v15;
      if (v5)
      {
        v7 = *(a1 + 60);
        v8 = *(a1 + 72);
        v9 = *(a1 + 64);
        *buf = 134219008;
        v17 = v15;
        v18 = 1024;
        v19 = v7;
        v20 = 1024;
        v21 = v8;
        v22 = 1024;
        v23 = HIDWORD(v9);
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Refresh LivenessCheckTime for %lu milliseconds with SubscriptionId = 0x%08x Peer = %02x:%08X%08X", buf, 0x24u);
      }

      if (sub_2393D5398(2u))
      {
        v14 = HIDWORD(*(a1 + 64));
        v12 = *(a1 + 60);
        v13 = *(a1 + 72);
        sub_2393D5320(0xDu, 2);
      }

      v10 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
      result = (*(*v10 + 40))(v10, v6, sub_2394DA91C, a1);
    }
  }

  else
  {
    result = 0x3C900000003;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DA468(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    *buf = 67109376;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Time out! failed to receive report data from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 1);
  }

  result = sub_2394D7E80(a1, 0x2E900000032, "src/app/ReadClient.cpp", 1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394DA598(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = 0;
  result = sub_238EFF894(a2, &v5);
  if (!result)
  {
    if (v5 > 1u)
    {
      return 0x2FC0000002FLL;
    }

    else
    {
      *a3 = v5;
    }
  }

  return result;
}

uint64_t sub_2394DA5F8(uint64_t a1, int *a2, _WORD *a3)
{
  if (sub_2393DAC08(a2, a3, 1))
  {
    return 0x30C000000B5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394DA638(uint64_t result)
{
  if ((*(result + 49) & 1) == 0)
  {
    v1 = result;
    result = (*(**(result + 40) + 24))(*(result + 40));
    *(v1 + 49) = 1;
  }

  return result;
}

BOOL sub_2394DA694(__int16 *a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v1 = *(a1 + 1);
  if (v1 >= 0xFFF50000)
  {
    return 0;
  }

  if (v1 < 0x8000 || (v2 = 0, v1 >= 0x10000) && (v1 + 1024) <= 0x3FEu)
  {
    v3 = *(a1 + 2);
    return v3 < 0xFFF50000 && v3 < 0x5000u || v3 < 0x10000 && v3 - 61440 < 0xFFF;
  }

  return v2;
}

uint64_t sub_2394DA718(uint64_t result, unsigned __int16 *a2)
{
  if (*(result + 288))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(result + 280);
      if (*(v4 + v2 + 12) == *a2 && *(v4 + v2) == *(a2 + 1))
      {
        v5 = v4 + v2;
        v6 = *(a2 + 16);
        *(v5 + 4) = v6;
        if (v6 == 1)
        {
          *(v5 + 8) = *(a2 + 5);
        }
      }

      ++v3;
      v2 += 16;
    }

    while (v3 < *(result + 288));
  }

  return result;
}

uint64_t sub_2394DA784(uint64_t a1, int a2)
{
  *(a1 + 332) = a2;
  result = sub_2394DA288(a1);
  if (result)
  {

    return sub_2394D7E80(a1, result, v4, 1);
  }

  return result;
}

uint64_t sub_2394DA7E0(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 332);
  if (v3)
  {
    goto LABEL_4;
  }

  v5 = (a1 + 232);
  if (*(a1 + 232) == 1)
  {
    v6 = sub_238DE36B8((a1 + 232));
    v7 = (*(**v6 + 88))(*v6);
    v8 = sub_238DE36B8(v5);
    v9 = (*(**v8 + 120))(*v8, 0, 1);
    v11 = *v7;
    v10 = *(v7 + 4);
    v12 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    v3 = v9 + sub_239476070(v10, v11, v12, *(v7 + 8), 0) + 1000 * *(a1 + 56) + 2000;
LABEL_4:
    result = 0;
    *a2 = v3;
    return result;
  }

  return 0x3E300000003;
}

uint64_t sub_2394DA91C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!sub_2394CB44C(*(a2 + 200), a2))
  {
    sub_2395374EC();
  }

  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a2 + 60);
    v5 = *(a2 + 72);
    v6 = *(a2 + 64);
    *buf = 67109888;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = HIDWORD(v6);
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Subscription Liveness timeout with SubscriptionID = 0x%08x, Peer = %02x:%08X%08X", buf, 0x1Au);
  }

  if (sub_2393D5398(1u))
  {
    v12 = HIDWORD(*(a2 + 64));
    v10 = *(a2 + 60);
    v11 = *(a2 + 72);
    sub_2393D5320(0xDu, 1);
  }

  v7 = 0x41400000032;
  if (*(a2 + 336) == 1 && *(a2 + 323))
  {
    v7 = 0x42700000016;
  }

  result = sub_2394D8DEC(a2, v7, "src/app/ReadClient.cpp");
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DAA64(uint64_t a1, uint64_t a2)
{
  *(a1 + 106) = 0;
  sub_2394DAAC0(a1 + 208, a2);
  v3 = sub_2394D8640(a1, a1 + 208);
  if (v3)
  {
    sub_2394D7864(a1);
  }

  return v3;
}

uint64_t sub_2394DAAC0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *(a1 + 112) = *(a2 + 112);
    sub_239495AE0(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    v4 = *(a2 + 88);
    *(a1 + 88) = v4;
    if (v4 == 1)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 108) = *(a2 + 108);
    *(a1 + 110) = *(a2 + 110);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
    *(a1 + 114) = *(a2 + 114);
    *(a1 + 115) = *(a2 + 115);
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
  }

  return a1;
}

uint64_t sub_2394DAB84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 72) = *(a2 + 8);
  *(a1 + 64) = v4;
  sub_2394DAAC0(a1 + 208, a3);
  v5 = sub_2394DABEC(a1);
  if (v5)
  {
    sub_2394D7864(a1);
  }

  return v5;
}

uint64_t sub_2394DABEC(uint64_t a1)
{
  v2 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Trying to establish a CASE session for subscription", v7, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xDu, 2);
  }

  v3 = *(sub_2394C7C20() + 211);
  if (v3)
  {
    sub_2394C4C84(v3, (a1 + 64), (a1 + 112), a1 + 152, 1, 0, 0);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0x5CA00000000;
    v5 = 3;
  }

  return v5 | v4;
}

uint64_t sub_2394DACC0(uint64_t a1, uint64_t a2)
{
  v73[5] = *MEMORY[0x277D85DE8];
  *buf = 0;
  v63 = "core_dev_subscription_setup";
  BYTE4(v64) = 0;
  sub_23948BD20(buf);
  *(a1 + 344) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  if (*(a1 + 48))
  {
    result = 0x4A000000003;
    goto LABEL_28;
  }

  if (a1 + 208 != a2)
  {
    sub_239495AE0(a1 + 208, a2);
  }

  *(a1 + 336) = *(a2 + 114);
  v5 = *(a2 + 115);
  *(a1 + 323) = v5;
  if (v5 == 1)
  {
    v6 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      *buf = 67109632;
      *&buf[4] = HIDWORD(v7);
      LOWORD(v63) = 1024;
      *(&v63 + 2) = v7;
      HIWORD(v63) = 1024;
      LODWORD(v64) = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "ICD Check-In token has been registered in peer device <%08X%08X, %d>", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      v45 = *(a1 + 64);
      v46 = *(a1 + 72);
      sub_2393D5320(0xDu, 2);
    }
  }

  *(a1 + 54) = *(a2 + 108);
  sub_238DB9BD8(&v60, *(a2 + 56), *(a2 + 64));
  sub_2394DB5F0(v59, *(a2 + 40), *(a2 + 48));
  sub_2394DB5F0(v58, *(a2 + 72), *(a2 + 80));
  v57 = 0;
  sub_2393C7B90(v54);
  v55[1] = 0;
  v55[2] = 0;
  v55[0] = &unk_284BB83A8;
  v56 = 0;
  sub_2393DB79C(buf);
  sub_2393DB79C(&v65);
  sub_2393DB79C(&v66);
  sub_2393DB79C(&v67);
  sub_2393DB79C(&v68);
  sub_2393DB79C(&v69);
  sub_2393DB79C(&v70);
  sub_2393DB79C(&v71);
  sub_2393DB79C(&v72);
  sub_2393DB79C(v73);
  sub_2394D86E0(v54);
  v9 = sub_2393DD7B8(buf, v54);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = sub_2393DAE68(buf, *(a2 + 112));
  v11 = sub_2393DB890(v10, *(a2 + 108));
  sub_2393DAEE8(v11, *(a2 + 110));
  if (v61)
  {
    v12 = sub_2393DDA44(buf);
    v9 = *v12;
    if (*v12)
    {
      goto LABEL_23;
    }

    v9 = sub_2394D8780(v12, v12, &v60);
    if (v9)
    {
      goto LABEL_24;
    }
  }

  if (!v59[1])
  {
    goto LABEL_22;
  }

  v12 = sub_2393DDAC4(buf);
  v9 = *v12;
  if (!*v12)
  {
    v9 = sub_2394D8858(v12, v12, v59);
    if (v9)
    {
      goto LABEL_24;
    }

    LOBYTE(v49) = 0;
    v9 = sub_2394D8930(a1, a2, &v49);
    if (v9)
    {
      goto LABEL_24;
    }

    if (v49 == 1)
    {
      v13 = sub_2393DDB04(buf);
      v9 = *buf;
      if (*buf)
      {
        goto LABEL_24;
      }

      v14 = v13;
      v15 = sub_239289A18(&v49);
      v9 = sub_2393DC3F4(v14, *v15);
      if (v9)
      {
        goto LABEL_24;
      }
    }

LABEL_22:
    v12 = sub_2393DDB44(buf, *(a2 + 113));
    v9 = *v12;
    if (!*v12)
    {
      v53 = 0;
      sub_2393C7B90(&v49);
      v20 = v64[3];
      v22 = *v64;
      v21 = v64[1];
      v51 = v64[2];
      v52 = v20;
      v49 = v22;
      v50 = v21;
      v23 = sub_2393DDA84(buf);
      v9 = *buf;
      if (*buf)
      {
        goto LABEL_24;
      }

      v24 = v23;
      if (v61)
      {
        v9 = sub_2394D8A00(a1, v23, &v60, v58, &v53);
        if (v9)
        {
          goto LABEL_24;
        }
      }

      v25 = v24[2];
      if (*(v25 + 60) != 21169)
      {
        v17 = 0xAF00000000;
        LODWORD(v9) = 3;
        goto LABEL_25;
      }

      v26 = *(v25 + 52);
      v27 = v26 >= 5;
      v28 = v26 - 5;
      if (!v27)
      {
        v17 = 0xB000000000;
        LODWORD(v9) = 11;
        goto LABEL_25;
      }

      *(v25 + 52) = v28;
      *(v25 + 40) += 5;
      if (v53 == 1)
      {
        v9 = sub_2393DA87C(v24);
        if (v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v29 = v64;
        v30 = v49;
        v31 = v50;
        v32 = v52;
        v64[2] = v51;
        v29[3] = v32;
        *v29 = v30;
        v29[1] = v31;
        sub_2393D06DC(buf);
      }

      v9 = sub_2393DD3D4(buf);
      if (!v9)
      {
        v9 = sub_238DD2EFC(v54, &v57);
        if (!v9)
        {
          if (*(a2 + 24) != 1)
          {
            v17 = 0x4F400000000;
            LODWORD(v9) = 119;
            goto LABEL_25;
          }

          v33 = *(a1 + 8);
          sub_238EA903C(a2, &v47);
          v34 = sub_238DE36B8(&v47);
          v35 = sub_239471E34(v33, v34, a1, 1u);
          if (v47 == 1)
          {
            (*(*v48 + 32))(v48);
          }

          if (!v35)
          {
            v38 = sub_238DE36B8((a2 + 24));
            v39 = sub_239495304(*v38);
            v40 = (*(*v39 + 40))(v39);
            if (v40)
            {
              LODWORD(v9) = 11;
            }

            else
            {
              LODWORD(v9) = 3;
            }

            v17 = 0x4FF00000000;
            if (v40)
            {
              v17 = 0x4FB00000000;
            }

            goto LABEL_25;
          }

          sub_238EF9EEC(a1 + 16);
          *(a1 + 32) = v35;
          v35[5] = a1 + 16;
          v36 = *(a2 + 104);
          v37 = sub_2393B59AC(a1 + 16);
          if (v36)
          {
            sub_239470470(v37, *(a2 + 104));
          }

          else
          {
            sub_239470428(v37, 2000);
          }

          v41 = sub_2393B59AC(a1 + 16);
          v47 = 1;
          v9 = sub_239470478(v41, 0x10000u, 3, &v57, &v47);
          if (!v9)
          {
            v42 = sub_238DE36B8((a2 + 24));
            v43 = sub_239495304(*v42);
            *(a1 + 64) = (*(*v43 + 48))(v43);
            *(a1 + 72) = v44;
            sub_2394D7718(a1, 1u);
            LODWORD(v9) = 0;
            v17 = 0;
            goto LABEL_25;
          }
        }
      }

      goto LABEL_24;
    }
  }

LABEL_23:
  v16 = v12[1];
LABEL_24:
  v17 = v9;
LABEL_25:
  v18 = v17 & 0xFFFFFFFF00000000;
  sub_2393B8400(v55);
  if (v57)
  {
    sub_2393D96C8(v57);
  }

  result = v18 | v9;
LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394DB314(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2 == 22)
  {
    v3 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "ICD device is inactive, skipping scheduling resubscribe within DefaultResubscribePolicy", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    LODWORD(v4) = 1308;
    v5 = 22;
  }

  else if (*(a1 + 48))
  {
    LODWORD(v4) = 1311;
    v5 = 3;
  }

  else
  {
    v7 = sub_2394D7B4C(a1);
    v8 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 64);
      v11 = *(a1 + 328);
      *buf = 67110402;
      v21 = v9;
      v22 = 1024;
      v23 = HIDWORD(v10);
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = v7;
      v30 = 2080;
      v31 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Will try to resubscribe to %02x:%08X%08X at retry index %u after %ums due to error %s", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 64);
      v14 = *(a1 + 328);
      sub_2393C9138();
      sub_2393D5320(0xDu, 2);
    }

    v18[0] = 0;
    v15 = sub_2394D7BD8(a1, v7, v18, a2 == 50);
    v5 = v15;
    v4 = HIDWORD(v15);
    if (v18[0] == 1)
    {
      (*(*v19 + 32))(v19);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5 | (v4 << 32);
}

uint64_t sub_2394DB584@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 80) == 1 && *(result + 48) == 3)
  {
    result = sub_2394DA7E0(result, &v4);
    if (result)
    {
      v3 = 0;
    }

    else
    {
      *(a2 + 4) = v4;
      v3 = 1;
    }

    *a2 = v3;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *sub_2394DB5F0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_23953208C();
    }
  }

  return result;
}

uint64_t sub_2394DB610(void ***a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4 && *(a2 + 57) == 2 && **a1[1] >= *(a2 + 136))
  {
    sub_239493108(a2);
  }

  return 0;
}

double sub_2394DB6A8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1;
  *(a1 + 96) = sub_2394DB6E8;
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1;
  *(a1 + 136) = sub_2394DB870;
  return result;
}

void **sub_2394DB6E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a1;
  v5 = sub_2394C7C20();
  sub_2394CCABC(v5);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  if (sub_2394CA004(v5, *(a1 + 8)))
  {
    v13 = v5[177];
    v8 = sub_2394DBC04(v5 + 199, v5, &v13);
    if (v8)
    {
      sub_2393B87B8(v8, a3, a1);
      *(a1 + 16) = 0;
      sub_2394CCAD0(v5);
      v9 = *(sub_2394C7C20() + 212);
      if (v9)
      {
        (*(*v9 + 24))(v9, a1);
      }

      return sub_2394DBCA0(&v14);
    }

    v11 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "no resource for ReadHandler creation", &v13, 2u);
    }

    if (sub_2393D5398(2u))
    {
LABEL_12:
      sub_2393D5320(0x23u, 2);
    }
  }

  else
  {
    v10 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "no resource for subscription resumption", &v13, 2u);
    }

    if (sub_2393D5398(2u))
    {
      goto LABEL_12;
    }
  }

  return sub_2394DBCA0(&v14);
}

void **sub_2394DB870(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v2 = sub_2394C7C20();
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to establish CASE for subscription-resumption with error '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xDu, 1);
  }

  sub_2394CCABC(v2);
  v4 = v2[212];
  if (v4)
  {
    if (*(a1 + 4) > 0xAu)
    {
      (*(*v4 + 32))(v2[212], *a1, *(a1 + 8), *(a1 + 3));
      sub_2394CCAD0(v2);
    }

    else
    {
      v5 = sub_2394C7C20();
      sub_2394C8B00(v5);
      ++*(a1 + 4);
      (*(*v4 + 24))(v4, a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to get subscription resumption storage", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }
  }

  result = sub_2394DBCA0(&v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DBA78(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = *a3;
  *(a1 + 8) = *(a3 + 8);
  *(a1 + 3) = *(a3 + 3);
  *(a1 + 10) = *(a3 + 10);
  *(a1 + 11) = *(a3 + 11);
  *(a1 + 24) = *(a3 + 24);
  *(a1 + 4) = *(a3 + 4);
  v6 = a3[5];
  if (v6)
  {
    sub_2393C56C0(a1 + 4, 12 * v6);
    if (!a1[4])
    {
      v19 = 0x3E00000000;
      goto LABEL_12;
    }

    v7 = 0;
    v8 = 0;
    a1[5] = v6;
    do
    {
      v9 = (a3[4] + v7);
      v10 = a1[4] + v7;
      v11 = *v9;
      *(v10 + 8) = *(v9 + 2);
      *v10 = v11;
      ++v8;
      v7 += 12;
    }

    while (v8 < a1[5]);
  }

  v12 = a3[7];
  if (v12)
  {
    sub_2393C56C0(a1 + 6, 12 * v12);
    if (a1[6])
    {
      v13 = 0;
      v14 = 0;
      a1[7] = v12;
      do
      {
        v15 = (a3[6] + v13);
        v16 = a1[6] + v13;
        v17 = *v15;
        *(v16 + 8) = *(v15 + 2);
        *v16 = v17;
        ++v14;
        v13 += 12;
      }

      while (v14 < a1[7]);
      goto LABEL_9;
    }

    v19 = 0x4A00000000;
LABEL_12:
    v20 = 11;
    return v20 | v19;
  }

LABEL_9:
  v18 = *(a1 + 8);
  v22 = *a1;
  v23 = v18;
  sub_2394C49D8(a2, &v22, a1 + 8, (a1 + 13), 1, 0, 0);
  v19 = 0;
  v20 = 0;
  return v20 | v19;
}

void *sub_2394DBC04(unint64_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_2393D52C4(0xD8uLL);
  v7 = v6;
  if (v6)
  {
    sub_2393B87B4(v6, a2 + 40, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void **sub_2394DBCA0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[15];
    if (v3)
    {
      v2[15] = 0;
      v3(v2 + 13);
    }

    v4 = v2[10];
    if (v4)
    {
      v2[10] = 0;
      v4(v2 + 8);
    }

    v5 = v2[6];
    if (v5)
    {
      j__free(v5);
      v2[6] = 0;
    }

    v6 = v2[4];
    if (v6)
    {
      j__free(v6);
      v2[4] = 0;
    }

    j__free(v2);
  }

  return a1;
}

uint64_t sub_2394DBD1C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBDEB8;
  *(a1 + 8) = a2;
  sub_2393DB79C(a1 + 16);
  sub_2393DB79C(a1 + 48);
  sub_2393DB79C(a1 + 80);
  sub_2393DB79C(a1 + 112);
  sub_2393DB79C(a1 + 144);
  sub_2393DB79C(a1 + 176);
  sub_2393DB79C(a1 + 208);
  sub_2393DB79C(a1 + 240);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = -1;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1 + 304;
  *(a1 + 312) = a1 + 304;
  sub_2393C7B90(a1 + 320);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = &unk_284BB83A8;
  *(a1 + 408) = 0;
  sub_2393C7B90(a1 + 416);
  *(a1 + 480) = 1;
  *(a1 + 488) = &unk_284BBDF68;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 518) = 0;
  *(a1 + 508) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = a1 + 488;
  *(a1 + 528) = 0;
  *(a1 + 530) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 546) = 0;
  return a1;
}

uint64_t sub_2394DBE48(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2394DBD1C(a1, a3);
  if (*a2)
  {
    *(a1 + 480) = (*(**a2 + 48))(*a2);
    *(a1 + 520) = *a2;
  }

  v5 = a2[1];
  if (v5)
  {
    sub_2394DBEC0(a1, v5);
  }

  return a1;
}

uint64_t sub_2394DBEC0(uint64_t result, uint64_t a2)
{
  if (*(result + 544))
  {
    sub_239537584();
  }

  *(result + 536) = a2;
  return result;
}

void *sub_2394DBEE0(void *a1)
{
  *a1 = &unk_284BBDEB8;
  sub_2394DBF34(a1);
  sub_2393B8400(a1 + 48);
  sub_239493D14(a1 + 38);
  return a1;
}

void *sub_2394DBF34(uint64_t a1)
{
  v2 = (a1 + 304);
  result = *(a1 + 312);
  if (result == v2)
  {
    goto LABEL_6;
  }

  do
  {
    result[2] = 0;
    result = result[1];
  }

  while (result != v2);
  while (1)
  {
    result = *(a1 + 312);
LABEL_6:
    if (result == v2)
    {
      break;
    }

    sub_23948BDE8(result);
  }

  return result;
}

void sub_2394DBF8C(void *a1)
{
  sub_2394DBEE0(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394DBFC4(uint64_t a1)
{
  if (!*(a1 + 536) || (*(a1 + 549) & 1) != 0)
  {
    v2 = 0x4100000000;
    LODWORD(v3) = 3;
    return v2 | v3;
  }

  if (*(a1 + 550))
  {
LABEL_18:
    LODWORD(v3) = 0;
    v2 = 0;
    return v2 | v3;
  }

  sub_2394C57B0(a1 + 320);
  v4 = (*(**(a1 + 536) + 72))(*(a1 + 536));
  sub_2393D9C18(v4, 0x26u, &v10);
  if (!v10)
  {
    v2 = 0x4900000000;
    LODWORD(v3) = 11;
    return v2 | v3;
  }

  if (sub_2393D980C(v10) <= v4)
  {
    v5 = 16;
  }

  else
  {
    v5 = sub_2393D980C(v10) - v4 + 16;
  }

  sub_238EA16C4(a1 + 384, &v10, 0);
  sub_2393C7BF0(a1 + 320, a1 + 384, 0xFFFFFFFF);
  v3 = sub_2393DCD60(a1 + 16, a1 + 320);
  if (v3)
  {
    goto LABEL_14;
  }

  if (*(a1 + 551) == 1)
  {
    v3 = sub_2393DCEBC(a1 + 16);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  v3 = sub_2393C7D60(*(a1 + 32), v5);
  if (v3)
  {
    goto LABEL_14;
  }

  sub_2393DAE68((a1 + 16), 0);
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
    v8 = *(a1 + 24);
  }

  else
  {
    v6 = 1;
    sub_2393DCDBC((a1 + 16), 1);
    v3 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v3)
    {
LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }

    *(a1 + 550) = 1;
    sub_2394DC184(a1, 1);
  }

LABEL_15:
  v2 = v3 & 0xFFFFFFFF00000000;
  if (v10)
  {
    sub_2393D96C8(v10);
  }

  if (v6)
  {
    goto LABEL_18;
  }

  return v2 | v3;
}

uint64_t sub_2394DC184(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 544) = a2;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 68157954;
    v7 = 10;
    v8 = 2080;
    v9 = sub_2394DE6E0(a1);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Command handler moving to [%10.10s]", buf, 0x12u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    sub_2394DE6E0(a1);
    result = sub_2393D5320(0xDu, 3);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DC26C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (*(a1 + 544))
  {
    sub_2395375E4();
  }

  sub_2394DBEC0(a1, a2);
  sub_2394C4564(v9, a1);
  v7 = sub_2394DC2F0(a1, a3, a4);
  *(a1 + 553) = 1;
  sub_2394C4510(v9);
  sub_238EA9350(v9);
  return v7;
}

uint64_t sub_2394DC2F0(uint64_t a1, void *a2, int a3)
{
  sub_2393C5AAC(v17);
  v18 = 0;
  sub_2393DD178(v16);
  sub_2393DD178(v15);
  sub_238DD2F90(v17, a2);
  if (sub_2393DD0A8(v16, v17))
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 536);
  if (!v6)
  {
    sub_239537644();
  }

  (*(*v6 + 40))(v14);
  if (LOBYTE(v14[0]) == 1)
  {
    *(a1 + 549) = v14[0];
  }

  if (sub_2393DA994(v16, (a1 + 547)) || sub_2393DC8DC(v16, (a1 + 548)) || sub_2393DC8EC(v16, v15))
  {
LABEL_8:
    v7 = 0x80;
    goto LABEL_9;
  }

  if (*(a1 + 548) == a3)
  {
    v14[2] = v16[2];
    v14[3] = v16[3];
    v14[4] = v16[4];
    v14[0] = v16[0];
    v14[1] = v16[1];
    if (sub_2394DC8B4(a1, v14))
    {
      goto LABEL_8;
    }

    sub_2393C5AAC(v12);
    sub_2393DD1C8(v15, v12);
    v11 = 0;
    if (sub_2393C78C8(v12, &v11, 0))
    {
      goto LABEL_8;
    }

    if (v11 >= 2)
    {
      *(a1 + 551) = 1;
    }

    while (1)
    {
      v9 = sub_2393C6B34(v12);
      if (v9)
      {
        break;
      }

      if (v13 != 256)
      {
        goto LABEL_8;
      }

      sub_2393DD178(v14);
      if (sub_2393DD7F4(v14, v12))
      {
        goto LABEL_8;
      }

      if (*(a1 + 549) == 1)
      {
        v10 = sub_2394DCAF8(a1, v14);
      }

      else
      {
        v10 = sub_2394DD2B8(a1, v14);
      }

      v7 = v10;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    if (v9 != 33)
    {
      goto LABEL_8;
    }

    if (sub_2393DD104(v16))
    {
      v7 = 0x80;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = -55;
  }

LABEL_9:
  if (v18)
  {
    sub_2393D96C8(v18);
  }

  return v7;
}

unint64_t sub_2394DC4E0(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v19 = *a2;
  v6 = *(a2 + 2);
  v20 = *(a2 + 1);
  v21 = a3;
  v16 = *a2;
  v17 = v6;
  v18 = 0;
  v7 = *(a1 + 546);
  *(a1 + 546) = 1;
  v8 = sub_2394DC648(a1, &v19, &v16);
  *(a1 + 546) = v7;
  if (!v8)
  {
    if (*(a1 + 544) != 3 || (v10 = *(a1 + 128)) == 0)
    {
      v9 = 0x9300000000;
      LODWORD(v8) = 3;
      return v8 | v9;
    }

    v11 = (*(*a1 + 96))(a1);
    if (v11 && *(v11 + 88) == 1)
    {
      sub_238EA6DC0(v11, &v14);
      v12 = v14[24];
      (*(*v14 + 32))(v14);
    }

    else
    {
      v12 = 0;
    }

    v14 = v10;
    v15 = v12;
    v8 = (*(*a4 + 16))(a4, &v14, 1);
    if (!v8)
    {
      v8 = sub_2394DC700(a1, 0);
    }
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

unint64_t sub_2394DC648(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  (*(**(a1 + 520) + 16))(v7);
  if (v8 == 1)
  {
    return sub_2394DE210(a1, v7, a2, *(a3 + 12));
  }

  else
  {
    return 0x28400000003;
  }
}

uint64_t sub_2394DC6E4(uint64_t a1)
{
  if (*(a1 + 544) == 3)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2394DC700(uint64_t a1, int a2)
{
  if (*(a1 + 544) == 3)
  {
    if (a2 && (v3 = sub_2393C8DE0(*(a1 + 128), *(a1 + 288)), v3) || *(a1 + 530) == 1 && (v3 = sub_2393DB974(a1 + 112, *(a1 + 528)), v3) || (v3 = sub_2393DA87C((a1 + 112)), v3) || (v3 = sub_2393DA87C((a1 + 80)), v3))
    {
      v4 = v3 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394DC184(a1, 4);
      LODWORD(v3) = 0;
      v4 = 0;
    }
  }

  else
  {
    v4 = 0x2BE00000000;
    LODWORD(v3) = 3;
  }

  return v4 | v3;
}

unint64_t sub_2394DC7B4(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 536);
  if (v4)
  {
    if (*(a1 + 549))
    {
      v6 = 0;
      v4 = 0;
    }

    else
    {
      *(a1 + 552) = 0;
      v10 = sub_2394DC4E0(a1, a2, a3, a4);
      if (v10)
      {
        if (!sub_2394DE448(a1) && v10 == 11 && *(a1 + 544) == 4)
        {
          v10 = sub_2394DE354(a1);
          if (!v10)
          {
            v10 = sub_2394DC4E0(a1, a2, a3, a4);
            if (v10)
            {
              sub_2394DE448(a1);
            }
          }
        }

        v4 = v10 & 0xFFFFFFFF00000000;
      }

      else
      {
        v4 = 0;
        LODWORD(v10) = 0;
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v4 | v6;
}

unint64_t sub_2394DC8B4(uint64_t a1, int *a2)
{
  v24 = 0;
  sub_2393DD178(v23);
  v4 = sub_2393DC8EC(a2, v23);
  v5 = v4;
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393C5AAC(v21);
    sub_2393DD1C8(v23, v21);
    v7 = sub_2393C78C8(v21, &v24, 0);
    if (v7)
    {
LABEL_4:
      v6 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = v24;
      if (*(a1 + 549) == 1)
      {
        if (v24 == 1)
        {
          v6 = 0;
        }

        else
        {
          v6 = 0xC900000000;
        }

        if (v24 == 1)
        {
          LODWORD(v7) = 0;
        }

        else
        {
          LODWORD(v7) = 47;
        }
      }

      else if (v24 <= *(a1 + 480))
      {
        LODWORD(v7) = 47;
        while (1)
        {
          v9 = sub_2393C6B34(v21);
          if (v9)
          {
            break;
          }

          if (v22 != 256)
          {
            v6 = 0xD700000000;
            goto LABEL_36;
          }

          sub_2393DD178(v20);
          v9 = sub_2393DD7F4(v20, v21);
          if (v9)
          {
            goto LABEL_26;
          }

          sub_2393DD178(v19);
          v17[0] = 0;
          v18 = 0;
          v10 = sub_2393DB6C8(v20, v19);
          if (v10 || (v10 = sub_2393DB9A4(v19, v17), v10))
          {
            v7 = v10;
            goto LABEL_4;
          }

          LOBYTE(v15) = 0;
          v16 = 0;
          v14 = 0;
          v9 = sub_2393DAA4C(v20, &v14);
          if (v9)
          {
            if (v9 != 33)
            {
              goto LABEL_26;
            }

            if (v8 > 1)
            {
              v6 = 0xE900000000;
              goto LABEL_36;
            }
          }

          else
          {
            v15 = v14;
            v16 = 1;
          }

          v9 = (*(**(a1 + 520) + 32))(*(a1 + 520), v17, &v15);
          if (v9)
          {
LABEL_26:
            v6 = v9 & 0xFFFFFFFF00000000;
LABEL_33:
            LODWORD(v7) = v9;
            goto LABEL_36;
          }
        }

        if (v9 == 33)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          v6 = v11 & 0xFFFFFFFF00000000;
          goto LABEL_33;
        }

        v12 = sub_2393DD104(a2);
        LODWORD(v7) = v12;
        v6 = v12 & 0xFFFFFFFF00000000;
      }

      else
      {
        v6 = 0xD000000000;
        LODWORD(v7) = 47;
      }
    }

LABEL_36:
    v5 = v7;
  }

  return v5 | v6;
}

uint64_t sub_2394DCAF8(uint64_t a1, int *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_2393DD178(v33);
  sub_2393C5AAC(v31);
  v30 = 0;
  v29 = -65536;
  v4 = sub_2394B4FC8();
  if (sub_2393DB6C8(a2, v33) || sub_2393DBA04(v33, &v30 + 1, &v30))
  {
LABEL_3:
    result = 128;
    goto LABEL_4;
  }

  v7 = *(a1 + 536);
  if (!v7)
  {
    sub_2395376DC();
  }

  (*(*v7 + 40))(buf);
  v8 = *sub_238E0A934(buf);
  v9 = (*(*a1 + 48))(a1);
  v10 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    *&buf[4] = v8;
    *&buf[8] = 1024;
    *&buf[10] = HIWORD(HIDWORD(v30));
    *&buf[14] = 1024;
    LODWORD(v35) = WORD2(v30);
    WORD2(v35) = 1024;
    *(&v35 + 6) = WORD1(v30);
    WORD5(v35) = 1024;
    HIDWORD(v35) = v30;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Received group command for Group=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xDu, 3);
  }

  v11 = sub_2393DB910(a2, v31);
  if (v11)
  {
    if (v11 != 33)
    {
LABEL_34:
      result = 1;
      goto LABEL_4;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = HIWORD(HIDWORD(v30));
      *&buf[14] = 1024;
      LODWORD(v35) = WORD2(v30);
      WORD2(v35) = 1024;
      *(&v35 + 6) = WORD1(v30);
      WORD5(v35) = 1024;
      HIDWORD(v35) = v30;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Received command without data for Group=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    sub_2393C5ADC(v31, &unk_2395D7DA0, 2uLL);
    if (sub_2393C6B34(v31))
    {
      goto LABEL_3;
    }
  }

  v12 = (*(*v4 + 120))(v4, v9, 0);
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = v12;
  if ((*(*v12 + 24))(v12, &v29))
  {
    v23 = v8;
    do
    {
      if (v8 == v29)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67110144;
          *&buf[4] = HIWORD(v29);
          *&buf[8] = 1024;
          *&buf[10] = HIWORD(HIDWORD(v30));
          *&buf[14] = 1024;
          LODWORD(v35) = WORD2(v30);
          WORD2(v35) = 1024;
          *(&v35 + 6) = WORD1(v30);
          WORD5(v35) = 1024;
          HIDWORD(v35) = v30;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Processing group command for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(0xDu, 3);
        }

        LOWORD(v27) = HIWORD(v29);
        HIDWORD(v27) = HIDWORD(v30);
        v28 = v30;
        (*(*a1 + 88))(buf, a1);
        LODWORD(v24[0]) = 0;
        v26 = 0;
        v24[2] = v27;
        v25 = v28;
        v24[1] = buf;
        v14 = (*(*a1 + 72))(a1);
        v26 = v26 & 0xFFFFFFFE | v14;
        if (!(*(**(a1 + 8) + 24))(*(a1 + 8), v24))
        {
          v15 = sub_2394DF150();
          (*(*a1 + 88))(buf, a1);
          if ((*(*v15 + 24))(v15, &v27, buf))
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v16 = HIWORD(v29);
              v17 = HIWORD(HIDWORD(v30));
              v18 = WORD2(v30);
              v19 = WORD1(v30);
              v20 = v30;
              v21 = sub_2393C9138();
              *buf = 67110402;
              *&buf[4] = v16;
              *&buf[8] = 1024;
              *&buf[10] = v17;
              *&buf[14] = 1024;
              LODWORD(v35) = v18;
              WORD2(v35) = 1024;
              *(&v35 + 6) = v19;
              v8 = v23;
              WORD5(v35) = 1024;
              HIDWORD(v35) = v20;
              LOWORD(v36) = 2080;
              *(&v36 + 2) = v21;
              _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error when calling PreCommandReceived for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X : %s", buf, 0x2Au);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              v8 = v23;
              sub_2393D5320(0xDu, 1);
            }
          }

          else
          {
            *buf = v31[0];
            v35 = v31[1];
            v38 = v32;
            v36 = v31[2];
            v37 = v31[3];
            (*(**(a1 + 8) + 32))(*(a1 + 8), a1, &v27, buf);
            v22 = sub_2394DF150();
            (*(*a1 + 88))(v24, a1);
            (*(*v22 + 32))(v22, &v27, v24);
          }
        }
      }
    }

    while (((*(*v13 + 24))(v13, &v29) & 1) != 0);
  }

  (*(*v13 + 32))(v13);
  result = 0;
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DD2B8(void **a1, int *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_2393DD178(v20);
  *v19 = 0;
  *&v19[4] = 0;
  sub_2393C5AAC(v18);
  if (sub_2393DB6C8(a2, v20) || sub_2393DB9A4(v20, v19))
  {
    result = 128;
  }

  else
  {
    ((*a1)[11])(&buf, a1);
    v13 = 0;
    v16 = *&v19[8];
    p_buf = &buf;
    v15 = *v19;
    v17 = ((*a1)[9])(a1);
    v6 = (*(*a1[1] + 24))(a1[1], &v13);
    if (v6)
    {
      v21 = v6;
      v22 = 0;
      v7 = ((*a1)[2])(a1, v19, &v21, 0);
    }

    else
    {
      v8 = sub_2393DB910(a2, v18);
      if (v8 == 33)
      {
        v9 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 67110144;
          HIDWORD(buf) = *v19;
          v24 = 1024;
          v25 = HIWORD(*&v19[4]);
          v26 = 1024;
          v27 = *&v19[4];
          v28 = 1024;
          v29 = HIWORD(*&v19[8]);
          v30 = 1024;
          v31 = *&v19[8];
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Received command without data for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", &buf, 0x20u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(0xDu, 3);
        }

        sub_2393C5ADC(v18, &unk_2395D7DA0, 2uLL);
        v8 = sub_2393C6B34(v18);
      }

      if (!v8)
      {
        v10 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 67110144;
          HIDWORD(buf) = *v19;
          v24 = 1024;
          v25 = HIWORD(*&v19[4]);
          v26 = 1024;
          v27 = *&v19[4];
          v28 = 1024;
          v29 = HIWORD(*&v19[8]);
          v30 = 1024;
          v31 = *&v19[8];
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Received command for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", &buf, 0x20u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(0xDu, 3);
        }

        v11 = sub_2394DF150();
        ((*a1)[11])(&buf, a1);
        if (!(*(*v11 + 24))(v11, v19, &buf))
        {
          (*(*a1[1] + 32))(a1[1], a1, v19, v18);
          v12 = sub_2394DF150();
          ((*a1)[11])(&buf, a1);
          (*(*v12 + 32))(v12, v19, &buf);
          result = 0;
          goto LABEL_4;
        }
      }

      LOWORD(buf) = 133;
      BYTE2(buf) = 0;
      v7 = ((*a1)[2])(a1, v19, &buf, 0);
    }

    result = v7 != 0;
  }

LABEL_4:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DD74C(uint64_t a1)
{
  *(a1 + 547) = 0;
  *(a1 + 536) = 0;
  sub_2394DC184(a1, 6);
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_239537774((a1 + 296), v2);
  }

  sub_2394DBF34(a1);
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

void *sub_2394DD7E4(uint64_t a1, void *a2)
{
  v2 = (a1 + 304);
  v3 = (a1 + 304);
  do
  {
    v3 = v3[1];
  }

  while (v3 != a2 && v3 != v2);
  if (v3 == v2)
  {
    sub_23953780C();
  }

  return sub_23948BDE8(a2);
}

uint64_t sub_2394DD844(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 296) - 1;
  *(a1 + 296) = v4;
  v5 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v12) = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Decreasing reference count for CommandHandlerImpl, remaining %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v10 = *(a1 + 296);
    sub_2393D5320(0xDu, 3);
  }

  result = sub_2394DD7E4(a1, a2);
  if (!*(a1 + 296))
  {
    if (*(a1 + 536))
    {
      if ((*(a1 + 549) & 1) != 0 || !sub_2394DE5BC(a1, 0))
      {
        goto LABEL_18;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_2393C9138();
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed to finalize command response: %s", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_18;
      }

      sub_2393C9138();
      v8 = 1;
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Skipping command response: response sender is null", buf, 2u);
      }

      if (!sub_2393D5398(2u))
      {
        goto LABEL_18;
      }

      v8 = 2;
    }

    sub_2393D5320(0xDu, v8);
LABEL_18:
    result = sub_2394DD74C(a1);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394DDA48(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 536);
  if (v3)
  {
    if (*(a1 + 549))
    {
      LODWORD(v5) = 0;
      v3 = 0;
    }

    else
    {
      v5 = sub_2394DDAFC(a1, a2);
      if (!v5)
      {
        v7 = sub_2393DB75C((a1 + 176));
        v5 = *(a1 + 176);
        if (v5)
        {
          v8 = *(a1 + 184);
        }

        else
        {
          sub_2393DD518(v7, a3);
          v5 = *v7;
          if (*v7)
          {
            v9 = v7[1];
          }

          else
          {
            v5 = sub_2394DDC54(a1);
          }
        }
      }

      v3 = v5 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v3 | v5;
}

unint64_t sub_2394DDAFC(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_2394DBFC4(a1);
  if (!v4)
  {
    v7 = *(a1 + 544);
    if (v7 != 1)
    {
      if (v7 != 4)
      {
        v6 = 0x2D600000000;
        goto LABEL_11;
      }

      v5 = sub_2394DE400(a1);
    }

    (*(**(a1 + 520) + 16))(&v14, v5);
    if (v17 == 1)
    {
      *(a1 + 528) = v15;
      *(a1 + 530) = v16;
      sub_2394DC184(a1, 2);
      v8 = sub_2393DB564((a1 + 48));
      v4 = *(a1 + 48);
      if (v4)
      {
        v9 = *(a1 + 56);
      }

      else
      {
        v11 = sub_2393DCBD0(v8);
        v4 = *v11;
        if (*v11 || (v12 = sub_2393DB71C(v11), v4 = *v11, *v11))
        {
          v13 = v11[1];
        }

        else
        {
          v4 = sub_2393DBC00(v12, a2);
          if (!v4)
          {
            sub_2394DC184(a1, 3);
            LODWORD(v4) = 0;
            v6 = 0;
            return v6 | v4;
          }
        }
      }

      goto LABEL_2;
    }

    v6 = 0x2DD00000000;
LABEL_11:
    LODWORD(v4) = 3;
    return v6 | v4;
  }

LABEL_2:
  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

unint64_t sub_2394DDC54(uint64_t a1)
{
  if (*(a1 + 544) == 3)
  {
    if (*(a1 + 530) == 1 && (v2 = sub_2393DB974(a1 + 176, *(a1 + 528)), v2) || (v2 = sub_2393DA87C((a1 + 176)), v2) || (v2 = sub_2393DA87C((a1 + 80)), v2))
    {
      v3 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394DC184(a1, 4);
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x2EF00000000;
    LODWORD(v2) = 3;
  }

  return v3 | v2;
}

unint64_t sub_2394DDCF4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  *(a1 + 552) = 0;
  v6 = sub_2394DDA48(a1, a2, a3);
  if (v6)
  {
    if (!sub_2394DE448(a1) && v6 == 11 && *(a1 + 544) == 4)
    {
      v6 = sub_2394DE354(a1);
      if (!v6)
      {
        v6 = sub_2394DDA48(a1, a2, a3);
        if (v6)
        {
          sub_2394DE448(a1);
        }
      }
    }

    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = 0;
    LODWORD(v6) = 0;
  }

  return v6 | v7;
}

uint64_t sub_2394DDDC0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 16))(a1);
  v2 = result;
  if (result)
  {
    v3 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to add command status: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      result = sub_2393D5320(0xDu, 1);
    }

    if (v2 != 11)
    {
      sub_2395378A4();
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394DDEE4(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3, const char *a4)
{
  *(&v55[1] + 6) = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (*a3)
  {
    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "no additional context";
    }

    if (v7 == 1 && (v9 = *(a3 + 1), (v9 & 0x100) != 0))
    {
      v24 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *a2;
        v26 = HIWORD(*(a2 + 1));
        v27 = *(a2 + 1);
        v28 = v8;
        v29 = HIWORD(*(a2 + 2));
        v38 = *(a2 + 2);
        *buf = 67111170;
        v41 = v25;
        v42 = 1024;
        v43 = v26;
        v44 = 1024;
        v45 = v27;
        v46 = 1024;
        v47 = v29;
        v48 = 1024;
        v49 = v38;
        v50 = 1024;
        v51 = 1;
        v52 = 2080;
        v53 = sub_2393DDC88(1);
        v54 = 1024;
        LODWORD(v55[0]) = v9;
        WORD2(v55[0]) = 2080;
        *(v55 + 6) = v28;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X status 0x%02x (%s) ClusterSpecificCode=%u (%s)", buf, 0x40u);
      }

      if (sub_2393D5398(1u))
      {
        v39 = *a2;
        v30 = HIWORD(*(a2 + 1));
        v31 = *(a2 + 1);
        v32 = HIWORD(*(a2 + 2));
        v33 = *(a2 + 2);
        sub_2393DDC88(*a3);
        goto LABEL_16;
      }
    }

    else
    {
      v10 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *a2;
        v12 = HIWORD(*(a2 + 1));
        v13 = *(a2 + 1);
        v37 = a1;
        v14 = v8;
        v15 = HIWORD(*(a2 + 2));
        v16 = *(a2 + 2);
        *buf = 67110914;
        v41 = v11;
        v42 = 1024;
        v43 = v12;
        v44 = 1024;
        v45 = v13;
        v46 = 1024;
        v47 = v15;
        v17 = v14;
        a1 = v37;
        v48 = 1024;
        v49 = v16;
        v50 = 1024;
        v51 = v7;
        v52 = 2080;
        v53 = sub_2393DDC88(v7);
        v54 = 2080;
        v55[0] = v17;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X status 0x%02x (%s) (%s)", buf, 0x3Au);
      }

      if (sub_2393D5398(1u))
      {
        v18 = *a2;
        v19 = HIWORD(*(a2 + 1));
        v20 = *(a2 + 1);
        v21 = HIWORD(*(a2 + 2));
        v22 = *(a2 + 2);
        sub_2393DDC88(*a3);
LABEL_16:
        sub_2393D5320(0xDu, 1);
      }
    }

    buf[0] = *a3;
    v23 = buf[0];
    *&buf[1] = 0;
    if (buf[0] > 1u)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v23 = 0;
  *buf = 0;
  buf[2] = 0;
LABEL_18:
  v34 = *(a3 + 1);
  if ((v34 & 0x100) != 0)
  {
    buf[0] = v23;
    *&buf[1] = v34;
  }

LABEL_20:
  result = sub_2394DDCF4(a1, a2, buf);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394DE210(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v8 = sub_2394DBFC4(a1);
  if (!v8)
  {
    if ((*(a1 + 546) & 1) != 0 || *(a1 + 544) != 4 || (v8 = sub_2394DE354(a1), !v8))
    {
      sub_2394DE400(a1);
      v11 = *(a1 + 544);
      if (v11 != 4 && v11 != 1)
      {
        v9 = 0x2A000000000;
        LODWORD(v8) = 3;
        return v9 | v8;
      }

      v13 = *(a2 + 12);
      *(a1 + 530) = *(a2 + 14);
      *(a1 + 528) = v13;
      sub_2394DC184(a1, 2);
      v14 = sub_2393DB564((a1 + 48));
      v8 = *(a1 + 48);
      if (v8)
      {
        v15 = *(a1 + 56);
      }

      else
      {
        v16 = sub_2393DB4E4(v14);
        v8 = *v16;
        if (*v16 || (v17 = sub_2393DB93C(v16), v8 = *v16, *v16))
        {
          v18 = v16[1];
        }

        else
        {
          v8 = sub_2393DBC00(v17, a3);
          if (!v8)
          {
            if (!a4 || (v8 = sub_2393C8CE0(v16[2], 1uLL, 21, (a1 + 288)), !v8))
            {
              sub_2394DC184(a1, 3);
              LODWORD(v8) = 0;
              v9 = 0;
              return v9 | v8;
            }
          }
        }
      }
    }
  }

  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394DE354(uint64_t a1)
{
  v2 = sub_2394DE5BC(a1, 1);
  if (!v2)
  {
    if (*(a1 + 550) == 1)
    {
      sub_2395379D4();
    }

    v2 = sub_2394DBFC4(a1);
    if (!v2)
    {
      v4 = 0;
      return v2 & 0xFFFFFFFF00000000 | v4;
    }

    v3 = *(a1 + 536);
    if (!v3)
    {
      sub_23953793C();
    }

    (*(*v3 + 64))(v3);
  }

  v4 = v2;
  return v2 & 0xFFFFFFFF00000000 | v4;
}

__n128 sub_2394DE400(uint64_t a1)
{
  v1 = *(a1 + 544);
  v2 = v1 == 4 || v1 == 1;
  if (v2 && !*(a1 + 48) && !*(a1 + 16))
  {
    v3 = *(a1 + 32);
    result = v3[2];
    v5 = v3[3];
    v7 = *v3;
    v6 = v3[1];
    *(a1 + 448) = result;
    *(a1 + 464) = v5;
    *(a1 + 416) = v7;
    *(a1 + 432) = v6;
    *(a1 + 545) = v1;
    *(a1 + 552) = 1;
  }

  return result;
}

uint64_t sub_2394DE448(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v13 = v1;
    v14 = v2;
    if ((*(a1 + 544) & 0xFE) == 2)
    {
      v4 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Rolling back response", v12, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0xDu, 3);
      }

      sub_2393D06DC((a1 + 48));
      v5 = *(a1 + 32);
      v6 = *(a1 + 416);
      v7 = *(a1 + 432);
      v8 = *(a1 + 464);
      v5[2] = *(a1 + 448);
      v5[3] = v8;
      *v5 = v6;
      v5[1] = v7;
      sub_2393D06DC((a1 + 16));
      sub_2394DC184(a1, *(a1 + 545));
      v9 = 0;
      v10 = 0;
      *(a1 + 552) = 0;
    }

    else
    {
      v9 = 0x30A00000000;
      v10 = 3;
    }
  }

  else
  {
    v9 = 0x30900000000;
    v10 = 3;
  }

  return v10 | v9;
}

uint64_t sub_2394DE55C(uint64_t a1)
{
  if (*(a1 + 553) == 1)
  {
    sub_239537B04();
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    sub_239537A6C();
  }

  v2 = *(*v1 + 32);

  return v2();
}

unint64_t sub_2394DE5BC(uint64_t a1, int a2)
{
  v11 = 0;
  if (*(a1 + 544) == 4)
  {
    v4 = sub_2393DCC6C(a1 + 48);
    v5 = v4;
    if (v4)
    {
      v6 = HIDWORD(v4);
    }

    else if (a2 && (sub_2393DCE0C(a1 + 16, 1), (v5 = *(a1 + 16)) != 0))
    {
      v6 = *(a1 + 20);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = sub_2393DCF10(a1 + 16);
      if (v8 || (v8 = sub_238DD2EFC(a1 + 320, &v11), v8))
      {
        v6 = HIDWORD(v8);
        v5 = v8;
      }

      else
      {
        v10 = *(a1 + 536);
        if (!v10)
        {
          sub_239537B9C();
        }

        (*(*v10 + 56))(v10, &v11);
        v5 = 0;
        v6 = 0;
        *(a1 + 550) = 0;
        *(a1 + 552) = 0;
      }
    }

    if (v11)
    {
      sub_2393D96C8(v11);
    }
  }

  else
  {
    v5 = 3;
    v6 = 829;
  }

  return v5 | (v6 << 32);
}

const char *sub_2394DE6E0(uint64_t a1)
{
  v1 = *(a1 + 544);
  if (v1 > 6)
  {
    return "N/A";
  }

  else
  {
    return off_278A83160[v1];
  }
}

uint64_t sub_2394DE708(uint64_t a1)
{
  result = *(a1 + 536);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t sub_2394DE738(uint64_t a1)
{
  if (*(a1 + 553) == 1)
  {
    sub_239537CCC();
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    sub_239537C34();
  }

  v2 = *(*v1 + 24);

  return v2();
}

uint64_t sub_2394DE7A0(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 56))(a1);
  if (result)
  {
    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Adding response failed: %s. Returning failure instead.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xDu, 1);
    }

    *buf = 1;
    buf[2] = 0;
    result = (*(*a1 + 24))(a1, a2, buf, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DE908(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (!v2)
  {
    sub_239537D64();
  }

  v3 = *(*v2 + 16);

  return v3();
}

uint64_t sub_2394DE950(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = 1;
  v4 = a3 << 8;
  return (*(*a1 + 16))(a1, a2, &v4, 0);
}

uint64_t sub_2394DE9A8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = 1;
  v4 = (a3 << 8) | 1;
  return (*(*a1 + 16))(a1, a2, &v4, 0);
}

uint64_t sub_2394DEA14@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = (result + 16);
    while (*v4 != *a2 || *(v4 + 1) != *(a2 + 1) || *(v4 + 2) != *(a2 + 2))
    {
      v4 += 8;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    *a3 = *v4;
    v5 = 1;
  }

  else
  {
LABEL_7:
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_2394DEA78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    *a2 = *(result + 16);
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_2394DEA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = 0x5900000000;
    v4 = 11;
  }

  else
  {
    v4 = 0;
    *&v6 = *a2;
    DWORD2(v6) = *(a2 + 8);
    WORD6(v6) = *a3;
    BYTE14(v6) = *(a3 + 2);
    *(a1 + 8) = 1;
    *(a1 + 16) = v6;
  }

  return v4 | v3;
}

uint64_t *sub_2394DEB0C(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    do
    {
      v2 = *(v1 + 16);
      *(v1 + 16) = 0;
      v1 = v2;
    }

    while (v2);
  }

  *result = 0;
  return result;
}

uint64_t sub_2394DEB2C(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      while (!sub_2393C4AC8(v4, a2))
      {
        v4 = *(v4 + 16);
        if (!v4)
        {
          v5 = *a1;
          goto LABEL_8;
        }
      }

      v8 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Duplicate command handler registration failed", v10, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x23u, 1);
      }

      v6 = 0x3900000000;
      v7 = 3;
    }

    else
    {
      v5 = 0;
LABEL_8:
      v6 = 0;
      v7 = 0;
      *(a2 + 16) = v5;
      *a1 = a2;
    }
  }

  else
  {
    v6 = 0x3200000000;
    v7 = 47;
  }

  return v7 | v6;
}

_BYTE *sub_2394DEC34(_BYTE *result, int a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = v2;
        result = (v2 + 8);
        v7 = *(v2 + 8);
        v2 = *(v2 + 16);
        if (v7 == 1)
        {
          result = sub_238E0A934(result);
          if (*result == a2)
          {
            break;
          }
        }

        v5 = v6;
        if (!v2)
        {
          return result;
        }
      }

      v8 = (v5 + 16);
      if (!v5)
      {
        v8 = v4;
      }

      *v8 = *(v6 + 16);
      *(v6 + 16) = 0;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2394DECC4(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *a1;
    if (*a1)
    {
      if (sub_2393C4AC8(*a1, a2))
      {
        v5 = 0;
LABEL_10:
        v6 = 0;
        v7 = 0;
        if (v5)
        {
          v10 = (v5 + 16);
        }

        else
        {
          v10 = a1;
        }

        *v10 = *(v3 + 16);
        *(v3 + 16) = 0;
      }

      else
      {
        v7 = 16;
        v8 = v3;
        while (1)
        {
          v3 = *(v8 + 16);
          if (!v3)
          {
            break;
          }

          v9 = sub_2393C4AC8(*(v8 + 16), a2);
          v5 = v8;
          v8 = v3;
          if (v9)
          {
            goto LABEL_10;
          }
        }

        v6 = 0x7C00000000;
      }
    }

    else
    {
      v6 = 0x7C00000000;
      v7 = 16;
    }
  }

  else
  {
    v6 = 0x6400000000;
    v7 = 47;
  }

  return v7 | v6;
}

uint64_t sub_2394DEDA4(uint64_t *a1, int a2, int a3)
{
  for (i = *a1; i; i = *(i + 16))
  {
    if ((*(i + 8) != 1 || *sub_238E0A934((i + 8)) == a2) && *(i + 12) == a3)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2394DEE10(unsigned int a1, uint64_t a2, __int16 a3)
{
  if (!a2)
  {
    return 0x1C00000003;
  }

  sub_2393D9C18(0x4AAuLL, 0x26u, &v16);
  if (v16)
  {
    sub_2393C7B90(v13);
    v14[1] = 0;
    v14[2] = 0;
    v14[0] = &unk_284BB83A8;
    v15 = 0;
    sub_238EA16C4(v14, &v16, 0);
    sub_2393C7BF0(v13, v14, 0xFFFFFFFF);
    sub_2393DB79C(&v12);
    v6 = sub_2393DD7B8(&v12, v13);
    v7 = v6;
    if (v6)
    {
      v8 = HIDWORD(v6);
    }

    else
    {
      sub_2393DD71C(&v12, a1);
      v7 = v12;
      if (v12)
      {
        v8 = HIDWORD(v12);
      }

      else
      {
        v10 = sub_238DD2EFC(v13, &v16);
        if (v10 || (sub_239470428(a2, 2000), v11 = a3, v10 = sub_239470478(a2, 0x10000u, 1, &v16, &v11), v10))
        {
          v8 = HIDWORD(v10);
          v7 = v10;
        }

        else
        {
          v7 = 0;
          v8 = 0;
        }
      }
    }

    sub_2393B8400(v14);
    if (v16)
    {
      sub_2393D96C8(v16);
    }
  }

  else
  {
    v7 = 11;
    v8 = 30;
  }

  return v7 | (v8 << 32);
}

unint64_t sub_2394DEFB4(void *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_2393DD178(v16);
  sub_2393C5AAC(v14);
  v15 = 0;
  sub_238DD2F90(v14, a1);
  v4 = sub_2393DD0A8(v16, v14);
  if (v4)
  {
    goto LABEL_8;
  }

  v12 = 0;
  v13 = 0;
  v4 = sub_2393DD6D8(v16, &v12);
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v12;
    v7 = sub_2393DDC88(v12);
    buf[0] = 67109378;
    buf[1] = v6;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received status response, status is 0x%02x (%s)", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393DDC88(v12);
    sub_2393D5320(0x23u, 2);
  }

  v4 = sub_2393DD104(v16);
  if (v4)
  {
LABEL_8:
    v8 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v4) = 0;
    v8 = 0;
    *a2 = sub_2393DD584(&v12);
    a2[1] = v11;
  }

  if (v15)
  {
    sub_2393D96C8(v15);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 | v4;
}

uint64_t sub_2394DF15C(uint64_t a1)
{
  v1 = qword_27DF77520;
  qword_27DF77520 = a1;
  return v1;
}

uint64_t sub_2394DF178(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = 0;
  *(a1 + 304) = a2;
  v5 = *a3;
  *(a1 + 296) = *(a3 + 2);
  *(a1 + 280) = v5;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  do
  {
    v6 = &v13[v4];
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 16) = 1;
    *(v6 + 9) = 5540;
    *(v6 + 5) = 0;
    *(v6 + 3) = 0;
    result = sub_239476060();
    *(v6 + 4) = result;
    *(v6 + 20) = v8;
    *(v6 + 22) = 0;
    *(v6 + 46) = 0;
    v4 += 3;
  }

  while (v4 != 15);
  v9 = 0;
  LOWORD(v14) = 0;
  do
  {
    v10 = a1 + v9 * 16;
    *(v10 + 32) = v13[v9];
    v11 = DWORD1(v13[v9 + 1]);
    *(v10 + 48) = v13[v9 + 1];
    *(v10 + 52) = v11;
    v12 = *&v13[v9 + 2];
    *(v10 + 56) = *(&v13[v9 + 1] + 1);
    *(v10 + 64) = v12;
    *(v10 + 71) = *(&v13[v9 + 2] + 7);
    v9 += 3;
  }

  while (v9 != 15);
  *(a1 + 272) = v14;
  return result;
}

uint64_t sub_2394DF288(uint64_t a1, __int128 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v25 = a1 + 280;
  v26 = a2;
  sub_23948BC28(__str);
  *__str = *(a2 + 5);
  v4 = sub_2394BA084(a2);
  v5 = sub_2394DF48C(a1 + 32, a2, v4);
  sub_2393E97D4(a2, __str, 0x4CuLL);
  v7 = *(a1 + 280);
  v6 = *(a1 + 288);
  v8 = sub_2393D9044(0x22u);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      *buf = 136316418;
      v13 = __str;
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = HIDWORD(v6);
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = HIDWORD(v7);
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s: new best score: %u (for %08X%08X-%08X%08X)", buf, 0x2Au);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
LABEL_9:
      result = sub_2393D5320(0x22u, 2);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 136316418;
      v13 = __str;
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = HIDWORD(v6);
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = HIDWORD(v7);
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s: score has not improved: %u (for %08X%08X-%08X%08X)", buf, 0x2Au);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
      goto LABEL_9;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DF48C(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v21 = *a2;
  v6 = *(a2 + 5);
  v22 = *(a2 + 4);
  v23 = v6;
  v24 = *(a2 + 3);
  if (!sub_2393CFBB4(&v21))
  {
    v23 = 0;
    v7 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Lookup clearing interface for non LL address", v20, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x22u, 3);
    }
  }

  v8 = 0;
  v9 = a1;
  while (v8 < *(a1 + 240))
  {
    if (sub_2394BF148(v9, &v21))
    {
      return 0;
    }

    v20[0] = *(v9 + 20);
    if (sub_2394BA084(v9) < a3)
    {
      break;
    }

    ++v8;
    v9 += 48;
    if (v8 == 5)
    {
      return 0;
    }
  }

  v11 = *(a1 + 240);
  if (v11 > v8)
  {
    v12 = v11 - 1;
    v13 = a1 + 48 * *(a1 + 240) + 20;
    do
    {
      if (v11 <= 4)
      {
        v14 = a1 + 48 * v12;
        v15 = *v14;
        *(v13 - 4) = *(v14 + 16);
        *(v13 - 20) = v15;
        *v13 = *(v14 + 20);
        *(v13 + 4) = *(v14 + 24);
        v16 = *(v14 + 32);
        *(v13 + 19) = *(v14 + 39);
        *(v13 + 12) = v16;
      }

      --v11;
      --v12;
      v13 -= 48;
    }

    while (v8 < v11);
    LODWORD(v11) = *(a1 + 240);
  }

  if (v11 < 5)
  {
    *(a1 + 240) = v11 + 1;
  }

  v17 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v17;
  *(v9 + 20) = *(a2 + 5);
  *(v9 + 24) = *(a2 + 3);
  v18 = *(a2 + 4);
  *(v9 + 39) = *(a2 + 39);
  *v9 = v21;
  v19 = v23;
  *(v9 + 16) = v22;
  *(v9 + 20) = v19;
  *(v9 + 24) = v24;
  *(v9 + 32) = v18;
  return 1;
}

uint64_t sub_2394DF680(uint64_t a1, uint64_t a2)
{
  v4 = a2 - *(a1 + 304);
  v5 = *(a1 + 296);
  if (v4 < v5)
  {
    return (v5 - v4);
  }

  if (*(a1 + 272) > *(a1 + 273))
  {
    return 0;
  }

  v5 = *(a1 + 300);
  if (v4 < v5)
  {
    return (v5 - v4);
  }

  v9 = v2;
  v10 = v3;
  v7 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Unexpected timeout: lookup should have been cleaned already.", v8, 2u);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393D5320(0x22u, 1);
    return 0;
  }

  return result;
}

void sub_2394DF74C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2 - *(a1 + 304);
  v6 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 280);
    v7 = *(a1 + 288);
    *buf = 67110144;
    *&buf[4] = HIDWORD(v7);
    *&buf[8] = 1024;
    *&buf[10] = v7;
    *&buf[14] = 1024;
    v15 = HIDWORD(v8);
    *v16 = 1024;
    *&v16[2] = v8;
    *&v16[6] = 2048;
    *&v16[8] = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Checking node lookup status for %08X%08X-%08X%08X after %lu ms", buf, 0x24u);
  }

  if (sub_2393D5398(2u))
  {
    v13 = *(a1 + 280);
    v12 = HIDWORD(*(a1 + 288));
    sub_2393D5320(0x22u, 2);
  }

  if (v5 < *(a1 + 296))
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Keeping DNSSD lookup active", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x22u, 2);
    }

LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 48) = 0;
    goto LABEL_14;
  }

  if (*(a1 + 272) <= *(a1 + 273))
  {
    if (v5 >= *(a1 + 300))
    {
      *(a3 + 48) = 1;
      *a3 = 0x7C00000032;
      *(a3 + 8) = "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp";
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_2394E0860(a1 + 32, buf);
  *(a3 + 48) = 2;
  *a3 = *buf;
  v9 = *v16;
  *(a3 + 16) = v15;
  *(a3 + 20) = v9;
  v10 = *&v16[12];
  *(a3 + 24) = *&v16[4];
  *(a3 + 32) = v10;
  *(a3 + 39) = *&v16[19];
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2394DF950(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  *buf = a2;
  sub_23948BBAC(buf);
  if (*(a1 + 16))
  {
    v6 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    sub_2394DF178(a3, v6, a2);
    v7 = sub_2394BA124();
    v8 = (*(*v7 + 48))(v7, a2);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_23948BD9C((a1 + 32), (a3 + 8));
      sub_2394DFB20(a1);
      v10 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *a2;
        v11 = *(a2 + 1);
        v13 = HIDWORD(*a2);
        *buf = 67109888;
        *&buf[4] = HIDWORD(v11);
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v13;
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Lookup started for %08X%08X-%08X%08X", buf, 0x1Au);
      }

      if (sub_2393D5398(2u))
      {
        v17 = HIDWORD(*a2);
        v16 = HIDWORD(*(a2 + 1));
        sub_2393D5320(0x22u, 2);
      }

      LODWORD(v8) = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = 0xCD00000000;
    LODWORD(v8) = 3;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

uint64_t sub_2394DFB20(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  (*(**(a1 + 16) + 72))(*(a1 + 16), sub_2394E06A8, a1);
  result = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v3 = (a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != (a1 + 32))
  {
    v5 = result;
    LODWORD(v6) = -1;
    do
    {
      if (v4)
      {
        v7 = (v4 - 1);
      }

      else
      {
        v7 = 0;
      }

      result = sub_2394DF680(v7, v5);
      if (result >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = result;
      }

      v4 = v4[1];
    }

    while (v4 != v3);
    if (v6 != -1)
    {
      result = (*(**(a1 + 16) + 40))(*(a1 + 16), v6, sub_2394E06A8, a1);
      v9 = result;
      if (result)
      {
        v10 = v8;
        v11 = sub_2393D9044(0x22u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = sub_2393C9138();
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Timer schedule error %s assumed permanent", buf, 0xCu);
        }

        result = sub_2393D5398(1u);
        if (result)
        {
          sub_2393C9138();
          result = sub_2393D5320(0x22u, 1);
        }

        v12 = *(a1 + 40);
        while (v12 != v3)
        {
          v13 = v12 - 1;
          if (!v12)
          {
            v13 = 0;
          }

          *buf = *(v13 + 35);
          v14 = v13[3];
          sub_23948BDE8(v12);
          v12 = *(a1 + 40);
          v15 = sub_2394BA124();
          (*(*v15 + 56))(v15, buf);
          result = (*(*v14 + 24))(v14, buf, v9, v10);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394DFDAC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a1 + 32;
  do
  {
    v3 = *(v3 + 8);
  }

  while (v3 != a2 + 8 && v3 != v2);
  if (v3 == v2)
  {
    if (*(a2 + 272) <= *(a2 + 273))
    {
      v5 = 0xDB00000000;
      v6 = 216;
    }

    else
    {
      v7 = *(a2 + 24);
      v11 = *(a2 + 280);
      sub_2394E0860(a2 + 32, v10);
      v9[1] = &v11;
      v9[0] = 2;
      v9[2] = v10;
      sub_23948BC28(v9);
      (*(*v7 + 16))(v7, &v11, v10);
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = 0xDA00000000;
    v6 = 3;
  }

  return v6 | v5;
}

uint64_t sub_2394DFEA8(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0xE900000000;
    v6 = 47;
  }

  else
  {
    sub_23948BDE8((a2 + 8));
    v9 = sub_2394BA124();
    (*(*v9 + 56))(v9, a2 + 280);
    sub_2394DFB20(a1);
    v11[0] = a2 + 280;
    v11[1] = 0xF000000074;
    v11[2] = "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp";
    sub_23948BCA4(v11);
    if (!a3)
    {
      (*(**(a2 + 24) + 24))(*(a2 + 24), a2 + 280, 0xF400000074, "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp");
    }

    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t sub_2394DFFBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  v3 = sub_2394BA124();
  (*(*v3 + 40))(v3, a1 + 8);
  return 0;
}

uint64_t sub_2394E0014(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    v2 = (result + 32);
    for (i = *(result + 40); i != v2; i = *(v1 + 40))
    {
      v4 = i - 1;
      if (!i)
      {
        v4 = 0;
      }

      v9 = *(v4 + 35);
      v5 = v4[3];
      sub_23948BDE8(i);
      v8[0] = &v9;
      v8[1] = 0x11700000073;
      v8[2] = "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp";
      sub_23948BCA4(v8);
      v6 = sub_2394BA124();
      (*(*v6 + 56))(v6, &v9);
      (*(*v5 + 24))(v5, &v9, 0x11D00000073, "src/lib/address_resolve/AddressResolve_DefaultImpl.cpp");
    }

    sub_2394DFB20(v1);
    *(v1 + 16) = 0;
    v7 = sub_2394BA124();
    return (*(*v7 + 40))(v7, 0);
  }

  return result;
}

uint64_t sub_2394E0160(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = *(a1 + 40);
  if (v4 != a1 + 32)
  {
    v6 = (a2 + 16);
    do
    {
      v25 = v4;
      v7 = *(v4 + 8);
      if (v4)
      {
        v8 = v4 - 8;
      }

      else
      {
        v8 = 0;
      }

      if (*(v8 + 280) == *(a2 + 168) && *(v4 + 280) == *(a2 + 176))
      {
        v16 = 0uLL;
        v17 = 1;
        v18 = 5540;
        v19 = 0;
        v20 = 0;
        v21 = sub_239476060();
        v22 = v9;
        v23 = 0;
        v24 = 0;
        v18 = *(a2 + 96);
        v19 = *a2;
        v10 = sub_2394E02B8(a2);
        v21 = v10;
        v22 = v11;
        HIBYTE(v23) = *(a2 + 139);
        LOBYTE(v23) = *(a2 + 140);
        if (*(a2 + 142) == 1)
        {
          v24 = *(a2 + 141);
        }

        if (*(a2 + 8))
        {
          v12 = 0;
          v13 = v6;
          do
          {
            v14 = *v13++;
            v16 = v14;
            v10 = sub_2394DF288(v8, &v16);
            ++v12;
          }

          while (v12 < *(a2 + 8));
        }

        sub_2394E030C(v10, &v25);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  return sub_2394DFB20(a1);
}

unint64_t sub_2394E02B8(uint64_t a1)
{
  v2 = sub_239476060();
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  if ((v3 & 0x100000000) == 0)
  {
    LODWORD(v3) = v2;
  }

  if ((v4 & 0x100000000) == 0)
  {
    v4 = HIDWORD(v2);
  }

  *(a1 + 160);
  return v3 | (v4 << 32);
}

void sub_2394E030C(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = *a2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  sub_2394DF74C(v3, v4, &v18);
  v5 = v20;
  if (v20)
  {
    v6 = *a2;
    v7 = *a2 - 8;
    if (!*a2)
    {
      v7 = 0;
    }

    v17 = *(v7 + 280);
    v8 = *(v7 + 24);
    sub_23948BDE8(v6);
    v9 = sub_2394BA124();
    (*(*v9 + 56))(v9, &v17);
    if (v5 == 2)
    {
      v15 = &v17;
      v14 = 1;
      v16 = &v18;
      sub_23948BC28(&v14);
      (*(*v8 + 16))(v8, &v17, &v18);
    }

    else if (v5 == 1)
    {
      v10 = v18;
      v11 = v19;
      v14 = &v17;
      v15 = v18;
      v16 = v19;
      sub_23948BCA4(&v14);
      (*(*v8 + 24))(v8, &v17, v10, v11);
    }

    else
    {
      v12 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Unexpected lookup state (not success or fail).", &v14, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x22u, 1);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2394E052C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 40);
  while (v3 != v2)
  {
    v5 = v3;
    v3 = *(v3 + 8);
    sub_2394E030C(a1, &v5);
  }

  return sub_2394DFB20(a1);
}

uint64_t sub_2394E0594(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 32);
  v6 = *(a1 + 40);
  if (v6 != v5)
  {
    do
    {
      v10 = v6[1];
      v11 = v6 - 1;
      if (!v6)
      {
        v11 = 0;
      }

      if (v11[35] == *a2 && v6[35] == a2[1])
      {
        v12 = v6[2];
        sub_23948BDE8(v6);
        v13 = sub_2394BA124();
        (*(*v13 + 56))(v13, a2);
        (*(*v12 + 24))(v12, a2, a3, a4);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }

  return sub_2394DFB20(a1);
}

uint64_t sub_2394E06BC(void *a1)
{
  *a1 = off_284BBE078;
  a1[1] = off_284BBE0D0;
  sub_239493D14(a1 + 4);

  return nullsub_56(a1, v2);
}

void sub_2394E0734(void *a1)
{
  sub_2394E06BC(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394E076C(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = off_284BBE078;
  *a1 = off_284BBE0D0;
  sub_239493D14(a1 + 3);

  return nullsub_56(v1, v2);
}

void sub_2394E07DC(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = off_284BBE078;
  *a1 = off_284BBE0D0;
  sub_239493D14(a1 + 3);
  nullsub_56(v1, v2);

  JUMPOUT(0x23EE77B60);
}

__n128 sub_2394E0860@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 241);
  if (*(a1 + 240) <= v2)
  {
    sub_239537DFC();
  }

  *(a1 + 241) = v2 + 1;
  v3 = a1 + 48 * v2;
  result = *v3;
  *a2 = *v3;
  v5 = *(v3 + 20);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 20) = v5;
  v6 = *(v3 + 32);
  *(a2 + 24) = *(v3 + 24);
  *(a2 + 32) = v6;
  *(a2 + 39) = *(v3 + 39);
  return result;
}

void *sub_2394E08B4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = -1;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = -1;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = -1;
  return result;
}

uint64_t sub_2394E08D8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 8);
    if (*(v4 + 12) != -1)
    {
      v5 = sub_2394E09C0(a1, a2);
      v4 = *(a1 + 8);
      if ((v5 & 0x100000000) != 0)
      {
        break;
      }
    }

    if (*(v4 + 8) != -1 && (v6 = sub_2394E0C18(a1), (v6 & 0x100000000) != 0))
    {
      *(*(a1 + 8) + 12) = v6;
      *(*(a1 + 8) + 16) = -1;
    }

    else
    {
      v7 = sub_2394E0DBC(a1);
      if ((v7 & 0x10000) == 0)
      {
        return 0;
      }

      *(*(a1 + 8) + 8) = v7;
      *(*(a1 + 8) + 12) = -1;
    }
  }

  *(v4 + 16) = v5;
  v9 = *(a1 + 8);
  v10 = *v9;
  v11 = *(*v9 + 8) == -1 || *v10 == -1 || v10[1] == -1;
  v9[10] = v11;
  return 1;
}

uint64_t sub_2394E09C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 16) == -1)
  {
    *(a1 + 104) = -1;
  }

  else if (*(a1 + 104) != -1)
  {
    goto LABEL_10;
  }

  sub_2394C440C(*a1, v4 + 8, &v23);
  *(a1 + 80) = v23;
  sub_2393D6EB4((a1 + 96), v24);
  sub_2393D6E84(v24);
  v4 = *(a1 + 8);
  if (*(v4 + 16) != -1)
  {
    *(a1 + 104) = 0;
    if (*(a1 + 88))
    {
      v5 = 0;
      do
      {
        v6 = sub_2394E0F94((a1 + 80), v5);
        v4 = *(a1 + 8);
        if (*v6 == *(v4 + 16))
        {
          break;
        }

        v5 = *(a1 + 104) + 1;
        *(a1 + 104) = v5;
      }

      while (v5 < *(a1 + 88));
    }
  }

LABEL_10:
  if (*(v4 + 16) == -1)
  {
    v12 = *(*v4 + 4);
    if (v12 == -1)
    {
      v7 = 0;
      goto LABEL_12;
    }

    *&v23 = *a1;
    WORD4(v23) = -1;
    HIDWORD(v23) = -1;
    v24[1] = 0;
    v25 = 0;
    v24[0] = 0;
    v13 = *(v4 + 8);
    v14 = *(v4 + 12);
    v19 = v13;
    v21 = v14;
    v22 = v12;
    v20 = 0;
    v15 = sub_2394C417C(&v23, &v19);
    if (v16)
    {
      if (a2)
      {
        *a2 = v15;
        *(a2 + 8) = 1;
      }
    }

    else
    {
      v17 = **(a1 + 8);
      if (*(v17 + 8) == -1 || *v17 == -1 || (v9 = *(v17 + 4), v9 == -1))
      {
        v11 = 0;
        LOBYTE(v9) = 0;
        v10 = 0;
        goto LABEL_34;
      }

      if (!a2 || *(a2 + 8) != 1)
      {
LABEL_25:
        v10 = v9 & 0xFFFFFF00;
        v11 = 0x100000000;
LABEL_34:
        sub_2393D6E84(&v25);
        return v11 | v10 | v9;
      }

      *(a2 + 8) = 0;
    }

    v9 = *(**(a1 + 8) + 4);
    goto LABEL_25;
  }

  v7 = *(a1 + 104) + 1;
LABEL_12:
  *(a1 + 104) = v7;
  if (*(*v4 + 4) == -1 && v7 < *(a1 + 88))
  {
    if (a2)
    {
      v8 = sub_2394E0F94((a1 + 80), v7);
      if (*(a2 + 8) == 1)
      {
        *(a2 + 8) = 0;
      }

      *a2 = *v8;
      *(a2 + 8) = 1;
      v7 = *(a1 + 104);
    }

    v9 = *sub_2394E0F94((a1 + 80), v7);
    v10 = v9 & 0xFFFFFF00;
    v11 = 0x100000000;
  }

  else
  {
    v11 = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
  }

  return v11 | v10 | v9;
}

uint64_t sub_2394E0C18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 3) == -1)
  {
    *(a1 + 72) = -1;
  }

  else if (*(a1 + 72) != -1)
  {
    goto LABEL_10;
  }

  sub_2394C4398(*a1, *(v2 + 4), &v12);
  *(a1 + 48) = v12;
  sub_2393D6EB4((a1 + 64), &v13);
  sub_2393D6E84(&v13);
  v2 = *(a1 + 8);
  if (*(v2 + 3) != -1)
  {
    *(a1 + 72) = 0;
    if (*(a1 + 56))
    {
      v3 = 0;
      do
      {
        v4 = sub_2394E0FBC((a1 + 48), v3);
        v2 = *(a1 + 8);
        if (*v4 == *(v2 + 3))
        {
          break;
        }

        v3 = *(a1 + 72) + 1;
        *(a1 + 72) = v3;
      }

      while (v3 < *(a1 + 56));
    }
  }

LABEL_10:
  if (*(v2 + 3) == -1)
  {
    v9 = *v2;
    v6 = **v2;
    if (v6 != -1)
    {
      if (*(v9 + 4) == -1 || v9[1] == -1)
      {
        v8 = *(a1 + 56);
        if (!v8)
        {
LABEL_24:
          LOBYTE(v6) = 0;
          v7 = 0;
          return v8 | v7 | v6;
        }

        v10 = *(a1 + 48);
        v8 *= 12;
        while (*v10 != v6)
        {
          v10 += 3;
          v8 -= 12;
          if (!v8)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_19;
    }

    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 72) + 1;
  }

  *(a1 + 72) = v5;
  if (**v2 == -1 && v5 < *(a1 + 56))
  {
    v6 = *sub_2394E0FBC((a1 + 48), v5);
LABEL_19:
    v7 = v6 & 0xFFFFFF00;
    v8 = 0x100000000;
    return v8 | v7 | v6;
  }

  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = 0;
  return v8 | v7 | v6;
}

uint64_t sub_2394E0DBC(uint64_t a1)
{
  if (*(a1 + 40) == -1)
  {
    sub_2394C4324(*a1, &v10);
    *(a1 + 16) = v10;
    sub_2393D6EB4((a1 + 32), &v11);
    sub_2393D6E84(&v11);
    v2 = *(a1 + 8);
    if (v2[4] != -1)
    {
      *(a1 + 40) = 0;
      if (*(a1 + 24))
      {
        v4 = 0;
        do
        {
          v5 = sub_2392CB9E0((a1 + 16), v4);
          v2 = *(a1 + 8);
          if (*v5 == v2[4])
          {
            break;
          }

          v4 = *(a1 + 40) + 1;
          *(a1 + 40) = v4;
        }

        while (v4 < *(a1 + 24));
      }
    }
  }

  else
  {
    v2 = *(a1 + 8);
  }

  if (v2[4] == -1)
  {
    v6 = *(*v2 + 8);
    if (v6 != 0xFFFF)
    {
      goto LABEL_16;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40) + 1;
  }

  *(a1 + 40) = v3;
  if (*(*v2 + 8) != -1 || v3 >= *(a1 + 24))
  {
    LOBYTE(v6) = 0;
    v7 = 0;
    v8 = 0;
    return v8 | v7 | v6;
  }

  LOWORD(v6) = *sub_2392CB9E0((a1 + 16), v3);
LABEL_16:
  v7 = v6 & 0xFF00;
  v8 = 0x10000;
  return v8 | v7 | v6;
}

uint64_t sub_2394E0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!**(a1 + 8))
  {
    return 0;
  }

  while (1)
  {
    v6 = sub_2394E08D8(a1, a3);
    v7 = *(a1 + 8);
    if (v6)
    {
      break;
    }

    *v7 = *(*v7 + 16);
    v8 = *(a1 + 8);
    *(v8 + 8) = -1;
    *(v8 + 10) = 0;
    *(v8 + 12) = -1;
    if (!**(a1 + 8))
    {
      return 0;
    }
  }

  v10 = *(v7 + 8);
  *(a2 + 8) = *(v7 + 16);
  *a2 = v10;
  return 1;
}

uint64_t sub_2394E0F94(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239537E94();
  }

  return *a1 + 8 * a2;
}

uint64_t sub_2394E0FBC(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239537E94();
  }

  return *a1 + 12 * a2;
}

const char *sub_2394E0FE8(unint64_t a1)
{
  if (a1 || WORD1(a1) > 4u)
  {
    return "----";
  }

  else
  {
    return off_278A833E8[(a1 >> 16) & 7];
  }
}

const char *sub_2394E101C(unint64_t a1, int a2)
{
  if (a1 || WORD1(a1) > 4u)
  {
    return "----";
  }

  v2 = (a1 >> 16) & 7;
  v3 = qword_2395D7F30[v2];
  v4 = *(&off_278A83410 + v2) + 8;
  v5 = 16 * v3;
  result = "----";
  while (*(v4 - 8) != a2)
  {
    v4 += 16;
    v5 -= 16;
    if (!v5)
    {
      return result;
    }
  }

  return *v4;
}

unint64_t sub_2394E108C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a1 + 24) = a2;
    v2 = sub_2394721B4(a2, 0, 0, a1);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if (!v2)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x2D00000000;
    v4 = 3;
  }

  return v3 | v4;
}

uint64_t sub_2394E10F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23947225C(result, 0, 0);
    result = sub_2394731C8(*(a1 + 24), a1 + 8);
    *(a1 + 24) = 0;
  }

  return result;
}

unint64_t sub_2394E1134(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(a3 + 264) - 1) >= 2 && (v3 = sub_2394E1180(a1, a2, a3), v3))
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

unint64_t sub_2394E1180(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v4 = sub_239471E34(*(a1 + 24), a2, a1 + 8, 1u);
  if (!v4)
  {
    LODWORD(v7) = 11;
    v8 = 193;
LABEL_10:
    *(a3 + 264) = 0;
    v9 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to send message counter synchronization request with error:%s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xBu, 1);
    }

    goto LABEL_14;
  }

  v5 = v4;
  sub_2393D9C18(0x18uLL, 0x26u, buf);
  v6 = *buf;
  v14 = *buf;
  if (!*buf)
  {
    LODWORD(v7) = 11;
    v8 = 196;
LABEL_9:
    sub_239470A14(v5);
    goto LABEL_10;
  }

  v7 = sub_2393F888C(*(*buf + 8), 8uLL);
  if (!v7)
  {
    sub_2393D97A0(v6, 8uLL, 0);
    sub_2393E99A4(buf, *(v6 + 8));
    sub_2394E1CAC(a3 + 264, *buf);
    v13 = 3;
    sub_239470470(v5, 500);
    v7 = sub_239470478(v5, 0, 0, &v14, &v13);
  }

  v8 = HIDWORD(v7);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_14:
  if (v14)
  {
    sub_2393D96C8(v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 | (v8 << 32);
}

unint64_t sub_2394E138C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, __int128 *a5, void **a6)
{
  v9 = sub_2394E141C(a1, a2, a5, a6);
  if (v9 || (v9 = (*(*a1 + 40))(a1, a3, a4), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_2394E141C(uint64_t a1, _BYTE *a2, __int128 *a3, void **a4)
{
  v7 = sub_2394BED64(a2, a4);
  v8 = v7;
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = (a1 + 64);
    v11 = 5920;
    do
    {
      if (!*v10)
      {
        v8 = 0;
        v9 = 0;
        v13 = *a3;
        *(v10 - 4) = *(a3 + 4);
        *(v10 - 2) = v13;
        *(v10 - 3) = *(a3 + 5);
        *(v10 - 1) = *(a3 + 3);
        *v10 = *a4;
        *a4 = 0;
        return v9 | v8;
      }

      v10 += 5;
      v11 -= 40;
    }

    while (v11);
    v12 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MCSP ReceiveTable Already Full", v15, 2u);
    }

    if (sub_2393D5398(1u))
    {
      v8 = 11;
      sub_2393D5320(0xBu, 1);
      v9 = 0x8E00000000;
    }

    else
    {
      v9 = 0x8E00000000;
      v8 = 11;
    }
  }

  return v9 | v8;
}

unint64_t sub_2394E1570(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!*(a3 + 2))
  {
    v6 = *a3;
    if (*(a3 + 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      v5 = sub_2394E15DC(a1, a2, a4);
    }

    else
    {
      if (*(a3 + 3))
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 == 1;
      }

      if (!v8)
      {
        goto LABEL_2;
      }

      v5 = sub_2394E17A4(a1, a2, a4);
    }

    v4 = v5 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

LABEL_2:
  v4 = 0;
  LODWORD(v5) = 0;
  return v5 | v4;
}

unint64_t sub_2394E15DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(*a3 + 8);
  v5 = *(*a3 + 24);
  v6 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Received MsgCounterSyncReq request", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  if (v4)
  {
    if (v5 == 8)
    {
      v7 = sub_2393E99A4(buf, v4);
      v8 = sub_2394E1CDC(v7, a2);
      v9 = v8;
      v10 = HIDWORD(v8);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 260;
      v9 = 24;
    }
  }

  else
  {
    v10 = 259;
    v9 = 13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = sub_2393C9138();
    *buf = 136315138;
    v15 = v11;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to handle MsgCounterSyncReq message with error:%s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v9 | (v10 << 32);
}

unint64_t sub_2394E17A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(*a3 + 8);
  v7 = *(*a3 + 24);
  v8 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Received MsgCounterSyncResp response", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  if ((*(a2 + 88) & 1) == 0)
  {
    sub_239537F2C();
  }

  if (*(*a3 + 24) != 12)
  {
    v13 = 288;
LABEL_15:
    v12 = 24;
    goto LABEL_16;
  }

  if (!v6)
  {
    v13 = 290;
    v12 = 13;
    goto LABEL_16;
  }

  if (v7 != 12)
  {
    v13 = 291;
    goto LABEL_15;
  }

  v9 = *v6;
  if (*v6)
  {
    sub_238EA6DC0(a2, buf);
    v10 = sub_239495304(*buf);
    sub_2393E99A4(&v18, (v6 + 1));
    v11 = sub_2394E1DC0(v10 + 264, v9, v18);
    v12 = v11;
    v13 = HIDWORD(v11);
    (*(**buf + 32))(*buf);
    if (!v12)
    {
      sub_238EA6DC0(a2, buf);
      v14 = sub_239495304(*buf);
      sub_2394E1B30(a1, *(v14 + 72));
      (*(**buf + 32))(*buf);
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 294;
    v12 = 174;
  }

LABEL_16:
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to handle MsgCounterSyncResp message with error:%s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
  }

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v12 | (v13 << 32);
}

uint64_t sub_2394E1A58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 1)
  {
    sub_238EA6DC0(a2, &v5);
    *(sub_239495304(v5) + 264) = 0;
    return (*(*v5 + 32))(v5);
  }

  else
  {
    v3 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "MCSP Timeout! On a already released session.", v4, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      return sub_2393D5320(0xBu, 1);
    }
  }

  return result;
}

void sub_2394E1B30(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 88);
  v4 = (a1 + 64);
  v5 = 5920;
  do
  {
    v6 = *v4;
    if (!*v4)
    {
      goto LABEL_14;
    }

    v10 = 0;
    v11[0] = 0;
    v11[16] = 0;
    v11[32] = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0;
    if (sub_2394BE79C(&v10, *(v6 + 8), *(v6 + 24), &v9))
    {
      v7 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "MessageCounterManager::ProcessPendingMessages: Failed to decode PacketHeader", v8, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xBu, 1);
      }
    }

    else
    {
      if (v11[0] != 1 || *sub_238DE36B8(v11) != a2)
      {
        goto LABEL_14;
      }

      (*(*v3 + 16))(v3, v4 - 4, v4, 0);
    }

    if (*v4)
    {
      sub_2393D96C8(*v4);
    }

    *v4 = 0;
LABEL_14:
    v4 += 5;
    v5 -= 40;
  }

  while (v5);
}

uint64_t sub_2394E1CAC(uint64_t result, void *a2)
{
  if (*result)
  {
    sub_239537FC4();
  }

  *result = 1;
  *(result + 8) = 0;
  *(result + 8) = *a2;
  return result;
}

uint64_t sub_2394E1CDC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 88) & 1) == 0)
  {
    sub_23953805C();
  }

  v2 = 0xF60000002DLL;
  sub_238EA6DC0(a2, &v5);
  v3 = v5;
  if ((*(*v5 + 16))(v5) != 3 && (*(*v3 + 16))(v3) != 4)
  {
    v2 = 0xEC0000002FLL;
  }

  (*(*v5 + 32))(v5);
  return v2;
}

uint64_t sub_2394E1DC0(uint64_t a1, int a2, void *a3)
{
  if (*a1 == 1)
  {
    if (*(a1 + 8) == *a3)
    {
      v10 = v3;
      v11 = v4;
      *a1 = 2;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 8) = a2;
      v8 = a1 + 16;
      v9 = 0;
      sub_2393F030C(&v8, 0x20uLL);
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = 0x4E00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x4A00000000;
    v6 = 3;
  }

  return v6 | v5;
}

void sub_2394E1E64(void *a1)
{
  sub_2394E1F24(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394E1EA4(uint64_t a1)
{
  sub_2394E1F24((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2394E1EE8(uint64_t a1)
{
  sub_2394E1F24((a1 - 16));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E1F24(void *a1)
{
  *a1 = &unk_284BBE148;
  a1[1] = &unk_284BBE1A0;
  a1[2] = &unk_284BBE1F0;
  for (i = 743; i != 3; i -= 5)
  {
    v3 = a1[i];
    if (v3)
    {
      sub_2393D96C8(v3);
    }

    a1[i] = 0;
  }

  return a1;
}

void *sub_2394E1FC4(void *a1)
{
  *a1 = &unk_284BBE278;
  a1[32] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 32));
  v2 = a1[6];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[6] = 0;
  return a1;
}

uint64_t sub_2394E2040(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    if (a3)
    {
      if (*(a1 + 272))
      {
        v6 = 0x2000000000;
        v7 = 3;
      }

      else
      {
        *(a1 + 288) = a2;
        sub_238EF9EEC(a1 + 256);
        v6 = 0;
        v7 = 0;
        *(a1 + 272) = a3;
        *(a3 + 40) = a1 + 256;
        *(a1 + 280) = a4;
        *(a1 + 248) = 0;
      }
    }

    else
    {
      v6 = 0x1F00000000;
      v7 = 47;
    }
  }

  else
  {
    v6 = 0x1E00000000;
    v7 = 47;
  }

  return v7 | v6;
}

void sub_2394E20F0(uint64_t a1)
{
  if (*(a1 + 249) == 1)
  {
    v2 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "ProcessOutputEvents: we are already in the middle of processing events, so nothing to do here; when we unwind to the processing loop the events will get processed.", v5, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xCu, 3);
    }

    return;
  }

  *(a1 + 249) = 1;
  *v5 = 0;
  v6 = 0;
  LOWORD(v7) = 95;
  sub_2394E6828((a1 + 8), v5);
  while (*v5 == 1)
  {
    v1 = v1 & 0xFFFF000000000000 | v7 | (v8 << 32);
    if (sub_2394E22A0(a1, v1, &v6))
    {
      goto LABEL_17;
    }

    if (!v7 && v8 == 64)
    {
LABEL_15:
      *(a1 + 248) = 1;
      goto LABEL_17;
    }

LABEL_14:
    sub_2394E6828((a1 + 8), v5);
  }

  if (*v5)
  {
    if (*v5 == 10)
    {
      goto LABEL_15;
    }

    (*(*a1 + 64))(a1, v5);
    goto LABEL_14;
  }

  v4 = *(a1 + 248);
  *(a1 + 249) = 0;
  if ((v4 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  (*(*a1 + 72))(a1);
LABEL_18:
  if (v6)
  {
    sub_2393D96C8(v6);
  }
}

unint64_t sub_2394E22A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 272);
  if (!v3)
  {
    return 0x7700000003;
  }

  v5 = a2;
  v6 = a2 != 0;
  v7 = BYTE4(a2);
  if (BYTE4(a2) != 64)
  {
    v6 = 1;
  }

  v9 = v6;
  sub_239470470(v3, *(a1 + 280));
  return sub_239470478(v3, v5, v7, a3, &v9);
}

unint64_t sub_2394E2328(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 272);
  if (!v4)
  {
    v6 = 0x8C00000000;
    goto LABEL_5;
  }

  if (v4 != a2)
  {
    v6 = 0x8E00000000;
LABEL_5:
    v7 = 3;
    goto LABEL_19;
  }

  v17 = *a4;
  *a4 = 0;
  v10 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v11 = sub_2394E783C(a1 + 8, a3, &v17, v10);
  if (v17)
  {
    sub_2393D96C8(v17);
  }

  v6 = v11 & 0xFFFFFFFF00000000;
  v17 = 0;
  v7 = v11;
  if (v11)
  {
    v12 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "OnMessageReceived: Failed to handle message: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xCu, 1);
    }

    v14 = sub_2394E8DC4(v11);
    sub_2394E7778(a1 + 8, v14);
  }

  else if (*(a3 + 4) || *(a3 + 6) != 2 || *a3 != 20)
  {
    *(a2 + 8) |= 0x40u;
  }

  sub_2394E20F0(a1);
LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

uint64_t sub_2394E2524(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    *buf = 67109376;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "OnResponseTimeout, ec: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(3u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xCu, 3);
  }

  result = (*(*a1 + 72))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394E2660(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, __int16 a6, int a7)
{
  v12 = sub_2394E2040(a1, a2, a3, a7);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v12 = sub_2394E6B90(a1 + 8, a4, a5, a6, a7);
    v13 = v12 & 0xFFFFFFFF00000000;
    if (!v12)
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }
  }

  return v13 | v12;
}

void sub_2394E26E8(uint64_t a1, unsigned int a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2 & 0xFFFC) == 8)
  {
    v5 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = sub_2394E8A98(a2);
      v10 = 2080;
      v11 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "NotifyEventHandled : Event %s Error %s", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394E8A98(a2);
      sub_2393C9138();
      sub_2393D5320(0xCu, 2);
    }

    *(a1 + 248) = 1;
  }

  else if (a3)
  {
    v6 = sub_2394E8DC4(a3);
    sub_2394E7778(a1 + 8, v6);
  }

  sub_2394E20F0(a1);
  v7 = *MEMORY[0x277D85DE8];
}

void *sub_2394E2848(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) | *(a1 + 9) & 0xFu;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (HIDWORD(v5))
  {
    if (v6)
    {
      v7 = 19;
    }

    else
    {
      v7 = 18;
    }

    v8 = 1;
  }

  else
  {
    v9 = HIDWORD(v6);
    v8 = HIDWORD(v6) != 0;
    v10 = v6 == 0;
    v11 = v6 != 0;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    if (v5)
    {
      v7 = v12;
    }

    else
    {
      v7 = v11;
    }

    if (v9)
    {
      v7 |= 0x10u;
    }
  }

  sub_2393D5D3C(a2, *(a1 + 8) | *(a1 + 9) & 0xF);
  sub_2393D5D3C(a2, v7);
  sub_2393D5D60(a2, *(a1 + 12), 2);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v14 = *(a1 + 24);
    if (!v14)
    {
      goto LABEL_24;
    }

    if (v8)
    {
      goto LABEL_20;
    }

LABEL_22:
    v14 = v14;
    v15 = a2;
    v16 = 4;
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_2393D5D60(a2, v13, 4);
    v14 = *(a1 + 24);
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_2393D5D60(a2, v13, 8);
  v14 = *(a1 + 24);
  if (v14)
  {
LABEL_20:
    v15 = a2;
    v16 = 8;
LABEL_23:
    sub_2393D5D60(v15, v14, v16);
  }

LABEL_24:
  sub_2393D5D60(a2, *(a1 + 40), 2);
  v17 = *(a1 + 32);
  if (v17)
  {
    sub_2393D5CDC(a2, v17, *(a1 + 40));
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    sub_2393D5CDC(a2, v18, *(a1 + 56));
  }

  return a2;
}

unint64_t sub_2394E2998(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v16 = v4;
  v17 = v4;
  v19 = 0;
  v20 = 0;
  v18 = v5;
  if (!v4)
  {
    v18 = 0;
  }

  v22 = 0;
  sub_2393D5964(&v16, &v22);
  sub_2393D5964(&v16, (a1 + 10));
  sub_2393D5A0C(&v16, (a1 + 12));
  v6 = v19;
  if (v19)
  {
    goto LABEL_4;
  }

  v9 = v22;
  v10 = v22 & 0xF;
  *(a1 + 16) = 0;
  *(a1 + 9) = v10;
  *(a1 + 8) = v9 & 0xF0;
  if ((*(a1 + 10) & 2) != 0)
  {
    if ((*(a1 + 10) & 0x10) != 0)
    {
      sub_2393D5AC4(&v16, (a1 + 16));
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2393D5A68(&v16, &v21);
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }

      *(a1 + 16) = v21;
    }
  }

  *(a1 + 24) = 0;
  if (*(a1 + 10))
  {
    if ((*(a1 + 10) & 0x10) != 0)
    {
      sub_2393D5AC4(&v16, (a1 + 24));
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2393D5A68(&v16, &v21);
      v6 = v19;
      if (v19)
      {
        goto LABEL_4;
      }

      *(a1 + 24) = v21;
    }
  }

  sub_2393D5A0C(&v16, (a1 + 40));
  v6 = v19;
  if (v19)
  {
LABEL_4:
    v7 = v6 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  v11 = *(a1 + 40);
  v12 = v18;
  if (v18 >= v11)
  {
    v13 = v17 - v16;
    *(a1 + 32) = v4 + v17 - v16;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    if (v12 > v11)
    {
      v14 = v11 + v13;
      *(a1 + 48) = v4 + v14;
      *(a1 + 56) = (*(*a2 + 24) - v14);
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      sub_2393D96C8(v15);
    }

    LODWORD(v6) = 0;
    v7 = 0;
    *(a1 + 64) = *a2;
    *a2 = 0;
  }

  else
  {
    v7 = 0x8A00000000;
    LODWORD(v6) = 13;
  }

  return v7 | v6;
}

uint64_t sub_2394E2BC0(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0xFFuLL, "%.*s", *(a1 + 40), *(a1 + 32));
  v4 = sub_2393D9044(0x26u);
  v5 = v4;
  if (a2 == 4)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "ReceiveInit", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
      goto LABEL_10;
    }
  }

  else if (a2 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "SendInit", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
LABEL_10:
      sub_2393D5320(0x26u, 4);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 9) | *(a1 + 8);
    *buf = 67109120;
    LODWORD(v21[0]) = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Proposed Transfer Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v14 = (*(a1 + 9) | *(a1 + 8));
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 10);
    *buf = 67109120;
    LODWORD(v21[0]) = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Range Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v15 = *(a1 + 10);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 12);
    *buf = 67109120;
    LODWORD(v21[0]) = v8;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Proposed Max Block Size: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v16 = *(a1 + 12);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 16);
    *buf = 67109376;
    LODWORD(v21[0]) = HIDWORD(v9);
    WORD2(v21[0]) = 1024;
    *(v21 + 6) = v9;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Start Offset: 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(4u))
  {
    v17 = HIDWORD(*(a1 + 16));
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 24);
    *buf = 67109376;
    LODWORD(v21[0]) = HIDWORD(v10);
    WORD2(v21[0]) = 1024;
    *(v21 + 6) = v10;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Proposed Max Length: 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(4u))
  {
    v18 = HIDWORD(*(a1 + 24));
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 67109120;
    LODWORD(v21[0]) = v11;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  File Designator Length: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v19 = *(a1 + 40);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21[0] = __str;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  File Designator: %s", buf, 0xCu);
  }

  result = sub_2393D5398(4u);
  if (result)
  {
    result = sub_2393D5320(0x26u, 4);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E3048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 != *(a2 + 56))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (v5 != *(a2 + 40))
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    v6 = 1;
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v6 = memcmp(*(a1 + 32), *(a2 + 32), v5) == 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = memcmp(*(a1 + 48), *(a2 + 48), v2) == 0;
LABEL_8:
  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 12) == *(a2 + 12)) & v6 & v7;
  }

  return 0;
}

void *sub_2394E3138(uint64_t a1, void *a2)
{
  sub_2393D5D3C(a2, *(a1 + 8) | *(a1 + 9) & 0xF);
  sub_2393D5D60(a2, *(a1 + 10), 2);
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2393D5CDC(a2, v4, *(a1 + 24));
  }

  return a2;
}

unint64_t sub_2394E319C(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v12 = v4;
  v13 = v4;
  v15 = 0;
  v16 = 0;
  v14 = v5;
  if (!v4)
  {
    v14 = 0;
  }

  sub_2393D5964(&v12, &v17);
  sub_2393D5A0C(&v12, (a1 + 10));
  v6 = v15;
  if (v15)
  {
    v7 = v15 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = v17;
    *(a1 + 9) = v17 & 0xF;
    *(a1 + 8) = v8 & 0xF0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v9 = v14;
    if (v14)
    {
      *(a1 + 16) = v4 + v13 - v12;
      *(a1 + 24) = v9;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    v6 = 0;
    v7 = 0;
    *(a1 + 32) = *a2;
    *a2 = 0;
  }

  return v7 | v6;
}

uint64_t sub_2394E32CC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x26u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "SendAccept", buf, 2u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 9) | *(a1 + 8);
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Transfer Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v7 = (*(a1 + 9) | *(a1 + 8));
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 10);
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Max Block Size: %u", buf, 8u);
  }

  result = sub_2393D5398(4u);
  if (result)
  {
    v8 = *(a1 + 10);
    result = sub_2393D5320(0x26u, 4);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E3478(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (v2)
  {
    v5 = memcmp(*(a1 + 16), *(a2 + 16), v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a1 + 10) == *(a2 + 10)) & v5;
  }

  else
  {
    return 0;
  }
}

void *sub_2394E3514(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) | *(a1 + 10) & 0xFu;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (HIDWORD(v5))
  {
    if (v6)
    {
      v7 = 19;
    }

    else
    {
      v7 = 18;
    }

    v8 = 1;
  }

  else
  {
    v9 = HIDWORD(v6);
    v8 = HIDWORD(v6) != 0;
    v10 = v6 == 0;
    v11 = v6 != 0;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    if (v5)
    {
      v7 = v12;
    }

    else
    {
      v7 = v11;
    }

    if (v9)
    {
      v7 |= 0x10u;
    }
  }

  sub_2393D5D3C(a2, *(a1 + 8) | *(a1 + 10) & 0xF);
  sub_2393D5D3C(a2, v7);
  sub_2393D5D60(a2, *(a1 + 12), 2);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v14 = *(a1 + 24);
    if (!v14)
    {
      goto LABEL_24;
    }

    if (v8)
    {
      goto LABEL_20;
    }

LABEL_22:
    v14 = v14;
    v15 = a2;
    v16 = 4;
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_2393D5D60(a2, v13, 4);
    v14 = *(a1 + 24);
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_2393D5D60(a2, v13, 8);
  v14 = *(a1 + 24);
  if (v14)
  {
LABEL_20:
    v15 = a2;
    v16 = 8;
LABEL_23:
    sub_2393D5D60(v15, v14, v16);
  }

LABEL_24:
  v17 = *(a1 + 32);
  if (v17)
  {
    sub_2393D5CDC(a2, v17, *(a1 + 40));
  }

  return a2;
}

unint64_t sub_2394E3640(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v18 = 0;
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v13 = v4;
  v14 = v4;
  v16 = 0;
  v17 = 0;
  v15 = v5;
  if (!v4)
  {
    v15 = 0;
  }

  sub_2393D5964(&v13, &v19);
  sub_2393D5964(&v13, (a1 + 9));
  sub_2393D5A0C(&v13, (a1 + 12));
  v6 = v16;
  if (v16)
  {
    goto LABEL_4;
  }

  v9 = v19;
  v10 = v19 & 0xF;
  *(a1 + 16) = 0;
  *(a1 + 10) = v10;
  *(a1 + 8) = v9 & 0xF0;
  if ((*(a1 + 9) & 2) != 0)
  {
    if ((*(a1 + 9) & 0x10) != 0)
    {
      sub_2393D5AC4(&v13, (a1 + 16));
      v6 = v16;
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2393D5A68(&v13, &v18);
      v6 = v16;
      if (v16)
      {
        goto LABEL_4;
      }

      *(a1 + 16) = v18;
    }
  }

  *(a1 + 24) = 0;
  if (*(a1 + 9))
  {
    if ((*(a1 + 9) & 0x10) != 0)
    {
      sub_2393D5AC4(&v13, (a1 + 24));
      v6 = v16;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_2393D5A68(&v13, &v18);
      v6 = v16;
      if (!v16)
      {
        *(a1 + 24) = v18;
        goto LABEL_8;
      }
    }

LABEL_4:
    v7 = v6 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

LABEL_8:
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = v15;
  if (v15)
  {
    *(a1 + 32) = v4 + v14 - v13;
    *(a1 + 40) = v11;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    sub_2393D96C8(v12);
  }

  LODWORD(v6) = 0;
  v7 = 0;
  *(a1 + 48) = *a2;
  *a2 = 0;
  return v7 | v6;
}

uint64_t sub_2394E3810(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x26u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "ReceiveAccept", buf, 2u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 10) | *(a1 + 8);
    *buf = 67109120;
    v14 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Transfer Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v9 = (*(a1 + 10) | *(a1 + 8));
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 9);
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Range Control: 0x%X", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v10 = *(a1 + 9);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 12);
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Max Block Size: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v11 = *(a1 + 12);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 24);
    *buf = 67109376;
    v14 = HIDWORD(v6);
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Length: 0x%08X%08X", buf, 0xEu);
  }

  result = sub_2393D5398(4u);
  if (result)
  {
    v12 = HIDWORD(*(a1 + 24));
    result = sub_2393D5320(0x26u, 4);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E3AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = memcmp(*(a1 + 32), *(a2 + 32), v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (*(a1 + 10) == *(a2 + 10) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 12) == *(a2 + 12))
  {
    return (*(a1 + 24) == *(a2 + 24)) & v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394E3B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v4[0] = *(*a2 + 8);
  v4[1] = v4[0];
  v6 = 0;
  v7 = 0;
  v5 = v2;
  if (!v4[0])
  {
    v5 = 0;
  }

  sub_2393D5A68(v4, (a1 + 8));
  return v6;
}

uint64_t sub_2394E3C30(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0x26u);
  v5 = v4;
  switch(a2)
  {
    case 20:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockAckEOF", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        goto LABEL_15;
      }

      break;
    case 19:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockAck", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        goto LABEL_15;
      }

      break;
    case 16:
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockQuery", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
LABEL_15:
        sub_2393D5320(0x26u, 4);
      }

      break;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 67109120;
    v11 = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Block Counter: %u", buf, 8u);
  }

  result = sub_2393D5398(4u);
  if (result)
  {
    v9 = *(a1 + 8);
    result = sub_2393D5320(0x26u, 4);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394E3E1C(uint64_t a1, void *a2)
{
  sub_2393D5D60(a2, *(a1 + 8), 4);
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2393D5CDC(a2, v4, *(a1 + 24));
  }

  return a2;
}

unint64_t sub_2394E3E68(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 8);
  v5 = *(*a2 + 24);
  v11 = v4;
  v12 = v4;
  v14 = 0;
  v15 = 0;
  v13 = v5;
  if (!v4)
  {
    v13 = 0;
  }

  sub_2393D5A68(&v11, (a1 + 8));
  v6 = v14;
  if (v14)
  {
    v7 = v14 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v8 = v13;
    if (v13)
    {
      *(a1 + 16) = v4 + v12 - v11;
      *(a1 + 24) = v8;
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    v6 = 0;
    v7 = 0;
    *(a1 + 32) = *a2;
    *a2 = 0;
  }

  return v7 | v6;
}

uint64_t sub_2394E3F74(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0x26u);
  v5 = v4;
  if (a2 == 18)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "BlockEOF", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
      goto LABEL_10;
    }
  }

  else if (a2 == 17)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Block", buf, 2u);
    }

    if (sub_2393D5398(4u))
    {
LABEL_10:
      sub_2393D5320(0x26u, 4);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 67109120;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Block Counter: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v10 = *(a1 + 8);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 24);
    *buf = 67109120;
    v13 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "  Data Length: %u", buf, 8u);
  }

  result = sub_2393D5398(4u);
  if (result)
  {
    v11 = *(a1 + 24);
    result = sub_2393D5320(0x26u, 4);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E4174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  if (v2)
  {
    v5 = memcmp(*(a1 + 16), *(a2 + 16), v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  return (*(a1 + 8) == *(a2 + 8)) & v5;
}

void *sub_2394E41E8(uint64_t a1, void *a2)
{
  sub_2393D5D60(a2, *(a1 + 8), 4);
  sub_2393D5D60(a2, *(a1 + 16), 8);
  return a2;
}

uint64_t sub_2394E4230(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 24);
  v5[0] = *(*a2 + 8);
  v5[1] = v5[0];
  v7 = 0;
  v8 = 0;
  v6 = v3;
  if (!v5[0])
  {
    v6 = 0;
  }

  sub_2393D5A68(v5, (a1 + 8));
  sub_2393D5AC4(v5, (a1 + 16));
  return v7;
}

uint64_t sub_2394E4310(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x26u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "BlockQueryWithSkip", buf, 2u);
  }

  if (sub_2393D5398(4u))
  {
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Block Counter: %u", buf, 8u);
  }

  if (sub_2393D5398(4u))
  {
    v7 = *(a1 + 8);
    sub_2393D5320(0x26u, 4);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 16);
    *buf = 67109376;
    v10 = HIDWORD(v4);
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "  Bytes To Skip: 0x%08X%08X", buf, 0xEu);
  }

  result = sub_2393D5398(4u);
  if (result)
  {
    v8 = HIDWORD(*(a1 + 16));
    result = sub_2393D5320(0x26u, 4);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394E44B8(void *a1)
{
  *a1 = &unk_284BBE2F0;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;
  return a1;
}

void sub_2394E4508(void *a1)
{
  *a1 = &unk_284BBE2F0;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E4578(void *a1)
{
  *a1 = &unk_284BBE358;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;
  return a1;
}

void sub_2394E45C8(void *a1)
{
  *a1 = &unk_284BBE358;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E4638(void *a1)
{
  *a1 = &unk_284BBE3B0;
  v2 = a1[6];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[6] = 0;
  return a1;
}

void sub_2394E4688(void *a1)
{
  *a1 = &unk_284BBE3B0;
  v2 = a1[6];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[6] = 0;

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E46F8(void *a1)
{
  *a1 = &unk_284BBE460;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;
  return a1;
}

void sub_2394E4748(void *a1)
{
  *a1 = &unk_284BBE460;
  v2 = a1[4];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394E47CC(uint64_t a1, unsigned __int16 *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  result = sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 43);
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_51;
  }

  v6 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = sub_2394E8A90(a2, v5);
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Got an event %s", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    sub_2394E8A90(a2, *a2);
    result = sub_2393D5320(0xCu, 3);
  }

  v7 = *a2;
  if (v7 <= 4)
  {
    if (*a2 > 2u)
    {
      if (v7 == 3)
      {
        goto LABEL_51;
      }

      if (v7 != 4)
      {
        goto LABEL_52;
      }

      v10 = sub_2394E522C(a1, a2);
    }

    else
    {
      if (v7 == 1)
      {
        result = sub_2394E52CC(a1, a2);
        if (result)
        {
          v11 = sub_2393D9044(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = sub_2393C9138();
            *buf = 136315650;
            v23 = v12;
            v24 = 2080;
            v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
            v26 = 1024;
            v27 = 76;
            _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
          }

          result = sub_2393D5398(1u);
          if (result)
          {
            sub_2393C9138();
            result = sub_2393D5320(0, 1);
          }
        }

        if (!a2[8] && a2[9] == 2 && *(a2 + 20) == 20)
        {
          result = sub_2394E508C(a1, 0, 0);
          if (result)
          {
            v13 = sub_2393D9044(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = sub_2393C9138();
              *buf = 136315650;
              v23 = v14;
              v24 = 2080;
              v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
              v26 = 1024;
              v27 = 80;
              _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
            }

            result = sub_2393D5398(1u);
            if (result)
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_51;
      }

      if (v7 != 2)
      {
        goto LABEL_52;
      }

      v10 = sub_2394E4FF4(a1);
    }

    result = sub_2394E4DF0(a1, v10);
    goto LABEL_51;
  }

  if (*a2 < 9u)
  {
    goto LABEL_51;
  }

  if (v7 == 9)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = a2[8];
      *buf = 67109120;
      LODWORD(v23) = v17;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Got StatusReport %x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      v21 = a2[8];
      sub_2393D5320(0xCu, 1);
    }

    result = sub_2394E508C(a1, 0x40000000ACLL, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp");
    if (result)
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_2393C9138();
        *buf = 136315650;
        v23 = v19;
        v24 = 2080;
        v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v26 = 1024;
        v27 = 64;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_51;
  }

  if (v7 == 10)
  {
    result = sub_2394E508C(a1, 0x43000000ACLL, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp");
    if (result)
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_2393C9138();
        *buf = 136315650;
        v23 = v16;
        v24 = 2080;
        v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v26 = 1024;
        v27 = 67;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_51;
  }

  if (v7 != 11)
  {
LABEL_52:
    sub_238EAC830();
  }

  result = sub_2394E508C(a1, 0x4600000032, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp");
  if (result)
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315650;
      v23 = v9;
      v24 = 2080;
      v25 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
      v26 = 1024;
      v27 = 70;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
LABEL_50:
      sub_2393C9138();
      result = sub_2393D5320(0, 1);
    }
  }

LABEL_51:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E4DF0(uint64_t result, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = result;
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = sub_2393C9138();
      v11 = 2080;
      v12 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
      v13 = 1024;
      v14 = 175;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v5 = sub_2394E8DC4(a2);
    result = sub_2394E7778(v3 + 16, v5);
    if (result)
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_2393C9138();
        *buf = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v13 = 1024;
        v14 = 176;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
        result = sub_2393D5320(0, 1);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394E4FF4(uint64_t a1)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 146);
  if (*(a1 + 368))
  {
    v2 = sub_2394E5A98(a1 + 280, a1 + 16);
    if (!v2)
    {
      v2 = (*(**(a1 + 368) + 16))(*(a1 + 368), a1 + 280);
    }

    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v3 = 0x9300000000;
    LODWORD(v2) = 3;
  }

  return v3 | v2;
}

uint64_t sub_2394E508C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 155);
  v6 = *(a1 + 368);
  if (v6)
  {
    if ((*(*v6 + 24))(v6, a1 + 280, a2, a3))
    {
      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = sub_2393C9138();
        v14 = 2080;
        v15 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v16 = 1024;
        v17 = 158;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }
    }

    sub_2394E5634(a1);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0x9C00000000;
    v8 = 3;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

uint64_t sub_2394E522C(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 165);
  if (!*(a1 + 368))
  {
    return 0xA600000003;
  }

  sub_238DB6950(v5, *(a2 + 16), *(a2 + 24));
  return (*(**(a1 + 368) + 32))(*(a1 + 368), a1 + 280, v5);
}

uint64_t sub_2394E52CC(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 125);
  v4 = *(a1 + 256);
  if (!v4)
  {
    return 0x7F00000003;
  }

  if (*(a2 + 16) | *(a2 + 18))
  {
    v5 = *(a2 + 20);
  }

  else
  {
    v5 = *(a2 + 20);
    if (v5 == 64)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v6 = 1;
LABEL_8:
  v10 = v6;
  v7 = sub_239470478(v4, *(a2 + 16), v5, (a2 + 8), &v10);
  if (v7)
  {
    sub_2394E508C(a1, v7, v8);
  }

  return v7;
}

unint64_t sub_2394E5390(uint64_t a1, uint64_t a2, uint64_t a3, _WORD **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 101);
  if (a2)
  {
    if (*(a3 + 4))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a3 + 6) == 2;
    }

    if (!v8 || *a3 != 1)
    {
      goto LABEL_9;
    }

    sub_238EA6DC0(a2, buf);
    v13 = *(*buf + 24);
    (*(**buf + 32))(*buf);
    sub_238EA6DC0(a2, buf);
    v14 = (*(**buf + 48))(*buf);
    (*(**buf + 32))(*buf);
    if (!v13)
    {
      v11 = 47;
      LODWORD(v12) = 110;
      goto LABEL_20;
    }

    if (!v14)
    {
      v11 = 47;
      LODWORD(v12) = 111;
      goto LABEL_20;
    }

    *(a1 + 336) = v13;
    *(a1 + 344) = v14;
    v15 = sub_2394E95B8(a1, *(a1 + 360), 0, 16, 1024, 300000, 50);
    v11 = v15;
    if (v15)
    {
      v12 = HIDWORD(v15);
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_2393C9138();
        *buf = 136315650;
        *&buf[4] = v17;
        v21 = 2080;
        v22 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v23 = 1024;
        v24 = 117;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }
    }

    else
    {
LABEL_9:
      v10 = sub_2394E8F64(a1, a2, a3, a4);
      v11 = v10;
      v12 = HIDWORD(v10);
    }
  }

  else
  {
    v11 = 3;
    LODWORD(v12) = 103;
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return v11 | (v12 << 32);
}

double sub_2394E5634(uint64_t a1)
{
  sub_23947632C("src/protocols/bdx/BdxTransferDiagnosticLog.cpp", 181);
  sub_2394E8E70(a1);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 352) = 1;
    sub_239470A14(v2);
    *(a1 + 352) = 0;
    *(a1 + 256) = 0;
  }

  return sub_2394E5CE8(a1 + 280);
}

uint64_t sub_2394E569C(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = (*(**(a1 + 360) + 80))(*(a1 + 360), sub_2394E5A70, a1);
  if ((*(a1 + 352) & 1) == 0)
  {
    *(a1 + 256) = 0;
    result = sub_2394E508C(a1, 0xD5000000ACLL, "src/protocols/bdx/BdxTransferDiagnosticLog.cpp");
    if (result)
    {
      v3 = sub_2393D9044(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v6 = sub_2393C9138();
        v7 = 2080;
        v8 = "src/protocols/bdx/BdxTransferDiagnosticLog.cpp";
        v9 = 1024;
        v10 = 213;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
        result = sub_2393D5320(0, 1);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2394E581C(uint64_t a1, int a2)
{
  v2 = *(a1 + 256);
  if (!v2 || *(v2 + 88) != 1)
  {
    return 0;
  }

  sub_238EA6DC0(v2, &v6);
  v4 = v6[24] == a2;
  (*(*v6 + 32))();
  return v4;
}

void *sub_2394E58A4(void *a1)
{
  *a1 = &unk_284BBE510;
  a1[1] = &unk_284BBE570;
  sub_2394E5634(a1);

  return sub_2394E8DFC(a1);
}

void sub_2394E5918(void *a1)
{
  sub_2394E58A4(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E5960(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = &unk_284BBE510;
  *a1 = &unk_284BBE570;
  sub_2394E5634((a1 - 1));

  return sub_2394E8DFC(v1);
}

void sub_2394E59D4(void *a1)
{
  v1 = a1 - 1;
  *(a1 - 1) = &unk_284BBE510;
  *a1 = &unk_284BBE570;
  sub_2394E5634((a1 - 1));
  sub_2394E8DFC(v1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394E5A98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      v2 = 0x1F00000000;
      v3 = 3;
    }

    else
    {
      v4 = *(a2 + 88);
      if (v4 > 0x20)
      {
        v2 = 0x2400000000;
        v3 = 30;
      }

      else
      {
        v5 = *(a2 + 80);
        *(a1 + 48) = a2;
        *(a1 + 8) = v4;
        memcpy((a1 + 9), v5, v4);
        v2 = 0;
        v3 = 0;
      }
    }
  }

  else
  {
    v2 = 0x1E00000000;
    v3 = 47;
  }

  return v3 | v2;
}

unint64_t sub_2394E5B2C(uint64_t a1)
{
  v2 = sub_2394E5BA8(a1);
  if (!v2)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      v4 = 0x2F00000000;
      LODWORD(v2) = 3;
      return v4 | v2;
    }

    v9 = 0;
    v10 = 0;
    v6[0] = 16;
    v7 = *(v3 + 32);
    v8 = *(v3 + 16);
    v2 = sub_2394E6BDC(v3, v6);
  }

  v4 = v2 & 0xFFFFFFFF00000000;
  return v4 | v2;
}

uint64_t sub_2394E5BA8(uint64_t a1)
{
  sub_23947632C("src/protocols/bdx/BdxTransferProxyDiagnosticLog.cpp", 89);
  if (*(a1 + 56))
  {
    v2 = *(a1 + 64);
    v3 = v2 == 0;
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x5B00000000;
    }

    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = 0x5A00000000;
    v5 = 3;
  }

  return v5 | v4;
}

unint64_t sub_2394E5C1C(uint64_t a1, int a2)
{
  v4 = sub_2394E5BA8(a1);
  if (!v4)
  {
    if (!*(a1 + 48))
    {
      v6 = 0x3D00000000;
      LODWORD(v4) = 3;
      return v6 | v4;
    }

    v5 = sub_2394E8DC4(a2);
    v4 = sub_2394E7778(*(a1 + 48), v5);
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

unint64_t sub_2394E5C94(uint64_t a1)
{
  v2 = sub_2394E5BA8(a1);
  if (!v2)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      v4 = 0x4600000000;
      LODWORD(v2) = 3;
      return v4 | v2;
    }

    v2 = sub_2394E75C8(v3);
  }

  v4 = v2 & 0xFFFFFFFF00000000;
  return v4 | v2;
}

double sub_2394E5CE8(uint64_t a1)
{
  if (!sub_2394E5BA8(a1))
  {
    if (*(a1 + 48))
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

unint64_t sub_2394E5D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0x1A00000000;
LABEL_6:
    v5 = 47;
    return v5 | v4;
  }

  if (!a3)
  {
    v4 = 0x1B00000000;
    goto LABEL_6;
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v3 = sub_2394721B4(a3, 0x20000, 1u, a1);
  v4 = v3 & 0xFFFFFFFF00000000;
  v5 = v3;
  return v5 | v4;
}

uint64_t sub_2394E5DE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[3];
  v10 = a1[1];
  v11 = v4;
  v9 = a1 + 4;
  v5 = sub_2394E6290(a1 + 5, &v11, &v9, &v10);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    *a3 = v5;
  }

  else
  {
    v6 = 0x2600000000;
    v7 = 11;
  }

  return v7 | v6;
}

void *sub_2394E5E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v4 = a1;
  v5 = a3;
  return sub_2394E6290((a1 + 8), &v6, &v4, &v5);
}

uint64_t sub_2394E5EA8(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = (result + 8);
  if (*(result + 8))
  {
    result = *(result + 16);
    if (result)
    {
      result = sub_23947225C(result, 0x20000, 1u);
      if (result)
      {
        v2 = sub_2393D9044(0);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v5 = sub_2393C9138();
          v6 = 2080;
          v7 = "src/protocols/bdx/BdxTransferServer.cpp";
          v8 = 1024;
          v9 = 55;
          _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
        }

        result = sub_2393D5398(1u);
        if (result)
        {
          sub_2393C9138();
          result = sub_2393D5320(0, 1);
        }
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394E5FF8(void *a1)
{
  sub_2394E6030(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394E6030(void *a1)
{
  *a1 = &unk_284BBE650;
  sub_2394E5EA8(a1);
  a1[4] = &unk_284BBE6A0;
  sub_2393D6A10(a1 + 7, (a1 + 5), sub_2394E6198);
  sub_2394E6264(a1 + 5);
  return a1;
}

void *sub_2394E60B8(void *a1)
{
  *a1 = &unk_284BBE6A0;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394E6198);
  sub_2394E6264(a1 + 1);
  return a1;
}

void sub_2394E6118(void *a1)
{
  *a1 = &unk_284BBE6A0;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394E6198);
  sub_2394E6264(a1 + 1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394E61B4(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_2395380F4();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t *sub_2394E6264(uint64_t *result)
{
  if ((byte_27DF7BD68 & 1) == 0)
  {
    if (*result)
    {
      sub_2395381A4(result);
    }
  }

  return result;
}

void *sub_2394E6290(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_2393D52C4(0x180uLL);
  v9 = v8;
  if (v8)
  {
    sub_2394E633C(v8, *a2, *a3, *a4);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v9;
      v10[1] = a1 + 2;
      v10[2] = 0;
      v11 = a1[4];
      v10[2] = v11;
      *(v11 + 8) = v10;
      a1[4] = v10;
      v12 = a1[1];
      v13 = *a1 + 1;
      *a1 = v13;
      if (v13 > v12)
      {
        a1[1] = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_2394E633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_284BBE6F8;
  *(a1 + 8) = &unk_284BBE758;
  sub_2394E6448(a1 + 16);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 500;
  *a1 = &unk_284BBE510;
  *(a1 + 8) = &unk_284BBE570;
  *(a1 + 280) = &unk_284BBE5D8;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a4;
  *(a1 + 368) = a2;
  *(a1 + 376) = a3;
  return a1;
}

double sub_2394E6448(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  *(a1 + 9) = 0;
  *(a1 + 40) = 0;
  *(a1 + 58) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 114) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 172) = 0xFFFFFFFF00000000;
  *(a1 + 180) = 0;
  *(a1 + 224) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 232) = 1;
  *(a1 + 4) = 0;
  return result;
}

void sub_2394E64BC(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2393D96C8(v6);
  }

  *(a2 + 16) = 95;
  *(a2 + 8) = 0;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 28) = a3;
    *(a1 + 232) = 0;
  }

  if (*(a1 + 233) != 1 || a3 - *(a1 + 28) < *(a1 + 54))
  {
    v7 = *a1;
    if (v7 > 4)
    {
      if (*a1 <= 7u)
      {
        if (v7 != 5)
        {
          if (v7 == 6)
          {
            v17 = *(a1 + 23);
            *a2 = 6;
            v18 = *(a2 + 8);
            if (v18)
            {
              sub_2393D96C8(v18);
            }

            *(a2 + 8) = 0;
            *(a2 + 16) = v17;
            goto LABEL_44;
          }

          if (v7 != 7)
          {
            goto LABEL_32;
          }
        }

LABEL_27:
        *a2 = v7;
LABEL_33:
        v16 = *(a2 + 8);
        if (v16)
        {
          sub_2393D96C8(v16);
        }

        *(a2 + 8) = 0;
        *(a2 + 16) = 95;
LABEL_44:
        if (!*a2 && *(a1 + 2) == 8)
        {
          v20 = a1[24];
          *a2 = 10;
          v21 = *(a2 + 8);
          if (v21)
          {
            sub_2393D96C8(v21);
          }

          *(a2 + 8) = 0;
          *(a2 + 16) = v20;
        }

        *a1 = 0;
        return;
      }

      if (v7 == 8)
      {
        goto LABEL_27;
      }

      if (v7 == 9 || v7 == 10)
      {
        v11 = a1[24];
        *a2 = v7;
        v12 = *(a2 + 8);
        if (v12)
        {
          sub_2393D96C8(v12);
        }

        *(a2 + 8) = 0;
        *(a2 + 16) = v11;
        goto LABEL_44;
      }

LABEL_32:
      *a2 = 0;
      goto LABEL_33;
    }

    if (*a1 <= 1u)
    {
      if (*a1)
      {
        v13 = *(a1 + 44) | (a1[90] << 32);
        v14 = *(a1 + 5);
        *(a1 + 5) = 0;
        *a2 = 1;
        v15 = *(a2 + 8);
        if (v15)
        {
          sub_2393D96C8(v15);
        }

        *(a2 + 8) = v14;
        *(a2 + 16) = v13;
        *(a2 + 20) = BYTE4(v13);
        *(a1 + 28) = a3;
        goto LABEL_44;
      }

      goto LABEL_32;
    }

    switch(v7)
    {
      case 2u:
        v22 = *(a1 + 28);
        v23 = *(a1 + 36);
        v24 = *(a1 + 44);
        v25 = *(a1 + 13);
        v8 = *(a1 + 5);
        *(a1 + 5) = 0;
        v9 = 2;
        break;
      case 3u:
        v22 = *(a1 + 7);
        v23 = *(a1 + 8);
        *&v24 = *(a1 + 18);
        v8 = *(a1 + 5);
        *(a1 + 5) = 0;
        v9 = 3;
        break;
      case 4u:
        v22 = *(a1 + 76);
        *&v23 = *(a1 + 21);
        v8 = *(a1 + 5);
        *(a1 + 5) = 0;
        v9 = 4;
        break;
      default:
        goto LABEL_32;
    }

    *a2 = v9;
    v19 = *(a2 + 8);
    if (v19)
    {
      sub_2393D96C8(v19);
    }

    *(a2 + 8) = v8;
    *(a2 + 16) = v22;
    *(a2 + 32) = v23;
    *(a2 + 48) = v24;
    *(a2 + 64) = v25;
    goto LABEL_44;
  }

  *a2 = 11;
  v10 = *(a2 + 8);
  if (v10)
  {
    sub_2393D96C8(v10);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 95;
  *(a1 + 2) = 8;
  *(a1 + 233) = 0;
}

uint64_t sub_2394E6764@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_2394E6774@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = *a2;
  *a2 = 0;
  *(a3 + 16) = result;
  *(a3 + 20) = BYTE4(result);
  return result;
}

__n128 sub_2394E6798@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = *a2;
  *a2 = 0;
  v3 = *(a1 + 16);
  *(a3 + 16) = *a1;
  *(a3 + 32) = v3;
  result = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 64) = *(a1 + 48);
  return result;
}

__n128 sub_2394E67C8@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *(a3 + 16) = *a1;
  *(a3 + 32) = v4;
  *(a3 + 48) = *(a1 + 32);
  *a3 = 3;
  *(a3 + 8) = *a2;
  *a2 = 0;
  return result;
}

uint64_t sub_2394E67F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 6;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_2394E6800@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  a3->n128_u16[0] = 4;
  a3->n128_u64[1] = *a2;
  *a2 = 0;
  result = *a1;
  a3[1] = *a1;
  a3[2].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

void sub_2394E6828(unsigned __int16 *a1, uint64_t a2)
{
  v4 = (*(*off_27DF765E8 + 2))(off_27DF765E8);

  sub_2394E64BC(a1, a2, v4);
}

uint64_t sub_2394E6898(uint64_t a1, char a2, char *a3, int a4)
{
  if (*(a1 + 2))
  {
    return 0x9000000003;
  }

  *(a1 + 3) = a2;
  *(a1 + 216) = a4;
  *(a1 + 4) = *a3;
  v6 = *(a3 + 1);
  *(a1 + 6) = v6;
  v7 = *(a3 + 1);
  *(a1 + 16) = v7;
  v8 = *(a3 + 2);
  *(a1 + 24) = v8;
  v16 = &unk_284BBE2F0;
  v17 = *a3;
  v18 = 0;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = *(a3 + 3);
  v23 = *(a3 + 16);
  v9 = *(a3 + 6);
  v24 = *(a3 + 5);
  v25 = v9;
  v26 = 0;
  v10 = sub_2394E6A4C(&v16, (a1 + 40));
  v11 = v10;
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (*(a1 + 3) == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    v14 = sub_2393D9044(0x26u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v15, 2u);
    }

    if (sub_2393D5398(4u))
    {
      sub_2393D5320(0x26u, 4);
    }

    sub_2394E2BC0(&v16, v13);
    v12 = 0;
    v11 = 0;
    *(a1 + 2) = 2;
    *(a1 + 233) = 1;
    *a1 = 1;
    *(a1 + 176) = 0x20000;
    *(a1 + 180) = v13;
  }

  v16 = &unk_284BBE2F0;
  if (v26)
  {
    sub_2393D96C8(v26);
  }

  return v11 | v12;
}

unint64_t sub_2394E6A4C(uint64_t a1, _WORD **a2)
{
  v4 = (*(*a1 + 16))(a1);
  sub_2393D9C18(v4 + 16, 0x26u, &v13);
  v5 = *(v13 + 8);
  v6 = v5 + *(v13 + 24);
  v7 = sub_2393D980C(v13);
  if (v7 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v14 = v6;
  v15 = v8;
  v16 = 0;
  if (!v5)
  {
    v15 = 0;
  }

  v17 = v13;
  if (v13)
  {
    (*(*a1 + 8))(a1, &v14);
    sub_2393D9FF8(&v14, &v17, &v13);
    if (*a2)
    {
      sub_2393D96C8(*a2);
    }

    v9 = v13;
    *a2 = v13;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 41;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 11;
    }

    if (v17)
    {
      sub_2393D96C8(v17);
    }
  }

  else
  {
    v10 = 35;
    v11 = 11;
  }

  return v11 | (v10 << 32);
}

uint64_t sub_2394E6B90(uint64_t a1, char a2, char a3, __int16 a4, int a5)
{
  if (*(a1 + 2))
  {
    v5 = 0xBB00000000;
    v6 = 3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    *(a1 + 3) = a2;
    *(a1 + 216) = a5;
    *(a1 + 4) = a3;
    *(a1 + 6) = a4;
    *(a1 + 2) = 1;
  }

  return v6 | v5;
}

unint64_t sub_2394E6BDC(uint64_t a1, char *a2)
{
  if (*(a1 + 2) != 3)
  {
    v3 = 0xCE00000000;
    goto LABEL_5;
  }

  if (!*a1)
  {
    if ((*a2 & *(a1 + 56)) == 0)
    {
      v3 = 0xD300000000;
      goto LABEL_11;
    }

    v6 = *(a2 + 1);
    if (v6 > *(a1 + 58))
    {
      v3 = 0xD400000000;
LABEL_11:
      LODWORD(v4) = 47;
      return v4 | v3;
    }

    *(a1 + 32) = v6;
    if (*(a1 + 3) == 1)
    {
      *(a1 + 16) = *(a2 + 1);
      v7 = *(a2 + 2);
      *(a1 + 24) = v7;
      v14 = &unk_284BBE3B0;
      v16 = 0;
      v15 = *a2;
      LOBYTE(v17) = *(a1 + 9);
      v18 = *(a2 + 1);
      v19 = *(a2 + 1);
      v20 = v7;
      v8 = *(a2 + 4);
      v21 = *(a2 + 3);
      v22 = v8;
      v23 = 0;
      v4 = sub_2394E6A4C(&v14, (a1 + 40));
      v9 = 0;
      if (!v4)
      {
        v10 = sub_2393D9044(0x26u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v13, 2u);
        }

        if (sub_2393D5398(4u))
        {
          sub_2393D5320(0x26u, 4);
        }

        v9 = 5;
        sub_2394E3810(&v14);
      }

      v14 = &unk_284BBE3B0;
      if (v23)
      {
        sub_2393D96C8(v23);
      }

      if (v4)
      {
LABEL_22:
        v3 = v4 & 0xFFFFFFFF00000000;
        return v4 | v3;
      }
    }

    else
    {
      v14 = &unk_284BBE358;
      v15 = *a2;
      v16 = *(a1 + 9);
      v17 = *(a2 + 1);
      v11 = *(a2 + 4);
      v19 = *(a2 + 3);
      v20 = v11;
      v21 = 0;
      v4 = sub_2394E6A4C(&v14, (a1 + 40));
      if (v4)
      {
        v9 = 0;
      }

      else
      {
        v12 = sub_2393D9044(0x26u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v13, 2u);
        }

        if (sub_2393D5398(4u))
        {
          sub_2393D5320(0x26u, 4);
        }

        v9 = 2;
        sub_2394E32CC(&v14);
      }

      v14 = &unk_284BBE358;
      if (v21)
      {
        sub_2393D96C8(v21);
      }

      if (v4)
      {
        goto LABEL_22;
      }
    }

    *(a1 + 2) = 4;
    if (*(a1 + 3) == 1)
    {
      if (*(a1 + 8) != 32)
      {
        goto LABEL_37;
      }
    }

    else if (*(a1 + 3) || *(a1 + 8) != 16)
    {
      goto LABEL_37;
    }

    *(a1 + 233) = 1;
LABEL_37:
    v3 = 0;
    LODWORD(v4) = 0;
    *a1 = 1;
    *(a1 + 176) = 0x20000;
    *(a1 + 180) = v9;
    return v4 | v3;
  }

  v3 = 0xCF00000000;
LABEL_5:
  LODWORD(v4) = 3;
  return v4 | v3;
}

uint64_t sub_2394E6F08(uint64_t a1, __int16 a2)
{
  if (*(a1 + 2) == 3)
  {
    if (*a1)
    {
      v3 = 0x11000000000;
      v4 = 3;
    }

    else
    {
      sub_2394E6F88(a1, a2);
      v3 = 0;
      v4 = 0;
      *(a1 + 2) = 7;
    }
  }

  else
  {
    v3 = 0x10F00000000;
    v4 = 3;
  }

  return v4 | v3;
}

void sub_2394E6F88(uint64_t a1, __int16 a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = a2;
  sub_23946FC6C(v18, 1, 0x20000, a2);
  v3 = sub_23946FEFC(v18);
  sub_2393D9C18(v3 + 16, 0x26u, buf);
  v4 = *(*buf + 8);
  v5 = v4 + *(*buf + 24);
  v6 = sub_2393D980C(*buf);
  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  v14 = v5;
  v15 = v7;
  v16 = 0;
  if (!v4)
  {
    v15 = 0;
  }

  v17 = *buf;
  if (*buf)
  {
    sub_23946FE8C(v18, &v14);
    sub_2393D9FF8(&v14, &v17, buf);
    v8 = *(a1 + 40);
    if (v8)
    {
      sub_2393D96C8(v8);
    }

    v9 = *buf;
    *(a1 + 40) = *buf;
    if (v9)
    {
      *a1 = 1;
      *(a1 + 176) = 0;
      *(a1 + 180) = 64;
    }

    else
    {
      v10 = sub_2393D9044(0xCu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sub_2393C9138();
        *buf = 136315394;
        *&buf[4] = "PrepareStatusReport";
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s: error preparing message: %s", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xCu, 1);
      }

      *a1 = 10;
    }

    v12 = v17;
    *(a1 + 2) = 8;
    *(a1 + 233) = 0;
    if (v12)
    {
      sub_2393D96C8(v12);
    }
  }

  else
  {
    *a1 = 10;
    *(a1 + 2) = 8;
    *(a1 + 233) = 0;
  }

  if (v19)
  {
    sub_2393D96C8(v19);
  }

  v13 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2394E7198(uint64_t a1)
{
  if (*(a1 + 2) == 4)
  {
    v11 = v1;
    v12 = v2;
    if (*(a1 + 3))
    {
      v4 = 0x11D00000000;
LABEL_9:
      v5 = 3;
      return v4 | v5;
    }

    if (*a1)
    {
      v4 = 0x11E00000000;
      goto LABEL_9;
    }

    if (*(a1 + 233))
    {
      v4 = 0x11F00000000;
      goto LABEL_9;
    }

    v9 = &unk_284BBE408;
    v10 = *(a1 + 212);
    v7 = sub_2394E6A4C(&v9, (a1 + 40));
    if (v7)
    {
      v4 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v7) = 0;
      v4 = 0;
      *(a1 + 233) = 1;
      v8 = *(a1 + 212);
      *(a1 + 208) = v8;
      *(a1 + 212) = v8 + 1;
      *a1 = 1;
      *(a1 + 176) = 0x20000;
      *(a1 + 180) = 16;
    }

    v5 = v7;
  }

  else
  {
    v4 = 0x11C00000000;
    v5 = 3;
  }

  return v4 | v5;
}

unint64_t sub_2394E72AC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 2) == 4)
  {
    v13 = v2;
    v14 = v3;
    if (*(a1 + 3))
    {
      v5 = 0x13300000000;
LABEL_9:
      v6 = 3;
      return v5 | v6;
    }

    if (*a1)
    {
      v5 = 0x13400000000;
      goto LABEL_9;
    }

    if (*(a1 + 233))
    {
      v5 = 0x13500000000;
      goto LABEL_9;
    }

    v10 = &unk_284BBE4B8;
    v11 = *(a1 + 212);
    v12 = *a2;
    v8 = sub_2394E6A4C(&v10, (a1 + 40));
    if (v8)
    {
      v5 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v8) = 0;
      v5 = 0;
      *(a1 + 233) = 1;
      v9 = *(a1 + 212);
      *(a1 + 208) = v9;
      *(a1 + 212) = v9 + 1;
      *a1 = 1;
      *(a1 + 176) = 0x20000;
      *(a1 + 180) = 21;
    }

    v6 = v8;
  }

  else
  {
    v5 = 0x13200000000;
    v6 = 3;
  }

  return v5 | v6;
}

unint64_t sub_2394E73C8(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 2) != 4)
  {
    v3 = 0x14700000000;
    goto LABEL_7;
  }

  if (*(a1 + 3) != 1)
  {
    v3 = 0x14800000000;
    goto LABEL_7;
  }

  if (*a1)
  {
    v3 = 0x14900000000;
LABEL_7:
    v4 = 3;
    return v3 | v4;
  }

  if (*(a1 + 233))
  {
    v3 = 0x14A00000000;
    goto LABEL_7;
  }

  v7 = *a2;
  if (*a2 && (v8 = a2[1], v8 <= *(a1 + 32)))
  {
    v15 = &unk_284BBE460;
    v18 = v8;
    v19 = 0;
    v16 = *(a1 + 204);
    v17 = v7;
    v9 = sub_2394E6A4C(&v15, (a1 + 40));
    v10 = v9;
    if (v9)
    {
      v3 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (*(a2 + 16))
      {
        v11 = 18;
      }

      else
      {
        v11 = 17;
      }

      if (*(a2 + 16) == 1)
      {
        v12 = sub_2393D9044(0x26u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v14, 2u);
        }

        if (sub_2393D5398(4u))
        {
          sub_2393D5320(0x26u, 4);
        }

        sub_2394E3F74(&v15, 18);
        *(a1 + 2) = 5;
      }

      v10 = 0;
      v3 = 0;
      *(a1 + 233) = 1;
      v13 = *(a1 + 204);
      *(a1 + 200) = v13;
      *(a1 + 204) = v13 + 1;
      *a1 = 1;
      *(a1 + 176) = 0x20000;
      *(a1 + 180) = v11;
    }

    v15 = &unk_284BBE460;
    if (v19)
    {
      sub_2393D96C8(v19);
    }

    v4 = v10;
  }

  else
  {
    v3 = 0x14D00000000;
    v4 = 47;
  }

  return v3 | v4;
}

unint64_t sub_2394E75C8(uint64_t a1)
{
  if (!*(a1 + 3))
  {
    v16 = v1;
    v17 = v2;
    v6 = *(a1 + 2);
    if ((v6 | 2) != 6)
    {
      v3 = 0x16D00000000;
      goto LABEL_7;
    }

    if (*a1)
    {
      v3 = 0x16E00000000;
LABEL_7:
      v4 = 3;
      return v3 | v4;
    }

    v14 = &unk_284BBE408;
    v15 = *(a1 + 200);
    if (v6 == 6)
    {
      v7 = 20;
    }

    else
    {
      v7 = 19;
    }

    v8 = sub_2394E6A4C(&v14, (a1 + 40));
    if (v8)
    {
      v3 = v8 & 0xFFFFFFFF00000000;
LABEL_24:
      v4 = v8;
      return v3 | v4;
    }

    v9 = *(a1 + 2);
    if (v9 == 6)
    {
      v11 = sub_2393D9044(0x26u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Sending BDX Message", v13, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(0x26u, 4);
      }

      sub_2394E3C30(&v14, v7);
      v10 = 0;
      *(a1 + 2) = 7;
    }

    else
    {
      if (v9 != 4 || *(a1 + 8) != 16)
      {
        goto LABEL_23;
      }

      *(a1 + 208) = v15 + 1;
      v10 = 1;
    }

    *(a1 + 233) = v10;
LABEL_23:
    LODWORD(v8) = 0;
    v3 = 0;
    *a1 = 1;
    *(a1 + 176) = 0x20000;
    *(a1 + 180) = v7;
    goto LABEL_24;
  }

  v3 = 0x16B00000000;
  v4 = 3;
  return v3 | v4;
}

uint64_t sub_2394E7778(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 2);
  v3 = v2 > 8;
  v4 = (1 << v2) & 0x181;
  if (v3 || v4 == 0)
  {
    sub_2394E6F88(a1, a2);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0x19300000000;
    v7 = 3;
  }

  return v7 | v6;
}

void sub_2394E77D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 9) = 0;
  *(a1 + 6) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  *(a1 + 40) = 0;
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 1;
}

unint64_t sub_2394E783C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!*a3)
  {
    v4 = 0x1B600000000;
    LODWORD(v5) = 47;
    return v4 | v5;
  }

  if (*(a2 + 4))
  {
    v4 = 0x1C400000000;
    LODWORD(v5) = 42;
    return v4 | v5;
  }

  if (*(a2 + 6) == 2)
  {
    v10 = *a3;
    *a3 = 0;
    v5 = sub_2394E7954(a1, a2, &v10);
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    if (!v5)
    {
      *(a1 + 224) = a4;
LABEL_16:
      LODWORD(v5) = 0;
      v4 = 0;
      return v4 | v5;
    }

LABEL_15:
    v4 = v5 & 0xFFFFFFFF00000000;
    return v4 | v5;
  }

  v4 = 0x1C400000000;
  LODWORD(v5) = 42;
  if (!*(a2 + 6) && *a2 == 64)
  {
    v9 = *a3;
    *a3 = 0;
    v5 = sub_2394E7CA0(a1, a2, &v9);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return v4 | v5;
}

uint64_t sub_2394E7954(_WORD *a1, unsigned __int8 *a2, void *a3)
{
  if (!*a3)
  {
    v4 = 0x1CD00000000;
    v5 = 47;
    return v5 | v4;
  }

  if (!*a1)
  {
    v7 = *a2;
    v4 = 0x1FA00000000;
    v5 = 42;
    if (v7 <= 0x10)
    {
      if (*a2 <= 3u)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            return v5 | v4;
          }

          v9 = sub_2393D9044(0x26u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Handling received BDX Message", buf, 2u);
          }

          if (sub_2393D5398(4u))
          {
            sub_2393D5320(0x26u, 4);
          }

          v20 = *a3;
          *a3 = 0;
          sub_2394E7F4C(a1, &v20);
          v8 = v20;
          if (!v20)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else if (v7 != 4)
      {
        if (v7 == 5)
        {
          v12 = sub_2393D9044(0x26u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Handling received BDX Message", buf, 2u);
          }

          if (sub_2393D5398(4u))
          {
            sub_2393D5320(0x26u, 4);
          }

          v19 = *a3;
          *a3 = 0;
          sub_2394E80CC(a1, &v19);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 16)
          {
            return v5 | v4;
          }

          v18 = *a3;
          *a3 = 0;
          sub_2394E825C(a1, &v18);
          v8 = v18;
          if (!v18)
          {
LABEL_36:
            v4 = 0;
            v5 = 0;
            return v5 | v4;
          }
        }

LABEL_35:
        sub_2393D96C8(v8);
        goto LABEL_36;
      }

      v10 = sub_2393D9044(0x26u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Handling received BDX Message", buf, 2u);
      }

      if (sub_2393D5398(4u))
      {
        sub_2393D5320(0x26u, 4);
      }

      v21 = *a3;
      *a3 = 0;
      sub_2394E7D94(a1, v7, &v21);
      v8 = v21;
      if (!v21)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (*a2 <= 0x12u)
    {
      if (v7 == 17)
      {
        v16 = *a3;
        *a3 = 0;
        sub_2394E8460(a1, &v16);
        v8 = v16;
        if (!v16)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v7 != 18)
        {
          return v5 | v4;
        }

        v15 = *a3;
        *a3 = 0;
        sub_2394E8600(a1, &v15);
        v8 = v15;
        if (!v15)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      switch(v7)
      {
        case 0x13u:
          v14 = *a3;
          *a3 = 0;
          sub_2394E8790(a1, &v14);
          v8 = v14;
          if (!v14)
          {
            goto LABEL_36;
          }

          break;
        case 0x14u:
          v13 = *a3;
          *a3 = 0;
          sub_2394E8894(a1, &v13);
          v8 = v13;
          if (!v13)
          {
            goto LABEL_36;
          }

          break;
        case 0x15u:
          v17 = *a3;
          *a3 = 0;
          sub_2394E8358(a1, &v17);
          v8 = v17;
          if (!v17)
          {
            goto LABEL_36;
          }

          break;
        default:
          return v5 | v4;
      }
    }

    goto LABEL_35;
  }

  v4 = 0x1CE00000000;
  v5 = 3;
  return v5 | v4;
}

uint64_t sub_2394E7CA0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3)
  {
    return 0x2090000002FLL;
  }

  *(a1 + 2) = 8;
  *(a1 + 233) = 0;
  sub_23946FC58(v9);
  v8 = *a3;
  *a3 = 0;
  v5 = sub_23946FCAC(v9, &v8);
  if (v8)
  {
    sub_2393D96C8(v8);
  }

  v8 = 0;
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else if (v10 == 0x20000)
  {
    v6 = 0;
    LODWORD(v5) = 0;
    *(a1 + 48) = v11;
    *a1 = 9;
  }

  else
  {
    v6 = 0x21000000000;
    LODWORD(v5) = 42;
  }

  if (v12)
  {
    sub_2393D96C8(v12);
  }

  return v5 | v6;
}

void sub_2394E7D94(uint64_t a1, int a2, uint64_t *a3)
{
  if (*(a1 + 2) != 1)
  {
LABEL_4:

    sub_2394E6F88(a1, 24);
    return;
  }

  if (*(a1 + 3) == 1)
  {
    if (a2 != 4)
    {
      goto LABEL_4;
    }
  }

  else if (a2 != 1)
  {
    goto LABEL_4;
  }

  v14 = &unk_284BBE2F0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_2393D9BEC(*a3);
  v13 = *a3;
  v6 = sub_2394E2998(&v14, &v13);
  if (v13)
  {
    sub_2393D96C8(v13);
  }

  v13 = 0;
  if (v6)
  {
    sub_2394E6F88(a1, 22);
  }

  else
  {
    sub_2394E89A0(a1, &v15);
    *(a1 + 9) = 0;
    v7 = v17;
    v8 = *(a1 + 6);
    if (v17 < v8)
    {
      LOWORD(v8) = v17;
    }

    *(a1 + 32) = v8;
    v9 = v18;
    v10 = v19;
    *(a1 + 16) = v18;
    *(a1 + 24) = v10;
    *(a1 + 56) = v15;
    *(a1 + 58) = v7;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v20;
    *(a1 + 88) = v21;
    v11 = v23;
    *(a1 + 96) = v22;
    *(a1 + 104) = v11;
    v12 = *(a1 + 40);
    if (v12)
    {
      sub_2393D96C8(v12);
    }

    *(a1 + 40) = *a3;
    *a3 = 0;
    *a1 = 2;
    *(a1 + 2) = 3;
    sub_2394E2BC0(&v14, a2);
  }

  v14 = &unk_284BBE2F0;
  if (v24)
  {
    sub_2393D96C8(v24);
  }
}

void sub_2394E7F4C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 2)
  {
    v9 = &unk_284BBE358;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    sub_2393D9BEC(*a2);
    v8 = *a2;
    v4 = sub_2394E319C(&v9, &v8);
    if (v8)
    {
      sub_2393D96C8(v8);
    }

    v8 = 0;
    if (v4)
    {
      sub_2394E6F88(a1, 22);
    }

    else if (!sub_2394E89F8(a1, &v10))
    {
      v5 = HIWORD(v10);
      *(a1 + 32) = HIWORD(v10);
      *(a1 + 112) = *(a1 + 8);
      *(a1 + 114) = v5;
      *(a1 + 120) = *(a1 + 16);
      v6 = v12;
      *(a1 + 136) = v11;
      *(a1 + 144) = v6;
      v7 = *(a1 + 40);
      if (v7)
      {
        sub_2393D96C8(v7);
      }

      *(a1 + 40) = *a2;
      *a2 = 0;
      *a1 = 3;
      *(a1 + 233) = *(a1 + 8) == 32;
      *(a1 + 2) = 4;
      sub_2394E32CC(&v9);
    }

    v9 = &unk_284BBE358;
    if (v13)
    {
      sub_2393D96C8(v13);
    }
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E80CC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 3) || *(a1 + 2) != 2)
  {

    sub_2394E6F88(a1, 24);
  }

  else
  {
    v10 = &unk_284BBE3B0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    sub_2393D9BEC(*a2);
    v9 = *a2;
    v4 = sub_2394E3640(&v10, &v9);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    v9 = 0;
    if (v4)
    {
      sub_2394E6F88(a1, 22);
    }

    else if (!sub_2394E89F8(a1, &v11))
    {
      v5 = v13;
      *(a1 + 32) = v13;
      v6 = v14;
      *(a1 + 16) = v14;
      *(a1 + 112) = *(a1 + 8);
      *(a1 + 114) = v5;
      *(a1 + 120) = v6;
      v7 = *(&v15 + 1);
      *(a1 + 136) = v15;
      *(a1 + 144) = v7;
      v8 = *(a1 + 40);
      if (v8)
      {
        sub_2393D96C8(v8);
      }

      *(a1 + 40) = *a2;
      *a2 = 0;
      *a1 = 3;
      *(a1 + 233) = *(a1 + 8) == 16;
      *(a1 + 2) = 4;
      sub_2394E3810(&v10);
    }

    v10 = &unk_284BBE3B0;
    if (v16)
    {
      sub_2393D96C8(v16);
    }
  }
}

void sub_2394E825C(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v9 = 0;
    v7 = *a2;
    v8 = &unk_284BBE408;
    *a2 = 0;
    v3 = sub_2394E3B7C(&v8, &v7);
    if (v7)
    {
      sub_2393D96C8(v7);
    }

    v7 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      v6 = v9;
      if (v9 == *(a1 + 204))
      {
        *a1 = 5;
        *(a1 + 233) = 0;
        *(a1 + 208) = v6;
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E8358(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v7 = *a2;
    v8 = &unk_284BBE4B8;
    *a2 = 0;
    v3 = sub_2394E4230(&v8, &v7);
    if (v7)
    {
      sub_2393D96C8(v7);
    }

    v7 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      v6 = v9;
      if (v9 == *(a1 + 204))
      {
        *a1 = 6;
        *(a1 + 233) = 0;
        *(a1 + 208) = v6;
        *(a1 + 184) = v10;
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E8460(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 3) && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v12 = &unk_284BBE460;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_2393D9BEC(*a2);
    v11 = *a2;
    v4 = sub_2394E3E68(&v12, &v11);
    if (v11)
    {
      sub_2393D96C8(v11);
    }

    v11 = 0;
    if (v4)
    {
      goto LABEL_7;
    }

    v7 = v13;
    if (v13 != *(a1 + 208))
    {
      v5 = a1;
      v6 = 23;
      goto LABEL_8;
    }

    v8 = v15;
    if (!v15 || v15 > *(a1 + 32))
    {
LABEL_7:
      v5 = a1;
      v6 = 22;
    }

    else
    {
      v9 = *(a1 + 24);
      if (!v9 || *(a1 + 192) + v15 <= v9)
      {
        *(a1 + 152) = v14;
        *(a1 + 160) = v8;
        *(a1 + 168) = 0;
        *(a1 + 172) = v7;
        v10 = *(a1 + 40);
        if (v10)
        {
          sub_2393D96C8(v10);
          v8 = v15;
          v7 = v13;
        }

        *(a1 + 40) = *a2;
        *a2 = 0;
        *a1 = 4;
        *(a1 + 192) += v8;
        *(a1 + 200) = v7;
        *(a1 + 233) = 0;
        goto LABEL_9;
      }

      v5 = a1;
      v6 = 20;
    }

LABEL_8:
    sub_2394E6F88(v5, v6);
LABEL_9:
    v12 = &unk_284BBE460;
    if (v16)
    {
      sub_2393D96C8(v16);
    }

    return;
  }

  sub_2394E6F88(a1, 24);
}

void sub_2394E8600(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 3) && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v11 = &unk_284BBE460;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_2393D9BEC(*a2);
    v10 = *a2;
    v4 = sub_2394E3E68(&v11, &v10);
    if (v10)
    {
      sub_2393D96C8(v10);
    }

    v10 = 0;
    if (!v4)
    {
      v7 = v12;
      if (v12 != *(a1 + 208))
      {
        v5 = a1;
        v6 = 23;
        goto LABEL_17;
      }

      v8 = v14;
      if (v14 <= *(a1 + 32))
      {
        *(a1 + 152) = v13;
        *(a1 + 160) = v8;
        *(a1 + 168) = 1;
        *(a1 + 172) = v7;
        v9 = *(a1 + 40);
        if (v9)
        {
          sub_2393D96C8(v9);
          v8 = v14;
          v7 = v12;
        }

        *(a1 + 40) = *a2;
        *a2 = 0;
        *a1 = 4;
        *(a1 + 192) += v8;
        *(a1 + 200) = v7;
        *(a1 + 233) = 0;
        *(a1 + 2) = 6;
        sub_2394E3F74(&v11, 18);
        goto LABEL_18;
      }
    }

    v5 = a1;
    v6 = 22;
LABEL_17:
    sub_2394E6F88(v5, v6);
LABEL_18:
    v11 = &unk_284BBE460;
    if (v15)
    {
      sub_2393D96C8(v15);
    }

    return;
  }

  sub_2394E6F88(a1, 24);
}