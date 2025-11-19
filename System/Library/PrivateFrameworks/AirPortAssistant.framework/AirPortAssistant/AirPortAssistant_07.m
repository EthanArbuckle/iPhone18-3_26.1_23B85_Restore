uint64_t sub_23EBC4054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _PluginAudioCabling(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v64);
  }

  v66 = 0;
  v68 = 0;
  if (!*(a1 + 8))
  {
    return 4294960591;
  }

  v67 = 0;
  cf = 0;
  if (!*a1)
  {
    v17 = 4294960591;
    goto LABEL_16;
  }

  v9 = sub_23EB6AE14(*a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    v17 = 4294960569;
    goto LABEL_16;
  }

  v14 = v9;
  sub_23EBEB0B0(*(a1 + 128), 24, 0, v9, v10, v11, v12, v13);
  v16 = sub_23EBEE8B0(*(a1 + 128), *a1, 0, 0, 0, 0, &cf, v15);
  if (v16)
  {
    goto LABEL_12;
  }

  if (cf)
  {
    CFRelease(*a1);
    *a1 = cf;
    cf = 0;
  }

  v16 = sub_23EBE9E2C(*(a1 + 128), &v68);
  if (v16)
  {
    goto LABEL_12;
  }

  if (!v68)
  {
    goto LABEL_37;
  }

  v16 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
  if (v16 || (v16 = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v67), v16))
  {
LABEL_12:
    v17 = v16;
    goto LABEL_16;
  }

  v30 = v67;
  if ((v67 & 0x80) != 0)
  {
    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1)
      {
LABEL_42:
        sub_23EB75374(&dword_27E3827A8, "OSStatus _PluginAudioCabling(BSConfigurationContextRef)", 800, "First check was successful!... systemFlags: 0x%X  Skipping user interaction.\n", v26, v27, v28, v29, v30);
        goto LABEL_43;
      }

      if (sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        v30 = v67;
        goto LABEL_42;
      }
    }

LABEL_43:
    v17 = 4294960539;
LABEL_16:
    if (v66)
    {
      sub_23EBB1474(*(a1 + 8));
      sub_23EBEEBCC(v66, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_18;
  }

  v16 = sub_23EBEECB0(v68, *(a1 + 8), 128, &v66, v26, v27, v28, v29);
  if (v16)
  {
    goto LABEL_12;
  }

  if (!v66)
  {
    v17 = 4294960568;
    goto LABEL_18;
  }

  v16 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
  if (v16)
  {
    goto LABEL_12;
  }

  v16 = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v67);
  if (v16)
  {
    goto LABEL_12;
  }

  v36 = v67;
  if ((v67 & 0x80) == 0)
  {
    v16 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", v31, v32, v33, v34, v35, @"kBSConfigurationSwapCabling_TargetBase");
    if (!v16)
    {
      if (cf)
      {
        v17 = sub_23EBC65C4(v68, 6, 4294960543, cf, 0, v37, v38, v39);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        sub_23EBB1474(*(a1 + 8));
        sub_23EBEEBCC(v66, v40, v41, v42, v43, v44, v45, v46);
        v66 = 0;
        if (v17)
        {
          goto LABEL_18;
        }

        v17 = sub_23EBC6790(v68, 6, v47, v48, v49, v50, v51, v52);
        if (!v17)
        {
          sub_23EBEB0B0(*(a1 + 128), 25, 0, v14, v53, v54, v55, v56);
        }

        goto LABEL_16;
      }

LABEL_37:
      v17 = 4294960568;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1)
    {
LABEL_49:
      sub_23EB75374(&dword_27E3827A8, "OSStatus _PluginAudioCabling(BSConfigurationContextRef)", 800, "Second check was successful!... systemFlags: 0x%X Skipping user interaction.\n", v32, v33, v34, v35, v36);
      goto LABEL_50;
    }

    if (sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      v36 = v67;
      goto LABEL_49;
    }
  }

LABEL_50:
  sub_23EBB1474(*(a1 + 8));
  sub_23EBEEBCC(v66, v57, v58, v59, v60, v61, v62, v63);
  v66 = 0;
  v17 = 4294960539;
LABEL_18:
  if (v68)
  {
    sub_23EBE9F5C(v68);
  }

  return v17;
}

uint64_t sub_23EBC43AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _ReadSettingsForSourceDevice(BSConfigurationContextRef, Boolean, Boolean)", 800, "\n", a5, a6, a7, a8, cf);
  }

  if (*(a1 + 144) != 1634561902 || !*(a1 + 16))
  {
    return 4294960591;
  }

  v16 = 0;
  v10 = *(a1 + 24);
  if (!v10)
  {
    v14 = sub_23EBB0E1C(&v16);
    if (v14)
    {
      return v14;
    }

    v10 = v16;
    if (!v16)
    {
      return 4294960568;
    }

    *(a1 + 24) = v16;
    v16 = 0;
  }

  v11 = 0;
  cf = 0;
  if (a2)
  {
    goto LABEL_9;
  }

  v14 = sub_23EBAF4FC("tSaMAMarAMalAMawiFiWANarSDarPIalgBhdnEhdVStnnEcaLCAtRLysWPysdlCi", &cf);
  if (v14)
  {
    return v14;
  }

  v11 = cf;
  if (!cf)
  {
    return 4294960568;
  }

  v10 = *(a1 + 24);
LABEL_9:
  v12 = sub_23EBBE61C(a1, v11, *(a1 + 16), v10, 1, 0, 1, a8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t sub_23EBC44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _SwapConnections(BSConfigurationContextRef)", 800, " \n", a5, a6, a7, a8, v64);
  }

  v66 = 0;
  v68 = 0;
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v67 = 0;
  cf = 0;
  if (!*(a1 + 8) || !*a1 || !*(a1 + 16))
  {
    v17 = 4294960591;
    goto LABEL_14;
  }

  v9 = sub_23EB6AE14(*a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    v17 = 4294960569;
    goto LABEL_14;
  }

  v14 = v9;
  sub_23EBEB0B0(*(a1 + 128), 22, 0, v9, v10, v11, v12, v13);
  v16 = sub_23EBEE8B0(*(a1 + 128), *a1, 0, 0, 0, 0, &cf, v15);
  if (v16)
  {
    goto LABEL_11;
  }

  if (cf)
  {
    v17 = sub_23EBBCA7C(a1, cf);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v17)
    {
      goto LABEL_14;
    }
  }

  v16 = sub_23EBE9E2C(*(a1 + 128), &v68);
  if (v16)
  {
    goto LABEL_11;
  }

  if (!v68)
  {
LABEL_41:
    v17 = 4294960568;
    goto LABEL_14;
  }

  v16 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
  if (v16 || (v16 = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v67), v16))
  {
LABEL_11:
    v17 = v16;
    goto LABEL_14;
  }

  v30 = v67;
  if ((v67 & 0x200) != 0)
  {
    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1)
      {
LABEL_46:
        sub_23EB75374(&dword_27E3827A8, "OSStatus _SwapConnections(BSConfigurationContextRef)", 800, "First check was successful!... systemFlags: 0x%X  Skipping user interaction.\n", v26, v27, v28, v29, v30);
        goto LABEL_47;
      }

      if (sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        v30 = v67;
        goto LABEL_46;
      }
    }

LABEL_47:
    v17 = 4294960539;
LABEL_14:
    if (v66)
    {
      sub_23EBB1474(*(a1 + 8));
      sub_23EBEEBCC(v66, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_16;
  }

  v16 = sub_23EBEECB0(v68, *(a1 + 8), 512, &v66, v26, v27, v28, v29);
  if (v16)
  {
    goto LABEL_11;
  }

  if (!v66)
  {
    v17 = 4294960568;
    goto LABEL_16;
  }

  v16 = sub_23EBB4DE4(*(a1 + 8), 1937327724);
  if (v16)
  {
    goto LABEL_11;
  }

  v16 = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v67);
  if (v16)
  {
    goto LABEL_11;
  }

  v36 = v67;
  if ((v67 & 0x200) == 0)
  {
    v16 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O%kO=%O}", v31, v32, v33, v34, v35, @"kBSConfigurationSwapCabling_TargetBase");
    if (!v16)
    {
      if (cf)
      {
        v17 = sub_23EBC65C4(v68, 5, 4294960543, cf, 0, v37, v38, v39);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        sub_23EBB1474(*(a1 + 8));
        sub_23EBEEBCC(v66, v40, v41, v42, v43, v44, v45, v46);
        v66 = 0;
        if (v17)
        {
          goto LABEL_16;
        }

        v17 = sub_23EBC6790(v68, 5, v47, v48, v49, v50, v51, v52);
        if (!v17)
        {
          sub_23EBEB0B0(*(a1 + 128), 23, 0, v14, v53, v54, v55, v56);
        }

        goto LABEL_14;
      }

      goto LABEL_41;
    }

    goto LABEL_11;
  }

  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1)
    {
LABEL_53:
      sub_23EB75374(&dword_27E3827A8, "OSStatus _SwapConnections(BSConfigurationContextRef)", 800, "Second check was successful!... systemFlags: 0x%X Skipping user interaction.\n", v32, v33, v34, v35, v36);
      goto LABEL_54;
    }

    if (sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      v36 = v67;
      goto LABEL_53;
    }
  }

LABEL_54:
  sub_23EBB1474(*(a1 + 8));
  sub_23EBEEBCC(v66, v57, v58, v59, v60, v61, v62, v63);
  v66 = 0;
  v17 = 4294960539;
LABEL_16:
  if (v68)
  {
    sub_23EBE9F5C(v68);
  }

  return v17;
}

uint64_t sub_23EBC4878(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v115 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithSourceSettings(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v109);
  }

  v10 = 4294960591;
  if (*(a1 + 144) == 1634561902 && a2 && *(a1 + 8) && *(a1 + 16) && *(a1 + 72))
  {
    v11 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v18 = Mutable;
      cf = 0;
      v19 = *(a1 + 72);
      if (v19 <= 8)
      {
        switch(v19)
        {
          case 6:
            goto LABEL_35;
          case 7:
            v20 = sub_23EBBDA3C(a1, 7, a2, &cf, v14, v15, v16, v17);
            if (v20)
            {
              goto LABEL_66;
            }

            if (cf)
            {
              v10 = sub_23EB6FDFC(v11, v18, "%kC=%O", v93, v94, v95, v96, v97, 1466517097);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (v10)
              {
                break;
              }

              sub_23EB6FF14(a2, &cf, "%kC", v99, v100, v101, v102, v103, 1937330263);
              if (v20)
              {
                goto LABEL_66;
              }

              if (cf)
              {
                v20 = sub_23EB6FDFC(v11, v18, "%kC=%O", v104, v105, v106, v107, v108, 1937330263);
                if (v20)
                {
                  goto LABEL_66;
                }

                v20 = sub_23EBB132C(*(a1 + 8), a2, v18, 0);
                if (v20)
                {
                  goto LABEL_66;
                }

                v20 = sub_23EBB3E08(*(a1 + 8), 2002862934, 768);
                if (v20)
                {
                  goto LABEL_66;
                }

                sub_23EBB6A4C(v114, 0x15uLL);
                v20 = sub_23EBB3C0C(*(a1 + 8), v114, 1);
                if (v20)
                {
                  goto LABEL_66;
                }

                v20 = sub_23EBB3E08(*(a1 + 8), 1651724877, 3);
                if (v20)
                {
                  goto LABEL_66;
                }

                if (sub_23EBB4248(*(a1 + 8), 1884509249))
                {
                  sub_23EBB6A4C(v114, 0x15uLL);
                  v20 = sub_23EBB3B84(*(a1 + 8), v114, *MEMORY[0x277CBED28]);
                  goto LABEL_66;
                }

                goto LABEL_83;
              }
            }

LABEL_82:
            v10 = 4294960568;
            break;
          case 8:
LABEL_35:
            if (v19 == 6)
            {
              v44 = 20;
            }

            else
            {
              v44 = 0;
            }

            v20 = sub_23EBBDA3C(a1, v19, a2, &cf, v14, v15, v16, v17);
            if (v20)
            {
              goto LABEL_66;
            }

            if (!cf)
            {
              goto LABEL_82;
            }

            v10 = sub_23EB6FDFC(v11, v18, "%kC=%O", v45, v46, v47, v48, v49, 1466517097);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v10)
            {
              break;
            }

            sub_23EB6FF14(a2, &cf, "%kC", v50, v51, v52, v53, v54, 1937330263);
            if (v20)
            {
              goto LABEL_66;
            }

            if (!cf)
            {
              goto LABEL_82;
            }

            v20 = sub_23EB6FDFC(v11, v18, "%kC=%O", v55, v56, v57, v58, v59, 1937330263);
            if (v20)
            {
              goto LABEL_66;
            }

            sub_23EB6FF14(a2, &cf, "%kC", v60, v61, v62, v63, v64, 1950434124);
            if (v65 != -6727)
            {
              v10 = v65;
              if (v65)
              {
                break;
              }

              if (!cf)
              {
                goto LABEL_82;
              }

              v20 = sub_23EB6FDFC(v11, v18, "%kC=%O", v66, v67, v68, v69, v70, 1950434124);
              if (v20)
              {
                goto LABEL_66;
              }
            }

            sub_23EB6FF14(a2, &cf, "%kC", v66, v67, v68, v69, v70, 1853117270);
            if (v71 != -6727)
            {
              v10 = v71;
              if (v71)
              {
                break;
              }

              if (!cf)
              {
                goto LABEL_82;
              }

              v20 = sub_23EB6FDFC(v11, v18, "%kC=%O", v72, v73, v74, v75, v76, 1853117270);
              if (v20)
              {
                goto LABEL_66;
              }
            }

            sub_23EB6FF14(a2, &cf, "%kC", v72, v73, v74, v75, v76, 1766026340);
            if (v82 || !cf || (v20 = sub_23EB6FDFC(v11, v18, "%kC=%O", v77, v78, v79, v80, v81, 1766026340), !v20))
            {
              if (!sub_23EBB4248(*(a1 + 8), 1768961614) || (v20 = sub_23EB6FDFC(v11, v18, "%kC=%b", v83, v84, v85, v86, v87, 912356724), !v20) && (v20 = sub_23EB6FDFC(v11, v18, "%kC=%i", v88, v89, v90, v91, v92, 912483943), !v20))
              {
                v20 = sub_23EBB132C(*(a1 + 8), a2, v18, 0);
                if (!v20)
                {
                  sub_23EBB6A4C(v114, 0x15uLL);
                  v20 = sub_23EBB3C0C(*(a1 + 8), v114, v44);
                  if (!v20)
                  {
                    v20 = sub_23EBB3E08(*(a1 + 8), 1651724877, 3);
                    if (!v20)
                    {
                      v20 = sub_23EBB3D1C(*(a1 + 8), 1651721281, 1);
                      if (!v20)
                      {
                        v20 = sub_23EBB3E08(*(a1 + 8), 2002862934, 768);
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_66;
        }
      }

      else if ((v19 - 9) < 4)
      {
        v111 = 0;
        v20 = sub_23EB6FDFC(v11, Mutable, "%##O", v13, v14, v15, v16, v17, a2);
        if (v20)
        {
          goto LABEL_66;
        }

        v20 = sub_23EBBDA3C(a1, *(a1 + 72), v18, &cf, v21, v22, v23, v24);
        if (v20)
        {
          goto LABEL_66;
        }

        if (cf)
        {
          v10 = sub_23EB6FDFC(v11, v18, "%kC=%O", v25, v26, v27, v28, v29, 1466517097);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v10)
          {
            goto LABEL_67;
          }

          sub_23EB4BD2C(1937329773, cStr);
          v30 = CFStringCreateWithCString(v11, cStr, 0x8000100u);
          if (v30)
          {
            v31 = v30;
            CFDictionaryRemoveValue(v18, v30);
            CFRelease(v31);
            sub_23EB4BD2C(1937327182, cStr);
            v32 = CFStringCreateWithCString(v11, cStr, 0x8000100u);
            if (v32)
            {
              v33 = v32;
              CFDictionaryRemoveValue(v18, v32);
              CFRelease(v33);
              sub_23EB6FF14(v18, &v111, "%kC", v34, v35, v36, v37, v38, 1937330263);
              if (v20)
              {
LABEL_66:
                v10 = v20;
                goto LABEL_67;
              }

              if (v111)
              {
                theString = 0;
                sub_23EB6FF14(v18, &theString, "%kC", v39, v40, v41, v42, v43, 1229213293);
                v20 = sub_23EBB132C(*(a1 + 8), a2, v18, 1);
                if (v20)
                {
                  goto LABEL_66;
                }

                v20 = sub_23EBB3DBC(*(a1 + 8), 1937330263, v111);
                if (v20)
                {
                  goto LABEL_66;
                }

                if (*(a1 + 72) == 11)
                {
                  sub_23EBB6A4C(v114, 0x15uLL);
                  v20 = sub_23EBB3B84(*(a1 + 8), v114, *MEMORY[0x277CBED28]);
                  if (v20)
                  {
                    goto LABEL_66;
                  }
                }

                v10 = 0;
                if (!sub_23EBB4248(*(a1 + 8), 1231975492) || !theString)
                {
                  goto LABEL_67;
                }

                if (CFStringGetLength(theString))
                {
                  v20 = sub_23EBB3DBC(*(a1 + 8), 1229213293, theString);
                  goto LABEL_66;
                }

LABEL_83:
                v10 = 0;
                goto LABEL_67;
              }
            }
          }
        }

        goto LABEL_82;
      }

LABEL_67:
      CFRelease(v18);
      return v10;
    }

    return 4294960568;
  }

  return v10;
}

uint64_t sub_23EBC4FC8(uint64_t a1, CFDictionaryRef theDict, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n", a5, a6, a7, a8, v54);
  }

  v56 = 0;
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  cf = 0;
  v60 = 0;
  v57 = 0;
  theString = 0;
  v11 = 4294960591;
  v55 = 0;
  if (theDict)
  {
    if (*(a1 + 16))
    {
      Count = CFDictionaryGetCount(theDict);
      if (a3)
      {
        if (Count)
        {
          v20 = sub_23EB6AE14(*(a1 + 16), v13, v14, v15, v16, v17, v18, v19);
          if (v20)
          {
            v22 = v20;
            v23 = sub_23EBEE8B0(*(a1 + 128), *(a1 + 16), 0, 0, 1, 0, &v60, v21);
            if (v23)
            {
              goto LABEL_15;
            }

            if (v60)
            {
              CFRelease(*(a1 + 16));
              *(a1 + 16) = v60;
              v60 = 0;
            }

            v23 = sub_23EBC43AC(a1, 1, v24, v25, v26, v27, v28, v29);
            if (v23)
            {
              goto LABEL_15;
            }

            if (!*(a1 + 24))
            {
              v11 = 4294960569;
              goto LABEL_16;
            }

            v23 = sub_23EB71A18(theDict, &v56);
            if (!v23)
            {
              if (!v56)
              {
                return 4294960568;
              }

              while (sub_23EB71AC0(v56, &theString, &v57))
              {
                if (CFStringGetCString(theString, buffer, 256, 0x8000100u))
                {
                  v23 = sub_23EBB3B84(*(a1 + 24), buffer, v57);
                  if (v23)
                  {
                    goto LABEL_15;
                  }
                }
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v31, v32, v33, v34, "Write source settings");
              }

              sub_23EBEB0B0(*(a1 + 128), 20, 0, v22, v31, v32, v33, v34);
              v11 = sub_23EBB23B8(*(a1 + 24), &v55, &cf);
              if (v55)
              {
                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "Had minimal restart with interruptions: %@\n", v35, v36, v37, v38, cf);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }
              }

              if (v11)
              {
                goto LABEL_16;
              }

              sub_23EBEB0B0(*(a1 + 128), 21, 0, v22, v35, v36, v37, v38);
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v42, v43, v44, v45, "Write source settings");
              }

              if ((*(a1 + 72) & 0xFFFFFFFE) == 0xA)
              {
                v11 = 0;
                *a3 = 1;
                goto LABEL_16;
              }

              *a3 = 0;
              if (sub_23EB6B064(*(a1 + 16), v39, v40, v41, v42, v43, v44, v45))
              {
                goto LABEL_48;
              }

              if (dword_27E3827A8 <= 800)
              {
                if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v46, v47, v48, v49, "No bonjour seed pause");
                }

                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "pausing for: %d secs\n", v46, v47, v48, v49, 8);
                }
              }

              v23 = sub_23EBEC174(*(a1 + 128), 8);
              if (!v23)
              {
                if (dword_27E3827A8 > 800)
                {
                  goto LABEL_52;
                }

                if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v46, v47, v48, v49, "No bonjour seed pause");
                }

LABEL_48:
                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v46, v47, v48, v49, "Waiting for source base");
                }

LABEL_52:
                v23 = sub_23EBEE8B0(*(a1 + 128), *(a1 + 16), 1, 1, 1, 0, &v60, v49);
                if (!v23)
                {
                  if (v60)
                  {
                    CFRelease(*(a1 + 16));
                    *(a1 + 16) = v60;
                    v60 = 0;
                  }

                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "OSStatus _WriteSettingsToSourceDevice(BSConfigurationContextRef, CFDictionaryRef, Boolean *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v50, v51, v52, v53, "Waiting for source base");
                  }

                  v11 = 0;
                  goto LABEL_16;
                }
              }
            }

LABEL_15:
            v11 = v23;
          }
        }
      }
    }
  }

LABEL_16:
  if (v56)
  {
    sub_23EB71AB4(v56);
  }

  return v11;
}

uint64_t sub_23EBC553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", a5, a6, a7, a8, "Show Additional Configuration UI As Needed");
  }

  if (!*(a1 + 76) && *(a1 + 72) == 1 && sub_23EBB4248(*(a1 + 8), 1198748750))
  {
    v28 = 0;
    v13 = sub_23EBB401C(*(a1 + 8), 1918979649, &v28);
    if (v13)
    {
      goto LABEL_62;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v28)
      {
        v14 = "On";
      }

      else
      {
        v14 = "Off";
      }

      sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "NAT: %s \n", v9, v10, v11, v12, v14);
    }

    if (v28)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v9, v10, v11, v12, "Prompt for Guest Network config");
      }

      v33 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      cf = 0;
      if (*(a1 + 144) != 1634561902 || !*(a1 + 8) || !*a1)
      {
        v13 = 4294960591;
        goto LABEL_27;
      }

      v15 = sub_23EBE9E2C(*(a1 + 128), &v29);
      if (v15)
      {
        goto LABEL_25;
      }

      if (!v29)
      {
        v13 = 4294960568;
LABEL_29:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v31)
        {
          CFRelease(v31);
          v31 = 0;
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v13)
        {
          goto LABEL_62;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v9, v10, v11, v12, "Prompt for Guest Network config");
        }

        goto LABEL_40;
      }

      v15 = sub_23EBB3F30(*(a1 + 8), 1937329773, &v31);
      if (v15)
      {
        goto LABEL_25;
      }

      if (!v31)
      {
        goto LABEL_95;
      }

      sub_23EBB6A4C(v34, 0x15uLL);
      v15 = sub_23EBB3E20(*(a1 + 8), v34, &v30);
      if (!v15)
      {
        if (!v30)
        {
          goto LABEL_95;
        }

        v15 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v33, "{%ks=%O%ks=%O%ks=%O}", v24, v9, v10, v11, v12, "kBSConfigurationUIConfig_TargetBaseKey");
        if (!v15)
        {
          if (v33)
          {
            sub_23EBC6AE4(v29, 8, v33, &cf, v9, v10, v11, v12);
            v13 = v27;
            if (v33)
            {
              CFRelease(v33);
              v33 = 0;
            }

            if (v13)
            {
              goto LABEL_27;
            }

            if (cf)
            {
              sub_23EBBEA58(a1, cf, v25, v26, v9, v10, v11, v12);
              goto LABEL_25;
            }

            v13 = 0;
LABEL_27:
            if (v29)
            {
              sub_23EBE9F5C(v29);
            }

            goto LABEL_29;
          }

LABEL_95:
          v13 = 4294960568;
          goto LABEL_27;
        }
      }

LABEL_25:
      v13 = v15;
      goto LABEL_27;
    }
  }

LABEL_40:
  if (!sub_23EBB4248(*(a1 + 8), 1097749364))
  {
LABEL_61:
    v13 = 0;
    goto LABEL_62;
  }

  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", v9, v10, v11, v12, "Prompt Send Diags & Usage");
  }

  cf = 0;
  v33 = 0;
  if (*(a1 + 144) == 1634561902)
  {
    v34[0] = 0;
    if (*(a1 + 8) && *a1)
    {
      v16 = sub_23EBE9E2C(*(a1 + 128), &cf);
      if (v16)
      {
LABEL_49:
        v13 = v16;
        goto LABEL_52;
      }

      if (!cf)
      {
        v13 = 4294960568;
LABEL_54:
        if (v33)
        {
          CFRelease(v33);
        }

        if (v13)
        {
          goto LABEL_62;
        }

        if (dword_27E3827A8 > 800)
        {
          return 0;
        }

        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v9, v10, v11, v12, "Prompt Send Diags & Usage");
        }

        goto LABEL_61;
      }

      if (sub_23EB6AE14(*a1, v17, v18, v19, v9, v10, v11, v12))
      {
        v16 = sub_23EB6F348(*MEMORY[0x277CBECE8], v34, "{%ks=%O}", v21, v9, v10, v11, v12, "kBSConfigurationConnectionStatus_DeviceName");
        if (v16)
        {
          goto LABEL_49;
        }

        if (v34[0])
        {
          sub_23EBC6AE4(cf, 7, v34[0], &v33, v9, v10, v11, v12);
          v13 = v23;
          if (v34[0])
          {
            CFRelease(v34[0]);
            v34[0] = 0;
          }

          if (v13)
          {
            goto LABEL_52;
          }

          if (v33)
          {
            v31 = 0;
            sub_23EB6FF14(v33, &v31, "%kC", v22, v9, v10, v11, v12, 1937011781);
            if (v16)
            {
              goto LABEL_49;
            }

            if (v31)
            {
              v16 = sub_23EBB3DBC(*(a1 + 8), 1937011781, v31);
              goto LABEL_49;
            }
          }
        }

        v13 = 4294960568;
      }

      else
      {
        v13 = 4294960569;
      }
    }

    else
    {
      v13 = 4294960591;
    }

LABEL_52:
    if (cf)
    {
      sub_23EBE9F5C(cf);
    }

    goto LABEL_54;
  }

  v13 = 4294960591;
LABEL_62:
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _ShowAdditionalConfigurationUI(BSConfigurationContextRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v9, v10, v11, v12, "Show Additional Configuration UI As Needed");
  }

  return v13;
}

uint64_t sub_23EBC5B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v60 = *MEMORY[0x277D85DE8];
  v58 = a3;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _RestoreDefaultsAndOptionallyWaitForDevice(BSConfigurationContextRef, CFDictionaryRef, BSRef, Boolean, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v53);
  }

  v55 = 0;
  cf = 0;
  v53 = 0;
  v54 = 0;
  v11 = 4294960591;
  v57 = 0;
  if (v9)
  {
    if (*(a1 + 144) == 1634561902)
    {
      v12 = sub_23EB6AE14(v9, a2, a3, a4, a5, a6, a7, a8);
      if (v12)
      {
        v14 = v12;
        v15 = sub_23EBEE8B0(*(a1 + 128), v9, 0, 0, 1, 0, &v55, v13);
        if (v15)
        {
          goto LABEL_21;
        }

        if (v55)
        {
          v9 = v55;
        }

        if (!a3)
        {
          v15 = sub_23EBB0E1C(&v58);
          if (v15)
          {
            goto LABEL_21;
          }

          if (!v58)
          {
LABEL_32:
            v11 = 4294960568;
            goto LABEL_22;
          }
        }

        v15 = sub_23EBAF4FC("tSaMAMarAMalAMawiFiWANarSDarPIalgBhdnEhdVStnnEcaLCAtRLysWPysdlCi", &cf);
        if (v15)
        {
LABEL_21:
          v11 = v15;
          goto LABEL_22;
        }

        if (!cf)
        {
          goto LABEL_32;
        }

        v11 = sub_23EBBE61C(a1, cf, v9, v58, 1, 0, 0, v16);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (!v11)
        {
          v22 = sub_23EBEBA44(*(a1 + 128), &v54, &v53, v17, v18, v19, v20, v21);
          v11 = v22;
          if (v22 == -6727)
          {
            v29 = 1;
          }

          else
          {
            if (v22)
            {
              goto LABEL_22;
            }

            v29 = sub_23EB6B424(v9, v53, v23, v24, v25, v26, v27, v28) == 0;
          }

          sub_23EBEB0B0(*(a1 + 128), 20, v11, v14, v25, v26, v27, v28);
          v15 = sub_23EBB6CA4(v58, v31, v32, v33, v34, v35, v36, v37);
          if (v15)
          {
            goto LABEL_21;
          }

          sub_23EBEB0B0(*(a1 + 128), 21, 0, v14, v38, v39, v40, v41);
          sub_23EBB6A4C(v59, 0x15uLL);
          v15 = sub_23EBB3E20(v58, v59, &v57);
          if (v15)
          {
            goto LABEL_21;
          }

          if (!v57)
          {
            goto LABEL_32;
          }

          if (v29)
          {
            goto LABEL_38;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _RestoreDefaultsAndOptionallyWaitForDevice(BSConfigurationContextRef, CFDictionaryRef, BSRef, Boolean, CFDictionaryRef *)", 800, "networkWillGoAway \n", v42, v43, v44, v45, v53);
          }

          v15 = sub_23EBEBD2C(*(a1 + 128));
          if (!v15)
          {
            v15 = sub_23EBEC3FC(*(a1 + 128), v46, v47, v48, v49, v50, v51, v52);
            if (!v15)
            {
              v15 = sub_23EBEBF74(*(a1 + 128), v54, v9);
              if (!v15)
              {
LABEL_38:
                v11 = 0;
                v55 = 0;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_21;
        }
      }
    }
  }

LABEL_22:
  if (v54)
  {
    CFRelease(v54);
    v54 = 0;
  }

  if (v53)
  {
    CFRelease(v53);
    v53 = 0;
  }

  if (v55)
  {
    CFRelease(v55);
    v55 = 0;
  }

  if (v57)
  {
    CFRelease(v57);
  }

  return v11;
}

uint64_t sub_23EBC5E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnectionWithSystemFlags(BSConfigurationContextRef, BSRef, ACPSystemFlags)", 800, " \n", a5, a6, a7, a8, v49);
  }

  v51 = 0;
  v53 = 0;
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v52 = 0;
  if (a3 == 512)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_23EBE9E2C(*(a1 + 128), &v53);
  if (v12)
  {
    goto LABEL_10;
  }

  if (!v53)
  {
    v13 = 4294960568;
LABEL_11:
    if (v51)
    {
      sub_23EBB1474(a2);
      sub_23EBEEBCC(v51, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_13;
  }

  v50 = v11;
  v22 = 0;
  if (a3 == 512)
  {
    v23 = 1;
  }

  else
  {
    v23 = 8;
  }

  do
  {
    if (v22)
    {
      v12 = sub_23EBEC174(*(a1 + 128), 1);
      if (v12)
      {
        goto LABEL_10;
      }
    }

    v12 = sub_23EBB4DE4(a2, 1937327724);
    if (v12)
    {
      goto LABEL_10;
    }

    v12 = sub_23EBB3F7C(a2, 1937327724, &v52);
    if (v12)
    {
      goto LABEL_10;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnectionWithSystemFlags(BSConfigurationContextRef, BSRef, ACPSystemFlags)", 800, "systemFlags: 0x%X retries: %ld of %ld \n", v26, v27, v28, v29, v52);
    }

    if ((v52 & a3) != 0)
    {
      goto LABEL_42;
    }

    ++v22;
  }

  while (v23 != v22);
  v12 = sub_23EBEECB0(v53, a2, a3, &v51, v26, v27, v28, v29);
  if (v12)
  {
    goto LABEL_10;
  }

  if (v51)
  {
    v12 = sub_23EBB4DE4(a2, 1937327724);
    if (v12 || (v12 = sub_23EBB3F7C(a2, 1937327724, &v52), v12))
    {
LABEL_10:
      v13 = v12;
      goto LABEL_11;
    }

    v34 = v52;
    if ((v52 & a3) != 0)
    {
      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1)
        {
LABEL_40:
          sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnectionWithSystemFlags(BSConfigurationContextRef, BSRef, ACPSystemFlags)", 800, "Second check was successful!... systemFlags: 0x%X \n", v30, v31, v32, v33, v34);
          goto LABEL_41;
        }

        if (sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          v34 = v52;
          goto LABEL_40;
        }
      }

LABEL_41:
      sub_23EBB1474(a2);
      sub_23EBEEBCC(v51, v35, v36, v37, v38, v39, v40, v41);
      v51 = 0;
LABEL_42:
      v12 = sub_23EBC6790(v53, v50, v24, v25, v26, v27, v28, v29);
      goto LABEL_10;
    }

    v13 = sub_23EBC65C4(v53, v50, 4294960543, 0, 0, v31, v32, v33);
    sub_23EBB1474(a2);
    sub_23EBEEBCC(v51, v42, v43, v44, v45, v46, v47, v48);
    v51 = 0;
    if (!v13)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v13 = 4294960568;
  }

LABEL_13:
  if (v53)
  {
    sub_23EBE9F5C(v53);
  }

  return v13;
}

uint64_t sub_23EBC615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyPPPoEConnection(BSConfigurationContextRef, BSRef, CFStringRef)", 800, " \n", a5, a6, a7, a8, v44);
  }

  cf = 0;
  v46 = 0;
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v10 = sub_23EBE9E2C(*(a1 + 128), &v46);
  if (v10)
  {
    goto LABEL_7;
  }

  if (!v46)
  {
    goto LABEL_23;
  }

  v10 = sub_23EBC68B8(a1, v11, v12, v13, v14, v15, v16, v17);
  if (v10 != -6735)
  {
    goto LABEL_7;
  }

  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyPPPoEConnection(BSConfigurationContextRef, BSRef, CFStringRef)", 800, "Base station doesn't support verifying PPPoE Credentials\n", v20, v21, v22, v23, v44);
  }

  v24 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_23:
    v18 = 4294960568;
    goto LABEL_8;
  }

  v31 = Mutable;
  v32 = sub_23EB6FDFC(v24, Mutable, "%ks=%O", v26, v27, v28, v29, v30, "kBSConfigurationConnectionStatus_DeviceName");
  if (v32)
  {
    v18 = v32;
    CFRelease(v31);
    goto LABEL_8;
  }

  v18 = sub_23EBC65C4(v46, 3, 4294960542, v31, &cf, v33, v34, v35);
  CFRelease(v31);
  if (v18)
  {
    v42 = v18 == -6757;
  }

  else
  {
    v42 = 1;
  }

  if (v42 && cf != 0)
  {
    sub_23EBC6940(a2, cf);
  }

  if (v18)
  {
    goto LABEL_8;
  }

  v10 = sub_23EBC6790(v46, 3, v36, v37, v38, v39, v40, v41);
LABEL_7:
  v18 = v10;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v46)
  {
    sub_23EBE9F5C(v46);
  }

  return v18;
}

uint64_t sub_23EBC6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyInternetConnection(BSConfigurationContextRef, BSRef)", 800, " \n", a5, a6, a7, a8, v32);
  }

  context = 0;
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v17 = sub_23EBE9E2C(*(a1 + 128), &context);
  if (!v17)
  {
    if (!context)
    {
      return 4294960568;
    }

    if (sub_23EBB5FAC(a2, v10, v11, v12, v13, v14, v15, v16))
    {
      *(context + 15) = a2;
      global_queue = dispatch_get_global_queue(0, 0);
      v26 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
      dispatch_set_context(v26, context);
      dispatch_source_set_event_handler_f(v26, sub_23EBC69D4);
      v27 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v26, v27, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
      dispatch_resume(v26);
      v17 = sub_23EBC65C4(context, 4, 4294960543, 0, 0, v28, v29, v30);
      dispatch_source_cancel(v26);
      while (1)
      {
        v31 = pthread_mutex_trylock((context + 56));
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyInternetConnection(BSConfigurationContextRef, BSRef)", 800, "Waiting for __InternetCheckTimerFiredCallback mutexlock: %d\n", v21, v22, v23, v24, v31);
        }

        if (v31 != 16)
        {
          break;
        }

        v17 = sub_23EBEC174(*(a1 + 128), 1);
      }

      if (v31)
      {
        if (v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        pthread_mutex_unlock((context + 56));
        if (v17)
        {
LABEL_22:
          if (!v26)
          {
            goto LABEL_7;
          }

LABEL_28:
          dispatch_release(v26);
          goto LABEL_7;
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v17 = sub_23EBC6790(context, 4, v19, v20, v21, v22, v23, v24);
    if (!v26)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_7:
  if (context)
  {
    sub_23EBE9F5C(context);
  }

  return v17;
}

uint64_t sub_23EBC65C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _CopyAndWaitResultsDictFromConnectionStatusUpdate(AssistantCallbackContextRef, eBSConfigurationUIConfigSelector, OSStatus, CFDictionaryRef, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v44);
  }

  if (a1 && *a1 == 1634561902)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v11, "%ks=%i", a4, a5, a6, a7, a8, "kBSAssistantCallback_Configuration_UIConfigSelector");
      if (v13 || (v13 = sub_23EB6FDFC(v12, *(a1 + 24), "%ks=%i", v14, v15, v16, v17, v18, "kBSAssistantCallback_Configuration_UIConfigConnectionStatusOSStatus"), v13) || a4 && (v13 = sub_23EBEB5E8(a1, @"kBSAssistantCallback_Configuration_UIConfigParamDict", a4, v20, v21, v22, v23, v24), v13) || (v13 = sub_23EBEA59C(a1, 1, v19, v20, v21, v22, v23, v24), v13))
      {
        v25 = v13;
      }

      else
      {
        v42 = sub_23EBEA92C(a1, v35, v36, v37, v38, v39, v40, v41);
        v43 = *(a1 + 32);
        if (v43)
        {
          v25 = v43;
        }

        else
        {
          v25 = v42;
        }
      }
    }

    else
    {
      v25 = 4294960591;
    }
  }

  else
  {
    v25 = 4294960578;
  }

  if (!a5)
  {
    return v25;
  }

  cf = 0;
  if (!sub_23EBEB5B8(a1, @"kBSAssistantCallback_Configuration_UIConfigResultsDict"))
  {
    return v25;
  }

  while (1)
  {
    sub_23EBEB494(a1, @"kBSAssistantCallback_Configuration_UIConfigResultsDict", &cf, v26, v27, v28, v29, v30);
    v32 = v31;
    if (!v31)
    {
      break;
    }

LABEL_17:
    v25 = v32;
    if (!sub_23EBEB5B8(a1, @"kBSAssistantCallback_Configuration_UIConfigResultsDict"))
    {
      return v32;
    }
  }

  v33 = cf;
  if (!cf)
  {
    v32 = 4294960568;
    goto LABEL_17;
  }

  *a5 = cf;
  CFRetain(v33);
  return v25;
}

uint64_t sub_23EBC6790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _SendAndNoWaitResultsDictFromConnectionStatusUpdate(AssistantCallbackContextRef, eBSConfigurationUIConfigSelector, OSStatus, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v23);
  }

  if (!a1 || *a1 != 1634561902)
  {
    return 4294960578;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    return 4294960591;
  }

  v10 = *MEMORY[0x277CBECE8];
  result = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v9, "%ks=%i", a4, a5, a6, a7, a8, "kBSAssistantCallback_Configuration_UIConfigSelector");
  if (!result)
  {
    result = sub_23EB6FDFC(v10, *(a1 + 24), "%ks=%i", v12, v13, v14, v15, v16, "kBSAssistantCallback_Configuration_UIConfigConnectionStatusOSStatus");
    if (!result)
    {

      return sub_23EBEA814(a1, 1, v17, v18, v19, v20, v21, v22);
    }
  }

  return result;
}

uint64_t sub_23EBC68B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyPPPoECredentials(BSConfigurationContextRef, BSRef, CFDictionaryRef)", 800, " \n", a5, a6, a7, a8, v10);
  }

  if (*(a1 + 144) == 1634561902)
  {
    return 4294960561;
  }

  else
  {
    return 4294960591;
  }
}

void sub_23EBC6940(uint64_t a1, CFDictionaryRef theDict)
{
  if (CFDictionaryGetCount(theDict))
  {
    cf = 0;
    if (!sub_23EBB420C(a1, &cf))
    {
      if (cf)
      {
        v4 = sub_23EBB132C(a1, cf, theDict, 0);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (!v4)
        {
          sub_23EBB3E08(a1, 1651722563, 2);
        }
      }
    }
  }
}

uint64_t sub_23EBC69D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1634561902)
    {
      v2 = *(result + 120);
      if (v2)
      {
        pthread_mutex_lock((result + 56));
        if (sub_23EBB5FAC(v2, v3, v4, v5, v6, v7, v8, v9))
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __InternetCheckTimerFiredCallback(void *)", 800, "BAD internet result \n", v12, v13, v14, v15, v16);
          }
        }

        else
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __InternetCheckTimerFiredCallback(void *)", 800, "Good internet result \n", v12, v13, v14, v15, v16);
          }

          sub_23EBEB6CC(v1, 0, v10, v11, v12, v13, v14, v15);
        }

        return pthread_mutex_unlock((v1 + 56));
      }
    }
  }

  return result;
}

void sub_23EBC6AE4(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _CopyAndWaitResultsDictFromUIConfigPrompt(AssistantCallbackContextRef, eBSConfigurationUIConfigSelector, CFDictionaryRef, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v38);
  }

  cf = 0;
  if (a1)
  {
    if (*a1 == 1634561902)
    {
      if (a4)
      {
        if (*(a1 + 24))
        {
          if (!sub_23EBEB65C(a1, @"kBSAssistantCallback_Configuration_UIConfigSelector", a2, a4, a5, a6, a7, a8) && !sub_23EBEB5E8(a1, @"kBSAssistantCallback_Configuration_UIConfigParamDict", a3, v12, v13, v14, v15, v16) && !sub_23EBEA59C(a1, 1, v17, v18, v19, v20, v21, v22))
          {
            v30 = sub_23EBEA92C(a1, v23, v24, v25, v26, v27, v28, v29);
            if (!*(a1 + 32) && !v30)
            {
              if (sub_23EBEB5B8(a1, @"kBSAssistantCallback_Configuration_UIConfigResultsDict"))
              {
                sub_23EBEB494(a1, @"kBSAssistantCallback_Configuration_UIConfigResultsDict", &cf, v31, v32, v33, v34, v35);
                if (!v36)
                {
                  v37 = cf;
                  if (cf)
                  {
                    *a4 = cf;
                    CFRetain(v37);
                  }
                }
              }

              else
              {
                *a4 = 0;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBC6C4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_CheckMonitoringStateSync(void *)", 800, " \n", a5, a6, a7, a8, v9);
    }
  }

  if (v8)
  {

    return sub_23EBC2B48(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_23EBC6CDC(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  if (!sub_23EB8BE08(a1, 1130911088))
  {
    return 0;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i%i%i", v7, v8, v9, v10, v11, 86400);
  if (v12 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_23EBC6DB8(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = 1;
  for (i = &dword_278C668F0; ; i += 12)
  {
    v13 = sub_23EB6FDFC(v4, *a3, "%i", v6, v7, v8, v9, v10, v11);
    if (v13)
    {
      break;
    }

    v14 = *i;
    v11 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  v15 = v13;
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v15;
}

uint64_t sub_23EBC6E88(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (Mutable)
  {
    v12 = sub_23EB8BFFC(a1, 1937329234, &cf, 0);
    if (cf)
    {
      if (!v12 && CFDictionaryGetCount(cf) >= 1)
      {
        Value = CFDictionaryGetValue(cf, @"regions");
        if (Value)
        {
          v15 = Value;
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            v17 = Count;
            v18 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
              v20 = CFDictionaryGetValue(ValueAtIndex, @"region");
              if (!v20)
              {
                break;
              }

              CFArrayAppendValue(*a3, v20);
              v12 = 0;
              if (v17 == ++v18)
              {
                goto LABEL_11;
              }
            }
          }

          v12 = 0;
          goto LABEL_11;
        }

        v12 = 4294967291;
        goto LABEL_7;
      }

      v12 = sub_23EB6FDFC(v5, *a3, "%i", v7, v8, v9, v10, v11, 0);
    }

    if (v12)
    {
LABEL_7:
      if (*a3)
      {
        CFRelease(*a3);
        *a3 = 0;
      }
    }
  }

  else
  {
    v12 = 4294967293;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t sub_23EBC6FF4(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  if (sub_23EB8BE08(a1, 1400468300))
  {
    v12 = sub_23EB6FDFC(v5, *a3, "%i%i%i%i%i%i%i%i", v7, v8, v9, v10, v11, 0);
    if (!v12)
    {
      return v12;
    }
  }

  else
  {
    v12 = 4294967274;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_23EBC70DC(uint64_t a1, char *a2, __CFArray **a3)
{
  memset(&v23, 0, sizeof(v23));
  sub_23EB8CCB8(v21, a2);
  v20 = 0;
  v19 = 0;
  v5 = sub_23EB89D74(a1, 1937326416, &v20, 0);
  if (v5)
  {
    goto LABEL_5;
  }

  sub_23EB8CCB8(__p, "raMd");
  sub_23EB90814(v21, __p, &v23);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_23EB97464(a1, &v23, &v19, 0);
  if (v5)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = 4294967292;
    goto LABEL_9;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (Mutable)
  {
    v9 = sub_23EB8BE08(a1, 1296257652);
    v15 = v20 < 3 || v9;
    if (v15 == 1)
    {
      if (v19 <= 0xAu)
      {
        if (((1 << v19) & 0x5B0) != 0)
        {
          v16 = sub_23EB6FDFC(v7, *a3, "%i%i%i%i%i", v10, v11, v12, v13, v14, 6);
LABEL_31:
          v5 = v16;
          goto LABEL_5;
        }

        if (((1 << v19) & 0x46) != 0)
        {
          v16 = sub_23EB6FDFC(v7, *a3, "%i%i%i%i", v10, v11, v12, v13, v14, 1);
          goto LABEL_31;
        }

        if (v19 == 3)
        {
          v16 = sub_23EB6FDFC(v7, *a3, "%i%i%i%i%i%i%i%i%i", v10, v11, v12, v13, v14, 1);
          goto LABEL_31;
        }
      }

      v16 = sub_23EB6FDFC(v7, *a3, "%i%i", v10, v11, v12, v13, v14, 1);
      goto LABEL_31;
    }

    v5 = 4294967274;
  }

  else
  {
    v5 = 4294967293;
  }

LABEL_5:
  if (a3 && v5 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

LABEL_9:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_23EBC734C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  if (*(v24 - 33) < 0)
  {
    operator delete(*(v24 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC739C(uint64_t a1, char *a2, CFTypeRef *a3)
{
  if (sub_23EB8BE08(a1, 1935819842))
  {
    if (a3)
    {
      v6 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      *a3 = Mutable;
      if (Mutable)
      {
        v13 = sub_23EB6FDFC(v6, Mutable, "%i%i%i", v8, v9, v10, v11, v12, 1000);
        if (v13 && *a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }
      }

      else
      {
        return 4294967293;
      }
    }

    else
    {
      return 4294967292;
    }
  }

  else
  {
    sub_23EBC70DC(a1, a2, a3);
    return 0;
  }

  return v13;
}

uint64_t sub_23EBC7480(uint64_t a1, char *a2, CFArrayRef *a3, int a4)
{
  v99 = *MEMORY[0x277D85DE8];
  memset(&v97, 0, sizeof(v97));
  sub_23EB8CCB8(&v95, a2);
  v7 = sub_23EB8BE08(a1, 2003390540);
  v8 = sub_23EB8BE08(a1, 942682734);
  v9 = sub_23EB8BE08(a1, 825319779);
  v90 = sub_23EB8BE08(a1, 1852782669);
  v10 = sub_23EB8BE08(a1, 1935819842);
  v94 = 0;
  if (v7)
  {
    v11 = v10;
    v87 = sub_23EB9A90C(a1, @"80211n_2_4GHz");
    LODWORD(v88) = sub_23EB9A90C(a1, @"80211n_5GHz");
    v12 = sub_23EB9A954(a1, @"5GHz_channels");
    v13 = v12;
    if (v12)
    {
      HIDWORD(v88) = CFArrayGetCount(v12) > 0;
    }

    else
    {
      HIDWORD(v88) = 0;
    }

    v10 = v11;
  }

  else
  {
    v88 = 0;
    v13 = 0;
    v87 = 1;
  }

  v89 = v10;
  if (!v10)
  {
    v14 = sub_23EB9BEF4(a1, &v94, 0, 0);
    if (v14)
    {
      goto LABEL_160;
    }

    v85 = v8 || v9;
    goto LABEL_12;
  }

  v93 = 0;
  v83 = v8;
  v84 = v9;
  if (SHIBYTE(v96) < 0)
  {
    sub_23EBADCE0(__p, v95, *(&v95 + 1));
  }

  else
  {
    *__p = v95;
    v92 = v96;
  }

  v24 = SHIBYTE(v92);
  v25 = __p[0];
  if (v92 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (v92 >= 0)
  {
    v27 = SHIBYTE(v92);
  }

  else
  {
    v27 = __p[1];
  }

  v28 = v26 + v27;
  if (v27 >= 16)
  {
    v30 = v26;
    do
    {
      v29 = memchr(v30, 87, v27 - 15);
      if (!v29)
      {
        break;
      }

      if (*v29 == 0x6461722E69466957 && v29[1] == 0x2E5D2A5B2E736F69)
      {
        goto LABEL_36;
      }

      v30 = (v29 + 1);
      v27 = v28 - v30;
    }

    while (v28 - v30 > 15);
    v29 = v28;
  }

  else
  {
    v29 = (v26 + v27);
  }

LABEL_36:
  v33 = v29 != v28 && v29 == v26;
  if (v24 < 0)
  {
    operator delete(v25);
    if (v33)
    {
LABEL_44:
      if (sub_23EB8F428(a1, 0) == 2)
      {
        v85 = 0;
        v34 = 0;
        v35 = 1;
        while (1)
        {
          v36 = v35;
          MEMORY[0x23EF1EFD0](&v97, "WiFi.radios.[*].");
          snprintf(__str, 0x10uLL, "%ld", v34);
          if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v97;
          }

          else
          {
            v37 = v97.__r_.__value_.__r.__words[0];
          }

          if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v97.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v97.__r_.__value_.__l.__size_;
          }

          v39 = v37 + size;
          if (size >= 1)
          {
            v40 = v37;
            do
            {
              v41 = memchr(v40, 42, size);
              if (!v41)
              {
                break;
              }

              if (*v41 == 42)
              {
                goto LABEL_58;
              }

              v40 = (v41 + 1);
              size = v39 - v40;
            }

            while (v39 - v40 > 0);
          }

          v41 = v39;
LABEL_58:
          if (v41 == v39)
          {
            v42 = -1;
          }

          else
          {
            v42 = v41 - v37;
          }

          std::string::replace(&v97, v42, 1uLL, __str);
          sub_23EB8CCB8(__p, "phymodes");
          sub_23EB90814(&v97, __p, &v97);
          if (SHIBYTE(v92) < 0)
          {
            operator delete(__p[0]);
          }

          v14 = sub_23EB97374(a1, &v97, &v93, 0);
          if (v14)
          {
            break;
          }

          v15 = (v93 & 0xE) != 0;
          if ((v93 & 0xE) != 0)
          {
            v14 = sub_23EB9BEF4(a1, &v94, 0, 0);
            if (v14)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v43 = (v93 >> 6) & 1;
            if ((v93 & 0x30) != 0)
            {
              v43 = 1;
            }

            v85 = v43;
          }

          v35 = 0;
          v34 = 1;
          if ((v36 & 1) == 0)
          {
            v8 = v83;
            v9 = v84;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v14 = 4294967292;
      }

      goto LABEL_160;
    }
  }

  else if (v33)
  {
    goto LABEL_44;
  }

  sub_23EB8CCB8(__p, "phymodes");
  v9 = v84;
  sub_23EB90814(&v95, __p, &v97);
  v8 = v83;
  if (SHIBYTE(v92) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = sub_23EB97374(a1, &v97, &v93, 0);
  if (v14)
  {
    goto LABEL_160;
  }

  if ((v93 & 0xE) != 0)
  {
    v14 = sub_23EB9BEF4(a1, &v94, 0, 0);
    if (v14)
    {
      goto LABEL_160;
    }

    v85 = 0;
LABEL_12:
    v15 = 1;
    goto LABEL_13;
  }

  v15 = 0;
  if ((v93 & 0x30) != 0)
  {
    v58 = 1;
  }

  else
  {
    v58 = (v93 >> 6) & 1;
  }

  v85 = v58;
LABEL_13:
  if (!a3)
  {
    v14 = 4294967292;
    goto LABEL_164;
  }

  v16 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    v14 = 4294967293;
    goto LABEL_160;
  }

  if (v90)
  {
    if (v9)
    {
      v23 = v16;
      if (SHIBYTE(v96) < 0)
      {
        sub_23EBADCE0(__p, v95, *(&v95 + 1));
      }

      else
      {
        *__p = v95;
        v92 = v96;
      }

      v59 = SHIBYTE(v92);
      v60 = __p[0];
      v61 = v92 >= 0 ? __p : __p[0];
      v62 = v92 >= 0 ? SHIBYTE(v92) : __p[1];
      v63 = v61 + v62;
      if (v62 >= 16)
      {
        v65 = v61;
        do
        {
          v64 = memchr(v65, 87, v62 - 15);
          if (!v64)
          {
            break;
          }

          if (*v64 == 0x6461722E69466957 && v64[1] == 0x2E5D2A5B2E736F69)
          {
            goto LABEL_139;
          }

          v65 = (v64 + 1);
          v62 = v63 - v65;
        }

        while (v63 - v65 > 15);
        v64 = v63;
      }

      else
      {
        v64 = (v61 + v62);
      }

LABEL_139:
      v68 = v64 != v63 && v64 == v61;
      if (v59 < 0)
      {
        operator delete(v60);
      }

      LODWORD(v57) = (v85 & 1) != 0 ? 10 : 6;
      v57 = v68 ? 655366 : v57;
      if (((v68 | v85) | v15))
      {
        v16 = v23;
        goto LABEL_155;
      }
    }

    goto LABEL_176;
  }

  if (!v89 || sub_23EB9AC64(a2) != 1651718221)
  {
    if (!v8 || (!v87 || !v15 || (v14 = sub_23EB6FDFC(v16, *a3, "%i", v18, v19, v20, v21, v22, 6), !v14) && ((v94 & 1) != 0 || (v14 = sub_23EB6FDFC(v16, *a3, "%i", v47, v48, v49, v50, v51, 7), !v14))) && (((HIDWORD(v88) & v88 ^ 1) & v7 & 1) != 0 || ((v85 ^ 1) & 1) != 0 || (v94 & 1) != 0 || (CFArrayGetCount(*a3) < 1 || (v14 = sub_23EB6FDFC(v16, *a3, "%i", v72, v73, v74, v75, v76, 8888), !v14)) && (v14 = sub_23EB6FDFC(v16, *a3, "%i%i", v72, v73, v74, v75, v76, 5), !v14)) && (!CFArrayGetCount(*a3) || !a4 || (v14 = sub_23EB6FDFC(v16, *a3, "%i", v18, v19, v20, v21, v22, 8888), !v14)))
    {
      if (!v9 || ((HIDWORD(v88) & v88 ^ 1) & v7 & 1) != 0 || ((v85 ^ 1) & 1) != 0 || (v94 & 1) != 0 || (v14 = sub_23EB6FDFC(v16, *a3, "%i", v18, v19, v20, v21, v22, 10), !v14))
      {
        if (v8 && CFArrayGetCount(*a3) && !a4)
        {
          goto LABEL_176;
        }

        if (!v15 || (v14 = sub_23EB6FDFC(v16, *a3, "%i", v18, v19, v20, v21, v22, 1), !v14) && (!sub_23EB8BE08(a1, 1382108499) || (v14 = sub_23EB6FDFC(v16, *a3, "%i%i", v52, v53, v54, v55, v56, 2), !v14)))
        {
          if ((v85 & (HIDWORD(v88) | ~v7) & 1) != 0 && sub_23EB8BE08(a1, 942682721) && (v94 & 1) == 0)
          {
            v57 = 4;
LABEL_155:
            v69 = sub_23EB6FDFC(v16, *a3, "%i", v18, v19, v20, v21, v22, v57);
LABEL_159:
            v14 = v69;
            goto LABEL_160;
          }

LABEL_176:
          v14 = 0;
          goto LABEL_164;
        }
      }
    }

    goto LABEL_160;
  }

  v44 = v88 & HIDWORD(v88);
  if (!v87)
  {
    if (!v44)
    {
      v14 = 4294967274;
      goto LABEL_160;
    }

    v70 = 8;
    goto LABEL_158;
  }

  v45 = *a3;
  if (!v44)
  {
    v14 = sub_23EB6FDFC(v16, v45, "%i", v18, v19, v20, v21, v22, 6);
    if (v14)
    {
      goto LABEL_160;
    }

    if ((v94 & 1) == 0)
    {
      v14 = sub_23EB6FDFC(v16, *a3, "%i", v18, v19, v20, v21, v22, 7);
      if (v14)
      {
        goto LABEL_160;
      }
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_176;
    }

    v70 = 1;
LABEL_158:
    v69 = sub_23EB6FDFC(v16, *a3, "%i%i%i", v18, v19, v20, v21, v22, v70);
    goto LABEL_159;
  }

  if (!v9)
  {
    v46 = 327686;
    goto LABEL_183;
  }

  v14 = sub_23EB6FDFC(v16, v45, "%i%i%i%i%i%i", v18, v19, v20, v21, v22, 655366);
  if (!v14)
  {
    if (!a4)
    {
LABEL_184:
      v14 = 0;
      if (!CFArrayGetCount(*a3) || !a4)
      {
        goto LABEL_164;
      }

      v82 = *a3;
      if (v94)
      {
        v69 = sub_23EB6FDFC(v16, v82, "%i%i%i%i%i%i%i%i%i%i%i", v77, v78, v79, v80, v81, 8888);
      }

      else
      {
        v69 = sub_23EB6FDFC(v16, v82, "%i%i%i%i%i%i%i%i%i%i%i%i%i%i", v77, v78, v79, v80, v81, 8888);
      }

      goto LABEL_159;
    }

    v45 = *a3;
    v46 = 8888;
LABEL_183:
    v14 = sub_23EB6FDFC(v16, v45, "%i%i%i%i", v18, v19, v20, v21, v22, v46);
    if (v14)
    {
      goto LABEL_160;
    }

    goto LABEL_184;
  }

LABEL_160:
  if (a3 && v14 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

LABEL_164:
  if (v13)
  {
    CFRelease(v13);
  }

  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_23EBC7FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  if (*(v36 - 113) < 0)
  {
    operator delete(*(v36 - 136));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC8044(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v7 = sub_23EB8BE08(a1, 1417171063);
  v13 = *a3;
  if (v7)
  {
    v14 = sub_23EB6FDFC(v5, v13, "%i%i%i%i", v8, v9, v10, v11, v12, 10);
  }

  else
  {
    v14 = sub_23EB6FDFC(v5, v13, "%i", v8, v9, v10, v11, v12, 100);
  }

  v15 = v14;
  if (v14 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v15;
}

uint64_t sub_23EBC8120(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v12 = sub_23EB6FDFC(v5, Mutable, "%i", v7, v8, v9, v10, v11, 0);
  if (v12 || sub_23EB8BE08(a1, 1112757313) && (v12 = sub_23EB6FDFC(v5, *a3, "%i", v15, v16, v17, v18, v19, 1), v12))
  {
    v13 = v12;
  }

  else
  {
    if (!sub_23EB8BE08(a1, 1147761495))
    {
      return 0;
    }

    v13 = sub_23EB6FDFC(v5, *a3, "%i", v20, v21, v22, v23, v24, 3);
    if (!v13)
    {
      return v13;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v13;
}

uint64_t sub_23EBC823C(uint64_t a1, uint64_t a2, __CFArray **a3, int a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v18 = sub_23EB6FDFC(v6, Mutable, "%i%i", v8, v9, v10, v11, v12, 768);
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = a4 == 0;
  }

  if (!v19)
  {
    v18 = sub_23EB6FDFC(v6, *a3, "%i", v13, v14, v15, v16, v17, 2304);
  }

  if (v18 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v18;
}

uint64_t sub_23EBC8314(uint64_t a1, char *a2, __CFArray **a3)
{
  v22 = 0;
  memset(&v21, 0, sizeof(v21));
  sub_23EB8CCB8(__p, a2);
  if (!a3)
  {
    v12 = 4294967292;
    goto LABEL_9;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    v12 = 4294967293;
    goto LABEL_9;
  }

  sub_23EB8FB78(__p, 1752641585, &v21);
  v12 = sub_23EB97374(a1, &v21, &v22, 0);
  if (v12)
  {
    goto LABEL_20;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i", v7, v8, v9, v10, v11, 16);
  if (v12)
  {
    goto LABEL_20;
  }

  if (v22)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i", v13, v14, v15, v16, v17, 4);
  if (v12)
  {
LABEL_20:
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }
  }

LABEL_9:
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBC8458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC848C(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!sub_23EB8BE08(a1, 1396995415))
  {
    return 0;
  }

  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v12 = sub_23EB6FDFC(v5, Mutable, "%i%i%i%i%i", v7, v8, v9, v10, v11, 0);
  if (!v12)
  {
    if (!sub_23EB8BE08(a1, 1734960965) || (v12 = sub_23EB6FDFC(v5, *a3, "%i", v14, v15, v16, v17, v18, 9), !v12))
    {
      sub_23EB8BE08(a1, 1953392453);
      if (sub_23EB8BE08(a1, 1147761477))
      {
        v13 = sub_23EB6FDFC(v5, *a3, "%i", v19, v20, v21, v22, v23, 15);
        if (!v13)
        {
          return v13;
        }

        goto LABEL_6;
      }

      return 0;
    }
  }

  v13 = v12;
LABEL_6:
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v13;
}

uint64_t sub_23EBC85E0(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!sub_23EB8BE08(a1, 1768961614))
  {
    return 0;
  }

  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v12 = sub_23EB6FDFC(v5, Mutable, "%i%i%i", v7, v8, v9, v10, v11, 0);
  if (!v12)
  {
    if (!sub_23EB8BE08(a1, 1768961607) || (v12 = sub_23EB6FDFC(v5, *a3, "%i", v14, v15, v16, v17, v18, 3), !v12))
    {
      if (sub_23EB8BE08(a1, 1765166674))
      {
        v13 = sub_23EB6FDFC(v5, *a3, "%i", v19, v20, v21, v22, v23, 5);
        if (!v13)
        {
          return v13;
        }

        goto LABEL_6;
      }

      return 0;
    }
  }

  v13 = v12;
LABEL_6:
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v13;
}

uint64_t sub_23EBC871C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i%i%i%i%i%i%i%i", v6, v7, v8, v9, v10, 30);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBC87E8(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *(a1 + 260);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 37, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (Mutable)
  {
    v12 = v4 == 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v4 == 4)
  {
    if (Mutable)
    {
      return 0;
    }

    v14 = 4294967293;
  }

  else
  {
    v15 = sub_23EB6FDFC(v5, Mutable, "%i", v7, v8, v9, v10, v11, 37);
    if (!v15)
    {
      v21 = 1;
      while (1)
      {
        v15 = sub_23EB6FDFC(v5, *a3, "%i", v16, v17, v18, v19, v20, v21);
        if (v15)
        {
          break;
        }

        v21 = (v21 + 1);
        if (v21 == 37)
        {
          return 0;
        }
      }
    }

    v14 = v15;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v14;
}

uint64_t sub_23EBC88E0(uint64_t a1, char *a2, __CFArray **a3)
{
  v17 = 0;
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(__p, a2);
  if (!a3)
  {
    v12 = 4294967292;
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    v12 = 4294967293;
    goto LABEL_12;
  }

  sub_23EB8FB78(__p, 1752641585, &v16);
  v12 = sub_23EB97374(a1, &v16, &v17, 0);
  if (v12)
  {
    goto LABEL_19;
  }

  if (v17)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i%i", v7, v8, v9, v10, v11, 1);
  if (v12)
  {
LABEL_19:
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }
  }

LABEL_12:
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBC8A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC8A38(uint64_t a1, char *a2, __CFArray **a3)
{
  v17 = 0;
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(__p, a2);
  if (!a3)
  {
    v12 = 4294967292;
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    v12 = 4294967293;
    goto LABEL_12;
  }

  sub_23EB8FB78(__p, 1752641585, &v16);
  v12 = sub_23EB97374(a1, &v16, &v17, 0);
  if (v12)
  {
    goto LABEL_19;
  }

  if (v17)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i%i", v7, v8, v9, v10, v11, 1);
  if (v12)
  {
LABEL_19:
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }
  }

LABEL_12:
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EBC8B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC8B90(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i", v6, v7, v8, v9, v10, 1645);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBC8C30(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  if (!sub_23EB8BE08(a1, 1279607875))
  {
    return 0;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i%i", v7, v8, v9, v10, v11, 1);
  if (v12 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_23EBC8CF8(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i%i%i%i%i%i%i", v6, v7, v8, v9, v10, 3600);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBC8DD4(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i", v6, v7, v8, v9, v10, 1);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBC8E74(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  if (!sub_23EB8BE08(a1, 1314148397))
  {
    return 0;
  }

  v12 = sub_23EB6FDFC(v5, *a3, "%i%i%i", v7, v8, v9, v10, v11, 1);
  if (v12 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_23EBC8F44(uint64_t a1, char *a2, __CFArray **a3, int a4)
{
  v8 = sub_23EB8BE08(a1, 1164858228);
  v9 = sub_23EB8BE08(a1, 1852787795);
  v10 = sub_23EB8BE08(a1, 1852788045);
  v92 = 0;
  v91 = 0;
  memset(&v90, 0, sizeof(v90));
  sub_23EB8CCB8(v88, a2);
  v87 = 0;
  v11 = sub_23EB89D74(a1, 1937326416, &v87, 0);
  if (v11)
  {
    goto LABEL_18;
  }

  v12 = v87;
  sub_23EB8FB78(v88, 1651718221, &v90);
  v11 = sub_23EB97374(a1, &v90, &v92 + 4, 0);
  if (v11)
  {
    goto LABEL_18;
  }

  sub_23EB8CCB8(__p, "raSt");
  sub_23EB90814(v88, __p, &v90);
  if (v86 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_23EB97374(a1, &v90, &v92, 0);
  if (v11)
  {
    goto LABEL_18;
  }

  v13 = v92;
  if (sub_23EB8BE08(a1, 1146569811))
  {
    v84 = 0;
    sub_23EB8CCB8(__p, "dWDS");
    sub_23EB90814(v88, __p, &v90);
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = sub_23EB97588(a1, &v90, &v84, 0);
    v11 = v14;
    v15 = v13 == 1 && v14 == 0 && v84;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0;
  }

  sub_23EB8CCB8(__p, "wdFl");
  sub_23EB90814(v88, __p, &v90);
  if (v86 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_23EB97374(a1, &v90, &v91, 0);
  if (!v11)
  {
    if (!a3)
    {
      v11 = 4294967292;
      goto LABEL_22;
    }

    v82 = v91;
    v83 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *a3 = Mutable;
    if (!Mutable)
    {
      v11 = 4294967293;
      goto LABEL_18;
    }

    if (SHIDWORD(v92) > 0x80000)
    {
      if (SHIDWORD(v92) > 655360)
      {
        if ((HIDWORD(v92) - 655361) > 6 || ((1 << (BYTE4(v92) - 1)) & 0x67) == 0)
        {
          goto LABEL_83;
        }
      }

      else if ((HIDWORD(v92) - 524289) >= 3 && HIDWORD(v92) != 524294)
      {
        if (HIDWORD(v92) != 524295)
        {
          goto LABEL_83;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (HIDWORD(v92) <= 0xA)
      {
        if (((1 << SBYTE4(v92)) & 0x660) != 0)
        {
          goto LABEL_53;
        }

        if (((1 << SBYTE4(v92)) & 0x180) != 0)
        {
LABEL_44:
          v11 = sub_23EB6FDFC(v83, Mutable, "%i%i", v18, v19, v20, v21, v22, 1);
          v28 = v13 != 1 || v8;
          if ((v11 | v82) != 0 || v15 || (v28 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_49;
        }
      }

      if (((HIDWORD(v92) - 327681) > 6 || ((1 << (BYTE4(v92) - 1)) & 0x67) == 0) && (HIDWORD(v92) - 262150) >= 2)
      {
LABEL_83:
        v11 = sub_23EB6FDFC(v83, Mutable, "%i", v18, v19, v20, v21, v22, 1);
        if (v11)
        {
          goto LABEL_18;
        }

        v53 = v12 < 0x6C ? 1 : a4;
        if (!v9 && !v15)
        {
          if (v53)
          {
            v11 = sub_23EB6FDFC(v83, *a3, "%i%i%i", v48, v49, v50, v51, v52, 8888);
            if (v11)
            {
              goto LABEL_18;
            }

            if (sub_23EB8BE08(a1, 1414745645) && v13 != 1)
            {
              v11 = sub_23EB6FDFC(v83, *a3, "%i", v54, v55, v56, v57, v58, 8);
              if (v11)
              {
                goto LABEL_18;
              }
            }
          }
        }

        if (!sub_23EB8BE08(a1, 1095062317))
        {
          if (v9 || !sub_23EB8BE08(a1, 1464877357))
          {
            v11 = 0;
            goto LABEL_22;
          }

          v80 = sub_23EB6FDFC(v83, *a3, "%i", v75, v76, v77, v78, v79, 4);
          v11 = v80;
          v81 = v13 != 1 || v8;
          if (v80 || !v81)
          {
            goto LABEL_18;
          }

          v29 = 9;
LABEL_50:
          v11 = sub_23EB6FDFC(v83, *a3, "%i", v23, v24, v25, v26, v27, v29);
          goto LABEL_18;
        }

        v11 = sub_23EB6FDFC(v83, *a3, "%i", v59, v60, v61, v62, v63, 8888);
        if (v11)
        {
          goto LABEL_18;
        }

        if (((v9 | a4 ^ 1) & 1) == 0)
        {
          v11 = sub_23EB6FDFC(v83, *a3, "%i", v64, v65, v66, v67, v68, 6);
          if (v11)
          {
            goto LABEL_18;
          }
        }

        if (!v10)
        {
          v11 = sub_23EB6FDFC(v83, *a3, "%i", v64, v65, v66, v67, v68, 5);
          if (v11)
          {
            goto LABEL_18;
          }
        }

        v11 = sub_23EB6FDFC(v83, *a3, "%i", v64, v65, v66, v67, v68, 7);
        v74 = v13 != 1 || v8;
        if ((v11 | v82) != 0 || v15)
        {
          goto LABEL_18;
        }

        if (!v74)
        {
          goto LABEL_18;
        }

        v11 = sub_23EB6FDFC(v83, *a3, "%i", v69, v70, v71, v72, v73, 8888);
        if (v11)
        {
          goto LABEL_18;
        }

        if (((v9 | a4 ^ 1) & 1) == 0)
        {
          v11 = sub_23EB6FDFC(v83, *a3, "%i", v23, v24, v25, v26, v27, 11);
          if (v11)
          {
            goto LABEL_18;
          }
        }

        if (v10)
        {
LABEL_49:
          v29 = 12;
          goto LABEL_50;
        }

LABEL_75:
        v11 = sub_23EB6FDFC(v83, *a3, "%i", v23, v24, v25, v26, v27, 10);
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_49;
      }
    }

LABEL_53:
    v11 = sub_23EB6FDFC(v83, Mutable, "%i", v18, v19, v20, v21, v22, 1);
    if (v11)
    {
      goto LABEL_18;
    }

    v35 = v12 < 0x6C ? 1 : a4;
    if (!v9 && v35)
    {
      v36 = v13 != 1 || v15;
      if (!v36)
      {
        v11 = sub_23EB6FDFC(v83, *a3, "%i%i%i", v30, v31, v32, v33, v34, 8888);
        if (v11)
        {
          goto LABEL_18;
        }
      }

      if (!(v15 | !sub_23EB8BE08(a1, 1414745645)) && (v13 != 1 || sub_23EB8BE08(a1, 1735546692)))
      {
        if (v36)
        {
          v11 = sub_23EB6FDFC(v83, *a3, "%i", v30, v31, v32, v33, v34, 8888);
          if (v11)
          {
            goto LABEL_18;
          }
        }

        v11 = sub_23EB6FDFC(v83, *a3, "%i", v30, v31, v32, v33, v34, 8);
        if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    v11 = sub_23EB6FDFC(v83, *a3, "%i", v30, v31, v32, v33, v34, 8888);
    if (v11)
    {
      goto LABEL_18;
    }

    if (!v10)
    {
      v11 = sub_23EB6FDFC(v83, *a3, "%i", v37, v38, v39, v40, v41, 5);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    v11 = sub_23EB6FDFC(v83, *a3, "%i", v37, v38, v39, v40, v41, 7);
    v47 = v13 != 1 || v8;
    if ((v11 | v82) != 0 || v15)
    {
      goto LABEL_18;
    }

    if (!v47)
    {
      goto LABEL_18;
    }

    v11 = sub_23EB6FDFC(v83, *a3, "%i", v42, v43, v44, v45, v46, 8888);
    if (v11)
    {
      goto LABEL_18;
    }

    if (v10)
    {
      goto LABEL_49;
    }

    goto LABEL_75;
  }

LABEL_18:
  if (a3 && v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

LABEL_22:
  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23EBC972C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC9794(uint64_t a1, char *a2, __CFArray **a3, int a4)
{
  v74 = 0;
  if (!a3)
  {
    return 4294967292;
  }

  v63 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (Mutable)
  {
    if (!sub_23EB8BE08(a1, 1935819842))
    {
      goto LABEL_34;
    }

    sub_23EB8CCB8(&v73, a2);
    v9 = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
    size = v73.__r_.__value_.__l.__size_;
    v11 = v73.__r_.__value_.__r.__words[0];
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v73;
    }

    else
    {
      v12 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    if (size >= 16)
    {
      v15 = (v12 + size);
      v16 = v12;
      do
      {
        v17 = memchr(v16, 87, size - 15);
        if (!v17)
        {
          break;
        }

        if (v17->__r_.__value_.__r.__words[0] == 0x6461722E69466957 && v17->__r_.__value_.__l.__size_ == 0x2E5D2A5B2E736F69)
        {
          goto LABEL_22;
        }

        v16 = (&v17->__r_.__value_.__l.__data_ + 1);
        size = v15 - v16;
      }

      while (v15 - v16 > 15);
      v17 = v15;
LABEL_22:
      v13 = v17 != v15 && v17 == v12;
      if (v9 < 0)
      {
LABEL_33:
        operator delete(v11);
        if (!v13)
        {
LABEL_34:
          v72 = 0;
          v70 = 0;
          v71 = 0;
          memset(&v73, 0, sizeof(v73));
          sub_23EB8CCB8(v68, a2);
          sub_23EB8CCB8(__p, "raMd");
          sub_23EB90814(v68, __p, &v73);
          if (v67 < 0)
          {
            operator delete(__p[0]);
          }

          v14 = sub_23EB97374(a1, &v73, &v71, 0);
          if (v14)
          {
            goto LABEL_41;
          }

          sub_23EB8CCB8(__p, "wdFl");
          sub_23EB90814(v68, __p, &v73);
          if (v67 < 0)
          {
            operator delete(__p[0]);
          }

          v14 = sub_23EB97374(a1, &v73, &v70, 0);
          if (v14)
          {
            goto LABEL_41;
          }

          v14 = sub_23EB974CC(a1, 1918979139, &v72, 0);
          if (v14)
          {
            goto LABEL_41;
          }

          v28 = v70;
          if (!sub_23EB8BE08(a1, 1935819842))
          {
            v29 = sub_23EB8BE08(a1, 1094936659);
            if (!v28 && v29)
            {
              v14 = sub_23EB6FDFC(v63, *a3, "%i", v30, v31, v32, v33, v34, 1000);
              if (v14)
              {
                goto LABEL_41;
              }
            }
          }

          if (sub_23EB8BFFC(a1, 1937329234, &v74, 0) || !v74 || CFDictionaryGetCount(v74) < 1)
          {
            if ((sub_23EBB6BB0(v71) & 1) == 0)
            {
              if (CFArrayGetCount(*a3) < 1 || (v14 = sub_23EB6FDFC(v63, *a3, "%i", v38, v39, v40, v41, v42, 8888), !v14))
              {
                v43 = 0;
                while (1)
                {
                  if ((v72 >> v43))
                  {
                    if (v43 == 13 && v71 != 1)
                    {
                      goto LABEL_70;
                    }

                    v14 = sub_23EB6FDFC(v63, *a3, "%i", v38, v39, v40, v41, v42, v43 + 1);
                    if (v14)
                    {
                      goto LABEL_41;
                    }
                  }

                  v14 = 0;
                  if (++v43 == 14)
                  {
                    goto LABEL_41;
                  }
                }
              }

              goto LABEL_41;
            }

LABEL_70:
            v14 = 0;
            goto LABEL_41;
          }

          valuePtr = 0;
          v14 = sub_23EB89D74(a1, 1937330789, &valuePtr, 0);
          if (v14)
          {
LABEL_41:
            if (v69 < 0)
            {
              operator delete(v68[0]);
            }

            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v73.__r_.__value_.__l.__data_);
            }

            goto LABEL_47;
          }

          v36 = 0;
          v37 = 1;
          if (v71 > 4)
          {
            if (v71 <= 6)
            {
              if (v71 != 5)
              {
                v37 = 0;
                v36 = @"bgn_channels";
                goto LABEL_93;
              }
            }

            else
            {
              if (v71 == 7)
              {
                v37 = 0;
                v36 = @"2_4GHz_n_only_channels";
                goto LABEL_93;
              }

              if (v71 == 8)
              {
                v37 = 0;
                v36 = @"5GHz_n_only_channels";
                goto LABEL_93;
              }

              if (v71 != 10)
              {
LABEL_93:
                if (sub_23EBB6BB0(v71))
                {
                  v64 = 0;
                  sub_23EB8CCB8(__p, "raWC");
                  sub_23EB90814(v68, __p, &v73);
                  if (v67 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v44 = sub_23EB97588(a1, &v73, &v64, 0);
                  v14 = v44;
                  if (v64)
                  {
                    v45 = @"5GHz_wide_channels";
                  }

                  else
                  {
                    v45 = @"5GHz_channels";
                  }

                  if (v44)
                  {
                    goto LABEL_41;
                  }
                }

                else
                {
                  v45 = @"2_4GHz_channels";
                }

                if ((sub_23EBB6BD8(v71) | a4) == 1)
                {
                  Value = CFDictionaryGetValue(v74, @"regions");
                  v47 = Value;
                  if (!Value)
                  {
LABEL_123:
                    v14 = 0;
                    goto LABEL_41;
                  }

                  Count = CFArrayGetCount(Value);
                  if (Count >= 1)
                  {
                    v49 = 0;
                    while (1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v47, v49);
                      v51 = ValueAtIndex;
                      if (!ValueAtIndex)
                      {
                        goto LABEL_123;
                      }

                      v52 = CFDictionaryGetValue(ValueAtIndex, @"region");
                      if (!v52)
                      {
                        goto LABEL_123;
                      }

                      CFNumberGetValue(v52, kCFNumberIntType, &valuePtr + 4);
                      if (HIDWORD(valuePtr) == valuePtr)
                      {
                        if ((v37 & 1) != 0 || (v53 = CFDictionaryGetValue(v51, v36), (v54 = v53) == 0) || !CFArrayGetCount(v53))
                        {
                          v54 = CFDictionaryGetValue(v51, v45);
                          if (!v54)
                          {
                            goto LABEL_123;
                          }
                        }

                        v55 = CFArrayGetCount(v54);
                        if (!v55)
                        {
                          goto LABEL_70;
                        }

                        if (CFArrayGetCount(*a3) < 1 || (v14 = sub_23EB6FDFC(v63, *a3, "%i", v56, v57, v58, v59, v60, 8888), !v14))
                        {
                          if (v55 < 1)
                          {
                            goto LABEL_70;
                          }

                          v61 = 0;
                          while (1)
                          {
                            v62 = CFArrayGetValueAtIndex(v54, v61);
                            if (!v62)
                            {
                              goto LABEL_123;
                            }

                            CFArrayAppendValue(*a3, v62);
                            if (v55 == ++v61)
                            {
                              goto LABEL_70;
                            }
                          }
                        }

                        goto LABEL_41;
                      }

                      if (Count == ++v49)
                      {
                        goto LABEL_70;
                      }
                    }
                  }
                }

                goto LABEL_70;
              }
            }

            v37 = 0;
            v36 = @"an_channels";
            goto LABEL_93;
          }

          if (v71 > 2)
          {
            v37 = 0;
            if (v71 == 3)
            {
              v36 = @"g_only_channels";
            }

            else
            {
              v36 = @"a_only_channels";
            }
          }

          else if (v71 == 1)
          {
            v37 = 0;
            v36 = @"b_only_channels";
          }

          else if (v71 == 2)
          {
            v37 = 0;
            v36 = @"bg_channels";
          }

          goto LABEL_93;
        }

LABEL_30:
        v73.__r_.__value_.__s.__data_[0] = 0;
        v20 = sub_23EB9BEF4(a1, &v73, 0, 0);
        if (!v20)
        {
          v26 = *a3;
          if (v73.__r_.__value_.__s.__data_[0] == 1)
          {
            v20 = sub_23EB6FDFC(v63, v26, "%i", v21, v22, v23, v24, v25, 2000);
          }

          else
          {
            v20 = sub_23EB6FDFC(v63, v26, "%i%i", v21, v22, v23, v24, v25, 1000);
          }
        }

        v14 = v20;
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v14 = 4294967293;
LABEL_47:
  if (v74)
  {
    CFRelease(v74);
    v74 = 0;
  }

  if (v14 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v14;
}

void sub_23EBC9EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBC9F24(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i", v6, v7, v8, v9, v10, 0);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBC9FC0(uint64_t a1, char *a2, CFTypeRef *a3)
{
  sub_23EB8CCB8(&v19, "WiFi.radios.[*].");
  sub_23EB8CCB8(&__p, a2);
  v16 = 0;
  if (a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *a3 = Mutable;
    if (Mutable)
    {
      sub_23EB8FB78(&v19, 1651723853, &v19);
      v13 = sub_23EB97374(a1, &v19, &v16, 0);
      if (v13 || (v16 != 3 && v16 ? (v14 = sub_23EB6FDFC(v6, *a3, "%i%i", v8, v9, v10, v11, v12, 6)) : (v14 = sub_23EB6FDFC(v6, *a3, "%i%i%i", v8, v9, v10, v11, v12, 6)), v13 = v14, v14))
      {
        if (*a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }
      }
    }

    else
    {
      v13 = 4294967293;
    }
  }

  else
  {
    v13 = 4294967292;
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_23EBCA11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCA150(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i%i%i", v6, v7, v8, v9, v10, 0);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBCA200(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i", v6, v7, v8, v9, v10, 0);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBCA2A4(uint64_t a1, uint64_t a2, CFTypeRef *a3, int a4)
{
  sub_23EB8CCB8(&__p, "WiFi.radios.[*].");
  v22 = 0;
  if (a3)
  {
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *a3 = Mutable;
    if (Mutable)
    {
      sub_23EB8FB78(&__p, 1651723853, &__p);
      v14 = sub_23EB97374(a1, &__p, &v22, 0);
      if (v14 || (!v22 ? (v15 = !sub_23EB9C128(a1)) : (v15 = 1), (v14 = sub_23EB6FDFC(v7, *a3, "%i", v9, v10, v11, v12, v13, 0), v14) || v15 && (v14 = sub_23EB6FDFC(v7, *a3, "%i", v16, v17, v18, v19, v20, 1), v14) || a4 && (v14 = sub_23EB6FDFC(v7, *a3, "%i", v16, v17, v18, v19, v20, 2), v14) || (v14 = sub_23EB6FDFC(v7, *a3, "%i", v16, v17, v18, v19, v20, 3), v14)))
      {
        if (*a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }
      }
    }

    else
    {
      v14 = 4294967293;
    }
  }

  else
  {
    v14 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_23EBCA440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCA45C(uint64_t a1, char *a2, __CFArray **a3, int a4)
{
  sub_23EB8CCB8(&__p, a2);
  v37 = 0;
  if (!a3)
  {
    v14 = 4294967292;
    goto LABEL_9;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    v14 = 4294967293;
    goto LABEL_9;
  }

  v14 = sub_23EB6FDFC(v7, Mutable, "%i", v9, v10, v11, v12, v13, 0);
  if (v14)
  {
    goto LABEL_27;
  }

  v14 = sub_23EB89D74(a1, 1937326416, &v37, 0);
  if (v14)
  {
    goto LABEL_27;
  }

  if ((sub_23EB8BE08(a1, 1464095533) & a4) == 1)
  {
    v14 = sub_23EB6FDFC(v7, *a3, "%i", v16, v17, v18, v19, v20, 10);
    if (v14)
    {
      goto LABEL_27;
    }
  }

  if (sub_23EB8BE08(a1, 1112757313))
  {
    v21 = sub_23EB4BDDC(v37);
    if (v21 == 4 || v21 == 10 || a4)
    {
      v14 = sub_23EB6FDFC(v7, *a3, "%i", v22, v23, v24, v25, v26, 1);
      if (v14)
      {
        goto LABEL_27;
      }
    }
  }

  if (sub_23EB8BE08(a1, 1146569811))
  {
    v14 = sub_23EB6FDFC(v7, *a3, "%i", v27, v28, v29, v30, v31, 20);
    if (v14)
    {
      goto LABEL_27;
    }
  }

  if (!sub_23EB8BE08(a1, 1147761495))
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = sub_23EB6FDFC(v7, *a3, "%i%i", v32, v33, v34, v35, v36, 8888);
  if (v14)
  {
LABEL_27:
    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }
  }

LABEL_9:
  if (v39 < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_23EBCA65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCA67C(uint64_t a1, uint64_t a2, __CFArray **a3, int a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v14 = sub_23EB6FDFC(v7, Mutable, "%i", v9, v10, v11, v12, v13, 0);
  if (v14 || (!sub_23EB8BE08(a1, 1950434124) ? (v20 = 1) : (v20 = 3), v14 = sub_23EB6FDFC(v7, *a3, "%i", v15, v16, v17, v18, v19, v20), v14))
  {
    v21 = v14;
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v21 = sub_23EB6FDFC(v7, *a3, "%i", v22, v23, v24, v25, v26, 2);
    if (!v21)
    {
      return v21;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v21;
}

uint64_t sub_23EBCA79C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i%i%i%i%i%i", v6, v7, v8, v9, v10, 900);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBCA85C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i", v6, v7, v8, v9, v10, 0);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBCA900(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i", v6, v7, v8, v9, v10, 0);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBCA9A4(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3, char a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  if (a4)
  {
    result = sub_23EBD5570(Mutable, v7, v8);
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = *a3;
    v14.length = CFArrayGetCount(result);
    v14.location = 0;
    CFArrayAppendArray(v11, v10, v14);
  }

  else
  {
    v12 = *",";
    if (*",")
    {
      v13 = off_27E3827E8;
      do
      {
        if (*v13)
        {
          CFArrayAppendValue(*a3, *v13);
        }

        v13 += 2;
        --v12;
      }

      while (v12);
    }
  }

  return 0;
}

uint64_t sub_23EBCAA74(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = sub_23EB8BE08(a1, 1852788045);
  sub_23EB8CCB8(&__p, "WiFi.radios.[*].");
  v20 = 0;
  if (a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *a3 = Mutable;
    if (Mutable)
    {
      v18 = sub_23EB6FDFC(v6, Mutable, "%i", v8, v9, v10, v11, v12, 1);
      if (v18 || !v5 && ((sub_23EB8FB78(&__p, 1651718221, &__p), v18 = sub_23EB97374(a1, &__p, &v20, 0), v18) || (v20 - 7) >= 2 && v20 != 524295 && (v18 = sub_23EB6FDFC(v6, *a3, "%i", v13, v14, v15, v16, v17, 5), v18)) || (v18 = sub_23EB6FDFC(v6, *a3, "%i", v13, v14, v15, v16, v17, 7), v18))
      {
        if (*a3)
        {
          CFRelease(*a3);
          *a3 = 0;
        }
      }
    }

    else
    {
      v18 = 4294967293;
    }
  }

  else
  {
    v18 = 4294967292;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_23EBCABFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCAC18(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  v11 = sub_23EB6FDFC(v4, Mutable, "%i%i%i", v6, v7, v8, v9, v10, 0);
  if (v11 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v11;
}

uint64_t sub_23EBCACBC(uint64_t a1, uint64_t a2, __CFArray **a3, int a4)
{
  if (!a3)
  {
    return 4294967292;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = Mutable;
  if (!Mutable)
  {
    return 4294967293;
  }

  if (sub_23EB9D5D0(a1))
  {
    v14 = *a3;
    v15 = 2;
    goto LABEL_13;
  }

  v20 = 0;
  v17 = sub_23EB8BE08(a1, 1347437878);
  v18 = sub_23EB89D74(a1, 1651722563, &v20, 0);
  if (!v18)
  {
    if (v20 == 2 && !v17 && !a4 || (v18 = sub_23EB6FDFC(v7, *a3, "%i", v9, v10, v11, v12, v13, 0), !v18))
    {
      v14 = *a3;
      v15 = 1;
LABEL_13:
      v16 = sub_23EB6FDFC(v7, v14, "%i", v9, v10, v11, v12, v13, v15);
      if (!v16)
      {
        return v16;
      }

      goto LABEL_14;
    }
  }

  v16 = v18;
LABEL_14:
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v16;
}

uint64_t sub_23EBCADF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_23EB4BD2C(a2, v15);
  v8 = sub_23EB8F5B4(a2) ^ 1;
  if (a2 == 1633899617)
  {
    LOBYTE(v8) = 0;
  }

  if (v8)
  {
    if ((sub_23EB91370(a1, a2) & 1) == 0)
    {
      return sub_23EBCAFD4(a1, v15, a3, a4);
    }

    return 0;
  }

  memset(&__p, 0, sizeof(__p));
  v9 = sub_23EB8F428(a1, 0);
  if (v9 <= 0)
  {
    return 0;
  }

  LODWORD(v10) = 0;
  while (1)
  {
    if ((sub_23EBB65EC(v16, 0x11uLL), MEMORY[0x23EF1EFD0](&__p, v16), sub_23EB8FB78(&__p, a2, &__p), a2 != 2003061875) && a2 != 1651726157 || v10 == sub_23EB8F4AC(a1, 0))
    {
      v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v12 = sub_23EBCAFD4(a1, v11, a3, a4);
      if (v12)
      {
        break;
      }
    }

    v10 = (v10 + 1);
    if (v9 <= v10)
    {
      v12 = 0;
      break;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

uint64_t sub_23EBCAFD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23EB9AC64(a2);
  v9 = *(qword_27E383818 + 8);
  if (!v9)
  {
    return 4294967292;
  }

  v10 = qword_27E383818 + 8;
  do
  {
    if (*(v9 + 32) >= v8)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < v8));
  }

  while (v9);
  if (v10 == qword_27E383818 + 8 || v8 < *(v10 + 32))
  {
    return 4294967292;
  }

  v12 = *(*(v10 + 40) + 40);
  if (!v12)
  {
    return 0;
  }

  return v12(a1, a2, a3, a4);
}

uint64_t sub_23EBCB09C(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_23EB8FB78(v14, 1937329773, &v16);
  v7 = sub_23EB97710(a1, &v16, &__p, 0);
  if (!v7)
  {
    v8 = 1732604483;
    v9 = SHIBYTE(v13);
    if ((SHIBYTE(v13) & 0x8000000000000000) != 0)
    {
      v9 = v12;
      if (v12 > 0x40)
      {
LABEL_8:
        sub_23EBCB1D8(1937329773, v8, a3, a4);
        goto LABEL_9;
      }
    }

    else if (SHIBYTE(v13) > 0x40)
    {
      goto LABEL_8;
    }

    if (v9)
    {
      goto LABEL_9;
    }

    v8 = 1732604481;
    goto LABEL_8;
  }

LABEL_9:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCB194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_23EBCB1D8(int a1, int a2, void **a3, uint64_t *a4)
{
  result = *a3;
  if (!*a3)
  {
    result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    *a3 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = *a4;
  if (*a4 < 1)
  {
LABEL_7:
    result = malloc_type_realloc(result, 8 * v9 + 8, 0x100004000313F17uLL);
    if (!result)
    {
      return result;
    }

    *a3 = result;
LABEL_10:
    v11 = *a4;
    v12 = &result[8 * *a4];
    *v12 = a1;
    *(v12 + 1) = a2;
    *a4 = v11 + 1;
    return result;
  }

  v10 = *a3;
  while (*(v10 + 1) != a2 || *v10 != a1)
  {
    v10 += 8;
    if (v10 >= &result[8 * v9])
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_23EBCB2A8(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v14, 0, sizeof(v14));
  sub_23EB8CCB8(__p, a2);
  memset(&v11, 0, sizeof(v11));
  sub_23EB8FB78(__p, 1937330263, &v14);
  v7 = sub_23EB97710(a1, &v14, &v11, 0);
  if (!v7)
  {
    v8 = 1732604483;
    size = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v11.__r_.__value_.__l.__size_;
      if (v11.__r_.__value_.__l.__size_ > 0x20)
      {
LABEL_13:
        sub_23EBCB1D8(1937330263, v8, a3, a4);
        goto LABEL_14;
      }
    }

    else if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) > 0x20)
    {
      goto LABEL_13;
    }

    if (!size && *(a1 + 193) != 1)
    {
      v8 = 1732604481;
      goto LABEL_13;
    }

    if (!std::string::compare(&v11, "public") && sub_23EB8BE08(a1, 1400460148) && !sub_23EBCB438(a1, 1886741072))
    {
      v8 = 1886741072;
      goto LABEL_13;
    }
  }

LABEL_14:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCB3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCB438(uint64_t a1, int a2)
{
  theDict = 0;
  v16 = 0;
  sub_23EB8BFFC(a1, 1937328487, &theDict, 0);
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"problems");
  if (Value)
  {
    v4 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; v11 != i; ++i)
      {
        sub_23EB6FF14(v4, &v16, "[*].%kO:code", v6, v7, v8, v9, v10, i);
        if (v13)
        {
          break;
        }

        if (v16 == a2)
        {
          v14 = 1;
          goto LABEL_9;
        }
      }
    }
  }

  v14 = 0;
LABEL_9:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v14;
}

uint64_t sub_23EBCB520(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 1937326964, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  if (!v7)
  {
    v8 = HIBYTE(v12);
    if (v12 < 0)
    {
      v8 = v11;
    }

    if (v8 >= 0x41)
    {
      sub_23EBCB1D8(1937326964, 1732604483, a3, a4);
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCB60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCB650(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 1937329263, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  v8 = HIBYTE(v12);
  if (!v7 && SHIBYTE(v12) < 0 && v11 > 0x80)
  {
    sub_23EBCB1D8(1937329263, 1732604483, a3, a4);
    v8 = HIBYTE(v12);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCB734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCB778(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  if (sub_23EB8BE08(a1, 2000834122))
  {
    v13 = 0;
    __p = 0;
    v11 = 0;
    v12 = 0;
    sub_23EB8FB78(v14, 2002929742, &v16);
    v7 = sub_23EB97710(a1, &v16, &__p, 0);
    if (!v7)
    {
      sub_23EB8FB78(v14, 2002929006, &v16);
      v7 = sub_23EB97588(a1, &v16, &v13, 0);
      if (!v7)
      {
        if (v13)
        {
          v8 = HIBYTE(v12);
          if (v12 < 0)
          {
            v8 = v11;
          }

          if (!v8)
          {
            sub_23EBCB1D8(2002929742, 1732604482, a3, a4);
          }
        }

        v7 = 0;
      }
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCB8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCB90C(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v12, 0, sizeof(v12));
  sub_23EB8CCB8(__p, a2);
  v9 = 0;
  sub_23EB8FB78(__p, 2002927939, &v12);
  v7 = sub_23EB97588(a1, &v12, &v9 + 1, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 2002929006, &v12);
    v7 = sub_23EB97588(a1, &v12, &v9, 0);
    if (!v7)
    {
      if (sub_23EB8BE08(a1, 2000834122) && HIBYTE(v9) == 1 && (v9 & 1) == 0)
      {
        sub_23EBCB1D8(2002927939, 1918320962, a3, a4);
      }

      v7 = 0;
    }
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCBA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCBA58(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  sub_23EB8FB78(v15, 1936474988, &v17);
  v7 = sub_23EB97710(a1, &v17, &__p, 0);
  if (!v7)
  {
    if (SHIBYTE(v14) < 0)
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      p_p = __p;
    }

    else
    {
      if (!HIBYTE(v14))
      {
        goto LABEL_15;
      }

      p_p = &__p;
    }

    v7 = sub_23EB7DE5C(p_p, 0, &v11, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_16;
    }

    if (sub_23EB8BE08(a1, 1400468300))
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      v9 = 1936474953;
      if (v11 + 1 >= 2 && HIBYTE(v11) - 225 > 0xDu)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 1732604484;
    }

    sub_23EBCB1D8(1936474988, v9, a3, a4);
LABEL_15:
    v7 = 0;
  }

LABEL_16:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCBBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCBBFC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  v10 = 0;
  sub_23EB8FB78(__p, 1936488044, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (!v7 && v10)
  {
    if (sub_23EB8BE08(a1, 1400468300))
    {
      if (v10 < 8)
      {
        goto LABEL_8;
      }

      v8 = 1936477257;
    }

    else
    {
      v8 = 1732604484;
    }

    sub_23EBCB1D8(1936488044, v8, a3, a4);
  }

LABEL_8:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCBCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCBD20(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(v16, a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_23EB8CCB8(__p, "raNm");
  sub_23EB90814(v16, __p, &v18);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97710(a1, &v18, &v13, 0);
  if (!v7)
  {
    v8 = 1732604483;
    v9 = SHIBYTE(v15);
    if ((SHIBYTE(v15) & 0x8000000000000000) != 0)
    {
      v9 = v14;
      if (v14 > 0x20)
      {
LABEL_10:
        sub_23EBCB1D8(1918979693, v8, a3, a4);
        goto LABEL_11;
      }
    }

    else if (SHIBYTE(v15) >= 0x21)
    {
      goto LABEL_10;
    }

    if (v9)
    {
      goto LABEL_11;
    }

    v8 = 1732604481;
    goto LABEL_10;
  }

LABEL_11:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCBE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCBE94(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v23, 0, sizeof(v23));
  sub_23EB8CCB8(v21, a2);
  v19 = 0;
  theData = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  sub_23EB8CCB8(__p, "raSt");
  sub_23EB90814(v21, __p, &v23);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v23, &v16, 0);
  if (!v7 && v16 != 3)
  {
    sub_23EB8CCB8(__p, "raWE");
    sub_23EB90814(v21, __p, &v23);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB912D0(a1, &v23, &theData, 0);
    if (!v7)
    {
      sub_23EB8CCB8(__p, "raCr");
      sub_23EB90814(v21, __p, &v23);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v7 = sub_23EB97710(a1, &v23, &v17, 0);
      if (!v7)
      {
        sub_23EB8CCB8(__p, "raWM");
        sub_23EB90814(v21, __p, &v23);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB97374(a1, &v23, &v16 + 4, 0);
        if (!v7)
        {
          sub_23EB8CCB8(__p, "raEA");
          sub_23EB90814(v21, __p, &v23);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }

          v7 = sub_23EB97588(a1, &v23, &v15 + 1, 0);
          if (!v7)
          {
            sub_23EB8CCB8(__p, "rTSN");
            sub_23EB90814(v21, __p, &v23);
            if (v14 < 0)
            {
              operator delete(__p[0]);
            }

            v7 = sub_23EB97588(a1, &v23, &v15, 0);
            if (!v7)
            {
              if ((HIDWORD(v16) - 3) >= 3)
              {
                if (HIDWORD(v16) == 2)
                {
                  if (CFDataGetLength(theData) == 13)
                  {
LABEL_40:
                    v7 = 0;
                    goto LABEL_41;
                  }

                  v9 = 1769419083;
                }

                else
                {
                  if (HIDWORD(v16) != 1 || CFDataGetLength(theData) == 5)
                  {
                    goto LABEL_40;
                  }

                  v9 = 1769419851;
                }
              }

              else if (sub_23EB8BE08(a1, 1414745645) && v15 == 1)
              {
                v8 = HIBYTE(v19);
                if (v19 < 0)
                {
                  v8 = v18;
                }

                if (v8 == 13)
                {
                  goto LABEL_40;
                }

                v9 = 1767134030;
              }

              else
              {
                if ((v15 & 0x100) != 0)
                {
                  goto LABEL_40;
                }

                Length = CFDataGetLength(theData);
                v9 = 1767329857;
                if (Length == 32)
                {
                  v11 = HIBYTE(v19);
                  if (v19 < 0)
                  {
                    v11 = v18;
                  }

                  if (v11)
                  {
                    goto LABEL_40;
                  }
                }
              }

              sub_23EBCB1D8(1651725131, v9, a3, a4);
              goto LABEL_40;
            }
          }
        }
      }
    }
  }

LABEL_41:
  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCC1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCC280(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v20, 0, sizeof(v20));
  sub_23EB8CCB8(v18, a2);
  v17 = 0;
  v15 = 0;
  v16 = 0;
  sub_23EB8CCB8(__p, "raSt");
  sub_23EB90814(v18, __p, &v20);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v20, &v15, 0);
  if (!v7)
  {
    sub_23EB8CCB8(__p, "raWM");
    sub_23EB90814(v18, __p, &v20);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB97374(a1, &v20, &v16, 0);
    if (!v7)
    {
      sub_23EB8CCB8(__p, "raEA");
      sub_23EB90814(v18, __p, &v20);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v7 = sub_23EB97588(a1, &v20, &v17, 0);
      if (!(v7 | v15))
      {
        v8 = sub_23EB8BE08(a1, 1400460148);
        v9 = v16;
        if (v16)
        {
          v10 = 0;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (sub_23EBCB438(a1, 1869631063))
          {
LABEL_29:
            v7 = 0;
            goto LABEL_30;
          }

          v11 = 1869631063;
LABEL_28:
          sub_23EBCB1D8(1651725133, v11, a3, a4);
          goto LABEL_29;
        }

        v11 = 2004045141;
        if (v16 == 4)
        {
          if (!sub_23EB8BE08(a1, 1095062317))
          {
            goto LABEL_28;
          }

          v9 = v16;
        }

        if (v9 == 3)
        {
          if (!sub_23EB8BE08(a1, 1464877357))
          {
            goto LABEL_28;
          }

          v9 = v16;
        }

        if (v9 == 5)
        {
          if (!sub_23EB8BE08(a1, 1095062317))
          {
            goto LABEL_28;
          }

          v9 = v16;
        }

        v7 = 0;
        if (v17 && v9 <= 2)
        {
          v11 = 1732604485;
          goto LABEL_28;
        }
      }
    }
  }

LABEL_30:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCC4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCC528(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  v14 = 0;
  sub_23EB8CCB8(__p, "raCA");
  sub_23EB90814(v15, __p, &v17);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97588(a1, &v17, &v14, 0);
  if (!v7)
  {
    if (v14)
    {
      if (!sub_23EB8BE08(a1, 1094936659))
      {
        sub_23EBCB1D8(1651724867, 1633898067, a3, a4);
      }

      goto LABEL_11;
    }

    v11 = 0;
    v10 = 0;
    v9 = 0;
    sub_23EB8CCB8(__p, "raMd");
    sub_23EB90814(v15, __p, &v17);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB97374(a1, &v17, &v11, 0);
    if (!v7)
    {
      if (v11 == 9)
      {
LABEL_11:
        v7 = 0;
        goto LABEL_12;
      }

      v7 = sub_23EB974CC(a1, 1918979139, &v10, 0);
      if (!v7)
      {
        sub_23EB8CCB8(__p, "raCh");
        sub_23EB90814(v15, __p, &v17);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB97374(a1, &v17, &v9, 0);
        if (!v7)
        {
          if (sub_23EBB6BB0(v11))
          {
            if ((v9 - 166) >= 0xFFFFFF7C)
            {
              goto LABEL_11;
            }
          }

          else if ((v10 >> (v9 - 1)))
          {
            goto LABEL_11;
          }

          sub_23EBCB1D8(1651724867, 1732604485, a3, a4);
          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCC74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCC7C0(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  v13 = 0;
  sub_23EB8CCB8(__p, "raPo");
  sub_23EB90814(v14, __p, &v16);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97464(a1, &v16, &v13, 0);
  if (!v7 && v13 != 100)
  {
    v8 = sub_23EB8BE08(a1, 1417171063);
    v9 = 1732604484;
    if (v8)
    {
      if (v13 <= 0x64u)
      {
        if (v13 > 3u)
        {
          goto LABEL_11;
        }

        v9 = 1732604487;
      }

      else
      {
        v9 = 1732604486;
      }
    }

    sub_23EBCB1D8(1918980207, v9, a3, a4);
  }

LABEL_11:
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCC8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCC928(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  v13 = 0;
  sub_23EB8CCB8(__p, "raSt");
  sub_23EB90814(v14, __p, &v16);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v16, &v13, 0);
  if (!v7)
  {
    v12 = 0;
    if (sub_23EB8BE08(a1, 1146569811))
    {
      sub_23EB8CCB8(__p, "dWDS");
      sub_23EB90814(v14, __p, &v16);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      sub_23EB97588(a1, &v16, &v12, 0);
    }

    if (v13 == 3)
    {
      if (sub_23EB8BE08(a1, 1147761495))
      {
        goto LABEL_4;
      }

      v9 = 2003062355;
    }

    else
    {
      if (v13 != 1 || v12 || sub_23EB8BE08(a1, 1112757313))
      {
        goto LABEL_4;
      }

      v9 = 1936543315;
    }

    sub_23EBCB1D8(1918980980, v9, a3, a4);
  }

LABEL_4:
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCCAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCCB08(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(__p, a2);
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  sub_23EB8FB78(__p, 2002862934, &v15);
  v7 = sub_23EB97374(a1, &v15, &v12 + 4, 0);
  if (!v7)
  {
    sub_23EB8FB78(__p, 2002864494, &v15);
    v7 = sub_23EB97374(a1, &v15, &v12, 0);
    if (!v7 && v12 == 16)
    {
      if ((v12 & 0x80000000000) != 0)
      {
LABEL_18:
        v7 = 0;
        goto LABEL_2;
      }

      sub_23EB8FB78(__p, 1918979649, &v15);
      v7 = sub_23EB97588(a1, &v15, &v11 + 1, 0);
      if (!v7)
      {
        sub_23EB8FB78(__p, 1918977107, &v15);
        v7 = sub_23EB97588(a1, &v15, &v11, 0);
        if (!v7)
        {
          sub_23EB8FB78(__p, 912483943, &v15);
          v7 = sub_23EB97374(a1, &v15, &v9, 0);
          if (!v7)
          {
            sub_23EB8FB78(__p, 912356724, &v15);
            v7 = sub_23EB97588(a1, &v15, &v10, 0);
            if (!v7 && (~HIDWORD(v12) & 0x300) == 0 && !HIBYTE(v11))
            {
              if (v11 == 1)
              {
                sub_23EBCB1D8(2002862934, 1145590644, a3, a4);
              }

              goto LABEL_18;
            }
          }
        }
      }
    }
  }

LABEL_2:
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCCD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCCD34(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  v12 = 0;
  sub_23EB8CCB8(__p, "raKT");
  sub_23EB90814(v13, __p, &v15);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_23EB97374(a1, &v15, &v12 + 4, 0);
  if (!v7)
  {
    sub_23EB8CCB8(__p, "raWM");
    sub_23EB90814(v13, __p, &v15);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB97374(a1, &v15, &v12, 0);
    if (!v7)
    {
      if ((v12 - 3) <= 5)
      {
        v8 = 1802785868;
        if (HIDWORD(v12) < 0x258)
        {
          v8 = 1802785875;
LABEL_11:
          sub_23EBCB1D8(1918978900, v8, a3, a4);
          goto LABEL_12;
        }

        if (HIDWORD(v12) >= 0x23C345C5)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      v7 = 0;
    }
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCCE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCCEE8(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v19, 0, sizeof(v19));
  sub_23EB8CCB8(v17, a2);
  __p = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v12 = 0;
  sub_23EB8FB78(v17, 2002863153, &v19);
  v7 = sub_23EB97710(a1, &v19, &__p, 0);
  if (!v7)
  {
    if (SHIBYTE(v16) < 0)
    {
      if (!v15)
      {
        goto LABEL_8;
      }

      p_p = __p;
    }

    else
    {
      if (!HIBYTE(v16))
      {
        goto LABEL_8;
      }

      p_p = &__p;
    }

    v7 = sub_23EB7DE5C(p_p, 0, &v13 + 1, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_24;
    }

LABEL_8:
    if (HIDWORD(v13))
    {
      v9 = 1732604485;
      if ((HIDWORD(v13) + 1) >= 2 && (HIBYTE(HIDWORD(v13)) - 225) >= 0xE)
      {
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    if (!sub_23EB8BE08(a1, 1400460148))
    {
      goto LABEL_23;
    }

    sub_23EB8FB78(v17, 2002863154, &v19);
    v7 = sub_23EB97710(a1, &v19, &__p, 0);
    if (v7)
    {
      goto LABEL_24;
    }

    if (SHIBYTE(v16) < 0)
    {
      if (v15)
      {
        v10 = __p;
LABEL_19:
        v7 = sub_23EB7DE5C(v10, 0, &v13, 0, 0, 0, 0);
        if (v7)
        {
          goto LABEL_24;
        }
      }
    }

    else if (HIBYTE(v16))
    {
      v10 = &__p;
      goto LABEL_19;
    }

    sub_23EB8FB78(v17, 2002862934, &v19);
    v7 = sub_23EB97374(a1, &v19, &v12, 0);
    if (v7 | v13)
    {
      goto LABEL_24;
    }

    if ((v12 & 0x400) == 0 || sub_23EBCB438(a1, 1849970259))
    {
      goto LABEL_23;
    }

    v9 = 1849970259;
LABEL_11:
    sub_23EBCB1D8(2002863153, v9, a3, a4);
LABEL_23:
    v7 = 0;
  }

LABEL_24:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCD118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCD15C(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  sub_23EB8FB78(v14, 2002863154, &v16);
  v7 = sub_23EB97710(a1, &v16, &__p, 0);
  if (!v7)
  {
    if (SHIBYTE(v13) < 0)
    {
      if (v12)
      {
        p_p = __p;
        goto LABEL_7;
      }
    }

    else if (HIBYTE(v13))
    {
      p_p = &__p;
LABEL_7:
      v7 = sub_23EB7DE5C(p_p, 0, &v10, 0, 0, 0, 0);
      if (v7)
      {
        goto LABEL_13;
      }

      if (v10 && (v10 + 1 < 2 || HIBYTE(v10) - 225 <= 0xDu))
      {
        sub_23EBCB1D8(2002863154, 1732604485, a3, a4);
      }
    }

    v7 = 0;
  }

LABEL_13:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCD29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCD2E0(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  v13 = 0;
  sub_23EB8FB78(v14, 2002862934, &v16);
  v7 = sub_23EB97374(a1, &v16, &v13, 0);
  if (!v7)
  {
    if ((v13 & 0x400) != 0)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      v10 = 0;
      sub_23EB8FB78(v14, 2002864464, &v16);
      v7 = sub_23EB97710(a1, &v16, __p, 0);
      if (!v7)
      {
        v8 = v12 >= 0 ? __p : __p[0];
        v7 = sub_23EB7DE5C(v8, 0, &v10, 0, 0, 0, 0);
        if (!v7)
        {
          if (v10 + 1 < 2 || HIBYTE(v10) - 225 <= 0xDu)
          {
            sub_23EBCB1D8(2002864464, 1732604485, a3, a4);
          }

          v7 = 0;
        }
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCD454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCD4A0(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  v13 = 0;
  sub_23EB8FB78(v14, 2002862934, &v16);
  v7 = sub_23EB97374(a1, &v16, &v13, 0);
  if (!v7)
  {
    if ((v13 & 0x400) != 0)
    {
      __p = 0;
      v11 = 0;
      v12 = 0;
      sub_23EB8FB78(v14, 2002867021, &v16);
      v7 = sub_23EB97710(a1, &v16, &__p, 0);
      if (!v7)
      {
        v8 = HIBYTE(v12);
        if (v12 < 0)
        {
          v8 = v11;
        }

        if (!v8)
        {
          sub_23EBCB1D8(2002867021, 1732604485, a3, a4);
        }
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCD5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCD618(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v23, 0, sizeof(v23));
  sub_23EB8CCB8(v21, a2);
  v20 = 0;
  sub_23EB8FB78(v21, 2002862934, &v23);
  v7 = sub_23EB97374(a1, &v23, &v20, 0);
  if (v7)
  {
    goto LABEL_7;
  }

  if ((v20 & 0x400) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v19 = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v16 = 0;
  sub_23EB8FB78(v21, 2002867021, &v23);
  v7 = sub_23EB97710(a1, &v23, &__p, 0);
  if (!v7)
  {
    if (SHIBYTE(v17) < 0)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      p_p = __p;
    }

    else
    {
      if (!HIBYTE(v17))
      {
        goto LABEL_18;
      }

      p_p = &__p;
    }

    v7 = sub_23EB7DE5C(p_p, 0, &v19, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_18:
    sub_23EB8FB78(v21, 2002866753, &v23);
    v7 = sub_23EB97710(a1, &v23, &__p, 0);
    if (v7)
    {
      goto LABEL_5;
    }

    if (SHIBYTE(v17) < 0)
    {
      if (!v16)
      {
        goto LABEL_25;
      }

      v10 = __p;
    }

    else
    {
      if (!HIBYTE(v17))
      {
        goto LABEL_25;
      }

      v10 = &__p;
    }

    v7 = sub_23EB7DE5C(v10, 0, &v18 + 1, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_25:
    sub_23EB8FB78(v21, 2002864464, &v23);
    v7 = sub_23EB97710(a1, &v23, &__p, 0);
    if (v7)
    {
      goto LABEL_5;
    }

    v11 = SHIBYTE(v17);
    if (SHIBYTE(v17) < 0)
    {
      v11 = v16;
      if (!v16)
      {
        goto LABEL_33;
      }

      v12 = __p;
    }

    else
    {
      if (!HIBYTE(v17))
      {
        goto LABEL_33;
      }

      v12 = &__p;
    }

    v7 = sub_23EB7DE5C(v12, 0, &v18, 0, 0, 0, 0);
    if (v7)
    {
      goto LABEL_5;
    }

    v11 = v18;
LABEL_33:
    v13 = 1732604485;
    if ((HIDWORD(v18) + 1) >= 2 && (HIBYTE(HIDWORD(v18)) - 225) >= 0xE)
    {
      v7 = 0;
      v14 = v19 & v11;
      if (v14 == -1442971648 || (HIDWORD(v18) & v19) == v14)
      {
        goto LABEL_5;
      }

      v13 = 1920159053;
    }

    sub_23EBCB1D8(2002866753, v13, a3, a4);
    v7 = 0;
  }

LABEL_5:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

LABEL_7:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCD8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCD900(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 2002863171, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  if (!v7)
  {
    v8 = HIBYTE(v12);
    if (v12 < 0)
    {
      v8 = v11;
    }

    if (v8 >= 0x40)
    {
      sub_23EBCB1D8(2002863171, 1732604483, a3, a4);
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCD9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCDA30(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 2002863182, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  v8 = HIBYTE(v12);
  if (!v7 && SHIBYTE(v12) < 0 && v11 > 0x100)
  {
    sub_23EBCB1D8(2002863182, 1732604483, a3, a4);
    v8 = HIBYTE(v12);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCDB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCDB58(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(v16, a2);
  v15 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(v16, 2002864494, &v18);
  v7 = sub_23EB97374(a1, &v18, &v15, 0);
  if (v7)
  {
    goto LABEL_16;
  }

  sub_23EB8FB78(v16, 1836011598, &v18);
  v7 = sub_23EB97710(a1, &v18, &__p, 0);
  if (v7)
  {
    goto LABEL_16;
  }

  if (v15 != 4)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if (v14 >= 0)
  {
    v8 = HIBYTE(v14);
  }

  else
  {
    v8 = v13;
  }

  if (!v8)
  {
    sub_23EBCB1D8(1836011598, 1732604481, a3, a4);
    goto LABEL_15;
  }

  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v10 = sub_23EBCDD3C(p_p);
  if (v10 == -15)
  {
    sub_23EBCB1D8(1836011598, 1732604483, a3, a4);
    v7 = 4294967281;
  }

  else
  {
    v7 = v10;
    if (v10 == -26)
    {
      sub_23EBCB1D8(1836011598, 1732604485, a3, a4);
      v7 = 4294967270;
    }
  }

LABEL_16:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCDCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCDD3C(const char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (a1 + 1);
    while (v1 - 48 <= 9 || v1 <= 0x2E && ((1 << v1) & 0x770000000000) != 0)
    {
      v3 = *v2++;
      v1 = v3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    return 4294967270;
  }

  else
  {
LABEL_7:
    if (strlen(a1) <= 0xFF)
    {
      return 0;
    }

    else
    {
      return 4294967281;
    }
  }
}

uint64_t sub_23EBCDDA8(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(v14, a2);
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  v11 = 0;
  sub_23EB8FB78(v14, 1836007760, &v16);
  v7 = sub_23EB97710(a1, &v16, __p, 0);
  if (!v7)
  {
    sub_23EB8FB78(v14, 2002864494, &v16);
    v7 = sub_23EB97374(a1, &v16, &v11, 0);
    if (!v7 && v11 == 4)
    {
      if (v13 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = sub_23EBCDD3C(v9);
      if (v10 == -15)
      {
        sub_23EBCB1D8(1836007760, 1732604483, a3, a4);
        v7 = 4294967281;
      }

      else
      {
        v7 = v10;
        if (v10 == -26)
        {
          sub_23EBCB1D8(1836007760, 1732604485, a3, a4);
          v7 = 4294967270;
        }
      }
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCDF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCDF54(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  sub_23EB8FB78(v13, 1836012878, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  if (!v7)
  {
    sub_23EB8FB78(v13, 2002864494, &v15);
    v7 = sub_23EB97374(a1, &v15, &v9, 0);
    if (!v7 && v9 == 4)
    {
      v7 = 0;
      if (SHIBYTE(v12) < 0 && v11 >= 0x100)
      {
        sub_23EBCB1D8(1836012878, 1732604483, a3, a4);
        v7 = 0;
      }
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCE084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE0C8(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  sub_23EB8FB78(v13, 1836011607, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  if (!v7)
  {
    sub_23EB8FB78(v13, 2002864494, &v15);
    v7 = sub_23EB97374(a1, &v15, &v9, 0);
    if (!v7 && v9 == 4)
    {
      v7 = 0;
      if (SHIBYTE(v12) < 0 && v11 >= 0x100)
      {
        sub_23EBCB1D8(1836011607, 1732604485, a3, a4);
        v7 = 0;
      }
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE23C(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  v10 = 0;
  sub_23EB8FB78(__p, 2002864494, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (v7)
  {
    goto LABEL_4;
  }

  if (v10 != 4)
  {
    goto LABEL_4;
  }

  v9 = 0;
  sub_23EB8FB78(__p, 1836009796, &v13);
  v7 = sub_23EB97374(a1, &v13, &v9, 0);
  if (v7)
  {
    goto LABEL_4;
  }

  if (v9 > 299)
  {
    if (v9 <= 899)
    {
      if (v9 == 300 || v9 == 600)
      {
        goto LABEL_4;
      }
    }

    else if (v9 == 900 || v9 == 1200 || v9 == 1800)
    {
      goto LABEL_4;
    }

LABEL_21:
    sub_23EBCB1D8(1836009796, 1732604485, a3, a4);
    goto LABEL_4;
  }

  if ((v9 > 0x3C || ((1 << v9) & 0x1000000040000001) == 0) && v9 != 120)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCE3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE3E4(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v14, 0, sizeof(v14));
  sub_23EB8CCB8(__p, a2);
  v11 = 0;
  sub_23EB8FB78(__p, 2002864494, &v14);
  v7 = sub_23EB97374(a1, &v14, &v11, 0);
  if (!v7 && v11 == 4)
  {
    v9 = 0;
    v10 = 0;
    sub_23EB8FB78(__p, 1836008259, &v14);
    v7 = sub_23EB97374(a1, &v14, &v10, 0);
    if (!v7)
    {
      sub_23EB8FB78(__p, 1836008265, &v14);
      v7 = sub_23EB97374(a1, &v14, &v9, 0);
      if (!v7)
      {
        if (v10 > 0x62 || v9 >= 0x26)
        {
          sub_23EBCB1D8(1651721027, 1732604485, a3, a4);
        }

        v7 = 0;
      }
    }
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCE52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE564(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  v10 = 0;
  sub_23EB8FB78(__p, 2002864494, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (!v7 && v10 == 4)
  {
    v9 = 0;
    sub_23EB8FB78(__p, 1836010832, &v13);
    v7 = sub_23EB97374(a1, &v13, &v9, 0);
    if (!v7 && (v9 - 3) <= 0xFFFFFFFD)
    {
      sub_23EBCB1D8(1836010832, 1732604485, a3, a4);
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCE670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE6A8(uint64_t a1, char *a2)
{
  memset(&v9, 0, sizeof(v9));
  sub_23EB8CCB8(__p, a2);
  v6 = 0;
  sub_23EB8FB78(__p, 1752641585, &v9);
  v3 = sub_23EB97374(a1, &v9, &v6, 0);
  v4 = v6;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return (v3 == 0) & ~v4;
}

void sub_23EBCE740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE774(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v19, 0, sizeof(v19));
  sub_23EB8CCB8(v17, a2);
  __p = 0;
  v15 = 0;
  v16 = 0;
  v8 = sub_23EBCE6A8(a1, a2);
  v9 = sub_23EB8BE08(a1, 1382368329);
  sub_23EB8FB78(v17, 1885623630, &v19);
  v10 = sub_23EB97710(a1, &v19, &__p, 0);
  if (!v10)
  {
    v11 = HIBYTE(v16);
    if (v16 < 0)
    {
      v11 = v15;
    }

    if (v11)
    {
      v12 = 1732604483;
      if (v8 != 0 && v9)
      {
        if (v11 <= 0xFF)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 1732604484;
      }

      sub_23EBCB1D8(1885623630, v12, a3, a4);
    }
  }

LABEL_10:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23EBCE8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCE8F8(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v19, 0, sizeof(v19));
  sub_23EB8CCB8(v17, a2);
  __p = 0;
  v15 = 0;
  v16 = 0;
  v8 = sub_23EBCE6A8(a1, a2);
  v9 = sub_23EB8BE08(a1, 1382368329);
  sub_23EB8FB78(v17, 1885622359, &v19);
  v10 = sub_23EB97710(a1, &v19, &__p, 0);
  if (!v10)
  {
    v11 = HIBYTE(v16);
    if (v16 < 0)
    {
      v11 = v15;
    }

    if (v11)
    {
      v12 = 1732604483;
      if (v8 != 0 && v9)
      {
        if (v11 <= 0xFF)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 1732604484;
      }

      sub_23EBCB1D8(1885622359, v12, a3, a4);
    }
  }

LABEL_10:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23EBCEA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCEA7C(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v6 = a2;
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  LODWORD(v6) = sub_23EBCE6A8(a1, v6);
  if (((v6 != 0) & sub_23EB8BE08(a1, 1382368329)) == 1)
  {
    v10 = 0;
    sub_23EB8FB78(__p, 1885618514, &v13);
    v8 = sub_23EB97374(a1, &v13, &v10, 0);
    if (!v8 && (v10 - 8) <= 0xFFFFFFF8)
    {
      sub_23EBCB1D8(1885618514, 1732604485, a3, a4);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBCEB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCEBC4(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v6 = a2;
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  LODWORD(v6) = sub_23EBCE6A8(a1, v6);
  if (((v6 != 0) & sub_23EB8BE08(a1, 1382368329)) != 1)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  sub_23EB8FB78(__p, 1885620548, &v13);
  v8 = sub_23EB97374(a1, &v13, &v10, 0);
  if (v8)
  {
    goto LABEL_10;
  }

  if (v10 <= 299)
  {
    if ((v10 > 0x3C || ((1 << v10) & 0x1000000040000001) == 0) && v10 != 120)
    {
      goto LABEL_21;
    }
  }

  else if (v10 <= 899)
  {
    if (v10 != 300 && v10 != 600)
    {
      goto LABEL_21;
    }
  }

  else if (v10 != 900 && v10 != 1200 && v10 != 1800)
  {
LABEL_21:
    sub_23EBCB1D8(1885620548, 1732604485, a3, a4);
  }

LABEL_10:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBCED30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCED6C(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  v6 = a2;
  memset(&v14, 0, sizeof(v14));
  sub_23EB8CCB8(__p, a2);
  LODWORD(v6) = sub_23EBCE6A8(a1, v6);
  if (((v6 != 0) & sub_23EB8BE08(a1, 1382368329)) != 1)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  sub_23EB8FB78(__p, 1885621571, &v14);
  v8 = sub_23EB97374(a1, &v14, &v11, 0);
  if (v8)
  {
    goto LABEL_8;
  }

  if (v11 <= 3599)
  {
    if (v11 && v11 != 900 && v11 != 1800)
    {
LABEL_20:
      sub_23EBCB1D8(1885621571, 1732604485, a3, a4);
    }
  }

  else
  {
    if (v11 > 14399)
    {
      if (v11 == 14400)
      {
        goto LABEL_8;
      }

      v9 = 28800;
    }

    else
    {
      if (v11 == 3600)
      {
        goto LABEL_8;
      }

      v9 = 7200;
    }

    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_8:
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_23EBCEEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCEEFC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_23EB8FB78(v13, 1885688654, &v15);
  v7 = sub_23EB97710(a1, &v15, &__p, 0);
  v8 = HIBYTE(v12);
  if (!v7 && SHIBYTE(v12) < 0 && v11 > 0xFF)
  {
    sub_23EBCB1D8(1885688654, 1732604483, a3, a4);
    v8 = HIBYTE(v12);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCEFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCF024(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  if (sub_23EBCF168(a1))
  {
    __p = 0;
    v11 = 0;
    v12 = 0;
    sub_23EB8FB78(v13, 1885689166, &v15);
    v7 = sub_23EB97710(a1, &v15, &__p, 0);
    v8 = HIBYTE(v12);
    if (!v7 && SHIBYTE(v12) < 0 && v11 > 0xFF)
    {
      sub_23EBCB1D8(1885689166, 1732604483, a3, a4);
      v8 = HIBYTE(v12);
    }

    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCF11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EBCF168(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = 0;
  sub_23EB8FB78(__p, 2002864494, &v8);
  v2 = !sub_23EB97374(a1, &v8, &v5 + 4, 0) && (sub_23EB8FB78(__p, 2002862934, &v8), !sub_23EB97374(a1, &v8, &v5, 0)) && (~v5 & 0x900) == 0 && HIDWORD(v5) == 16;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBCF23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCF268(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(v13, a2);
  if (sub_23EBCF168(a1))
  {
    __p = 0;
    v11 = 0;
    v12 = 0;
    sub_23EB8FB78(v13, 1885687895, &v15);
    v7 = sub_23EB97710(a1, &v15, &__p, 0);
    v8 = HIBYTE(v12);
    if (!v7 && SHIBYTE(v12) < 0 && v11 > 0xFF)
    {
      sub_23EBCB1D8(1885687895, 1732604483, a3, a4);
      v8 = HIBYTE(v12);
    }

    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCF360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCF3AC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  if (!sub_23EBCF168(a1))
  {
    goto LABEL_22;
  }

  v10 = 0;
  sub_23EB8FB78(__p, 1885686084, &v13);
  v7 = sub_23EB97374(a1, &v13, &v10, 0);
  if (v7)
  {
    goto LABEL_23;
  }

  v7 = v10;
  if (v10 <= 299)
  {
    if (v10 > 59)
    {
      if (v10 != 60 && v10 != 120)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_23;
      }

      if (v10 != 30)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v10 <= 899)
  {
    if (v10 != 300 && v10 != 600)
    {
      goto LABEL_21;
    }
  }

  else if (v10 != 900 && v10 != 1800 && v10 != 1200)
  {
LABEL_21:
    sub_23EBCB1D8(1885686084, 1732604485, a3, a4);
LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  v9 = 0;
  sub_23EB8FB78(__p, 2002929006, &v13);
  v7 = sub_23EB97588(a1, &v13, &v9, 0);
  if (!v7 && v9)
  {
    sub_23EBCB1D8(1885686084, 1464880708, a3, a4);
  }

LABEL_23:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCF544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCF580(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v30, 0, sizeof(v30));
  sub_23EB8CCB8(v28, a2);
  __p = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  sub_23EB8FB78(v28, 1918977107, &v30);
  v7 = sub_23EB97588(a1, &v30, &v22, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  if (!v22)
  {
LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  sub_23EB8FB78(v28, 1684554343, &v30);
  v7 = sub_23EB97710(a1, &v30, &__p, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  if (v27 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v7 = sub_23EB7DE5C(p_p, 0, &v24 + 1, 0, 0, 0, 0);
  if (v7)
  {
    sub_23EBCB1D8(1684554343, 1732604485, a3, a4);
    goto LABEL_29;
  }

  sub_23EB8FB78(v28, 1684555118, &v30);
  v7 = sub_23EB97710(a1, &v30, &__p, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  v9 = v27 >= 0 ? &__p : __p;
  v7 = sub_23EB7DE5C(v9, 0, &v24, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  sub_23EB8FB78(v28, 2002864464, &v30);
  v7 = sub_23EB97710(a1, &v30, &__p, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    if (HIBYTE(v27))
    {
      v10 = &__p;
      goto LABEL_20;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  if (!v26)
  {
    goto LABEL_22;
  }

  v10 = __p;
LABEL_20:
  v7 = sub_23EB7DE5C(v10, 0, &v23, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_23:
  if ((HIDWORD(v24) + 1) < 2 || (v11 = bswap32(HIDWORD(v24)), v11 - 225 < 0xE) || (v12 = v11 & 0xFF000000, v12 == -16777216) || !v12)
  {
    sub_23EBCB1D8(1684554343, 1732604485, a3, a4);
    goto LABEL_28;
  }

  if ((v24 + 1) < 2)
  {
    goto LABEL_28;
  }

  v14 = bswap32(v24);
  if (v14 - 225 < 0xE)
  {
    goto LABEL_28;
  }

  v7 = 0;
  v15 = v14 & 0xFF000000;
  if (v15 != -16777216)
  {
    if (v15)
    {
      v20 = 0;
      v21 = 0;
      sub_23EB8FB78(v28, 2002862934, &v30);
      v7 = sub_23EB97374(a1, &v30, &v21 + 4, 0);
      if (!v7)
      {
        v7 = sub_23EB97374(a1, &v30, &v21, 2);
        if (!v7)
        {
          MEMORY[0x23EF1EFD0](&v30, "WiFi.radios.[*].");
          sub_23EB8FB78(&v30, 1651723853, &v30);
          v7 = sub_23EB97374(a1, &v30, &v20 + 4, 0);
          if (!v7)
          {
            v7 = sub_23EB97374(a1, &v30, &v20, 2);
            if (!v7)
            {
              v16 = bswap32(HIDWORD(v24));
              v17 = bswap32(v24);
              v24 = __PAIR64__(v16, v17);
              v23 = bswap32(v23);
              if (((v17 ^ v16) & 0xFFFFFF) != 0)
              {
                goto LABEL_28;
              }

              v18 = HIBYTE(v16);
              if (v18 == 1 || v18 > HIBYTE(v17))
              {
                goto LABEL_28;
              }

              if ((v21 & 0x400) != 0)
              {
                v7 = 0;
                if ((v21 & 0x10000000000) != 0 || v20 != HIDWORD(v20))
                {
                  goto LABEL_29;
                }
              }

              else if (v20 != HIDWORD(v20))
              {
                goto LABEL_28;
              }

              v19 = 0;
              sub_23EB8FB78(v28, 1918979649, &v30);
              v7 = sub_23EB97588(a1, &v30, &v19, 0);
              if (v7)
              {
                goto LABEL_29;
              }

              if (v19)
              {
                if (((v24 ^ v23) & 0xFFFFFF) != 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_58;
              }

              if (HIBYTE(v23) <= BYTE3(v24) && HIBYTE(v23) >= HIBYTE(v24))
              {
LABEL_58:
                sub_23EBCB1D8(1684554343, 1684232023, a3, a4);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCF9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCFA40(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v30, 0, sizeof(v30));
  sub_23EB8CCB8(v28, a2);
  __p = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  sub_23EB8FB78(v28, 1918977107, &v30);
  v7 = sub_23EB97588(a1, &v30, &v22, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  if (!v22)
  {
LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  sub_23EB8FB78(v28, 1684554343, &v30);
  v7 = sub_23EB97710(a1, &v30, &__p, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  v8 = v27 >= 0 ? &__p : __p;
  v7 = sub_23EB7DE5C(v8, 0, &v24 + 1, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  sub_23EB8FB78(v28, 1684555118, &v30);
  v7 = sub_23EB97710(a1, &v30, &__p, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  if (v27 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v7 = sub_23EB7DE5C(p_p, 0, &v24, 0, 0, 0, 0);
  if (v7)
  {
    sub_23EBCB1D8(1684555118, 1732604485, a3, a4);
    goto LABEL_29;
  }

  sub_23EB8FB78(v28, 2002864464, &v30);
  v7 = sub_23EB97710(a1, &v30, &__p, 0);
  if (v7)
  {
    goto LABEL_29;
  }

  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    if (HIBYTE(v27))
    {
      v10 = &__p;
      goto LABEL_20;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  if (!v26)
  {
    goto LABEL_22;
  }

  v10 = __p;
LABEL_20:
  v7 = sub_23EB7DE5C(v10, 0, &v23, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_29;
  }

LABEL_23:
  if ((v24 + 1) < 2 || (v11 = bswap32(v24), v11 - 225 < 0xE) || (v12 = v11 & 0xFF000000, v12 == -16777216) || !v12)
  {
    sub_23EBCB1D8(1684555118, 1732604485, a3, a4);
    goto LABEL_28;
  }

  if ((HIDWORD(v24) + 1) < 2)
  {
    goto LABEL_28;
  }

  v14 = bswap32(HIDWORD(v24));
  if (v14 - 225 < 0xE)
  {
    goto LABEL_28;
  }

  v7 = 0;
  v15 = v14 & 0xFF000000;
  if (v15 != -16777216)
  {
    if (v15)
    {
      v20 = 0;
      v21 = 0;
      sub_23EB8FB78(v28, 2002862934, &v30);
      v7 = sub_23EB97374(a1, &v30, &v21 + 4, 0);
      if (!v7)
      {
        v7 = sub_23EB97374(a1, &v30, &v21, 2);
        if (!v7)
        {
          MEMORY[0x23EF1EFD0](&v30, "WiFi.radios.[*].");
          sub_23EB8FB78(&v30, 1651723853, &v30);
          v7 = sub_23EB97374(a1, &v30, &v20 + 4, 0);
          if (!v7)
          {
            v7 = sub_23EB97374(a1, &v30, &v20, 2);
            if (!v7)
            {
              v16 = bswap32(HIDWORD(v24));
              v17 = bswap32(v24);
              v24 = __PAIR64__(v16, v17);
              v23 = bswap32(v23);
              if (((v17 ^ v16) & 0xFFFFFF) != 0 || (v18 = HIBYTE(v17), v18 == 1) || v18 < HIBYTE(v16))
              {
                sub_23EBCB1D8(1684555118, 1684558433, a3, a4);
                goto LABEL_28;
              }

              if ((v21 & 0x400) != 0)
              {
                v7 = 0;
                if ((v21 & 0x10000000000) != 0 || v20 != HIDWORD(v20))
                {
                  goto LABEL_29;
                }
              }

              else if (v20 != HIDWORD(v20))
              {
                goto LABEL_28;
              }

              v19 = 0;
              sub_23EB8FB78(v28, 1918979649, &v30);
              v7 = sub_23EB97588(a1, &v30, &v19, 0);
              if (v7)
              {
                goto LABEL_29;
              }

              if (v19)
              {
                if (((v24 ^ v23) & 0xFFFFFF) != 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_59;
              }

              if (HIBYTE(v23) <= BYTE3(v24) && HIBYTE(v23) >= HIBYTE(v24))
              {
LABEL_59:
                sub_23EBCB1D8(1684555118, 1684232023, a3, a4);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBCFED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBCFF20(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v13, 0, sizeof(v13));
  sub_23EB8CCB8(__p, a2);
  v10 = 0;
  sub_23EB8FB78(__p, 1918977107, &v13);
  v7 = sub_23EB97588(a1, &v13, &v10, 0);
  if (!v7)
  {
    if (v10)
    {
      v9 = 0;
      sub_23EB8FB78(__p, 1684556901, &v13);
      v7 = sub_23EB97374(a1, &v13, &v9, 0);
      if (!v7 && v9 < 0x258)
      {
        sub_23EBCB1D8(1684556901, 1732604482, a3, a4);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD0030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD0068(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(v15, 1684557159, &v17);
  v7 = sub_23EB97710(a1, &v17, &__p, 0);
  if (!v7)
  {
    v8 = v14 >= 0 ? HIBYTE(v14) : v13;
    if (v8)
    {
      v9 = sub_23EB8BE08(a1, 1145922931);
      v10 = 1732604483;
      if (v9)
      {
        if (v8 < 0x100)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = 1732604484;
      }

      sub_23EBCB1D8(1684557159, v10, a3, a4);
    }
  }

LABEL_11:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD01C0(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v17, 0, sizeof(v17));
  sub_23EB8CCB8(v15, a2);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(v15, 1684551989, &v17);
  v7 = sub_23EB97710(a1, &v17, &__p, 0);
  if (!v7)
  {
    v8 = v14 >= 0 ? HIBYTE(v14) : v13;
    if (v8)
    {
      v9 = sub_23EB8BE08(a1, 1684551989);
      v10 = 1732604483;
      if (v9)
      {
        if (v8 < 0x100)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = 1732604484;
      }

      sub_23EBCB1D8(1684551989, v10, a3, a4);
    }
  }

LABEL_11:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD02D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD0318(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v31, 0, sizeof(v31));
  sub_23EB8CCB8(__p, a2);
  v28 = 0;
  sub_23EB8FB78(__p, 1918979649, &v31);
  v7 = sub_23EB97588(a1, &v31, &v28, 0);
  if (v7)
  {
    goto LABEL_8;
  }

  if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v28)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v23 = 0;
  v24 = 0;
  sub_23EB8FB78(__p, 1735279207, &v31);
  if (sub_23EB97710(a1, &v31, &v25, 0))
  {
    goto LABEL_6;
  }

  if (SHIBYTE(v27) < 0)
  {
    if (v26)
    {
      v10 = v25;
      goto LABEL_18;
    }

LABEL_6:
    v8 = sub_23EB7DE5C("172.16.42.2", 0, &v24 + 1, 0, 0, 0, 0);
    goto LABEL_19;
  }

  if (!HIBYTE(v27))
  {
    goto LABEL_6;
  }

  v10 = &v25;
LABEL_18:
  v8 = sub_23EB7DE5C(v10, 0, &v24 + 1, 0, 0, 0, 0);
LABEL_19:
  v7 = v8;
  if (v8)
  {
    sub_23EBCB1D8(1651722052, 1732604485, a3, a4);
    goto LABEL_65;
  }

  sub_23EB8FB78(__p, 1735279982, &v31);
  if (sub_23EB97710(a1, &v31, &v25, 0))
  {
    goto LABEL_22;
  }

  if (SHIBYTE(v27) < 0)
  {
    if (v26)
    {
      v12 = v25;
      goto LABEL_28;
    }

LABEL_22:
    v11 = sub_23EB7DE5C("172.16.42.200", 0, &v24, 0, 0, 0, 0);
    goto LABEL_29;
  }

  if (!HIBYTE(v27))
  {
    goto LABEL_22;
  }

  v12 = &v25;
LABEL_28:
  v11 = sub_23EB7DE5C(v12, 0, &v24, 0, 0, 0, 0);
LABEL_29:
  v7 = v11;
  if (v11)
  {
    sub_23EBCB1D8(1651722052, 1732604485, a3, a4);
    goto LABEL_65;
  }

  sub_23EB8FB78(__p, 1684554343, &v31);
  v7 = sub_23EB97710(a1, &v31, &v25, 0);
  if (v7)
  {
    goto LABEL_65;
  }

  if (SHIBYTE(v27) < 0)
  {
    if (v26)
    {
      v13 = v25;
      goto LABEL_37;
    }

LABEL_38:
    v14 = sub_23EB7DE5C("10.0.1.2", 0, &v23 + 1, 0, 0, 0, 0);
    goto LABEL_39;
  }

  if (!HIBYTE(v27))
  {
    goto LABEL_38;
  }

  v13 = &v25;
LABEL_37:
  v14 = sub_23EB7DE5C(v13, 0, &v23 + 1, 0, 0, 0, 0);
LABEL_39:
  v7 = v14;
  if (v14)
  {
    goto LABEL_65;
  }

  sub_23EB8FB78(__p, 2002864464, &v31);
  v7 = sub_23EB97710(a1, &v31, &v25, 0);
  if (v7)
  {
    goto LABEL_65;
  }

  LODWORD(v23) = 0;
  if (SHIBYTE(v27) < 0)
  {
    if (!v26)
    {
      goto LABEL_47;
    }

    v15 = v25;
  }

  else
  {
    if (!HIBYTE(v27))
    {
      goto LABEL_47;
    }

    v15 = &v25;
  }

  v7 = sub_23EB7DE5C(v15, 0, &v23, 0, 0, 0, 0);
  if (v7)
  {
    goto LABEL_65;
  }

LABEL_47:
  v16 = 1732604485;
  if (!v24)
  {
LABEL_63:
    sub_23EBCB1D8(1651722052, v16, a3, a4);
LABEL_64:
    v7 = 0;
    goto LABEL_65;
  }

  if (!sub_23EB8BE08(a1, 1198748750))
  {
    v16 = 1732604484;
    goto LABEL_63;
  }

  if ((v24 + 1) < 2)
  {
    goto LABEL_63;
  }

  v17 = bswap32(v24);
  if (v17 - 225 < 0xE || (v17 & 0xFF000000) == 0xFF000000 || (v17 & 0xFF000000) == 0)
  {
    goto LABEL_63;
  }

  if ((HIDWORD(v24) + 1) < 2)
  {
    goto LABEL_64;
  }

  v18 = bswap32(HIDWORD(v24));
  if (v18 - 225 < 0xE)
  {
    goto LABEL_64;
  }

  v7 = 0;
  if ((v18 & 0xFF000000) != 0xFF000000 && (v18 & 0xFF000000) != 0)
  {
    v16 = 1684558433;
    v19 = bswap32(HIDWORD(v23));
    v24 = __PAIR64__(v18, v17);
    v23 = __PAIR64__(v19, bswap32(v23));
    v20 = v17 & 0xFFFFFF;
    if ((v17 & 0xFFFFFF) != (v18 & 0xFFFFFF))
    {
      goto LABEL_63;
    }

    v21 = HIBYTE(v17);
    if (v21 == 1 || v21 < HIBYTE(v18))
    {
      goto LABEL_63;
    }

    if (v20 == (v19 & 0xFFFFFF))
    {
      v16 = 1735279720;
      goto LABEL_63;
    }

    v22 = 0;
    sub_23EB8FB78(__p, 1918979649, &v31);
    v7 = sub_23EB97588(a1, &v31, &v22, 0);
    if (!v7)
    {
      if (v22)
      {
        if (((v24 ^ v23) & 0xFFFFFF) != 0)
        {
          goto LABEL_65;
        }

        goto LABEL_73;
      }

      if (BYTE3(v23) <= BYTE3(v24) && BYTE3(v23) >= HIBYTE(v24))
      {
LABEL_73:
        sub_23EBCB1D8(1651722052, 1684232023, a3, a4);
      }
    }
  }

LABEL_65:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

LABEL_8:
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD0838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD0888(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v15, 0, sizeof(v15));
  sub_23EB8CCB8(__p, a2);
  v12 = 0;
  sub_23EB8FB78(__p, 1918979649, &v15);
  v7 = sub_23EB97588(a1, &v15, &v12, 0);
  if (!v7)
  {
    if (sub_23EB8BE08(a1, 1198748750) && sub_23EB9C128(a1) && v12)
    {
      v11 = 0;
      sub_23EB8FB78(__p, 1735281765, &v15);
      v7 = sub_23EB97374(a1, &v15, &v11, 0);
      if (!v7 && v11)
      {
        v8 = sub_23EB8BE08(a1, 1198748750);
        v9 = 1732604482;
        if (v8)
        {
          if (v11 > 0x257)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v9 = 1732604484;
        }

        sub_23EBCB1D8(1735281765, v9, a3, a4);
      }
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_11:
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD09DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD0A14(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(__p, a2);
  v15 = 0;
  sub_23EB8FB78(__p, 1918979649, &v18);
  v7 = sub_23EB97588(a1, &v18, &v15, 0);
  if (v7)
  {
    goto LABEL_14;
  }

  if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v15)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(__p, 1735282023, &v18);
  v7 = sub_23EB97710(a1, &v18, &v12, 0);
  if (!v7)
  {
    v8 = v14 >= 0 ? HIBYTE(v14) : v13;
    if (v8)
    {
      v9 = sub_23EB8BE08(a1, 1198748750);
      v10 = 1732604483;
      if (v9)
      {
        if (v8 < 0x100)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = 1732604484;
      }

      sub_23EBCB1D8(1735282023, v10, a3, a4);
    }
  }

LABEL_21:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

LABEL_14:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD0B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD0BDC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(__p, a2);
  v15 = 0;
  sub_23EB8FB78(__p, 1918979649, &v18);
  v7 = sub_23EB97588(a1, &v18, &v15, 0);
  if (v7)
  {
    goto LABEL_14;
  }

  if (!sub_23EB8BE08(a1, 1198748750) || !sub_23EB9C128(a1) || !v15)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_23EB8FB78(__p, 1735276853, &v18);
  v7 = sub_23EB97710(a1, &v18, &v12, 0);
  if (!v7)
  {
    v8 = v14 >= 0 ? HIBYTE(v14) : v13;
    if (v8)
    {
      v9 = sub_23EB8BE08(a1, 1198748750);
      v10 = 1732604483;
      if (v9)
      {
        if (v8 < 0x100)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v10 = 1732604484;
      }

      sub_23EBCB1D8(1735276853, v10, a3, a4);
    }
  }

LABEL_21:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

LABEL_14:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD0D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD0DA4(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v23, 0, sizeof(v23));
  sub_23EB8CCB8(v21, a2);
  __p = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  sub_23EB8FB78(v21, 1849970010, &v23);
  v7 = sub_23EB97710(a1, &v23, &__p, 0);
  if (v7)
  {
    goto LABEL_2;
  }

  if (SHIBYTE(v20) < 0)
  {
    if (!v19)
    {
      goto LABEL_32;
    }

    v15 = 0;
    v16 = 0;
    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v20))
    {
      goto LABEL_32;
    }

    v15 = 0;
    v16 = 0;
    p_p = &__p;
  }

  v10 = sub_23EB7DE5C(p_p, 0, &v17, 0, 0, 0, 0);
  sub_23EB8FB78(v21, 1684558670, &v23);
  v7 = sub_23EB97710(a1, &v23, &__p, 0);
  if (!v7)
  {
    v11 = v20 >= 0 ? &__p : __p;
    v7 = sub_23EB7DE5C(v11, 0, &v15, 0, 0, 0, 0);
    if (!v7)
    {
      sub_23EB8FB78(v21, 1684554343, &v23);
      v7 = sub_23EB97710(a1, &v23, &__p, 0);
      if (!v7)
      {
        v12 = v20 >= 0 ? &__p : __p;
        v7 = sub_23EB7DE5C(v12, 0, &v16, 0, 0, 0, 0);
        if (!v7)
        {
          v13 = sub_23EB8BE08(a1, 1313105224);
          v14 = 1732604485;
          if (v13)
          {
            if (!v10 && v17 + 1 >= 2 && HIBYTE(v17) - 225 >= 0xEu && ((v16 ^ v17) & v15) == 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v14 = 1732604484;
          }

          sub_23EBCB1D8(1849970010, v14, a3, a4);
LABEL_32:
          v7 = 0;
        }
      }
    }
  }

LABEL_2:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1038(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v12, 0, sizeof(v12));
  sub_23EB8CCB8(__p, a2);
  theArray = 0;
  sub_23EB8FB78(__p, 1886213217, &v12);
  v7 = sub_23EB912D0(a1, &v12, &theArray, 0);
  if (!v7 && CFArrayGetCount(theArray) >= 21)
  {
    sub_23EBCB1D8(1886213217, 1732604488, a3, a4);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD1110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD1144(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v16, 0, sizeof(v16));
  sub_23EB8CCB8(__p, a2);
  theArray = 0;
  v12 = 0;
  v11 = 0;
  v7 = sub_23EB8BFFC(a1, 1633899617, &theArray, 0);
  if (!v7)
  {
    v7 = sub_23EB89D74(a1, 1835090284, &v12, 0);
    if (!v7)
    {
      sub_23EB8FB78(__p, 1633895790, &v16);
      v7 = sub_23EB97588(a1, &v16, &v11, 0);
      if (!v7)
      {
        Count = CFArrayGetCount(theArray);
        if (Count <= v12)
        {
          if (CFArrayGetCount(theArray) || !v11 || sub_23EB8BE08(a1, 1950434124))
          {
            goto LABEL_10;
          }

          v9 = 1633895789;
        }

        else
        {
          v9 = 1732604488;
        }

        sub_23EBCB1D8(1633899617, v9, a3, a4);
LABEL_10:
        v7 = 0;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_23EBD12A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBD12DC(uint64_t a1, char *a2, void **a3, uint64_t *a4)
{
  memset(&v18, 0, sizeof(v18));
  sub_23EB8CCB8(v16, a2);
  v15 = 0;
  v14 = 0;
  sub_23EB8FB78(v16, 2003060332, &v18);
  v7 = sub_23EB97374(a1, &v18, &v15 + 4, 0);
  if (!v7)
  {
    sub_23EB8CCB8(__p, "raWM");
    sub_23EB90814(v16, __p, &v18);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = sub_23EB97374(a1, &v18, &v15, 0);
    if (!v7)
    {
      sub_23EB8FB78(v16, 1651718221, &v18);
      v7 = sub_23EB97374(a1, &v18, &v14, 0);
      if (!v7)
      {
        if (HIDWORD(v15) >= 8)
        {
          sub_23EBCB1D8(1651726157, 1732604485, a3, a4);
LABEL_18:
          v7 = 0;
          goto LABEL_19;
        }

        if ((v15 & 0x300000000) == 0)
        {
          goto LABEL_18;
        }

        v11 = 0;
        sub_23EB8CCB8(__p, "raEA");
        sub_23EB90814(v16, __p, &v18);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = sub_23EB97588(a1, &v18, &v11, 0);
        if (!v7)
        {
          v8 = 1651725133;
          if (!sub_23EB8BE08(a1, 1464095533))
          {
            v8 = 1651726157;
            v9 = 1732604484;
            goto LABEL_25;
          }

          if ((v15 - 3) <= 5)
          {
            if (!sub_23EB8BE08(a1, 1464877399))
            {
              v9 = 2004307539;
              goto LABEL_25;
            }

            if ((v15 - 3) <= 5 && v11)
            {
              v9 = 2003060078;
LABEL_25:
              sub_23EBCB1D8(v8, v9, a3, a4);
              goto LABEL_19;
            }
          }

          if (v14 - 4) <= 6 && ((0x53u >> (v14 - 4)))
          {
            v9 = 2003060329;
            v8 = 1651718221;
            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_19:
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v7;
}