void sub_1D568(_Unwind_Exception *a1)
{
  (*(v1[15] + 24))(v1 + 16);
  (*(v1[10] + 24))(v1 + 11);
  sub_1D5B4(v1);
  _Unwind_Resume(a1);
}

void *sub_1D5B4(void *a1)
{
  *a1 = off_28F48;
  sub_1D934(a1);
  (*(a1[4] + 24))(a1 + 5);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D624(void *a1)
{
  sub_1DA14(a1);

  operator delete();
}

uint64_t sub_1D65C(void *a1, uint64_t a2)
{
  v3 = a1 + 1;
  if (a1[2] == a1[1])
  {
    return 0;
  }

  if (*(*a2 + 32) == 1)
  {
    (**a2)(a2 + 8, v3);
  }

  else
  {
    v6 = a1[4];
    if (*(v6 + 32) == 1)
    {
      (*v6)(a1 + 5, v3);
    }
  }

  v7 = a1[1];
  result = (*(a1 + 4) - v7);
  a1[2] = v7;
  return result;
}

uint64_t sub_1D6E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = v2 - v1;
  v5 = *(a1 + 72);
  if (v5 == 2)
  {
    v6 = *(a1 + 120);
    if (*(v6 + 32) != 1)
    {
      goto LABEL_10;
    }

    v7 = 128;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 80);
    if ((*(v6 + 32) & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = 88;
  }

  (*v6)(a1 + v7, a1 + 8);
LABEL_10:
  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  else
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  return v4;
}

void *sub_1D794(void *a1, unsigned int a2)
{
  *a1 = off_28F48;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = &off_28F68;
  sub_1D830(a1 + 1, a2);
  return a1;
}

void sub_1D800(_Unwind_Exception *a1)
{
  (*(*(v1 + 32) + 24))(v1 + 40);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_1D830(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1280();
  }

  return result;
}

void sub_1D8FC(void *a1)
{
  sub_1D5B4(a1);

  operator delete();
}

uint64_t sub_1D934(uint64_t a1)
{
  v3 = &off_28F68;
  v1 = (*(*a1 + 16))(a1, &v3);
  (v3[3])(&v4);
  return v1;
}

void sub_1D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void *sub_1DA14(void *a1)
{
  *a1 = off_28F18;
  sub_1D6E8(a1);
  (*(a1[15] + 24))(a1 + 16);
  (*(a1[10] + 24))(a1 + 11);

  return sub_1D5B4(a1);
}

uint64_t NewYamahaUSBMIDIDriver(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

void sub_1DC14()
{
  if ((byte_2C188 & 1) == 0)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.YamahaUSBMIDIDriver");
    if (BundleWithIdentifier)
    {
      v1 = BundleWithIdentifier;
      CFRetain(BundleWithIdentifier);
      off_2C070 = CFBundleCopyLocalizedString(v1, off_2C070, off_2C070, @"YamahaUSBMIDILocalizable");
      off_2C078 = CFBundleCopyLocalizedString(v1, off_2C078, off_2C078, @"YamahaUSBMIDILocalizable");
      off_2C080 = CFBundleCopyLocalizedString(v1, off_2C080, off_2C080, @"YamahaUSBMIDILocalizable");
      CFRelease(v1);
      byte_2C188 = 1;
    }
  }
}

uint64_t sub_1DCEC(uint64_t a1, uint64_t a2)
{
  result = sub_5FF8(a2);
  if (result)
  {
    v3 = result;
    v5 = 0;
    if ((*(*result + 104))(result, &v5 + 2) || HIWORD(v5) != 1177 || (*(*v3 + 112))(v3, &v5))
    {
      return 0;
    }

    if ((v5 & 0xFC00) == 0x1000)
    {
      return 1;
    }

    v4 = v5 & 0xFF00;
    result = 1;
    if (v4 != 0x2000 && v4 != 20480 && v5 != 5384 && (v5 & 0xFF00) != 0x7000)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DDAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_5FF8(a2);
  if (!v3)
  {
    return 0;
  }

  iterator = 0;
  v7 = -1;
  if ((*(*v3 + 224))(v3, &v7, &iterator))
  {
    return 0;
  }

  if (IOIteratorNext(iterator))
  {
    operator new();
  }

  IOObjectRelease(iterator);
  return sub_70EC(a2, 0, 0);
}

uint64_t sub_1DFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5FF8(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a3;
  if (!a3)
  {
    v7 = sub_1DDAC(v5, a2);
    if (!v7)
    {
      return 0;
    }
  }

  *outDevice = 0;
  v8 = sub_7234(v7);
  v67 = 0;
  if ((*(*v6 + 272))(v6, &v67))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_6810(a2, v67);
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = off_2C070;
  }

  if ((*(*v6 + 280))(v6, &v67))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_6810(a2, v67);
  }

  v47 = a3;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = off_2C078;
  }

  MIDIDeviceCreate((a1 + 8), v13, v11, v13, &outDevice[1]);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  __p = 0;
  v59 = 0;
  v60 = 0;
  v46 = v7;
  sub_7640(v7);
  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = (*(*v8 + 448))(v8, v14, 0);
    v14 = v16;
    if (!v16)
    {
      break;
    }

    v17 = v16[1];
    v18 = v16[2];
    switch(v17)
    {
      case 5:
        v15 = v18 >> 7;
        break;
      case 37:
        if (v18 == 1)
        {
          v19 = v16[3];
          if (v16[3])
          {
            v20 = 0;
            if (v15)
            {
              p_p = &v61;
            }

            else
            {
              p_p = &__p;
            }

            do
            {
              v22 = v64;
              if (v64 != v65)
              {
                while (*(v22 + 2) != v14[v20 + 4])
                {
                  v22 = (v22 + 6);
                  if (v22 == v65)
                  {
                    goto LABEL_39;
                  }
                }
              }

              if (v22 != v65 && v22 != 0)
              {
                sub_1455C(p_p, v22);
              }

LABEL_39:
              ++v20;
            }

            while (v20 != v19);
          }
        }

        break;
      case 36:
        if (v18 == 3)
        {
          LOBYTE(v56) = 3;
          v24 = v16[6];
          *(&v56 + 1) = *(v16 + 3);
          HIBYTE(v56) = v24;
          v57 = v16[2 * v16[5] + 6];
          sub_1455C(&v64, &v56);
        }

        else if (v18 == 2)
        {
          LOBYTE(v56) = 2;
          *(&v56 + 1) = *(v16 + 3);
          HIBYTE(v56) = 0;
          v57 = v16[5];
          sub_1455C(&v64, &v56);
        }

        break;
    }
  }

  v55 = 0;
  v54 = 0;
  v53 = 0;
  LOWORD(v51) = 0;
  LOWORD(v49) = 0;
  (*(*v8 + 80))(v8, &v55 + 1);
  (*(*v8 + 88))(v8, &v55);
  (*(*v8 + 104))(v8, &v51);
  (*(*v8 + 112))(v8, &v49);
  (*(*v8 + 136))(v8, &v54 + 1);
  (*(*v8 + 144))(v8, &v54);
  (*(*v8 + 152))(v8, &v53);
  v26 = v64;
  v25 = v65;
  if (v64 != v65)
  {
    do
    {
      if (*v26 == 2)
      {
        v27 = &v61;
      }

      else
      {
        v27 = &__p;
      }

      sub_1455C(v27, v26);
      v26 = (v26 + 6);
    }

    while (v26 != v25);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 1);
  v29 = -1431655765 * ((v59 - __p) >> 1);
  if (v28 <= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  if (v30 >= 1)
  {
    v31 = 0;
    v32 = v28;
    v33 = v29;
    v34 = 4;
    while (1)
    {
      v35 = 0;
      v51 = &off_28E40;
      cf = 0;
      if (v31 < v32)
      {
        v35 = sub_1E5D4(a2, *(v61 + v34), v13);
      }

      if (v31 >= v33)
      {
        break;
      }

      v36 = sub_1E5D4(a2, *(__p + v34), v13);
      v37 = v36;
      if (!v35 || !v36 || !CFEqual(v35, v36))
      {
        goto LABEL_63;
      }

      CFRetain(v35);
      v38 = cf;
      cf = v35;
      if (v38)
      {
        CFRelease(v38);
      }

      CFRelease(v35);
      CFRelease(v37);
      v35 = 0;
      v37 = 0;
LABEL_69:
      MIDIDeviceAddEntity(outDevice[1], cf, 0, v31 < v32, v31 < v33, outDevice);
      if (v35)
      {
        Source = MIDIEntityGetSource(outDevice[0], 0);
        MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v35);
      }

      if (v37)
      {
        Destination = MIDIEntityGetDestination(outDevice[0], 0);
        MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v37);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      sub_19B70(&v51);
      ++v31;
      v34 += 6;
      if (v30 == v31)
      {
        goto LABEL_78;
      }
    }

    v37 = 0;
LABEL_63:
    if (v30 == 1)
    {
      if (v13)
      {
        CFRetain(v13);
      }

      v39 = cf;
      cf = v13;
      if (v39)
      {
        CFRelease(v39);
      }
    }

    else
    {
      sub_1A120(&v49, off_2C080, (v31 + 1));
      v40 = cf;
      cf = v50;
      v50 = v40;
      sub_19B70(&v49);
    }

    goto LABEL_69;
  }

LABEL_78:
  MIDIObjectSetIntegerProperty(outDevice[1], kMIDIPropertyOffline, 0);
  if (!v47)
  {
    sub_74BC(v46, v43, v44);
    operator delete();
  }

  v10 = outDevice[1];
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  return v10;
}

void sub_1E55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_1E5D4(uint64_t a1, int a2, const __CFString *a3)
{
  v4 = sub_6810(a1, a2);
  if (!v4)
  {
    return v4;
  }

  Length = CFStringGetLength(a3);
  v6 = Length;
  v11.location = 0;
  v11.length = Length;
  if (CFStringCompareWithOptions(v4, a3, v11, 1uLL))
  {
    return v4;
  }

  v8 = CFStringGetLength(v4);
  if (Length < v8)
  {
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v6);
      if (CharacterAtIndex != 95 && CharacterAtIndex != 32)
      {
        break;
      }

      if (v8 == ++v6)
      {
        Length = v8;
        goto LABEL_10;
      }
    }

    Length = v6;
  }

LABEL_10:
  v12.location = Length;
  v12.length = v8 - Length;
  v10 = CFStringCreateWithSubstring(0, v4, v12);
  CFRelease(v4);
  return v10;
}

uint64_t sub_1E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_17DDC(a1, a2))
  {
    (*(*a1 + 200))(a1, a3, a4, a2);
  }

  return MIDIObjectSetIntegerProperty(a2, kMIDIPropertyOffline, 0);
}

void sub_1E7A0(int a1, uint64_t a2, uint64_t a3, MIDIObjectRef a4)
{
  if (!a4)
  {
    return;
  }

  v8 = sub_5FF8(a2);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a3;
  if (!a3)
  {
    v10 = sub_1DDAC(0, a2);
    if (!v10)
    {
      return;
    }
  }

  v54 = a2;
  v50 = a3;
  v51 = v10;
  v11 = sub_7234(v10);
  v73[0] = 0;
  if (sub_17E28(a1, a4))
  {
    str = 0;
    v67 = 0;
    v64 = 0;
    if (MIDIObjectGetStringProperty(a4, kMIDIPropertyManufacturer, &str))
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    if (CFEqual(str, off_2C070) && !(*(*v9 + 272))(v9, v73))
    {
      v12 = sub_6810(a2, v73[0]);
      if (v12)
      {
        MIDIObjectSetStringProperty(a4, kMIDIPropertyManufacturer, v12);
        v13 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
LABEL_12:
    CFRelease(str);
    str = 0;
LABEL_13:
    if (MIDIObjectGetStringProperty(a4, kMIDIPropertyModel, &v67))
    {
      v14 = 0;
    }

    else
    {
      if (CFEqual(v67, off_2C078) && !(*(*v9 + 280))(v9, v73))
      {
        v14 = sub_6810(v54, v73[0]);
        if (v14)
        {
          MIDIObjectSetStringProperty(a4, kMIDIPropertyModel, v14);
          MIDIObjectSetStringProperty(a4, kMIDIPropertyName, v14);
          v13 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v67);
      v67 = 0;
    }

    if (MIDIObjectGetStringProperty(a4, kMIDIPropertyName, &v64))
    {
      v15 = 0;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (CFEqual(v64, off_2C078) && !(*(*v9 + 280))(v9, v73))
      {
        v15 = sub_6810(v54, v73[0]);
        if (v15)
        {
          MIDIObjectSetStringProperty(a4, kMIDIPropertyModel, v15);
          MIDIObjectSetStringProperty(a4, kMIDIPropertyName, v15);
          v13 = 1;
        }
      }

      else
      {
        v15 = 0;
      }

      CFRelease(v64);
      v64 = 0;
      if (!v12)
      {
LABEL_22:
        if (v14)
        {
          CFRelease(v14);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v13)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    CFRelease(v12);
    goto LABEL_22;
  }

LABEL_27:
  if (!sub_17F38(a1, a4))
  {
LABEL_105:
    if (!v50)
    {
      sub_74BC(v51, v16, v17);
      operator delete();
    }

    return;
  }

LABEL_28:
  sub_17F38(a1, a4);
  str = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  sub_7640(v51);
  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = (*(*v11 + 448))(v11, v18, 0);
    v18 = v20;
    if (!v20)
    {
      break;
    }

    v21 = v20[1];
    v22 = v20[2];
    switch(v21)
    {
      case 5:
        v19 = v22 >> 7;
        break;
      case 37:
        if (v22 == 1)
        {
          v23 = v20[3];
          if (v20[3])
          {
            v24 = 0;
            if (v19)
            {
              v25 = &v67;
            }

            else
            {
              v25 = &v64;
            }

            do
            {
              v26 = str;
              if (str != v71)
              {
                while (BYTE2(v26->isa) != v18[v24 + 4])
                {
                  v26 = (v26 + 6);
                  if (v26 == v71)
                  {
                    goto LABEL_50;
                  }
                }
              }

              if (v26 != v71 && v26 != 0)
              {
                sub_1455C(v25, v26);
              }

LABEL_50:
              ++v24;
            }

            while (v24 != v23);
          }
        }

        break;
      case 36:
        if (v22 == 3)
        {
          LOBYTE(v62) = 3;
          v28 = v20[6];
          *(&v62 + 1) = *(v20 + 3);
          HIBYTE(v62) = v28;
          v63 = v20[2 * v20[5] + 6];
          sub_1455C(&str, &v62);
        }

        else if (v22 == 2)
        {
          LOBYTE(v62) = 2;
          *(&v62 + 1) = *(v20 + 3);
          HIBYTE(v62) = 0;
          v63 = v20[5];
          sub_1455C(&str, &v62);
        }

        break;
    }
  }

  LOBYTE(v59) = 0;
  v61 = 0;
  v60 = 0;
  LOWORD(v57) = 0;
  LOWORD(v55) = 0;
  (*(*v11 + 80))(v11, &v59);
  (*(*v11 + 88))(v11, &v61 + 1);
  (*(*v11 + 104))(v11, &v57);
  (*(*v11 + 112))(v11, &v55);
  (*(*v11 + 136))(v11, &v61);
  (*(*v11 + 144))(v11, &v60 + 1);
  (*(*v11 + 152))(v11, &v60);
  v30 = str;
  v29 = v71;
  if (str != v71)
  {
    do
    {
      if (*v30 == 2)
      {
        v31 = &v67;
      }

      else
      {
        v31 = &v64;
      }

      sub_1455C(v31, v30);
      v30 = (v30 + 6);
    }

    while (v30 != v29);
  }

  v32 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 1);
  v33 = v64;
  v34 = -1431655765 * ((v65 - v64) >> 1);
  if (v32 <= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v32;
  }

  if (v35 < 1)
  {
LABEL_99:
    if (v33)
    {
      v65 = v33;
      operator delete(v33);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (str)
    {
      v71 = str;
      operator delete(str);
    }

    goto LABEL_105;
  }

  v36 = 0;
  v52 = v34;
  v53 = v32;
  v37 = 4;
  while (1)
  {
    cf = 0;
    v59 = 0;
    v57 = &off_28E40;
    Entity = MIDIDeviceGetEntity(a4, v36);
    if (!Entity)
    {
      break;
    }

    if (v36 >= v53)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_1E5D4(v54, *(&v67->isa + v37), 0);
    }

    if (v36 >= v52)
    {
      v43 = 0;
      v41 = 0;
      v42 = v39 != 0;
    }

    else
    {
      v40 = sub_1E5D4(v54, *(&v64->isa + v37), 0);
      v41 = v40;
      v42 = v39 != 0;
      v43 = v40 != 0;
      if (v39 && v40)
      {
        if (CFEqual(v39, v40))
        {
          CFRetain(v39);
          v44 = cf;
          cf = v39;
          if (v44)
          {
            CFRelease(v44);
          }

          CFRelease(v39);
          CFRelease(v41);
          v39 = 0;
          v41 = 0;
          goto LABEL_83;
        }

        v43 = 1;
        v42 = 1;
      }
    }

    if (v35 == 1)
    {
      if (MIDIObjectGetStringProperty(a4, kMIDIPropertyModel, &v59))
      {
        if (v42)
        {
          CFRelease(v39);
        }

        if (v43)
        {
          CFRelease(v41);
        }

        break;
      }

      v45 = v59;
      if (v59)
      {
        CFRetain(v59);
      }

      v46 = cf;
      cf = v45;
      if (v46)
      {
        CFRelease(v46);
      }
    }

    else
    {
      sub_1A120(&v55, off_2C080, (v36 + 1));
      v47 = cf;
      cf = v56;
      v56 = v47;
      sub_19B70(&v55);
    }

LABEL_83:
    MIDIObjectSetStringProperty(Entity, kMIDIPropertyName, cf);
    if (v39)
    {
      Source = MIDIEntityGetSource(Entity, 0);
      MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v39);
    }

    if (v41)
    {
      Destination = MIDIEntityGetDestination(Entity, 0);
      MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v41);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    sub_19B70(&v57);
    ++v36;
    v37 += 6;
    if (v35 == v36)
    {
      v33 = v64;
      goto LABEL_99;
    }
  }

  sub_19B70(&v57);
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (str)
  {
    v71 = str;
    operator delete(str);
  }
}

void sub_1EFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sub_19B70(&a19);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  v30 = *(v28 - 120);
  if (v30)
  {
    *(v28 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1F028(void *a1)
{
  sub_1F098(a1);

  operator delete();
}

void *sub_1F098(void *a1)
{
  *a1 = off_29080;
  v2 = a1[11];
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_2B9C(a1);
}

void sub_1F100(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    Current = CFRunLoopGetCurrent();
    *(a1 + 88) = Current;
    CFRetain(Current);
  }

  operator new();
}

uint64_t sub_1F190(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

void sub_1F1D8(uint64_t a1)
{
  sub_2278();
  v2 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "IOServiceClient.cpp";
    v5 = 1024;
    v6 = 68;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::IOServiceClient() - failure", &v3, 0x1Cu);
  }
}

void sub_1F2A0()
{
  if (__cxa_guard_acquire(&qword_2C100))
  {
    qword_2C0F8 = os_log_create("com.apple.coremidi", "ioserv");

    __cxa_guard_release(&qword_2C100);
  }
}

uint64_t sub_1F300(uint64_t a1, mach_port_t *a2)
{
  existing = 0;
  CFRetain(*(a1 + 56));
  sub_2278();
  v4 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 56);
    *buf = 136315906;
    v9 = "IOServiceClient.cpp";
    v10 = 1024;
    v11 = 140;
    v12 = 2048;
    v13 = a1;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - getting matching services for dictionary: %@", buf, 0x26u);
  }

  if (!IOServiceGetMatchingServices(*a2, *(a1 + 56), &existing))
  {
    sub_25E4(a1, existing);
  }

  result = existing;
  if (existing)
  {
    return IOObjectRelease(existing);
  }

  return result;
}

void sub_1F458()
{
  if (__cxa_guard_acquire(&qword_2C110))
  {
    qword_2C108 = os_log_create("com.apple.coremidi", "ciemit");

    __cxa_guard_release(&qword_2C110);
  }
}

void sub_1F4B8()
{
  if (__cxa_guard_acquire(&qword_2C120))
  {
    qword_2C118 = os_log_create("com.apple.coremidi", "usbdev");

    __cxa_guard_release(&qword_2C120);
  }
}

void sub_1F518()
{
  sub_6330();
  if (sub_77C4())
  {
    sub_7788();
    sub_7798();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_77B8();
}

void sub_1F5BC()
{
  sub_6330();
  v0 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
  {
    v1[0] = 136315650;
    sub_7788();
    sub_77A8();
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBInterface::Open() - err = 0x%x", v1, 0x18u);
  }

  sub_77B8();
}

void sub_1F684()
{
  if (__cxa_guard_acquire(&qword_2C130))
  {
    qword_2C128 = os_log_create("com.apple.coremidi", "usbdvm");

    __cxa_guard_release(&qword_2C130);
  }
}

void sub_1F6E4(uint64_t a1)
{
  v2 = MIDIGetDriverIORunLoop();
  source = 0;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v3 = v2;
  v4 = (*(**(a1 + 104) + 40))(*(a1 + 104));
  source = v4;
  v5 = v4 == 0;
  if (!v4)
  {
    v6 = 0;
    if ((*(**(a1 + 104) + 32))(*(a1 + 104), &source) || !source)
    {
      goto LABEL_11;
    }

    sub_8568();
    v7 = qword_2C138;
    v8 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG);
    v4 = source;
    if (v8)
    {
      *buf = 136315906;
      v13 = "USBMIDIDevice.cpp";
      v14 = 1024;
      v15 = 307;
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = source;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() created CFRunLoopSource %p", buf, 0x26u);
      v4 = source;
    }
  }

  if (!CFRunLoopContainsSource(v3, v4, kCFRunLoopDefaultMode))
  {
    CFRunLoopAddSource(v3, source, kCFRunLoopDefaultMode);
  }

  v6 = v5;
LABEL_11:
  sub_8568();
  v9 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v10 = "failure";
    *buf = 136315906;
    v13 = "USBMIDIDevice.cpp";
    if (v6)
    {
      v10 = "success";
    }

    v14 = 1024;
    v15 = 313;
    v16 = 2048;
    v17 = a1;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() = %s", buf, 0x26u);
  }
}

void sub_1F8F0()
{
  if (__cxa_guard_acquire(&qword_2C140))
  {
    qword_2C138 = os_log_create("com.apple.coremidi", "usbmio");

    __cxa_guard_release(&qword_2C140);
  }
}

void sub_1F950(uint64_t a1, _BYTE *a2)
{
  sub_8568();
  v4 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "USBMIDIDevice.cpp";
    v7 = 1024;
    v8 = 240;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() encountered an error and is exiting prematurely.", &v5, 0x1Cu);
  }

  *a2 = 0;
}

void sub_1FA28(NSObject *a1, int a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "USBMIDIDevice.cpp";
    v6 = 1024;
    v7 = 496;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::FindPipes: failed (0x%x)", &v4, 0x18u);
  }
}

void sub_1FB0C()
{
  if (__cxa_guard_acquire(&qword_2C150))
  {
    qword_2C148 = os_log_create("com.apple.coremidi", "usbmdm");

    __cxa_guard_release(&qword_2C150);
  }
}

void sub_1FB6C(void *a1, int a2, _DWORD *a3)
{
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v6)
  {
    sub_43D0(v6);
  }

  sub_1081C();
  v7 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "USBMIDIDeviceManager.cpp";
    v10 = 1024;
    v11 = 393;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d      [AQAMIDI] USB MIDI device initialization failed.", &v8, 0x12u);
  }

  *a3 = a2;
}

void sub_1FC54()
{
  if (__cxa_guard_acquire(&qword_2C160))
  {
    qword_2C158 = os_log_create("com.apple.coremidi", "usbmba");

    __cxa_guard_release(&qword_2C160);
  }
}

void sub_1FCB8()
{
  if (__cxa_guard_acquire(&qword_2C170))
  {
    qword_2C168 = os_log_create("com.apple.coremidi", "proton");

    __cxa_guard_release(&qword_2C170);
  }
}

void sub_1FD18(int a1)
{
  sub_1A95C();
  v2 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "MIDIProtocolNegotiator.cpp";
    v5 = 1024;
    v6 = 360;
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] handleMessage failed with 0x%x", &v3, 0x18u);
  }
}

void sub_1FDDC()
{
  if (__cxa_guard_acquire(&qword_2C180))
  {
    qword_2C178 = os_log_create("com.apple.coremidi", "umptrs");
    __cxa_guard_release(&qword_2C180);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
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