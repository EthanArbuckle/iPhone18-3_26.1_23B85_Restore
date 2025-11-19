void sub_56518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (v17)
  {
    sub_1A8C0(v17);
  }

  if (a13)
  {
    sub_1A8C0(a13);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_5659C(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_56710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_56740(_DWORD *a1, int *a2, uint64_t a3, uint64_t a4, unsigned int *a5, char *a6)
{
  v10 = *a2;
  v11 = a2[1];
  if (*a2 > 1818455661)
  {
    if (v10 <= 1870030193)
    {
      if (v10 <= 1819173228)
      {
        switch(v10)
        {
          case 1818455662:
            v62 = *a5;
            if (v62 != (*(*a1 + 64))(a1, a2))
            {
              v135 = sub_5544(14);
              v136 = *v135;
              if (*v135 && os_log_type_enabled(*v135, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HP_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 610;
                _os_log_impl(&dword_0, v136, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyElementNumberName", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              *exception = &off_6DDDD0;
              exception[2] = 561211770;
            }

            v18 = (*(*a1 + 176))(a1, a2);
            break;
          case 1818850926:
            v60 = *a5;
            if (v60 != (*(*a1 + 64))(a1, a2))
            {
              v132 = sub_5544(14);
              v133 = *v132;
              if (*v132 && os_log_type_enabled(*v132, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HP_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 653;
                _os_log_impl(&dword_0, v133, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceIsAlive", buf, 0x12u);
              }

              v134 = __cxa_allocate_exception(0x10uLL);
              *v134 = &off_6DDDD0;
              v134[2] = 561211770;
            }

            v13 = (*(*a1 + 120))(a1);
            goto LABEL_124;
          case 1819107691:
            v25 = *a5;
            if (v25 != (*(*a1 + 64))(a1, a2))
            {
              v87 = sub_5544(14);
              v88 = *v87;
              if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HP_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 595;
                _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
              }

              v89 = __cxa_allocate_exception(0x10uLL);
              *v89 = &off_6DDDD0;
              v89[2] = 561211770;
            }

            v18 = (*(*a1 + 144))(a1);
            break;
          default:
            goto LABEL_131;
        }
      }

      else if (v10 > 1836411235)
      {
        if (v10 != 1836411236)
        {
          if (v10 == 1869180523)
          {
            v31 = *a5;
            if (v31 != (*(*a1 + 64))(a1, a2))
            {
              v93 = sub_5544(14);
              v94 = *v93;
              if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HP_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 688;
                _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyHogMode", buf, 0x12u);
              }

              v95 = __cxa_allocate_exception(0x10uLL);
              *v95 = &off_6DDDD0;
              v95[2] = 561211770;
            }

            v13 = dword_6E49B0;
            if (dword_6E49B0 == -1)
            {
              v13 = getpid();
              dword_6E49B0 = v13;
            }

            goto LABEL_124;
          }

          goto LABEL_131;
        }

        v52 = *a5;
        if (v52 != (*(*a1 + 64))(a1, a2))
        {
          v108 = sub_5544(14);
          v109 = *v108;
          if (*v108 && os_log_type_enabled(*v108, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 625;
            _os_log_impl(&dword_0, v109, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyModelUID", buf, 0x12u);
          }

          v110 = __cxa_allocate_exception(0x10uLL);
          *v110 = &off_6DDDD0;
          v110[2] = 561211770;
        }

        v18 = (*(*a1 + 200))(a1);
      }

      else
      {
        if (v10 != 1819173229)
        {
          if (v10 == 1819569763)
          {
            v16 = *a5;
            if (v16 != (*(*a1 + 64))(a1, a2))
            {
              v75 = sub_5544(14);
              v76 = *v75;
              if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HP_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 693;
                _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyLatency", buf, 0x12u);
              }

              v77 = __cxa_allocate_exception(0x10uLL);
              *v77 = &off_6DDDD0;
              v77[2] = 561211770;
            }

            v13 = (*(*a1 + 456))(a1, v11 == 1768845428);
            goto LABEL_124;
          }

          goto LABEL_131;
        }

        v47 = *a5;
        if (v47 != (*(*a1 + 64))(a1, a2))
        {
          v105 = sub_5544(14);
          v106 = *v105;
          if (*v105 && os_log_type_enabled(*v105, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 590;
            _os_log_impl(&dword_0, v106, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyName", buf, 0x12u);
          }

          v107 = __cxa_allocate_exception(0x10uLL);
          *v107 = &off_6DDDD0;
          v107[2] = 561211770;
        }

        v18 = (*(*a1 + 136))(a1);
      }

      goto LABEL_129;
    }

    if (v10 > 1937009954)
    {
      if (v10 <= 1953653101)
      {
        if (v10 == 1937009955)
        {
          if (v11 == 1735159650)
          {
            LOWORD(v138[0]) = 256;
            memset(buf, 0, sizeof(buf));
            sub_A9E04();
          }

          LOBYTE(v138[0]) = v11 != 1768845428;
          memset(buf, 0, sizeof(buf));
          sub_A9E04();
        }

        if (v10 == 1937077093)
        {
          v19 = *a5;
          if (v19 == (*(*a1 + 64))(a1, a2))
          {
            v20 = 76;
            v21 = 78;
            if (v11 == 1768845428)
            {
              v21 = 72;
            }

            v22 = *&a1[v21];
            if (v11 == 1768845428)
            {
              v20 = 70;
            }

            v23 = ((v22 - *&a1[v20]) >> 3);
            operator new[]();
          }

          v81 = sub_5544(14);
          v82 = *v81;
          if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 758;
            _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyIOProcStreamUsage", buf, 0x12u);
          }

          v83 = __cxa_allocate_exception(0x10uLL);
          *v83 = &off_6DDDD0;
          v83[2] = 561211770;
        }

        goto LABEL_131;
      }

      if (v10 == 1953653102)
      {
        v58 = *a5;
        if (v58 != (*(*a1 + 64))(a1, a2))
        {
          v126 = sub_5544(14);
          v127 = *v126;
          if (*v126 && os_log_type_enabled(*v126, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 630;
            _os_log_impl(&dword_0, v127, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyTransportType", buf, 0x12u);
          }

          v128 = __cxa_allocate_exception(0x10uLL);
          *v128 = &off_6DDDD0;
          v128[2] = 561211770;
        }

        v13 = (*(*a1 + 208))(a1);
        goto LABEL_124;
      }

      if (v10 != 1969841184)
      {
        goto LABEL_131;
      }

      v42 = *a5;
      if (v42 != (*(*a1 + 64))(a1, a2))
      {
        v102 = sub_5544(14);
        v103 = *v102;
        if (*v102 && os_log_type_enabled(*v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 620;
          _os_log_impl(&dword_0, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceUID", buf, 0x12u);
        }

        v104 = __cxa_allocate_exception(0x10uLL);
        *v104 = &off_6DDDD0;
        v104[2] = 561211770;
      }

      v18 = (*(*a1 + 192))(a1);
      goto LABEL_129;
    }

    if (v10 > 1936092275)
    {
      if (v10 == 1936092276)
      {
        v56 = *a5;
        if (v56 != (*(*a1 + 64))(a1, a2))
        {
          v120 = sub_5544(14);
          v121 = *v120;
          if (*v120 && os_log_type_enabled(*v120, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 678;
            _os_log_impl(&dword_0, v121, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
          }

          v122 = __cxa_allocate_exception(0x10uLL);
          *v122 = &off_6DDDD0;
          v122[2] = 561211770;
        }

        v13 = (*(*a1 + 224))(a1, v11 == 1768845428, 1);
        goto LABEL_124;
      }

      if (v10 == 1936482681)
      {
        v33 = (*(*a1 + 64))(a1, a2);
        if (*a5 < v33)
        {
          v96 = sub_5544(14);
          v97 = *v96;
          if (*v96 && os_log_type_enabled(*v96, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 741;
            _os_log_impl(&dword_0, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyStreamConfiguration", buf, 0x12u);
          }

          v98 = __cxa_allocate_exception(0x10uLL);
          *v98 = &off_6DDDD0;
          v98[2] = 561211770;
        }

        *a5 = v33;
        v34 = 78;
        if (v11 == 1768845428)
        {
          v34 = 72;
        }

        v35 = *&a1[v34];
        if (v11 == 1768845428)
        {
          v36 = 70;
        }

        else
        {
          v36 = 76;
        }

        v37 = (v35 - *&a1[v36]) >> 3;
        *a6 = v37;
        if (v37)
        {
          v38 = 0;
          v39 = a6 + 16;
          do
          {
            v40 = *(*(*&a1[v36] + 8 * v38) + 104);
            *(v39 - 2) = v40[11];
            *(v39 - 1) = sub_5519C(v40, a1[68]);
            *v39 = 0;
            v39 += 2;
            ++v38;
          }

          while (v38 < *a6);
        }

        return;
      }

      goto LABEL_131;
    }

    if (v10 != 1870030194)
    {
      if (v10 == 1935763060)
      {
        v14 = *a5;
        if (v14 != (*(*a1 + 64))(a1, a2))
        {
          v69 = sub_5544(14);
          v70 = *v69;
          if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 734;
            _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v71 = __cxa_allocate_exception(0x10uLL);
          *v71 = &off_6DDDD0;
          v71[2] = 561211770;
        }

        v13 = (*(*a1 + 464))(a1, v11 == 1768845428);
        goto LABEL_124;
      }

      goto LABEL_131;
    }

    v54 = *a5;
    if (v54 != (*(*a1 + 64))(a1, a2))
    {
      v114 = sub_5544(14);
      v115 = *v114;
      if (*v114 && os_log_type_enabled(*v114, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 683;
        _os_log_impl(&dword_0, v115, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDeviceProcessorOverload", buf, 0x12u);
      }

      v116 = __cxa_allocate_exception(0x10uLL);
      *v116 = &off_6DDDD0;
      v116[2] = 561211770;
    }

    goto LABEL_109;
  }

  if (v10 <= 1718843938)
  {
    if (v10 <= 1668049763)
    {
      if (v10 == 1634429294)
      {
        v61 = *a5;
        if (v61 < 4)
        {
          bzero(a6, v61);
          *a5 = 0;
        }

        else
        {
          *a6 = a1[2];
          *a5 = 4;
        }

        return;
      }

      if (v10 == 1634955892)
      {
        v59 = *a5;
        if (v59 != (*(*a1 + 64))(a1, a2))
        {
          v129 = sub_5544(14);
          v130 = *v129;
          if (*v129 && os_log_type_enabled(*v129, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 786;
            _os_log_impl(&dword_0, v130, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyActualSampleRate", buf, 0x12u);
          }

          v131 = __cxa_allocate_exception(0x10uLL);
          *v131 = &off_6DDDD0;
          v131[2] = 561211770;
        }

        *a6 = (*(*a1 + 656))(a1);
        return;
      }

      if (v10 != 1667330160)
      {
        goto LABEL_131;
      }

      v24 = *a5;
      if (v24 != (*(*a1 + 64))(a1, a2))
      {
        v84 = sub_5544(14);
        v85 = *v84;
        if (*v84 && os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 615;
          _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyConfigurationApplication", buf, 0x12u);
        }

        v86 = __cxa_allocate_exception(0x10uLL);
        *v86 = &off_6DDDD0;
        v86[2] = 561211770;
      }

      v18 = (*(*a1 + 184))(a1);
      goto LABEL_129;
    }

    if (v10 > 1684629093)
    {
      if (v10 != 1684629094)
      {
        if (v10 == 1718839674)
        {
          v26 = *a5;
          if (v26 != (*(*a1 + 64))(a1, a2))
          {
            v90 = sub_5544(14);
            v91 = *v90;
            if (*v90 && os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HP_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 698;
              _os_log_impl(&dword_0, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyBufferFrameSize", buf, 0x12u);
            }

            v92 = __cxa_allocate_exception(0x10uLL);
            *v92 = &off_6DDDD0;
            v92[2] = 561211770;
          }

          *a6 = a1[68];
          v27 = sub_5544(5);
          if (*(v27 + 8))
          {
            v28 = *v27;
            if (*v27)
            {
              if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
              {
                v29 = *a6;
                (*(*a1 + 112))(v138, a1);
                v30 = v139 >= 0 ? v138 : v138[0];
                *buf = 136315906;
                *&buf[4] = "HP_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 700;
                *&buf[18] = 1024;
                *&buf[20] = v29;
                v141 = 2080;
                v142 = v30;
                _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client request to get buffer frame size (%u) on VAD: '%s'.", buf, 0x22u);
                if (v139 < 0)
                {
                  operator delete(v138[0]);
                }
              }
            }
          }

          return;
        }

        goto LABEL_131;
      }

      v48 = *a5;
      if (v48 != (*(*a1 + 64))(a1, a2))
      {
        v49 = sub_5544(14);
        v50 = *v49;
        if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 658;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceHasChanged", buf, 0x12u);
        }

        v51 = __cxa_allocate_exception(0x10uLL);
        *v51 = &off_6DDDD0;
        v51[2] = 561211770;
      }
    }

    else
    {
      if (v10 != 1668049764)
      {
        if (v10 == 1684434036)
        {
          v15 = *a5;
          if (v15 != (*(*a1 + 64))(a1, a2))
          {
            v72 = sub_5544(14);
            v73 = *v72;
            if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HP_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 673;
              _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
            }

            v74 = __cxa_allocate_exception(0x10uLL);
            *v74 = &off_6DDDD0;
            v74[2] = 561211770;
          }

          v13 = (*(*a1 + 224))(a1, v11 == 1768845428, 0);
          goto LABEL_124;
        }

        goto LABEL_131;
      }

      v43 = *a5;
      if (v43 != (*(*a1 + 64))(a1, a2))
      {
        v44 = sub_5544(14);
        v45 = *v44;
        if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 648;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = &off_6DDDD0;
        v46[2] = 561211770;
      }
    }

LABEL_109:
    *a6 = 0;
    return;
  }

  if (v10 > 1751737453)
  {
    if (v10 > 1818452845)
    {
      if (v10 == 1818452846)
      {
        v57 = *a5;
        if (v57 != (*(*a1 + 64))(a1, a2))
        {
          v123 = sub_5544(14);
          v124 = *v123;
          if (*v123 && os_log_type_enabled(*v123, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 605;
            _os_log_impl(&dword_0, v124, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyElementCategoryName", buf, 0x12u);
          }

          v125 = __cxa_allocate_exception(0x10uLL);
          *v125 = &off_6DDDD0;
          v125[2] = 561211770;
        }

        v18 = (*(*a1 + 168))(a1, a2);
      }

      else
      {
        if (v10 != 1818454126)
        {
          goto LABEL_131;
        }

        v41 = *a5;
        if (v41 != (*(*a1 + 64))(a1, a2))
        {
          v99 = sub_5544(14);
          v100 = *v99;
          if (*v99 && os_log_type_enabled(*v99, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 600;
            _os_log_impl(&dword_0, v100, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyElementName", buf, 0x12u);
          }

          v101 = __cxa_allocate_exception(0x10uLL);
          *v101 = &off_6DDDD0;
          v101[2] = 561211770;
        }

        v18 = (*(*a1 + 160))(a1, a2);
      }
    }

    else
    {
      if (v10 == 1751737454)
      {
LABEL_70:
        v32 = *a5;
        if (v32 != (*(*a1 + 64))(a1, a2))
        {
          v63 = sub_5544(14);
          v64 = *v63;
          if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 802;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
          }

          v65 = __cxa_allocate_exception(0x10uLL);
          *v65 = &off_6DDDD0;
          v65[2] = 561211770;
        }

        v13 = (*(*a1 + 128))(a1);
        goto LABEL_124;
      }

      if (v10 != 1768124270)
      {
LABEL_131:

        sub_A654C(a1, a2, a3, a4, a5, a6);
        return;
      }

      v17 = *a5;
      if (v17 != (*(*a1 + 64))(a1, a2))
      {
        v78 = sub_5544(14);
        v79 = *v78;
        if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 792;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyIcon", buf, 0x12u);
        }

        v80 = __cxa_allocate_exception(0x10uLL);
        *v80 = &off_6DDDD0;
        v80[2] = 561211770;
      }

      v18 = (*(*a1 + 152))(a1);
    }

LABEL_129:
    *a6 = v18;
    return;
  }

  if (v10 > 1735356004)
  {
    if (v10 == 1735356005)
    {
      v55 = *a5;
      if (v55 != (*(*a1 + 64))(a1, a2))
      {
        v117 = sub_5544(14);
        v118 = *v117;
        if (*v117 && os_log_type_enabled(*v117, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 668;
          _os_log_impl(&dword_0, v118, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceIsRunningSomewhere", buf, 0x12u);
        }

        v119 = __cxa_allocate_exception(0x10uLL);
        *v119 = &off_6DDDD0;
        v119[2] = 561211770;
      }

      v13 = (*(*a1 + 536))(a1);
      goto LABEL_124;
    }

    if (v10 == 1751412337)
    {
      goto LABEL_70;
    }

    goto LABEL_131;
  }

  if (v10 != 1718843939)
  {
    if (v10 == 1735354734)
    {
      v12 = *a5;
      if (v12 != (*(*a1 + 64))(a1, a2))
      {
        v66 = sub_5544(14);
        v67 = *v66;
        if (*v66)
        {
          if (os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HP_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 663;
            _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
          }
        }

        v68 = __cxa_allocate_exception(0x10uLL);
        *v68 = &off_6DDDD0;
        v68[2] = 561211770;
      }

      v13 = (*(*a1 + 528))(a1);
LABEL_124:
      *a6 = v13;
      return;
    }

    goto LABEL_131;
  }

  v53 = *a5;
  if (v53 != (*(*a1 + 64))(a1, a2))
  {
    v111 = sub_5544(14);
    v112 = *v111;
    if (*v111 && os_log_type_enabled(*v111, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 704;
      _os_log_impl(&dword_0, v112, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyBufferFrameSizeRange", buf, 0x12u);
    }

    v113 = __cxa_allocate_exception(0x10uLL);
    *v113 = &off_6DDDD0;
    v113[2] = 561211770;
  }

  *a6 = (*(*a1 + 480))(a1);
  *(a6 + 1) = (*(*a1 + 488))(a1);
}

BOOL sub_58D90(uint64_t a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      v16 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v3 = *a2;
  result = 1;
  if (*a2 <= 1983013985)
  {
    if (v3 > 1836414052)
    {
      if (v3 == 1836414053 || v3 == 1836478308)
      {
        return result;
      }

LABEL_25:
      v10 = sub_5544(14);
      if (*v10)
      {
        result = os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v13 = *a2;
          v15 = a2[2];
          sub_22CE0(__p);
        }

        return result;
      }

      return 0;
    }

    v6 = v3 == 1064725619;
    v7 = 1684157046;
LABEL_18:
    if (v6 || v3 == v7)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v3 <= 1986290210)
  {
    v6 = v3 == 1983013986;
    v7 = 1986229104;
    goto LABEL_18;
  }

  if (v3 != 1987013741 && v3 != 1987013732)
  {
    if (v3 == 1986290211)
    {
      return 0;
    }

    goto LABEL_25;
  }

  return result;
}

float sub_5908C(int a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "StandardUtilities.h";
      v11 = 1024;
      v12 = 154;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a1 != 4)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "StandardUtilities.h";
        v11 = 1024;
        v12 = 155;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) == inDataSize", &v9, 0x12u);
      }
    }
  }

  return *a2;
}

double sub_59224(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0.0;
  }

  v3 = *(a1 + 8);
  sub_55ACC(&v3, v1 - 1);
  LODWORD(result) = *(v3 + 10);
  return result;
}

char *sub_59274@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[471] < 0)
  {
    return sub_54A0(a2, *(result + 56), *(result + 57));
  }

  *a2 = *(result + 28);
  *(a2 + 16) = *(result + 58);
  return result;
}

double *sub_592D8(double *result, double *a2, double *a3)
{
  if (*a3 < *result)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "StandardUtilities.h";
      v9 = 1024;
      v10 = 275;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): clamp() requires that maxVal >= minVal.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "clamp() requires that maxVal >= minVal.");
  }

  if (*a2 < *a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (*a2 > *result)
  {
    return v3;
  }

  return result;
}

uint64_t sub_59410(uint64_t a1)
{
  if (sub_5BA08(a1))
  {
    v2 = 2003329396;
    if (sub_59580(a1))
    {
      return sub_5C060(a1);
    }
  }

  else
  {
    return 2003332927;
  }

  return v2;
}

float sub_594E4(uint64_t a1)
{
  v1 = sub_59410(a1);
  if (v1 || (v2 & 1) == 0)
  {
    v4 = v1;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  return *(&v1 + 1);
}

uint64_t *sub_59898(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  if (a2)
  {
    goto LABEL_2;
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "AggregateDevice.h";
    v10 = 1024;
    v11 = 599;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid aggregate device", &v8, 0x12u);
  }

  if (*a1)
  {
LABEL_2:
    v3 = pthread_self();
    v4 = *a1;
    *(v4 + 448) = v3;
    *(v4 + 440) = 1;
  }

  return a1;
}

void *sub_59984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  sub_59898(v16, a7);
  if (v7)
  {
    if (v7[72])
    {
      v7 = (*(*v7 + 608))(v7, a1, a2, a3, a4, a5, a6, v7);
    }

    else
    {
      v7 = 0;
    }
  }

  v14 = v16[0];
  if (v16[0])
  {
    *(v16[0] + 440) = 0;
    *(v14 + 448) = 0;
  }

  return v7;
}

uint64_t sub_59CF8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, double *a5, _DWORD *a6, double *a7, uint64_t a8)
{
  if (!*(a1 + 576))
  {
    v141 = sub_5544(14);
    v142 = *v141;
    if (*v141)
    {
      if (os_log_type_enabled(*v141, OS_LOG_TYPE_ERROR))
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_Simple.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 380;
        _os_log_impl(&dword_0, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The client IO proc must exist for IO to run.", &buf, 0x12u);
      }
    }
  }

  v12 = *(a1 + 808);
  v13 = *(a1 + 816);
  v14 = v12;
  if (v12 != v13)
  {
    while (*v14 != 1)
    {
      if (++v14 == v13)
      {
        v14 = *(a1 + 816);
        break;
      }
    }
  }

  v15 = (v14 - v12);
  if (v13 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v146 = a4;
  if (*(a1 + 864) != *(a1 + 856) && *a4 && (v17 = &a4[4 * v16 + 2], *(v17 + 8)))
  {
    v18 = sub_4CF4(a1 + 856, 0, 0);
    v19 = sub_5AE74(*(v18 + 8), *(v18 + 192));
    v20 = 1;
    v21 = (*(v17 + 4) / *(sub_4CF4(a1 + 856, 0, 0) + 64));
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  v22 = *(a1 + 832);
  v23 = *(a1 + 840);
  v24 = v22;
  if (v22 != v23)
  {
    while (*v24 != 1)
    {
      if (++v24 == v23)
      {
        v24 = *(a1 + 840);
        break;
      }
    }
  }

  v25 = (v24 - v22);
  if (v23 == v24)
  {
    v25 = 0;
  }

  v147 = v25;
  if (*(a1 + 888) != *(a1 + 880) && *a6 && (v26 = &a6[4 * v25 + 2], *(v26 + 8)))
  {
    v27 = sub_4CF4(a1 + 856, 1, 0);
    v28 = sub_5AE74(*(v27 + 8), *(v27 + 192));
    v149[0] = *(v26 + 4) / *(sub_4CF4(a1 + 856, 1, 0) + 64);
    v149[1] = 1;
  }

  else
  {
    v28 = 0;
    *v149 = 0;
  }

  if (*(a1 + 104) == 1)
  {
    *(a1 + 88) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    *(a1 + 104) = 0;
  }

  v29 = 0;
  inInputData = 0;
  outOutputData = 0;
  if (v20)
  {
    v30 = sub_4CF4(a1 + 856, 0, 0);
    v31 = v30;
    v29 = *(a1 + 904);
    v32 = *(a1 + 856);
    v33 = *(v32 + 160);
    inInputData = *(v32 + 176);
    outOutputData = v33;
    if (v19)
    {
      sub_A5B24(v29, *(v30 + 24) * v21);
      sub_A5B24(&outOutputData->mNumberBuffers, v31[26] * v21);
      sub_A5B24(&inInputData->mNumberBuffers, v31[36] * v21);
    }

    else
    {
      v34 = &v146[4 * v16];
      *(v29 + 2) = *(v34 + 2);
      v29[3] = v34[3];
    }

    if (v31[2] == 1819304813)
    {
      *&buf.mNumberBuffers = 1;
      v35 = &v146[4 * v16];
      buf.mBuffers[0] = *(v35 + 2);
      v36 = *(a1 + 88);
      *__p = xmmword_5171F0;
      if (v36)
      {
        sub_475148(v36, __p, (v35 + 2), v21);
      }

      sub_5AEC0(a1 + 144, v31[50], &buf, v21, a5);
    }
  }

  if (v19)
  {
    v37 = sub_4CF4(a1 + 856, 0, 0);
    v38 = *(v37 + 192);
    *&buf.mNumberBuffers = 1;
    buf.mBuffers[0] = *&v146[4 * v16 + 2];
    sub_90828(v38[73], v21, &buf, outOutputData);
    v39 = *(a1 + 936);
    if ((v39 & 0xFFFFFFFE) == 2)
    {
      if ((v39 & 3) == 2)
      {
        v40 = 0;
      }

      else
      {
        v40 = *(*(a1 + 984) + 4);
      }

      v41 = sub_134404(*(a1 + 808), *(a1 + 816), v40);
      *__p = 1;
      v42 = &v146[4 * v41 + 2];
      *&__p[8] = *v42;
      v157[0] = outOutputData;
      v157[1] = __p;
      (*(*v38 + 21))(v38, a5, v21, 2, v157, 1, &inInputData);
      v43 = *(a1 + 1008);
      if (*(v43 + 48) == 1819304813)
      {
        v44 = *(v43 + 64);
        if (!v44)
        {
          CAVerboseAbort();
        }

        v45 = *(v42 + 4);
        v46 = *(a1 + 88);
        v47 = *(*(a1 + 984) + 4);
        v150 = 0x100000000;
        v151 = 0;
        v152 = v47;
        if (v46)
        {
          sub_475148(v46, &v150, v42, v45 / v44);
        }
      }
    }

    else
    {
      (*(*v38 + 21))(v38, a5, v21, 1, &outOutputData, 1, &inInputData);
    }

    sub_90828(v38[84], v21, inInputData, v29);
    v48 = *(a1 + 88);
    *__p = xmmword_517320;
    if (v48)
    {
      sub_475310(v48, __p, v29, v21, *a5);
    }

    sub_5AEC0(a1 + 144, *(v37 + 204), v29, v21, a5);
  }

  v157[0] = 0;
  v150 = 0;
  if (v149[1])
  {
    v49 = *(a1 + 920);
    v50 = *(a1 + 880);
    v51 = *(v50 + 160);
    v157[0] = v51;
    v52 = *(v50 + 176);
    v150 = v52;
    if (v28)
    {
      v53 = sub_4CF4(a1 + 856, 1, 0);
      sub_A5B24(&v49->mNumberBuffers, *(v53 + 24) * v149[0]);
      v54 = sub_4CF4(a1 + 856, 1, 0);
      sub_A5B24(&v51->mNumberBuffers, *(v54 + 104) * v149[0]);
      v55 = sub_4CF4(a1 + 856, 1, 0);
      sub_A5B24(&v52->mNumberBuffers, *(v55 + 104) * v149[0]);
      mDataByteSize = v49->mBuffers[0].mDataByteSize;
    }

    else
    {
      v57 = &a6[4 * v147];
      v49->mBuffers[0].mData = *(v57 + 2);
      mDataByteSize = v57[3];
      v49->mBuffers[0].mDataByteSize = mDataByteSize;
    }
  }

  else
  {
    v51 = 0;
    v49 = 0;
    mDataByteSize = 0;
  }

  if (*(a1 + 484) == 1 && v29 && *v29)
  {
    v58 = 0;
    v59 = (v29 + 4);
    do
    {
      bzero(*v59, *(v59 - 1));
      ++v58;
      v59 += 2;
    }

    while (v58 < *v29);
  }

  (*(a1 + 576))(a8, a3, v29, a5, v49, a7, *(a1 + 584));
  if (v28)
  {
    if ((*(*a1 + 480))(a1))
    {
      v60 = sub_4CF4(a1 + 856, 1, 0);
      v61 = *(v60 + 192);
      if (v61)
      {
        v62 = (*(*v61 + 80))(*(v60 + 192));
        v145 = 0;
      }

      else
      {
        v62 = 0;
        v145 = 1;
      }

      v63 = 1;
      goto LABEL_66;
    }

    bzero(*&a6[4 * v147 + 4], a6[4 * v147 + 3]);
  }

  v61 = 0;
  v63 = 0;
  v62 = 0;
  v145 = 1;
LABEL_66:
  if ((*(*a1 + 480))(a1))
  {
    if (*(a1 + 801))
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    if (*(a1 + 800) == 1)
    {
      v65 = v64;
    }

    else
    {
      v65 = *(a1 + 801);
    }
  }

  else
  {
    v65 = 0;
  }

  if ((v149[1] & (*(*a1 + 480))(a1)) != 1 || v49->mBuffers[0].mDataByteSize)
  {
    *(a1 + 796) = 0;
    goto LABEL_77;
  }

  if (v62)
  {
    if ((v63 & 1) == 0)
    {
      goto LABEL_133;
    }
  }

  else
  {
    v86 = *(a1 + 796);
    if (v86 >> 6 >= 0x177)
    {
      if (v86 <= v149[0] + 24000)
      {
        if ((v145 & 1) == 0)
        {
          sub_6AD0C(v61);
          v86 = *(a1 + 796);
        }

        *(a1 + 796) = v86 + 2 * v149[0];
      }

LABEL_133:
      v63 = 0;
      if ((*(a1 + 80) & 4) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_134;
    }

    *(a1 + 796) = v86 + v149[0];
    if ((v63 & 1) == 0)
    {
      goto LABEL_133;
    }
  }

  v63 = 1;
LABEL_134:
  sub_A5B24(&v49->mNumberBuffers, mDataByteSize);
  mNumberBuffers = v49->mNumberBuffers;
  if (mNumberBuffers)
  {
    v88 = 0;
    p_mData = &v49->mBuffers[0].mData;
    do
    {
      if (*p_mData)
      {
        bzero(*p_mData, *(p_mData - 1));
        mNumberBuffers = v49->mNumberBuffers;
      }

      ++v88;
      p_mData += 2;
    }

    while (v88 < mNumberBuffers);
  }

LABEL_139:
  if ((v63 & 1) == 0 && v65 != 3)
  {
    bzero(*&a6[4 * v147 + 4], a6[4 * v147 + 3]);
    LOBYTE(v63) = 0;
    goto LABEL_78;
  }

LABEL_77:
  if ((v149[1] & 1) == 0)
  {
    if (!v63)
    {
      return 0;
    }

    goto LABEL_85;
  }

LABEL_78:
  v66 = sub_4CF4(a1 + 856, 1, 0);
  if (*(v66 + 8) == 1819304813)
  {
    v67 = *(a1 + 88);
    *&buf.mNumberBuffers = xmmword_517330;
    if (v67)
    {
      sub_475310(v67, &buf, v49, v149[0], *a7);
    }

    sub_5AEC0(a1 + 144, *(v66 + 200), v49, v149[0], a7);
  }

  if ((v63 & 1) == 0)
  {
    v68 = sub_4CF4(a1 + 856, 1, 0);
    v69 = 0;
    goto LABEL_95;
  }

LABEL_85:
  sub_90828(*(v61 + 584), v149[0], v49, v51);
  v70 = *(a1 + 936);
  v71 = !sub_45168();
  if (!HIDWORD(v70))
  {
    v71 = 1;
  }

  if (v71 && (v70 & 0xFFFFFFFD) == 1)
  {
    v72 = sub_134404(*(a1 + 808), *(a1 + 816), 0);
    *&buf.mNumberBuffers = 1;
    buf.mBuffers[0] = *&v146[4 * v72 + 2];
    *__p = v51;
    *&__p[8] = &buf;
    (*(*v61 + 168))(v61, a7, v149[0], 2, __p, 1, &v150);
  }

  else
  {
    (*(*v61 + 168))(v61, a7, v149[0], 1, v157, 1, &v150);
  }

  if (*(a1 + 276) != 1987277417)
  {
    sub_A5870(v61, a7);
  }

  sub_A5BC0(*(v61 + 376), a7);
  if (!v149[1])
  {
    goto LABEL_227;
  }

  v49 = v150;
  v68 = (sub_4CF4(a1 + 856, 1, 0) + 120);
  v69 = 1;
LABEL_95:
  if ((v65 - 1) >= 2)
  {
    if (v65)
    {
      v83 = v49->mNumberBuffers;
      if (v83)
      {
        v84 = 0;
        v85 = &v49->mBuffers[0].mData;
        do
        {
          if (*v85)
          {
            bzero(*v85, *(v85 - 1));
            v83 = v49->mNumberBuffers;
          }

          ++v84;
          v85 += 2;
        }

        while (v84 < v83);
      }
    }
  }

  else
  {
    v156 = 0;
    v155 = 0;
    if (!sub_1D1D48(v68, &v156, &v155))
    {
LABEL_162:
      *(a1 + 801) = v65 != 1;
      if (v65 != 1)
      {
        v102 = v49->mNumberBuffers;
        if (v102)
        {
          v103 = 0;
          v104 = &v49->mBuffers[0].mData;
          do
          {
            if (*v104)
            {
              bzero(*v104, *(v104 - 1));
              v102 = v49->mNumberBuffers;
            }

            ++v103;
            v104 += 2;
          }

          while (v103 < v102);
        }
      }

      goto LABEL_226;
    }

    if (v156 != 1)
    {
      if (v156 == 3)
      {
        v90 = *(v68 + 7);
        if (v155 || v90 == 1)
        {
          mData = v49->mBuffers[0].mData;
          v92 = (*v68 * 0.03);
          if (v92 >= v149[0])
          {
            v93 = v149[0];
          }

          else
          {
            v93 = (*v68 * 0.03);
          }

          v94 = 0x1000000 / v93;
          v95 = *(a1 + 801);
          if (!v95)
          {
            v94 = -v94;
          }

          v96 = (*(a1 + 801) == 0) << 24;
          if (v90 == 1)
          {
            if (v93 <= 1)
            {
              v114 = 1;
            }

            else
            {
              v114 = v93;
            }

            v115 = v94 + v96;
            v116 = mData;
            do
            {
              *v116 = (v115 * *v116) >> 24;
              ++v116;
              v115 += v94;
              --v114;
            }

            while (v114);
          }

          else if (v90 == 2)
          {
            if (v93 <= 1)
            {
              v97 = 1;
            }

            else
            {
              v97 = v93;
            }

            v98 = v94 + v96;
            v99 = mData;
            do
            {
              v100 = (v98 * v99[1]) >> 24;
              *v99 = (v98 * *v99) >> 24;
              v99[1] = v100;
              v99 += 2;
              v98 += v94;
              --v97;
            }

            while (v97);
          }

          else
          {
            v122 = sub_5544(14);
            v123 = *v122;
            if (*v122 && os_log_type_enabled(*v122, OS_LOG_TYPE_ERROR))
            {
              buf.mNumberBuffers = 136315394;
              *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common.cpp";
              LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
              *(&buf.mBuffers[0].mDataByteSize + 2) = 1331;
              _os_log_impl(&dword_0, v123, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected number of channels", &buf, 0x12u);
            }
          }

          if (v95)
          {
            goto LABEL_220;
          }

          if (v149[0] > v92)
          {
            v124 = 4 * v90 * (v149[0] - v93);
            v125 = &mData[v93 * v90];
LABEL_223:
            bzero(v125, v124);
          }

LABEL_224:
          v135 = 1;
          goto LABEL_225;
        }
      }

      else if (v156 == 2)
      {
        v73 = *(v68 + 7);
        if (v155 || v73 == 1)
        {
          v74 = v49->mBuffers[0].mData;
          v75 = (*v68 * 0.03);
          if (v75 >= v149[0])
          {
            v76 = v149[0];
          }

          else
          {
            v76 = (*v68 * 0.03);
          }

          LODWORD(v77) = 0x8000 / v76;
          v78 = *(a1 + 801);
          if (v78)
          {
            v77 = v77;
          }

          else
          {
            v77 = -v77;
          }

          v79 = (*(a1 + 801) == 0) << 15;
          if (v73 == 1)
          {
            if (v76 <= 1)
            {
              v119 = 1;
            }

            else
            {
              v119 = v76;
            }

            v120 = v79 + v77;
            v121 = v74;
            do
            {
              *v121 = (v120 * *v121) >> 15;
              ++v121;
              v120 += v77;
              --v119;
            }

            while (v119);
          }

          else if (v73 == 2)
          {
            if (v76 <= 1)
            {
              v80 = 1;
            }

            else
            {
              v80 = v76;
            }

            v81 = v79 + v77;
            v82 = v74;
            do
            {
              *v82 = (v81 * *v82) >> 15;
              v82[1] = (v81 * v82[1]) >> 15;
              v82 += 2;
              v81 += v77;
              --v80;
            }

            while (v80);
          }

          else
          {
            v133 = sub_5544(14);
            v134 = *v133;
            if (*v133 && os_log_type_enabled(*v133, OS_LOG_TYPE_ERROR))
            {
              buf.mNumberBuffers = 136315394;
              *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common.cpp";
              LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
              *(&buf.mBuffers[0].mDataByteSize + 2) = 1331;
              _os_log_impl(&dword_0, v134, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected number of channels", &buf, 0x12u);
            }
          }

          if (v78)
          {
LABEL_220:
            v135 = 0;
LABEL_225:
            *(a1 + 801) = v135;
            goto LABEL_226;
          }

          if (v149[0] > v75)
          {
            v124 = 2 * v73 * (v149[0] - v76);
            v125 = &v74[v76 * v73];
            goto LABEL_223;
          }

          goto LABEL_224;
        }
      }

      goto LABEL_159;
    }

    if (v155 && *(v68 + 7) != 1)
    {
LABEL_159:
      v101 = sub_5544(17);
      if (*v101 && os_log_type_enabled(*v101, OS_LOG_TYPE_DEFAULT))
      {
        sub_618A4(__p);
      }

      goto LABEL_162;
    }

    v105 = (*v68 * 0.03);
    if (v105 >= v149[0])
    {
      v106 = v149[0];
    }

    else
    {
      v106 = v105;
    }

    v107 = 1.0;
    v108 = 1.0 / v106;
    v109 = *(a1 + 801);
    if (v109)
    {
      v107 = 0.0;
    }

    else
    {
      v108 = -v108;
    }

    v110 = v49->mNumberBuffers;
    if (v110 == 1)
    {
      if (v106)
      {
        v117 = v49->mBuffers[0].mData;
        v118 = v106;
        do
        {
          v107 = v108 + v107;
          *v117 = v107 * *v117;
          ++v117;
          --v118;
        }

        while (v118);
      }
    }

    else if (v110 == 2)
    {
      if (v106)
      {
        v111 = v49->mBuffers[0].mData;
        v112 = *&v49[1].mBuffers[0].mNumberChannels;
        v113 = v106;
        do
        {
          v107 = v108 + v107;
          *v111 = v107 * *v111;
          ++v111;
          *v112 = v107 * *v112;
          ++v112;
          --v113;
        }

        while (v113);
      }
    }

    else if (v106)
    {
      for (i = 0; i != v106; ++i)
      {
        v107 = v108 + v107;
        v127 = &v49->mBuffers[0].mData;
        v128 = v110;
        if (v110)
        {
          do
          {
            v129 = *v127;
            v127 += 2;
            v129[i] = v107 * v129[i];
            --v128;
          }

          while (v128);
        }
      }
    }

    if (v109)
    {
      v130 = 0;
    }

    else
    {
      v130 = 1;
      if (v149[0] > v105 && v110)
      {
        v131 = 0;
        v132 = 16;
        do
        {
          bzero((*(&v49->mNumberBuffers + v132) + 4 * v106), (4 * (v149[0] - v106)));
          ++v131;
          v132 += 16;
        }

        while (v131 < v49->mNumberBuffers);
        v130 = 1;
      }
    }

    *(a1 + 801) = v130;
  }

LABEL_226:
  if (!v69)
  {
LABEL_230:
    if (*(sub_4CF4(a1 + 856, 1, 0) + 8) == 1819304813)
    {
      v137 = *(a1 + 88);
      *&buf.mNumberBuffers = xmmword_517340;
      if (v137)
      {
        sub_475148(v137, &buf, &a6[4 * v147 + 2], v149[0]);
      }
    }

    if ((v149[1] & *(a1 + 484)) == 1 && *a6)
    {
      v138 = 0;
      v139 = (a6 + 4);
      do
      {
        bzero(*v139, *(v139 - 1));
        ++v138;
        v139 += 2;
      }

      while (v138 < *a6);
    }

    return 0;
  }

LABEL_227:
  *&buf.mNumberBuffers = 1;
  buf.mBuffers[0] = *&a6[4 * v147 + 2];
  v136 = sub_4CF4(a1 + 856, 1, 0);
  if ((v145 & 1) == 0)
  {
    sub_90828(*(v61 + 672), v149[0], v150, &buf);
  }

  sub_5AEC0(a1 + 144, *(v136 + 204), &buf, v149[0], a7);
  if (v149[1])
  {
    goto LABEL_230;
  }

  return 0;
}

BOOL sub_5AE74(int a1, uint64_t a2)
{
  if (*(a2 + 448))
  {
    return a1 == 1819304813;
  }

  if (*(a2 + 584))
  {
    return a1 == 1819304813;
  }

  if (*(a2 + 672))
  {
    return a1 == 1819304813;
  }

  v2 = *(a2 + 1160);
  if (v2)
  {
    if (*(v2 + 104))
    {
      return a1 == 1819304813;
    }
  }

  return *(a2 + 1168) && a1 == 1819304813;
}

void sub_5AEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    if (qword_6FCB80 != -1)
    {
      dispatch_once(&qword_6FCB80, &stru_6C3470);
    }

    if (off_6FCBB8)
    {
      v11 = off_6FCBB8;

      v11(v9, a2, v10, a3, a4, a5);
    }
  }
}

void sub_5AF7C(uint64_t a1, uint64_t a2, void *a3, double *a4, unsigned int *a5, double *a6, uint64_t a7)
{
  v41 = a7;
  v40 = 0;
  v13 = sub_42A2A8(a7 + 568, &v40);
  v14 = v40;
  if (v40 != v13)
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29)
    {
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        *block = 136315906;
        *&block[4] = "IOMonitor.h";
        *&block[12] = 1024;
        *&block[14] = 174;
        *&block[18] = 1024;
        *&block[20] = v13;
        *&block[24] = 1024;
        *&block[26] = v14;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: By definition, the IO thread is singular and not reentrant. As a result, it is a deep logic error if the IO thread already owns mIOProcThreadMutex. trySucceeded (%u) and outWasLocked (%u) imply this logic error.", block, 0x1Eu);
      }
    }
  }

  if (v13)
  {
    v39[0] = &v40;
    v39[1] = &v41;
    v15 = pthread_self();
    v16 = v41;
    v41[57] = v15;
    ++*(v16 + 194);
    v17 = *(v16[31] + 8);
    if (*(v16[31] + 16) == v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v17;
    }

    if (*(v16 + 368) == 1 && *(v18 + 8))
    {
      if (v16[45] != *(v18 + 16))
      {
        v31 = sub_5544(14);
        v32 = *v31;
        if (*v31)
        {
          if (os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
          {
            v33 = *(v18 + 16);
            v34 = v16[45];
            *block = 136315906;
            *&block[4] = "VirtualAudio_Device.cpp";
            *&block[12] = 1024;
            *&block[14] = 4412;
            *&block[18] = 2048;
            *&block[20] = v33;
            *&block[28] = 2048;
            *&block[30] = v34;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IOProc client data (actual = %p, expected = %p) corruption", block, 0x26u);
          }
        }
      }

      if (v16[44] != *(v18 + 8))
      {
        v35 = sub_5544(14);
        v36 = *v35;
        if (*v35)
        {
          if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
          {
            v37 = *(v18 + 8);
            v38 = v16[44];
            *block = 136315906;
            *&block[4] = "VirtualAudio_Device.cpp";
            *&block[12] = 1024;
            *&block[14] = 4414;
            *&block[18] = 2048;
            *&block[20] = v37;
            *&block[28] = 2048;
            *&block[30] = v38;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IOProc proc pointer (actual = %p, expected = %p) corruption", block, 0x26u);
          }
        }
      }
    }

    if (!a3)
    {
      v22 = *(v18 + 200);
      if (!v22)
      {
        a3 = &unk_6FCFD0;
        if (a5)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      sub_221560(*v18, 1, v22, (v18 + 176));
      a3 = *(v18 + 200);
    }

    if (a5)
    {
      goto LABEL_26;
    }

LABEL_21:
    v23 = *(v18 + 232);
    if (v23)
    {
      sub_221560(*v18, 0, v23, (v18 + 208));
      a5 = *(v18 + 232);
    }

    else
    {
      a5 = &unk_6FCFD0;
    }

LABEL_26:
    if (*(v18 + 54) == 1)
    {
      v24 = *(v18 + 120);
      if (!v24 || ((v24 & 1) != 0 ? (v25 = *a4) : (v25 = *a6), v25 >= *(v18 + 56)))
      {
        v26 = *(v18 + 8);
        if (v26)
        {
          v26(*(*v18 + 8), a2, a3, a4, a5, a6, *(v18 + 16));
        }

        else
        {
          v27 = *(v18 + 40);
          if (v27)
          {
            v28 = *(v18 + 32);
            if (v28)
            {
              *block = _NSConcreteStackBlock;
              *&block[8] = 0x40000000;
              *&block[16] = sub_221694;
              *&block[24] = &unk_6B9A10;
              *&block[32] = v18;
              v43 = a2;
              v44 = a3;
              v45 = a4;
              v46 = a5;
              v47 = a6;
              dispatch_sync(v28, block);
            }

            else
            {
              (*(v27 + 16))(*(v18 + 40), a2, a3, a4, a5, a6);
            }
          }
        }
      }
    }

    (*(*v41 + 256))(v41);
    v41[57] = 0;
    sub_5B65C(v39);
    return;
  }

  ++*(a7 + 940);
  if (a5)
  {
    v19 = *a5;
    if (v19)
    {
      v20 = 0;
      v21 = (a5 + 4);
      do
      {
        if (*v21)
        {
          bzero(*v21, *(v21 - 1));
          v19 = *a5;
        }

        ++v20;
        v21 += 2;
      }

      while (v20 < v19);
    }
  }
}

uint64_t sub_5B4C0(uint64_t a1, char *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit((a1 + 16), memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((a1 + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v8;
    }

    atomic_store(v4, (a1 + 16));
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

uint64_t sub_5B65C(uint64_t a1)
{
  if (**a1 == 1)
  {
    v2 = **(a1 + 8);
    v3 = atomic_load((v2 + 664));
    if (v3 != pthread_self())
    {
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315394;
          v8 = "IOMonitor.h";
          v9 = 1024;
          v10 = 125;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: It is illegal to call Unlock_FromIOThread from a thread that does not own the mIOProcThreadMutex.", &v7, 0x12u);
        }
      }
    }

    sub_42A318(v2 + 568);
  }

  return a1;
}

void sub_5B760(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_5B770(void *result)
{
  v1 = result[29];
  if (v1 != result[28])
  {
    v2 = result;
    do
    {
      v5 = 0;
      if ((*(*v2 + 280))(v2, *(v1 - 1), &v5))
      {
        (*(**(v1 - 1) + 16))(*(v1 - 1), v2);
        (*(*v2 + 288))(v2, v5);
      }

      v3 = v2[29];
      v4 = *(v3 - 8);
      v1 = (v3 - 8);
      result = v4;
      *v1 = 0;
      if (v4)
      {
        result = (*(*result + 8))(result);
      }

      v2[29] = v1;
    }

    while (v1 != v2[28]);
  }

  return result;
}

uint64_t sub_5B898(uint64_t a1, float a2)
{
  v3 = 0.0;
  v4 = fmaxf(a2, 0.0);
  v5 = *(a1 + 24);
  v6 = sub_55A7C(a1);
  if (v5)
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 28);
    v3 = *(v7 + 36);
  }

  else
  {
    v8 = 0;
  }

  v9 = fminf(v4, 1.0);
  v10 = sub_59224(a1);
  v11 = *&v10 - v3;
  if (*(a1 + 32) == 1 && v11 > 30.0)
  {
    v9 = powf(v9, *(a1 + 44) / *(a1 + 40));
  }

  v13 = llroundf(v9 * (v6 - v8));
  v14 = __OFADD__(v8, v13);
  v15 = v8 + v13;
  v16 = ((v8 | v13) >> 31) ^ 0x7FFFFFFF;
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a1 + 8);
  if (v5)
  {
    LODWORD(v5) = *(v18 + 7);
  }

  result = sub_55A7C(a1);
  if (v5 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v5;
  }

  if (v20 >= result)
  {
    v20 = result;
  }

  v21 = v20 - v5;
  v22 = *(v18 + 9);
  v23 = (a1 + 16);
  v24 = v21 < 1 || v18 == v23;
  if (!v24)
  {
    do
    {
      v25 = *(v18 + 8) - *(v18 + 7);
      if (v21 >= v25)
      {
        v26 = *(v18 + 8) - *(v18 + 7);
      }

      else
      {
        v26 = v21;
      }

      v27 = v18[1];
      v28 = v18;
      if (v27)
      {
        do
        {
          v29 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v29 = v28[2];
          v24 = *v29 == v28;
          v28 = v29;
        }

        while (!v24);
      }

      v22 = v22 + (v26 * ((*(v18 + 10) - *(v18 + 9)) / v25));
      v21 -= v26;
      if (v21 < 1)
      {
        break;
      }

      v18 = v29;
    }

    while (v29 != v23);
  }

  return result;
}

uint64_t sub_5BD20(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  sub_4DFC0(a1);
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(*(a1 + 268), a2, a3, a4, &outDataSize);
  if (PropertyDataSize)
  {
    v10 = a1;
    p_mSelector = &a2->mSelector;
    v12 = *sub_5544(18);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v32;
        sub_22170(v32, PropertyDataSize);
        if (v33 < 0)
        {
          v15 = v32[0];
        }

        v16 = v10;
        v17 = *(v10 + 268);
        (*(*v16 + 128))(v30);
        v18 = v31;
        v19 = v30[0];
        sub_22170(__p, *p_mSelector);
        v20 = v30;
        if (v18 < 0)
        {
          v20 = v19;
        }

        if (v29 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        v22 = p_mSelector[1];
        v23 = p_mSelector[2];
        *buf = 136317186;
        v36 = "Device_HAL_Common.mm";
        v37 = 1024;
        v38 = 226;
        v39 = 1024;
        v40 = PropertyDataSize;
        v41 = 2080;
        v42 = v15;
        v43 = 1024;
        v44 = v17;
        v45 = 2080;
        v46 = v20;
        v47 = 2080;
        v48 = v21;
        v49 = 1024;
        v50 = v22;
        v51 = 1024;
        v52 = v23;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %d (%s): mDeviceID %u (uid %s); selector %s; scope %u; element %u", buf, 0x48u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        if (v33 < 0)
        {
          operator delete(v32[0]);
        }
      }
    }

    v24 = sub_5544(14);
    v25 = sub_468EC(1, *v24, *(v24 + 8));
    v26 = v25;
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "Device_HAL_Common.mm";
      v37 = 1024;
      v38 = 227;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to determine the property's data size.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = PropertyDataSize;
  }

  return outDataSize;
}

void sub_5C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_5C0A4(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x5C098);
}

void sub_5C0D8(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  sub_4DFC0(a1);
  PropertyData = AudioObjectGetPropertyData(*(a1 + 268), a2, a3, a4, a5, a6);
  if (PropertyData)
  {
    v47 = PropertyData;
    v48 = *sub_5544(18);
    v49 = v48;
    if (v48)
    {
      v50 = v48;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v47);
        if (v68 >= 0)
        {
          v51 = __p;
        }

        else
        {
          v51 = __p[0];
        }

        v52 = *(a1 + 268);
        (*(*a1 + 128))(v65, a1);
        v53 = v66;
        v54 = v65[0];
        sub_22170(v63, a2->mSelector);
        v55 = v65;
        if (v53 < 0)
        {
          v55 = v54;
        }

        if (v64 >= 0)
        {
          v56 = v63;
        }

        else
        {
          v56 = v63[0];
        }

        mScope = a2->mScope;
        mElement = a2->mElement;
        *buf = 136317186;
        *&buf[4] = "Device_HAL_Common.mm";
        v70 = 1024;
        v71 = 241;
        v72 = 1024;
        *v73 = v47;
        *&v73[4] = 2080;
        *&v73[6] = v51;
        *&v73[14] = 1024;
        *&v73[16] = v52;
        *&v73[20] = 2080;
        *&v73[22] = v55;
        v74 = 2080;
        v75 = v56;
        v76 = 1024;
        v77 = mScope;
        v78 = 1024;
        v79 = mElement;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %d (%s): mDeviceID %u (uid %s); selector %s; scope %u; element %u", buf, 0x48u);
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (v66 < 0)
        {
          operator delete(v65[0]);
        }

        if (v68 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v59 = sub_5544(14);
    v60 = sub_468EC(1, *v59, *(v59 + 8));
    v61 = v60;
    if (v60 && os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_HAL_Common.mm";
      v70 = 1024;
      v71 = 242;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to obtain property data.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v47;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector == 1836414053)
  {
    v14 = sub_5544(18);
    v15 = sub_5544(39);
    v16 = 0;
    *buf = 0x100000002;
    v17 = *(v14 + 8);
    while (1)
    {
      v18 = *&buf[v16];
      if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
      {
        break;
      }

      v16 += 4;
      if (v16 == 8)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }
    }

    if ((v17 & v18) == 0)
    {
      v14 = v15;
    }

    if (*(v14 + 8))
    {
LABEL_11:
      v19 = *v14;
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *a6;
          v22 = *(a1 + 268);
          sub_22170(__p, a2->mScope);
          v23 = v68 >= 0 ? __p : __p[0];
          v24 = a2->mElement;
          *buf = 136316418;
          *&buf[4] = "Device_HAL_Common.mm";
          v70 = 1024;
          v71 = 247;
          v72 = 1024;
          *v73 = v21;
          *&v73[4] = 1024;
          *&v73[6] = v22;
          *&v73[10] = 2080;
          *&v73[12] = v23;
          *&v73[20] = 1024;
          *&v73[22] = v24;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get mute value of %u from HAL device %u (selector: kAudioDevicePropertyMute; scope: '%s'; element: %u).", buf, 0x2Eu);
          if (v68 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

LABEL_19:
    mSelector = a2->mSelector;
  }

  if (mSelector == 1987013732)
  {
    v25 = sub_5544(18);
    v26 = sub_5544(39);
    v27 = 0;
    *buf = 0x100000002;
    v28 = *(v25 + 8);
    while (1)
    {
      v29 = *&buf[v27];
      if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
      {
        break;
      }

      v27 += 4;
      if (v27 == 8)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }
    }

    if ((v28 & v29) == 0)
    {
      v25 = v26;
    }

    if (*(v25 + 8))
    {
LABEL_29:
      v30 = *v25;
      if (v30)
      {
        v31 = v30;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = *a6;
          v33 = *(a1 + 268);
          sub_22170(__p, a2->mScope);
          v34 = v68 >= 0 ? __p : __p[0];
          v35 = a2->mElement;
          *buf = 136316418;
          *&buf[4] = "Device_HAL_Common.mm";
          v70 = 1024;
          v71 = 251;
          v72 = 2048;
          *v73 = v32;
          *&v73[8] = 1024;
          *&v73[10] = v33;
          *&v73[14] = 2080;
          *&v73[16] = v34;
          *&v73[24] = 1024;
          *&v73[26] = v35;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get decibel volume value of %f from HAL device %u (selector: kAudioDevicePropertyVolumeDecibels; scope: '%s'; element: %u).", buf, 0x32u);
          if (v68 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

LABEL_37:
    mSelector = a2->mSelector;
  }

  if (mSelector == 1853059700)
  {
    v36 = sub_5544(18);
    v37 = sub_5544(37);
    v38 = 0;
    *buf = 0x100000002;
    v39 = *(v36 + 8);
    while (1)
    {
      v40 = *&buf[v38];
      if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
      {
        break;
      }

      v38 += 4;
      if (v38 == 8)
      {
        if ((v39 & 1) == 0)
        {
          return;
        }

        goto LABEL_47;
      }
    }

    if ((v39 & v40) == 0)
    {
      v36 = v37;
    }

    if (*(v36 + 8))
    {
LABEL_47:
      v41 = *v36;
      if (v41)
      {
        v42 = v41;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = *a6;
          v44 = *(a1 + 268);
          sub_22170(__p, a2->mScope);
          if (v68 >= 0)
          {
            v45 = __p;
          }

          else
          {
            v45 = __p[0];
          }

          v46 = a2->mElement;
          *buf = 136316418;
          *&buf[4] = "Device_HAL_Common.mm";
          v70 = 1024;
          v71 = 255;
          v72 = 2048;
          *v73 = v43;
          *&v73[8] = 1024;
          *&v73[10] = v44;
          *&v73[14] = 2080;
          *&v73[16] = v45;
          *&v73[24] = 1024;
          *&v73[26] = v46;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get sample rate value of %f from HAL device %u (selector: kAudioDevicePropertyNominalSampleRate; scope: '%s'; element: %u).", buf, 0x32u);
          if (v68 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_5C7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_5C838(uint64_t a1)
{
  v2 = pthread_self();
  v6[0] = v2;
  std::recursive_mutex::lock((a1 + 168));
  if (*(a1 + 232) == v2 || sub_2160(a1))
  {
    sub_26C0(a1);
    std::recursive_mutex::unlock((a1 + 168));
    return 1;
  }

  else
  {
    std::recursive_mutex::unlock((a1 + 168));
    if (std::__shared_mutex_base::try_lock_shared(a1))
    {
      std::recursive_mutex::lock((a1 + 168));
      v6[1] = v6;
      v5 = sub_2284((a1 + 248), v2);
      v3 = 1;
      v5[3] = 1;
      std::recursive_mutex::unlock((a1 + 168));
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_5C910(uint64_t a1)
{
  result = *(a1 + 872);
  if (result)
  {
    return (*(*result + 288))();
  }

  return result;
}

uint64_t sub_5C948(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, NSObject *a5, _DWORD *a6)
{
  if (!a1)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136315394;
    v42 = "HP_HardwarePlugInInterface.cpp";
    v43 = 1024;
    v44 = 289;
    v23 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_ObjectGetPropertyDataSize: no plug-in";
LABEL_43:
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x12u);
    goto LABEL_44;
  }

  if (!a3)
  {
    v24 = sub_5544(14);
    v22 = *v24;
    if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 136315394;
    v42 = "HP_HardwarePlugInInterface.cpp";
    v43 = 1024;
    v44 = 290;
    v23 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inAddress is NULL]: HP_HardwarePlugIn_ObjectGetPropertyDataSize: no address";
    goto LABEL_43;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    v22 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "HP_HardwarePlugInInterface.cpp";
      v43 = 1024;
      v44 = 291;
      v23 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [outDataSize is NULL]: HP_HardwarePlugIn_ObjectGetPropertyDataSize: no place to store return value";
      goto LABEL_43;
    }

LABEL_44:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (*a3 == 1651798132)
  {
    sub_2820();
    v40 = sub_5C838(&unk_6FCDC8);
    if ((v40 & 1) == 0)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "HP_ObjectManager.h";
        v43 = 1024;
        v44 = 98;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): TryExecuteSynchronized: unable to lock object map mutex", buf, 0x12u);
      }

      v29 = __cxa_allocate_exception(0x10uLL);
      *v29 = &off_6DDDD0;
      v29[2] = 560947818;
    }

    v11 = sub_23B090(&xmmword_6FCEE8, a2);
    if (!v11)
    {
      v33 = sub_5544(14);
      v34 = *v33;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "HP_ObjectManager.h";
        v43 = 1024;
        v44 = 101;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      *v35 = &off_6DDDD0;
      v35[2] = 560947818;
    }

    v12 = atomic_load((v11[3] + 312));
    if (v12)
    {
      v14 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if (v40 == 1)
    {
      sub_3174(&unk_6FCDC8);
    }

    if (v14)
    {
      if ((sub_5C838(v14 + 24) & 1) == 0)
      {
        v36 = sub_5544(14);
        v37 = *v36;
        if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "HP_ObjectManager.h";
          v43 = 1024;
          v44 = 126;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): TryExecuteSynchronized: unable to lock object mutex", buf, 0x12u);
        }

        v38 = __cxa_allocate_exception(0x10uLL);
        *v38 = &off_6DDDD0;
        v38[2] = 560947818;
      }

      LODWORD(a5) = (*(**(v14 + 16) + 64))(*(v14 + 16), a3, a4, a5);
      sub_3174(v14 + 24);
      goto LABEL_31;
    }

    v19 = sub_5544(5);
    a5 = *v19;
    if (!*v19)
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v42 = "HP_ObjectManager.h";
      v43 = 1024;
      v44 = 111;
      v45 = 2048;
      v46 = a2;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  sub_2820();
  v39 = a2;
  sub_26C0(&unk_6FCDC8);
  v15 = sub_23B090(&xmmword_6FCEE8, a2);
  if (!v15)
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "HP_ObjectManager.h";
      v43 = 1024;
      v44 = 56;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 560947818;
  }

  v16 = atomic_load((v15[3] + 312));
  if (v16)
  {
    v17 = v15[3];
    v13 = v15[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v17 = 0;
  }

  sub_3174(&unk_6FCDC8);
  if (v17)
  {
    sub_26C0(v17 + 24);
    operator new();
  }

  v18 = sub_5544(5);
  a5 = *v18;
  if (*v18)
  {
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v42 = "HP_ObjectManager.h";
      v43 = 1024;
      v44 = 66;
      v45 = 2048;
      v46 = v39;
LABEL_29:
      _os_log_impl(&dword_0, a5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }

LABEL_30:
    LODWORD(a5) = 0;
  }

LABEL_31:
  if (v13)
  {
    sub_1A8C0(v13);
  }

  *a6 = a5;
  return 0;
}

void sub_5D1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_5D228(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  if (a2)
  {
    sub_422418(va);
    sub_4650(va1);
    JUMPOUT(0x5D274);
  }

  JUMPOUT(0x5D218);
}

void sub_5D268(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (!a11)
    {
      JUMPOUT(0x5D2D4);
    }

    JUMPOUT(0x5D2A8);
  }

  JUMPOUT(0x5D218);
}

void sub_5D284(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x5D290);
  }

  JUMPOUT(0x5D218);
}

void sub_5D2B0(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x5CD00);
  }

  JUMPOUT(0x5D218);
}

void sub_5D2C8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x5D2D4);
  }

  JUMPOUT(0x5D218);
}

void sub_5D308(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

void sub_5D38C(void *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = atomic_load(a1 + 6);
  v9 = sub_5544(1);
  v10 = sub_5544(32);
  v11 = 0;
  *v36 = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&v36[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_7:
  v14 = *v9;
  if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = atomic_load(a1 + 6);
    *v36 = 136316162;
    *&v36[4] = "VirtualAudio_IONotificationManager.cpp";
    v37 = 1024;
    v38 = 185;
    v39 = 2048;
    v40 = (v8 != a2);
    v41 = 2048;
    v42 = a2;
    v43 = 2048;
    v44 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d UpdateAndNotify() - need to notify I/O state = %lu new I/O running state = %lu previous I/O running state = %lu", v36, 0x30u);
  }

  atomic_store(a2, a1 + 6);
  if (v8 != a2 || a4)
  {
    v16 = sub_5544(1);
    v17 = sub_5544(32);
    v18 = 0;
    *v36 = 0x100000002;
    v19 = *(v16 + 8);
    while (1)
    {
      v20 = *&v36[v18];
      if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
      {
        break;
      }

      v18 += 4;
      if (v18 == 8)
      {
        goto LABEL_18;
      }
    }

    if ((v19 & v20) == 0)
    {
      v16 = v17;
    }

LABEL_18:
    v21 = *v16;
    if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = atomic_load(a1 + 6);
      *v36 = 136316162;
      *&v36[4] = "VirtualAudio_IONotificationManager.cpp";
      v37 = 1024;
      v38 = 193;
      v39 = 2080;
      v40 = "com.apple.coreaudio.IORunning";
      v41 = 2048;
      v42 = v22;
      v43 = 2048;
      v44 = a4;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending notification %s of I/O running state %lu forced notification = %lu", v36, 0x30u);
    }

    v23 = *a1;
    v24 = atomic_load(a1 + 6);
    sub_6AC8C(v23, v24);
  }

  v25 = atomic_load(a1 + 7);
  atomic_store(a3, a1 + 7);
  if (v25 != a3 || a4 != 0)
  {
    v27 = sub_5544(1);
    v28 = sub_5544(32);
    v29 = 0;
    *v36 = 0x100000002;
    v30 = *(v27 + 8);
    while (1)
    {
      v31 = *&v36[v29];
      if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
      {
        break;
      }

      v29 += 4;
      if (v29 == 8)
      {
        goto LABEL_32;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_32:
    v32 = *v27;
    if (v32)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = atomic_load(a1 + 7);
        *v36 = 136316162;
        *&v36[4] = "VirtualAudio_IONotificationManager.cpp";
        v37 = 1024;
        v38 = 205;
        v39 = 2080;
        v40 = "com.apple.coreaudio.ActivePorts";
        v41 = 2048;
        v42 = v33;
        v43 = 2048;
        v44 = a4;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending notification %s with active ports %lu forced notification = %lu", v36, 0x30u);
      }
    }

    v34 = a1[1];
    v35 = atomic_load(a1 + 7);
    sub_6AC8C(v34, v35);
  }
}

uint64_t sub_5D734(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8)
{
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v11;
  *(a1 + 16) = v12;
  v13 = *a3;
  v14 = a3[1];
  *(a1 + 72) = *(a3 + 4);
  *(a1 + 56) = v14;
  *(a1 + 40) = v13;
  v15 = *a6;
  v16 = a6[1];
  *(a1 + 112) = *(a6 + 4);
  *(a1 + 80) = v15;
  *(a1 + 96) = v16;
  v17 = *a7;
  v18 = a7[1];
  *(a1 + 152) = *(a7 + 4);
  *(a1 + 136) = v18;
  *(a1 + 120) = v17;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_5D7F4((a1 + 160), a4);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_5D7F4((a1 + 176), a5);
  *(a1 + 192) = a8;
  *(a1 + 200) = 0;
  return a1;
}

void sub_5D7F4(unsigned int **a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 != *a1)
  {
    sub_5D988(a1);
    if (v2)
    {
      v5 = *v2;
      v6 = malloc_type_calloc(1uLL, (16 * *v2) | 8, 0x10800404ACF7207uLL);
      *v6 = v5;
      *a1 = v6;
      *(a1 + 2) = *(a2 + 8);
      if (v5)
      {
        v7 = 0;
        v8 = 0;
        v9 = (v2 + 4);
        do
        {
          v10 = &v6[v7];
          v11 = *(v9 - 1);
          v10[2] = *(v9 - 2);
          v10[3] = v11;
          if (*(a2 + 8) == 1)
          {
            v12 = malloc_type_malloc(v11, 0x19D31B51uLL);
            *(v10 + 2) = v12;
            memcpy(v12, *v9, *(v9 - 1));
            v6 = *a1;
            v5 = **a1;
          }

          else
          {
            *(v10 + 2) = *v9;
          }

          ++v8;
          v9 += 2;
          v7 += 4;
        }

        while (v8 < v5);
      }
    }
  }
}

__n128 sub_5D8EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_5D7F4((a1 + 160), a2 + 160);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_5D7F4((a1 + 176), a2 + 176);
  result = *(a2 + 192);
  *(a1 + 192) = result;
  return result;
}

void sub_5D988(unsigned int **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 2) == 1)
    {
      v3 = *v2;
      if (v3)
      {
        v4 = 0;
        v5 = 4;
        do
        {
          if (*&v2[v5])
          {
            free(*&v2[v5]);
            v2 = *a1;
            v3 = **a1;
          }

          ++v4;
          v5 += 4;
        }

        while (v4 < v3);
      }
    }

    free(v2);
    *a1 = 0;
    *(a1 + 2) = 0;
  }
}

uint64_t sub_5DA08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 208)
    {
      sub_5D988((v4 - 32));
      sub_5D988((v4 - 48));
    }
  }

  return a1;
}

uint64_t sub_5DA70(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    sub_5D988((i - 32));
    sub_5D988((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_5DAD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x13B13B13B13B13CLL)
  {
    sub_36E778(a2);
  }

  sub_189A00();
}

uint64_t sub_5DB28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_5DAD4(result, a4);
  }

  return result;
}

void sub_5DB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_5DD9C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5DBB0(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v4 = a4;
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 != a3)
  {
    do
    {
      v6 = a2[1];
      *v4 = *a2;
      *(v4 + 16) = v6;
      v7 = a2[2];
      v8 = a2[3];
      v9 = a2[5];
      *(v4 + 64) = a2[4];
      *(v4 + 80) = v9;
      *(v4 + 32) = v7;
      *(v4 + 48) = v8;
      v10 = a2[6];
      v11 = a2[7];
      v12 = a2[9];
      *(v4 + 128) = a2[8];
      *(v4 + 144) = v12;
      *(v4 + 96) = v10;
      *(v4 + 112) = v11;
      *(v4 + 160) = 0;
      v13 = (a2 + 10);
      *(v4 + 168) = 0;
      sub_5D7F4((v4 + 160), (a2 + 10));
      *(v4 + 176) = 0;
      *(v4 + 184) = 0;
      v13 += 16;
      sub_5D7F4((v4 + 176), v13);
      *(v4 + 192) = *(v13 + 16);
      v4 = v18 + 208;
      v18 += 208;
      a2 = (v13 + 32);
    }

    while ((v13 + 32) != a3);
  }

  v16 = 1;
  sub_5DA08(v15);
  return v4;
}

BOOL sub_5DCB8(unsigned int *a1, _DWORD *a2, BOOL *a3)
{
  v3 = *a1;
  v4 = v3 == *a2;
  if (v3 != *a2 || v3 == 0)
  {
    result = v3 == *a2;
  }

  else
  {
    v7 = a2 + 4;
    v8 = a1 + 4;
    v9 = 1;
    v4 = 1;
    do
    {
      v10 = v4;
      v11 = *(v8 - 2);
      v12 = *(v7 - 2);
      result = v11 == v12;
      v4 = 0;
      if (v10 && v11 == v12)
      {
        v4 = *v8 == *v7;
      }

      v13 = v11 != v12 || v9++ >= v3;
      v7 += 2;
      v8 += 2;
    }

    while (!v13);
  }

  if (a3)
  {
    *a3 = v4;
  }

  return result;
}

void sub_5DD40(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 208)
  {
    sub_5D988((i - 32));
    sub_5D988((i - 48));
  }

  *(a1 + 8) = a2;
}

void sub_5DD9C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_5DD40(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_5DDF0(uint64_t a1)
{
  v2 = sub_5544(17);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v4 = 0;
    v9 = 8;
    strcpy(__p, "00000000");
    v5 = 7;
    do
    {
      if ((*(a1 + 80) >> v4))
      {
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *(v6 + v5) = 49;
      }

      ++v4;
      --v5;
    }

    while (v4 != 8);
    v7 = __p;
    if (v9 < 0)
    {
      v7 = __p[0];
    }

    buf[0] = 136315906;
    *&buf[1] = "AggregateDevice_Common.cpp";
    v11 = 1024;
    v12 = 1483;
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = "anc|tel|sec|pri|hal";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d stream capture flags : %s (%s)", buf, 0x26u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

uint64_t sub_5E074(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  sub_4EBC(a1);
  v4 = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1718843938)
  {
    if (mSelector <= 1684103986)
    {
      if (mSelector <= 1634955891)
      {
        if (mSelector <= 1633970531)
        {
          if (mSelector <= 1633904998)
          {
            if (mSelector != 1165513555)
            {
              if (mSelector != 1633776747)
              {
                v6 = 25449;
LABEL_91:
                v15 = v6 | 0x61630000;
                goto LABEL_106;
              }

LABEL_107:
              if ((_os_feature_enabled_impl() & 1) == 0)
              {
                v29 = sub_5544(14);
                v30 = *v29;
                if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
                {
                  *v32 = 136315394;
                  *&v32[4] = "AggregateDevice_CommonBase.cpp";
                  *&v32[12] = 1024;
                  *&v32[14] = 987;
                  _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v32, 0x12u);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "Precondition failure.");
              }

              sub_1FB4B0(v32, a1);
              v4 = *v32 != 0;
              if (*&v32[8])
              {
                sub_1A8C0(*&v32[8]);
              }

              return v4;
            }

            goto LABEL_148;
          }

          if (mSelector == 1633904999)
          {
            goto LABEL_107;
          }

          if (mSelector != 1633906541)
          {
            v6 = 29554;
            goto LABEL_91;
          }

          goto LABEL_153;
        }

        if (mSelector <= 1634692198)
        {
          if (mSelector != 1633970532)
          {
            if (mSelector != 1633973868)
            {
              if (mSelector != 1634169456)
              {
                return v4;
              }

              return 1;
            }

LABEL_148:
            *v32 = *&a2->mSelector;
            *&v32[8] = a2->mElement;
            return sub_F30C8(v32, (a1 + 184));
          }

          return 1;
        }

        if (mSelector == 1634692199)
        {
          goto LABEL_148;
        }

        if (mSelector != 1634755428)
        {
          v15 = 1634890859;
LABEL_106:
          if (mSelector == v15)
          {
            goto LABEL_107;
          }

          return v4;
        }

        goto LABEL_153;
      }

      if (mSelector <= 1650881393)
      {
        if ((mSelector - 1635152993) <= 0xE && ((1 << (mSelector - 97)) & 0x4015) != 0)
        {
          goto LABEL_148;
        }

        if (mSelector == 1634955892)
        {
          goto LABEL_153;
        }

        if (mSelector != 1635020147)
        {
          return v4;
        }

        mScope = a2->mScope;
        v9 = 1869968496;
        return mScope == v9;
      }

      if (mSelector <= 1667658617)
      {
        if (mSelector != 1650881394)
        {
          if (mSelector == 1651664739)
          {
            goto LABEL_148;
          }

          if (mSelector != 1651798898)
          {
            return v4;
          }

          *v32 = 1651798132;
          *&v32[4] = *&a2->mScope;
          return (*(*a1 + 16))(a1, v32);
        }

LABEL_97:
        v16 = a2->mScope;
        return v16 == 1869968496 || v16 == 1768845428;
      }

      if (mSelector == 1667658618)
      {
        goto LABEL_153;
      }

      if (mSelector == 1668047203)
      {
        return 1;
      }

      v7 = 1668576114;
LABEL_147:
      if (mSelector != v7)
      {
        return v4;
      }

      goto LABEL_148;
    }

    if (mSelector <= 1685278560)
    {
      if (mSelector <= 1684498543)
      {
        if (mSelector <= 1684365923)
        {
          if (mSelector == 1684103987)
          {
            goto LABEL_148;
          }

          if (mSelector == 1684107364)
          {
            goto LABEL_153;
          }

          v7 = 1684304756;
          goto LABEL_147;
        }

        if (mSelector == 1684365924 || mSelector == 1684370276)
        {
          goto LABEL_148;
        }

        v12 = 26733;
        goto LABEL_95;
      }

      if (mSelector <= 1684893795)
      {
        if (mSelector == 1684498544 || mSelector == 1684500589)
        {
          goto LABEL_97;
        }

        v12 = 28786;
LABEL_95:
        v11 = v12 | 0x64670000;
LABEL_96:
        if (mSelector != v11)
        {
          return v4;
        }

        goto LABEL_97;
      }

      if (mSelector == 1684893796)
      {
        goto LABEL_153;
      }

      if (mSelector == 1685087596)
      {
        goto LABEL_148;
      }

      v18 = 18515;
LABEL_113:
      v7 = v18 | 0x64730000;
      goto LABEL_147;
    }

    if (mSelector <= 1685288050)
    {
      if (mSelector <= 1685287010)
      {
        v10 = mSelector - 1685278561;
        if (v10 > 0x11 || ((1 << v10) & 0x20003) == 0)
        {
          return v4;
        }

        goto LABEL_153;
      }

      if (mSelector == 1685287011)
      {
        return 1;
      }

      if (mSelector == 1685287012)
      {
LABEL_153:
        HasProperty = AudioObjectHasProperty(*(a1 + 128), a2);
        return HasProperty != 0;
      }

      v18 = 29283;
      goto LABEL_113;
    }

    if (mSelector <= 1702392684)
    {
      if (mSelector == 1685288051 || mSelector == 1685483630)
      {
        goto LABEL_148;
      }

      v7 = 1702248804;
      goto LABEL_147;
    }

    if (mSelector == 1702392685 || mSelector == 1718383987)
    {
      goto LABEL_148;
    }

    v19 = 1718839674;
LABEL_152:
    if (mSelector != v19)
    {
      return v4;
    }

    goto LABEL_153;
  }

  if (mSelector <= 1902539641)
  {
    if (mSelector <= 1853059618)
    {
      if (mSelector <= 1769302371)
      {
        if (mSelector > 1735682403)
        {
          if (mSelector == 1735682404)
          {
            return 1;
          }

          if (mSelector != 1752135523)
          {
            if (mSelector != 1752657012)
            {
              return v4;
            }

            *v32 = 1819569763;
            *&v32[4] = *&a2->mScope;
            HasProperty = AudioObjectHasProperty(*(a1 + 128), v32);
            return HasProperty != 0;
          }

          goto LABEL_153;
        }

        if (mSelector == 1718843939)
        {
          goto LABEL_153;
        }

        v19 = 1735354734;
      }

      else
      {
        if (mSelector <= 1835888483)
        {
          if (mSelector == 1769302372)
          {
            goto LABEL_153;
          }

          if (mSelector == 1818326127)
          {
            goto LABEL_148;
          }

          v11 = 1819569763;
          goto LABEL_96;
        }

        if (mSelector == 1835888484 || mSelector == 1836348005)
        {
          mScope = a2->mScope;
          v9 = 1768845428;
          return mScope == v9;
        }

        v19 = 1852012899;
      }

      goto LABEL_152;
    }

    if (mSelector > 1885434481)
    {
      if (mSelector > 1886413425)
      {
        if (mSelector != 1886413426)
        {
          if (mSelector == 1886807139)
          {
            goto LABEL_148;
          }

          v7 = 1886807154;
          goto LABEL_147;
        }

        if (a2->mScope == 1869968496)
        {
          strcpy(v32, "rBPPptuo");
          v32[9] = 0;
          *&v32[10] = 0;
          return sub_F30C8(v32, (a1 + 184));
        }
      }

      else
      {
        if (mSelector == 1885434482 || mSelector == 1885631346)
        {
          goto LABEL_148;
        }

        if (mSelector != 1886413412)
        {
          return v4;
        }

        if (a2->mScope == 1869968496)
        {
          strcpy(v32, "wBPPptuo");
          v32[9] = 0;
          *&v32[10] = 0;
          return sub_F30C8(v32, (a1 + 184));
        }
      }
    }

    else
    {
      if (mSelector > 1869575793)
      {
        if (mSelector != 1869575794)
        {
          if (mSelector == 1869838183)
          {
            goto LABEL_153;
          }

          v19 = 1870030194;
          goto LABEL_152;
        }
      }

      else
      {
        if (mSelector == 1853059619 || mSelector == 1853059700)
        {
          goto LABEL_153;
        }

        if (mSelector != 1869574756)
        {
          return v4;
        }
      }

      if (a2->mScope == 1768845428)
      {
        v25 = *(*a1 + 392);

        return v25(a1, 1685287015, 1818980210, 0, 0);
      }
    }

    return 0;
  }

  if (mSelector > 1952997987)
  {
    if (mSelector <= 1983996970)
    {
      if (mSelector <= 1953002353)
      {
        if (mSelector == 1952997988)
        {
          if (a2->mScope == 1869968496)
          {
            if ((sub_6AE80() & 1) == 0)
            {
              v26 = a2->mScope;
              *v32 = 1416118903;
              *&v32[4] = v26;
              *&v32[8] = 0;
              return sub_F30C8(v32, (a1 + 184));
            }

            return 1;
          }
        }

        else
        {
          if (mSelector != 1952998002)
          {
            v7 = 1953002093;
            goto LABEL_147;
          }

          if (a2->mScope == 1869968496)
          {
            if ((sub_6AE80() & 1) == 0)
            {
              v28 = a2->mScope;
              *v32 = 1416118898;
              *&v32[4] = v28;
              *&v32[8] = 0;
              return sub_F30C8(v32, (a1 + 184));
            }

            return 1;
          }
        }

        return 0;
      }

      if (mSelector == 1953002354)
      {
        goto LABEL_148;
      }

      if (mSelector == 1953719148)
      {
        if (a2->mScope == 1869968496)
        {
          v4 = 1;
          if ((*(*a1 + 392))(a1, 1987013737, 64001, 0, 1))
          {
            return v4;
          }

          strcpy(v32, "#sTTptuo");
          v32[9] = 0;
          *&v32[10] = 0;
          return sub_F30C8(v32, (a1 + 184));
        }

        return 0;
      }

      if (mSelector != 1969844082)
      {
        return v4;
      }

      if (a2->mScope != 1768845428 || !(*(*a1 + 392))(a1, 1685287015, 1818980210, 0, 0))
      {
        return 0;
      }

      v21 = *(*a1 + 368);
      v22 = a1;
      v23 = 1685287015;
      v24 = 1969844082;
LABEL_185:

      return v21(v22, v23, v24, 0);
    }

    if (mSelector <= 1986225267)
    {
      if (mSelector == 1983996971 || mSelector == 1983997011)
      {
        if ((*(a1 + 308) & 1) == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_153;
      }

      v7 = 1986225266;
      goto LABEL_147;
    }

    if (mSelector == 1986225268)
    {
      goto LABEL_148;
    }

    if (mSelector != 1986361444)
    {
      v7 = 2004053366;
      goto LABEL_147;
    }

    v27 = sub_20B200(a1);
    if ((*(a1 + 792) & 1) != 0 || v27)
    {
      v21 = *(*a1 + 368);
      v22 = a1;
      v23 = 1818521197;
      v24 = 40;
      goto LABEL_185;
    }

    return 0;
  }

  if (mSelector > 1936744802)
  {
    if (mSelector > 1936879203)
    {
      if (mSelector != 1936879204)
      {
        if (mSelector == 1937138532)
        {
          goto LABEL_148;
        }

        v7 = 1937204590;
        goto LABEL_147;
      }
    }

    else
    {
      if (mSelector == 1936744803)
      {
        return 1;
      }

      if (mSelector == 1936876403)
      {
        goto LABEL_148;
      }

      if (mSelector != 1936876644)
      {
        return v4;
      }
    }

    return sub_113788(a1, a2);
  }

  else
  {
    if (mSelector <= 1935763059)
    {
      if (mSelector == 1902539642)
      {
        goto LABEL_153;
      }

      if (mSelector == 1919773028)
      {
        return 1;
      }

      v7 = 1935762281;
      goto LABEL_147;
    }

    if (mSelector == 1935763060 || mSelector == 1935959154)
    {
      goto LABEL_153;
    }

    if (mSelector != 1935962992)
    {
      return v4;
    }

    return sub_20B0E0(a1);
  }
}

std::__shared_weak_count *sub_5EE3C(uint64_t *a1, uint64_t *a2, char *a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[1];
  if (!v7 || (result = std::__shared_weak_count::lock(v7), (a1[1] = result) == 0) || (v10 = *a2, *a1 = *a2, !v10))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v14 = strrchr(a3, 47);
        if (v14)
        {
          v13 = v14 + 1;
        }

        else
        {
          v13 = a3;
        }
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315906;
      v17 = "StandardUtilities.h";
      v18 = 1024;
      v19 = 284;
      v20 = 2080;
      v21 = v13;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_5EFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5EFE0(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = a1 + 656;
  v46 = a1 + 656;
  v47 = 1;
  sub_26C0(a1 + 656);
  if (sub_5F90C(*(a1 + 224), *(a1 + 232), a2, *(a1 + 248), *(a1 + 256), a3))
  {
    v7 = 0;
  }

  else
  {
    v7 = 2003329396;
    if (*(a1 + 616) == 1)
    {
      v8 = sub_5544(23);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 96);
        *buf = 136315906;
        v54 = "VirtualStream.cpp";
        v55 = 1024;
        v56 = 1451;
        v57 = 2048;
        v58 = a1;
        v59 = 2048;
        v60 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to translate physical format to client format for virtual stream %p of aggregate device %p.", buf, 0x26u);
      }

      v11 = sub_5544(23);
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_618A4(__p);
      }

      v12 = sub_5544(23);
      v41 = v6;
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "VirtualStream.cpp";
        v55 = 1024;
        v56 = 1453;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d - Cached formats:", buf, 0x12u);
      }

      if (*(a1 + 232) != *(a1 + 224))
      {
        v14 = 1;
        do
        {
          v15 = sub_5544(23);
          if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 248);
            sub_1243E4(__p);
          }

          v17 = sub_5544(23);
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 224);
            sub_1243E4(__p);
          }
        }

        while (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - *(a1 + 224)) >> 3) > v14++);
      }

      v20 = 1936092513;
      v21 = *(a1 + 152);
      if (v21 && ((*(*v21 + 192))(v21) & 1) != 0)
      {
        v22 = 1936092532;
      }

      else
      {
        v22 = 1885762592;
      }

      sub_5EE3C(__p, (a1 + 80), "", 1463);
      v23 = (*(**__p + 128))(*__p, buf, v22);
      if (*&__p[8])
      {
        sub_1A8C0(*&__p[8]);
      }

      if (v23)
      {
        v24 = sub_5544(23);
        v25 = *v24;
        if (*v24)
        {
          if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
          {
            sub_22170(&v43, v23);
            v26 = SHIBYTE(v45);
            v27 = v43;
            sub_23148(&v42, (*(a1 + 96) + 8));
            v28 = &v43;
            if (v26 < 0)
            {
              v28 = v27;
            }

            if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v42;
            }

            else
            {
              v29 = v42.__r_.__value_.__r.__words[0];
            }

            *__p = 136315906;
            *&__p[4] = "VirtualStream.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 1466;
            v49 = 2080;
            v50 = v28;
            v51 = 2080;
            v52 = v29;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Error (%s) getting physical stream format for owning aggregate %s.", __p, 0x26u);
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v45) < 0)
            {
              operator delete(v43);
            }
          }
        }
      }

      v30 = sub_5544(23);
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        sub_618A4(&v43);
      }

      v43 = 0;
      v44 = 0;
      v45 = 0;
      sub_5EE3C(__p, (a1 + 80), "", 1471);
      v31 = *__p;
      v32 = *(a1 + 152);
      if (!v32 || ((*(*v32 + 192))(v32) & 1) == 0)
      {
        v20 = 1885762657;
      }

      v33 = (*(*v31 + 112))(v31, &v43, v20);
      if (*&__p[8])
      {
        sub_1A8C0(*&__p[8]);
      }

      v6 = v41;
      v7 = 2003329396;
      if (v33)
      {
        v34 = sub_5544(23);
        v35 = *v34;
        if (*v34)
        {
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
          {
            sub_22170(&v42, v33);
            v36 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
            *__p = 136315650;
            *&__p[4] = "VirtualStream.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 1474;
            v49 = 2080;
            v50 = v36;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' getting physical stream formats from actual stream.", __p, 0x1Cu);
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v37 = sub_5544(23);
      v38 = *v37;
      if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        sub_3B6A28(&v42, v43, v44);
        v39 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "VirtualStream.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 1476;
        v49 = 2080;
        v50 = v39;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d - Current physical formats: %s", __p, 0x1Cu);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }
    }
  }

  sub_3174(v6);
  return v7;
}

void sub_5F84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2185D4(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_5F90C(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 - a1 != a5 - a4)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualStream.cpp";
      v25 = 1024;
      v26 = 234;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): format lists differ in size", &v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "format lists differ in size");
  }

  v6 = a1;
  if (a2 == a1)
  {
    return 0;
  }

  v10 = 0;
  v11 = *a3;
  if ((0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3)) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  }

  while (!sub_5FB04(v6, a3) || *(v6 + 40) > v11 || *(v6 + 48) < v11)
  {
    ++v10;
    v6 += 56;
    if (v12 == v10)
    {
      return 0;
    }
  }

  v15 = (a4 + 56 * v10);
  v17 = *v15;
  v16 = v15[1];
  *(a6 + 32) = *(v15 + 4);
  *a6 = v17;
  *(a6 + 16) = v16;
  if (*a6 == 0.0)
  {
    v18 = *(v15 + 6);
    if (v18 > *a3)
    {
      v18 = *a3;
    }

    if (*(v15 + 5) >= *a3)
    {
      v19 = *(v15 + 5);
    }

    else
    {
      v19 = v18;
    }

    *a6 = v19;
  }

  return 1;
}

BOOL sub_5FB04(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0.0 && *a2 != 0.0 && *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a2 + 8);
    if (v4 && v3 != v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      if (v6 != v7)
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + 20);
  if (v8)
  {
    v9 = *(a2 + 20);
    if (v9)
    {
      if (v8 != v9)
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a2 + 24);
    if (v11)
    {
      if (v10 != v11)
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + 28);
  if (v12)
  {
    v13 = *(a2 + 28);
    if (v13)
    {
      if (v12 != v13)
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + 32);
  v15 = v14 == 0;
  if (v14)
  {
    v16 = *(a2 + 32);
    if (v16)
    {
      if (v14 != v16)
      {
        return 0;
      }
    }
  }

  v17 = 1;
  if (v3)
  {
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = *(a1 + 12);
      if (v20)
      {
        v21 = *(a2 + 12);
        if (v21)
        {
          if (v3 != 1819304813)
          {
            return v20 == v21;
          }

          v22 = v20 & 0x7FFFFFFF;
          if ((v20 & 0x7FFFFFFF) == 0)
          {
            v22 = *(a1 + 12);
          }

          v23 = v22 & 0xFFFFFFBF;
          if (v10)
          {
            if ((v20 & 0x20) != 0)
            {
              v24 = 1;
            }

            else
            {
              v24 = *(a1 + 28);
            }

            if (v24)
            {
              v24 = 8 * (v10 / v24);
              v15 = v24 == v14;
            }
          }

          else
          {
            v24 = 0;
          }

          if (v15)
          {
            v23 |= 8u;
          }

          if ((v14 & 7) == 0 && v24 == v14)
          {
            v23 &= 0xFFFFFFAF;
          }

          if (v23)
          {
            v23 &= 0xFFFFFFBB;
          }

          if ((v23 & 8) != 0 && v14 <= 8)
          {
            v23 &= 2u;
          }

          if (v12 == 1)
          {
            v23 &= ~0x20u;
          }

          if (!v23)
          {
            v23 = 0x80000000;
          }

          if (v19 != 1819304813)
          {
            return v23 == v21;
          }

          v28 = v21 & 0x7FFFFFFF;
          if ((v21 & 0x7FFFFFFF) == 0)
          {
            v28 = *(a2 + 12);
          }

          v29 = v28 & 0xFFFFFFBF;
          v30 = *(a2 + 24);
          if (v30)
          {
            v31 = *(a2 + 28);
            if ((v21 & 0x20) != 0)
            {
              v32 = 1;
            }

            else
            {
              v32 = *(a2 + 28);
            }

            if (v32)
            {
              v30 = 8 * (v30 / v32);
              v33 = *(a2 + 32);
              v34 = v29 | 8;
              v35 = v30 == v33;
LABEL_76:
              if (v35)
              {
                v29 = v34;
              }

              v36 = (v33 & 7) == 0 && v30 == v33;
              v37 = v29 & 0xFFFFFFEF;
              if (!v36)
              {
                v37 = v29;
              }

              if (v37)
              {
                v37 &= ~4u;
              }

              v38 = (v37 & 8) == 0 || v33 > 8;
              v39 = v37 & 2;
              if (v38)
              {
                v39 = v37;
              }

              if (v31 == 1)
              {
                v40 = v39 & 0xFFFFFFDF;
              }

              else
              {
                v40 = v39;
              }

              if (v40)
              {
                v21 = v40;
              }

              else
              {
                v21 = 0x80000000;
              }

              return v23 == v21;
            }

            v30 = 0;
            v33 = *(a2 + 32);
            v34 = v29 | 8;
          }

          else
          {
            v34 = v28 & 0xFFFFFFB7 | 8;
            v31 = *(a2 + 28);
            v33 = *(a2 + 32);
          }

          v35 = v33 == 0;
          goto LABEL_76;
        }
      }
    }
  }

  return v17;
}

double sub_5FD44(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_9;
  }

  sub_1FB4B0(&v8, a1);
  v3 = v8;
  if (v8 && sub_1FB770(v8))
  {
    v1 = (*(*v3 + 104))(v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (v9)
  {
    sub_1A8C0(v9);
  }

  if (v4)
  {
LABEL_9:
    v7 = 0.0;
    v6 = 8;
    v8 = 0x676C6F626E737274;
    LODWORD(v9) = 0;
    (*(*a1 + 40))(a1, &v8, 0, 0, &v6, &v7);
    return v7;
  }

  return v1;
}

void sub_5FE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_5FE6C(uint64_t a1, AudioObjectPropertyAddress *a2, uint64_t a3, __CFString *a4, UInt32 *a5, uint64_t *a6)
{
  sub_4EBC(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v55 = sub_5544(14);
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      v72 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v57 = sub_5544(14);
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      v72 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    *v58 = &off_6DDDD0;
    v58[2] = 561211770;
  }

  if (!a6)
  {
    v59 = sub_5544(14);
    if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
    {
      v72 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    v60 = __cxa_allocate_exception(0x10uLL);
    *v60 = &off_6DDDD0;
    v60[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1718843938)
  {
    if (mSelector <= 1684103986)
    {
      if (mSelector <= 1635020146)
      {
        if (mSelector <= 1633970531)
        {
          if (mSelector > 1633903464)
          {
            if (mSelector == 1633903465)
            {
              if ((_os_feature_enabled_impl() & 1) == 0)
              {
                v67 = sub_5544(14);
                v68 = *v67;
                if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "AggregateDevice_CommonBase.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1674;
                  _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                }

                v69 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v69, "Precondition failure.");
              }

              sub_209354(buf, a1);
              v46 = *buf;
              *buf = 0;
              *a6 = v46;
              sub_4BA7C(buf);
              goto LABEL_128;
            }

            if (mSelector == 1633904999)
            {
              goto LABEL_118;
            }

            v13 = 1633907570;
LABEL_117:
            if (mSelector == v13)
            {
LABEL_118:
              if ((_os_feature_enabled_impl() & 1) == 0)
              {
                v61 = sub_5544(14);
                v62 = *v61;
                if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "AggregateDevice_CommonBase.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1685;
                  _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                }

                v63 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v63, "Precondition failure.");
              }

LABEL_119:
              *a5 = 0;
              goto LABEL_128;
            }

LABEL_149:
            sub_615C8(*(a1 + 128), a2, a3, a4, a5, a6);
            goto LABEL_128;
          }

          if (mSelector != 1165513555)
          {
            v13 = 1633776747;
            goto LABEL_117;
          }

LABEL_127:
          sub_4DC5B8(a2, a3, a4, a5, a6, (a1 + 184));
          goto LABEL_128;
        }

        if (mSelector > 1634169455)
        {
          if (mSelector == 1634169456)
          {
            sub_13958C(a1, a2, a3, a4, a5, a6);
            goto LABEL_128;
          }

          if (mSelector != 1634692199)
          {
            v13 = 1634890859;
            goto LABEL_117;
          }

          goto LABEL_127;
        }

        if (mSelector != 1633970532)
        {
          v14 = 1633973868;
          goto LABEL_126;
        }

        goto LABEL_144;
      }

      if (mSelector <= 1650881393)
      {
        if ((mSelector - 1635152993) > 0xE || ((1 << (mSelector - 97)) & 0x4015) == 0)
        {
          if (mSelector == 1635020147)
          {
            v15 = sub_3BE888((a1 + 184));
            sub_5440C(v15, a5, a6);
            goto LABEL_128;
          }

          goto LABEL_149;
        }

        goto LABEL_127;
      }

      if (mSelector <= 1651798897)
      {
        if (mSelector == 1650881394)
        {
          sub_ABD9C(a1, 1650881394, a2->mScope, a6);
          goto LABEL_128;
        }

        v14 = 1651664739;
        goto LABEL_126;
      }

      if (mSelector == 1651798898)
      {
        v39 = (a1 + 184);
        v40 = *(a1 + 192);
        if (v40 == (a1 + 184))
        {
          goto LABEL_128;
        }

        while (1)
        {
          v41 = v40[3];
          if (v41)
          {
            v42 = std::__shared_weak_count::lock(v41);
            if (v42)
            {
              v43 = v42;
              v44 = v40[2];
              if (v44)
              {
                *buf = 1651798132;
                *&buf[4] = *&a2->mScope;
                if ((*(*&v44->_os_unfair_lock_opaque + 16))(v44, buf))
                {
                  v52 = sub_5544(17);
                  v53 = *v52;
                  if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_23148(&__p, v44 + 2);
                    v54 = v75 >= 0 ? &__p : *&__p.mSelector;
                    *buf = 136315650;
                    *&buf[4] = "AggregateDevice_CommonBase.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1464;
                    *&buf[18] = 2080;
                    *&buf[20] = v54;
                    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting property kAudioDeviceProperty[Accessory]NominalSampleRate from device %s", buf, 0x1Cu);
                    if (v75 < 0)
                    {
                      operator delete(*&__p.mSelector);
                    }
                  }

                  *buf = 1853059700;
                  *&buf[4] = *&a2->mScope;
                  (*(*&v44->_os_unfair_lock_opaque + 40))(v44, buf, a3, a4, a5, a6);
                  v38 = v43;
LABEL_211:
                  sub_1A8C0(v38);
LABEL_128:
                  if (a2->mSelector == 1853059700)
                  {
                    v20 = sub_5544(17);
                    v21 = sub_5544(37);
                    v22 = 0;
                    *buf = 0x100000002;
                    v23 = *(v20 + 8);
                    while (1)
                    {
                      v24 = *&buf[v22];
                      if (((v23 & v24) != 0) != ((*(v21 + 8) & v24) != 0))
                      {
                        break;
                      }

                      v22 += 4;
                      if (v22 == 8)
                      {
                        goto LABEL_135;
                      }
                    }

                    if ((v23 & v24) == 0)
                    {
                      v20 = v21;
                    }

LABEL_135:
                    v25 = *v20;
                    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      v26 = *a6;
                      sub_22170(&__p, a2->mScope);
                      if (v75 >= 0)
                      {
                        p_p = &__p;
                      }

                      else
                      {
                        p_p = *&__p.mSelector;
                      }

                      v28 = a2->mElement;
                      *buf = 136316162;
                      *&buf[4] = "AggregateDevice_CommonBase.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1718;
                      *&buf[18] = 2048;
                      *&buf[20] = v26;
                      v77 = 2080;
                      v78 = p_p;
                      v79 = 1024;
                      v80 = v28;
                      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get sample rate value of %f from AggregateDevice_Common2 (selector: kAudioDevicePropertyNominalSampleRate; scope: '%s'; element: %u).", buf, 0x2Cu);
                      if (v75 < 0)
                      {
                        operator delete(*&__p.mSelector);
                      }
                    }
                  }

                  return;
                }
              }

              sub_1A8C0(v43);
            }
          }

          v40 = v40[1];
          if (v40 == v39)
          {
            goto LABEL_128;
          }
        }
      }

      if (mSelector != 1668047203)
      {
        goto LABEL_149;
      }

      v17 = *(a1 + 568);
LABEL_202:
      *a6 = v17;
      goto LABEL_128;
    }

    if (mSelector <= 1685276754)
    {
      if (mSelector <= 1684498540)
      {
        if (mSelector > 1684365923)
        {
          if (mSelector == 1684365924)
          {
            goto LABEL_127;
          }

          v14 = 1684370276;
        }

        else
        {
          if (mSelector == 1684103987)
          {
            sub_2033E8(a1, a2, a3, a4, a5, a6);
            goto LABEL_128;
          }

          v14 = 1684304756;
        }
      }

      else
      {
        if (mSelector <= 1684500588)
        {
          if (mSelector == 1684498541)
          {
            sub_EDDA8(a1, a2, a3, a4, a5, a6);
            goto LABEL_128;
          }

          if (mSelector == 1684498544)
          {
            sub_208C80(a1, a2, a3, a4, a5, a6);
            goto LABEL_128;
          }

          goto LABEL_149;
        }

        if (mSelector == 1684500589)
        {
          sub_208460(a1, a2, a3, a4, a5, a6);
          goto LABEL_128;
        }

        if (mSelector == 1684500594)
        {
          sub_208958(a1, a2, a3, a4, a5, a6);
          goto LABEL_128;
        }

        v14 = 1685087596;
      }

      goto LABEL_126;
    }

    if (mSelector <= 1685483629)
    {
      if (mSelector <= 1685287522)
      {
        if (mSelector != 1685276755)
        {
          if (mSelector == 1685287011)
          {
            sub_207580(a1, 1685287011, a2->mScope, a4, a6);
            goto LABEL_128;
          }

          goto LABEL_149;
        }

        goto LABEL_127;
      }

      if (mSelector == 1685287523)
      {
        goto LABEL_127;
      }

      v14 = 1685288051;
    }

    else
    {
      if (mSelector > 1702392684)
      {
        if (mSelector == 1702392685 || mSelector == 1718383987)
        {
          goto LABEL_127;
        }

        if (mSelector != 1718839674)
        {
          goto LABEL_149;
        }

        goto LABEL_143;
      }

      if (mSelector == 1685483630)
      {
        v47 = sub_5544(17);
        v48 = *v47;
        if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1497;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d kAudioDevicePropertyVoiceProcessingIsEnabled is a write-only property", buf, 0x12u);
        }

        goto LABEL_119;
      }

      v14 = 1702248804;
    }

LABEL_126:
    if (mSelector != v14)
    {
      goto LABEL_149;
    }

    goto LABEL_127;
  }

  if (mSelector > 1935962991)
  {
    if (mSelector > 1953002092)
    {
      if (mSelector > 1983997010)
      {
        if (mSelector > 1986225267)
        {
          if (mSelector == 1986225268)
          {
            goto LABEL_127;
          }

          if (mSelector != 1986361444)
          {
            v14 = 2004053366;
            goto LABEL_126;
          }

          v17 = (*(*a1 + 376))(a1, 1818521197, 40, 0);
          goto LABEL_202;
        }

        if (mSelector != 1983997011)
        {
          v14 = 1986225266;
          goto LABEL_126;
        }
      }

      else
      {
        if (mSelector <= 1953719147)
        {
          if (mSelector == 1953002093)
          {
            goto LABEL_127;
          }

          v14 = 1953002354;
          goto LABEL_126;
        }

        if (mSelector == 1953719148)
        {
          sub_203614(a1, a2, a3, a4, a5, a6);
          goto LABEL_128;
        }

        if (mSelector == 1969844082)
        {
          sub_207190(a1, 1969844082, a2->mScope, a5, a6);
          goto LABEL_128;
        }

        if (mSelector != 1983996971)
        {
          goto LABEL_149;
        }
      }

      if (*(a1 + 308))
      {
        goto LABEL_149;
      }

      goto LABEL_127;
    }

    if (mSelector <= 1936879203)
    {
      if (mSelector > 1936876402)
      {
        if (mSelector != 1936876403)
        {
          if (mSelector == 1936876644)
          {
            sub_1144F4(a1, a2, a3, a4, a5, a6);
            goto LABEL_128;
          }

          goto LABEL_149;
        }

        goto LABEL_127;
      }

      if (mSelector == 1935962992)
      {
        sub_20815C(a1, a5, a6);
        goto LABEL_128;
      }

      if (mSelector != 1936744803)
      {
        goto LABEL_149;
      }

      *a6 = 0;
      __p.mSelector = 0;
      v71 = 4;
      LODWORD(v72) = 0;
      v70 = 4;
      if (sub_DD858() != 8024)
      {
        if (sub_173774(*(a1 + 664), *(a1 + 672), 21, &v72, &v70))
        {
          goto LABEL_128;
        }

        *a6 = v72 == 0;
        v49 = sub_173774(*(a1 + 664), *(a1 + 672), 64004, &__p, &v71);
        if (v49 | __p.mSelector)
        {
          goto LABEL_128;
        }

        v50 = sub_5544(17);
        v30 = *v50;
        if (!*v50 || !os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_128;
        }

        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1662;
        v31 = "%25s:%-5d Closed loop speaker protection not present. Defaulting to open loop protection.";
LABEL_147:
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
        goto LABEL_128;
      }

      v17 = 1;
      goto LABEL_202;
    }

    if (mSelector > 1937204589)
    {
      if (mSelector != 1937204590)
      {
        if (mSelector == 1952997988)
        {
          sub_204048(a1, &a2->mSelector, a3, a4, a5, a6);
          goto LABEL_128;
        }

        if (mSelector == 1952998002)
        {
          sub_2046A4(a1, 1952998002, a2->mScope, a3, a4, a5, a6);
          goto LABEL_128;
        }

        goto LABEL_149;
      }

      goto LABEL_127;
    }

    if (mSelector == 1936879204)
    {
      sub_113C5C(a1, a2, a3, a4, a5, a6);
      goto LABEL_128;
    }

    v14 = 1937138532;
    goto LABEL_126;
  }

  if (mSelector <= 1885434481)
  {
    if (mSelector > 1819569762)
    {
      if (mSelector > 1836348004)
      {
        switch(mSelector)
        {
          case 1836348005:
            memset(buf, 0, 24);
            sub_20A070(buf, *(a1 + 640), *(a1 + 648), (*(a1 + 648) - *(a1 + 640)) >> 4);
            v45 = *buf != *&buf[8] && *(*(**buf + 152) + 1168) != 0;
            *a6 = v45;
            *&__p.mSelector = buf;
            sub_F5714(&__p);
            goto LABEL_128;
          case 1869574756:
            sub_2069C4(a1, 1869574756, a2->mScope, a5, a6);
            goto LABEL_128;
          case 1869575794:
            sub_206EBC(a1, 1869575794, a2->mScope, a5, a6);
            goto LABEL_128;
        }

        goto LABEL_149;
      }

      if (mSelector == 1819569763)
      {
        sub_164184(a1, a2, a3, a4, a5, a6);
        goto LABEL_128;
      }

      if (mSelector != 1835888484)
      {
        goto LABEL_149;
      }

      if (a2->mScope != 1768845428)
      {
        v64 = sub_5544(14);
        v65 = *v64;
        if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1694;
          _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): invalid property scope for kVirtualAudioDevicePropertyMicMode", buf, 0x12u);
        }

        v66 = __cxa_allocate_exception(0x10uLL);
        *v66 = &off_6DDDD0;
        v66[2] = 2003332927;
      }

      v18 = *(a1 + 640);
      if (v18 == *(a1 + 648))
      {
        v19 = 0;
      }

      else
      {
        v19 = *(*(*v18 + 152) + 799);
      }

      v51 = *(a1 + 760);
      if (v51)
      {
        LODWORD(v51) = *(v51 + 9);
      }

      if (v19)
      {
        v17 = 1;
      }

      else
      {
        v17 = v51;
      }

      goto LABEL_202;
    }

    if (mSelector <= 1752657011)
    {
      if (mSelector == 1718843939)
      {
        sub_D86E0(a1, a2, a3, a4, a5, a6);
        goto LABEL_128;
      }

      if (mSelector == 1735682404)
      {
        memset(buf, 0, 24);
        sub_1215C(buf, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 3);
        v16 = *buf;
        sub_209124(*buf, *&buf[8], a5, a6);
        if (v16)
        {
          operator delete(v16);
        }

        goto LABEL_128;
      }

      goto LABEL_149;
    }

    if (mSelector == 1752657012)
    {
      __p.mSelector = 1819569763;
      *&__p.mScope = *&a2->mScope;
      PropertyData = AudioObjectGetPropertyData(*(a1 + 128), &__p, a3, a4, a5, a6);
      if (PropertyData)
      {
        v33 = sub_5544(14);
        v34 = *v33;
        if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1478;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error reading device latency from the HAL.", buf, 0x12u);
        }

        v35 = __cxa_allocate_exception(0x10uLL);
        *v35 = &off_6DDDD0;
        v35[2] = PropertyData;
      }

      goto LABEL_128;
    }

    v14 = 1818326127;
    goto LABEL_126;
  }

  if (mSelector > 1886807138)
  {
    if (mSelector <= 1902539641)
    {
      if (mSelector == 1886807139)
      {
        goto LABEL_127;
      }

      v14 = 1886807154;
      goto LABEL_126;
    }

    if (mSelector != 1902539642)
    {
      if (mSelector != 1919773028)
      {
        v14 = 1935762281;
        goto LABEL_126;
      }

LABEL_144:
      v29 = sub_5544(17);
      v30 = *v29;
      if (!*v29 || !os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_128;
      }

      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1633;
      v31 = "%25s:%-5d GetPropertyData() is not applicable to AddReporterID or RemoveReporterID";
      goto LABEL_147;
    }

LABEL_143:
    sub_B7238(a1, a2, a3, a4, a5, a6);
    goto LABEL_128;
  }

  if (mSelector <= 1886413411)
  {
    if (mSelector == 1885434482)
    {
      goto LABEL_127;
    }

    v14 = 1885631346;
    goto LABEL_126;
  }

  if (mSelector != 1886413412)
  {
    if (mSelector == 1886413426)
    {
      sub_203BA4(a1, &a2->mSelector, a3, a4, a6);
      goto LABEL_128;
    }

    goto LABEL_149;
  }

  if (a2->mScope == 1869968496)
  {
    *&__p.mSelector = 0x6F75747050504277;
    __p.mElement = 0;
    v36 = *(a1 + 192);
    strcpy(buf, "wBPPptuo");
    buf[9] = 0;
    *&buf[10] = 0;
    v37 = sub_203AD8(v36, (a1 + 184), buf);
    if ((a1 + 184) != v37)
    {
      sub_5659C(buf, v37 + 2, "", 1529);
      (*(**buf + 40))(*buf, &__p, a3, a4, a5, a6);
      v38 = *&buf[8];
      if (*&buf[8])
      {
        goto LABEL_211;
      }
    }

    goto LABEL_128;
  }
}

uint64_t sub_615C8(AudioObjectID a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, void *a6)
{
  result = AudioObjectGetPropertyData(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    p_mSelector = &a2->mSelector;
    v18 = result;
    v9 = sub_5544(17);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v21, *p_mSelector);
      v11 = v22;
      v12 = v21[0];
      sub_22170(__p, v18);
      v13 = v21;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v20 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315906;
      v24 = "AggregateDevice_CommonBase.cpp";
      v25 = 1024;
      v26 = 3638;
      v27 = 2080;
      v28 = v13;
      v29 = 2080;
      v30 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyData() for selector '%s' returned status '%s'.", buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "AggregateDevice_CommonBase.cpp";
        v25 = 1024;
        v26 = 3639;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to obtain property data.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v18;
  }

  return result;
}

void sub_617CC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_617EC(uint64_t a1, uint64_t a2)
{
  sub_5EE3C(&v6, (a1 + 80), "", 839);
  v4 = (*(*v6 + 128))(v6, a2, 1936092532);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  sub_64CA8(*(a1 + 96), a2);
  return v4;
}

void sub_6188C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_618A4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22418(a1, 0x47uLL);
}

void sub_61DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(exception_object);
}

double sub_61EEC(uint64_t a1, int a2)
{
  v7 = 4;
  v8 = 0;
  if (a2)
  {
    v3 = 1869968496;
  }

  else
  {
    v3 = 1768845428;
  }

  v6[0] = 1752657012;
  v6[1] = v3;
  v6[2] = 0;
  v4 = (*(*a1 + 40))(a1, v6, 0, 0, &v7, &v8);
  v4.n128_u32[0] = v8;
  return v4.n128_u64[0] / (*(*a1 + 104))(a1);
}

void sub_61FB8(uint64_t a1, double a2)
{
  v4 = a1 + 48;
  *&v13[1] = a1 + 48;
  v14 = 1;
  sub_47BD8(a1 + 48);
  v13[0] = a2;
  for (i = *(a1 + 24); i != *(a1 + 32); i += 24)
  {
    v12 = 8;
    v11 = 0;
    if (!(*(**(i + 8) + 40))(*(i + 8), 3100, &v12, &v11, 0, 0) && v11 == 1)
    {
      if (v12 != 8)
      {
        v7 = sub_5544(14);
        v8 = sub_468EC(1, *v7, *(v7 + 8));
        v9 = v8;
        if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "DSPChain.mm";
          v17 = 1024;
          v18 = 1863;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Data size mismatch", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Data size mismatch");
      }

      (*(**(i + 8) + 56))(*(i + 8), 3100, v13, 8, 0, 0);
    }

    if ((*(**(i + 8) + 192))(*(i + 8)))
    {
      v6 = (*(**(i + 8) + 208))(*(i + 8));
      v13[0] = v6 + v13[0];
    }
  }

  sub_47C90(v4);
}

void sub_6221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_216C10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_62260(_BYTE *a1, uint64_t a2)
{
  sub_63250(&v52);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v3 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  sub_22564(&v52, "================", 16);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v4 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  sub_22564(&v52, "Chain Name:", 11);
  v5 = (a2 + 712);
  if (*(a2 + 735) < 0)
  {
    v5 = *v5;
  }

  v6 = strlen(v5);
  sub_22564(&v52, v5, v6);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v7 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  sub_22564(&v52, "Before processing reformatting:", 31);
  v8 = *(a2 + 584);
  if (v8)
  {
    v9 = "";
  }

  else
  {
    v9 = " unneeded";
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 9;
  }

  sub_22564(&v52, v9, v10);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v11 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  if (*(a2 + 584))
  {
    sub_22564(&v52, "    from: ", 10);
    sub_618A4(&v49);
  }

  v47.__locale_ = (a2 + 48);
  v48 = 1;
  sub_26C0(a2 + 48);
  sub_22564(&v52, "DSPChain ", 9);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v12 == v13)
  {
    v14 = "is empty.";
  }

  else
  {
    v14 = "items:";
  }

  if (v12 == v13)
  {
    v15 = 9;
  }

  else
  {
    v15 = 6;
  }

  sub_22564(&v52, v14, v15);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v16 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  if (*(a2 + 32) != *(a2 + 24))
  {
    v17 = 0;
    v18 = 1;
    do
    {
      sub_22564(&v52, "    ", 4);
      v19 = std::ostream::operator<<();
      sub_22564(v19, ": DSPProcessorType ", 19);
      v20 = *(*(a2 + 24) + 24 * v17 + 8);
      v21 = (*(*v20 + 160))(v20);
      sub_22170(&v49, v21);
      if ((v51 & 0x80u) == 0)
      {
        locale = &v49;
      }

      else
      {
        locale = v49.__locale_;
      }

      v23 = strlen(locale);
      sub_22564(v19, locale, v23);
      sub_22564(v19, " InstanceID ", 12);
      v24 = *(*(a2 + 24) + 24 * v17 + 8);
      (*(*v24 + 152))(v24);
      v25 = std::ostream::operator<<();
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v60, &std::ctype<char>::id);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v60);
      std::ostream::put();
      std::ostream::flush();
      if (v51 < 0)
      {
        operator delete(v49.__locale_);
      }

      v17 = v18;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3) > v18++);
  }

  sub_3174(a2 + 48);
  sub_22564(&v52, "After processing reformatting:", 30);
  if (*(a2 + 672))
  {
    v28 = "";
  }

  else
  {
    v28 = " unneeded";
  }

  if (*(a2 + 672))
  {
    v29 = 0;
  }

  else
  {
    v29 = 9;
  }

  sub_22564(&v52, v28, v29);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v30 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  if (*(a2 + 672))
  {
    sub_22564(&v52, "    from: ", 10);
    sub_618A4(&v49);
  }

  v31 = *(a2 + 1048);
  if (v31 && *(v31 + 144) != *(v31 + 136))
  {
    sub_22564(&v52, "Software Volume Commands: ", 26);
    std::ios_base::getloc((&v52 + *(v52 - 3)));
    v32 = std::locale::use_facet(&v49, &std::ctype<char>::id);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    (*(**(a2 + 1048) + 208))(&v49);
    v33 = (v51 & 0x80u) == 0 ? &v49 : v49.__locale_;
    v34 = (v51 & 0x80u) == 0 ? v51 : v50;
    sub_22564(&v52, v33, v34);
    std::ios_base::getloc((&v52 + *(v52 - 3)));
    v35 = std::locale::use_facet(&v47, &std::ctype<char>::id);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
    if (v51 < 0)
    {
      operator delete(v49.__locale_);
    }
  }

  if (*(a2 + 1064))
  {
    sub_22564(&v52, "Thermal Volume Commands: ", 25);
    std::ios_base::getloc((&v52 + *(v52 - 3)));
    v36 = std::locale::use_facet(&v49, &std::ctype<char>::id);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v49);
    std::ostream::put();
    std::ostream::flush();
    (*(**(a2 + 1064) + 208))(&v49);
    v37 = (v51 & 0x80u) == 0 ? &v49 : v49.__locale_;
    v38 = (v51 & 0x80u) == 0 ? v51 : v50;
    sub_22564(&v52, v37, v38);
    std::ios_base::getloc((&v52 + *(v52 - 3)));
    v39 = std::locale::use_facet(&v47, &std::ctype<char>::id);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
    if (v51 < 0)
    {
      operator delete(v49.__locale_);
    }
  }

  sub_22564(&v52, "================", 16);
  std::ios_base::getloc((&v52 + *(v52 - 3)));
  v40 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v40->__vftable[2].~facet_0)(v40, 10);
  std::locale::~locale(&v49);
  std::ostream::put();
  std::ostream::flush();
  if ((v59 & 0x10) != 0)
  {
    v43 = v58;
    if (v58 < v55)
    {
      v58 = v55;
      v43 = v55;
    }

    v44 = v54[4].__locale_;
  }

  else
  {
    if ((v59 & 8) == 0)
    {
      v41 = 0;
      v42 = a1;
      a1[23] = 0;
      goto LABEL_65;
    }

    v44 = v54[1].__locale_;
    v43 = v54[3].__locale_;
  }

  v42 = a1;
  v41 = v43 - v44;
  if ((v43 - v44) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v41 >= 0x17)
  {
    operator new();
  }

  a1[23] = v41;
  if (v41)
  {
    memmove(a1, v44, v41);
  }

LABEL_65:
  v42[v41] = 0;
  if (v57 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v54);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_63144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_241A64(&a19);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_63250(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_22BD8((a1 + 1), 16);
  return a1;
}

void sub_63394(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *sub_633BC(caulk::concurrent::message *a1)
{
  sub_6341C(a1 + 24);
  caulk::concurrent::message::~message(a1);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1, 0x140uLL, 8uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_6341C(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 3)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v33 = *(a1 + 8);
        v10 = *v33;
        if (!*v33 || !os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v34 = *(a1 + 16);
        v35 = *(a1 + 24);
        v36 = *(a1 + 32);
        v37 = 136316418;
        v38 = "VirtualAudioQueue.h";
        v39 = 1024;
        v40 = 168;
        v41 = 2080;
        v42 = v34;
        v43 = 1024;
        v44 = v35;
        v45 = 2080;
        v46 = v36;
        v47 = 2080;
        v48 = a1 + 40;
        v8 = "%25s:%-5d %s:%d:%s: %s";
      }

      else
      {
        if (v2 != 3)
        {
          goto LABEL_16;
        }

        v9 = *(a1 + 8);
        v10 = *v9;
        if (!*v9 || !os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v37 = 136316418;
        v38 = "VirtualAudioQueue.h";
        v39 = 1024;
        v40 = 171;
        v41 = 2080;
        v42 = v11;
        v43 = 1024;
        v44 = v12;
        v45 = 2080;
        v46 = v13;
        v47 = 2080;
        v48 = a1 + 40;
        v8 = "%25s:%-5d %s:%d:%s: %s";
      }

      v16 = v10;
      v17 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }

    v19 = *(a1 + 8);
    v20 = *v19;
    if (!*v19 || !os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
    v37 = 136316418;
    v38 = "VirtualAudioQueue.h";
    v39 = 1024;
    v40 = 165;
    v41 = 2080;
    v42 = v21;
    v43 = 1024;
    v44 = v22;
    v45 = 2080;
    v46 = v23;
    v47 = 2080;
    v48 = a1 + 40;
    v8 = "%25s:%-5d %s:%d:%s: %s";
    v16 = v20;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_34;
  }

  if (v2 <= 5)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        v3 = *(a1 + 8);
        v4 = *v3;
        if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          v5 = *(a1 + 16);
          v6 = *(a1 + 24);
          v7 = *(a1 + 32);
          v37 = 136316418;
          v38 = "VirtualAudioQueue.h";
          v39 = 1024;
          v40 = 176;
          v41 = 2080;
          v42 = v5;
          v43 = 1024;
          v44 = v6;
          v45 = 2080;
          v46 = v7;
          v47 = 2080;
          v48 = a1 + 40;
          v8 = "%25s:%-5d %s:%d:%s: %s";
LABEL_29:
          v16 = v4;
          v17 = OS_LOG_TYPE_DEBUG;
          goto LABEL_34;
        }

        return;
      }

LABEL_16:
      v14 = *(a1 + 8);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v37 = 136315650;
        v38 = "VirtualAudioQueue.h";
        v39 = 1024;
        v40 = 183;
        v41 = 1024;
        LODWORD(v42) = v2;
        v8 = "%25s:%-5d va::VirtualAudioQueue::SendLogMsg unknown priority = %d";
        v16 = v15;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 24;
LABEL_35:
        _os_log_impl(&dword_0, v16, v17, v8, &v37, v18);
        return;
      }

      return;
    }

    v24 = *(a1 + 8);
    v25 = *v24;
    if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v26 = *(a1 + 16);
    v27 = *(a1 + 24);
    v28 = *(a1 + 32);
    v37 = 136316418;
    v38 = "VirtualAudioQueue.h";
    v39 = 1024;
    v40 = 173;
    v41 = 2080;
    v42 = v26;
    v43 = 1024;
    v44 = v27;
    v45 = 2080;
    v46 = v28;
    v47 = 2080;
    v48 = a1 + 40;
    v8 = "%25s:%-5d %s:%d:%s: %s";
    v16 = v25;
    v17 = OS_LOG_TYPE_INFO;
LABEL_34:
    v18 = 54;
    goto LABEL_35;
  }

  if (v2 != 6)
  {
    if (v2 == 7)
    {
      return;
    }

    goto LABEL_16;
  }

  v29 = *(a1 + 8);
  if (*(v29 + 8))
  {
    v4 = *v29;
    if (*v29)
    {
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 16);
        v31 = *(a1 + 24);
        v32 = *(a1 + 32);
        v37 = 136316418;
        v38 = "VirtualAudioQueue.h";
        v39 = 1024;
        v40 = 179;
        v41 = 2080;
        v42 = v30;
        v43 = 1024;
        v44 = v31;
        v45 = 2080;
        v46 = v32;
        v47 = 2080;
        v48 = a1 + 40;
        v8 = "%25s:%-5d %s:%d:%s: %s";
        goto LABEL_29;
      }
    }
  }
}

void sub_63938(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_63954(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, double a5)
{
  v8 = a1;
  v110 = a1 + 48;
  sub_47BD8(a1 + 48);
  v9 = *(v8 + 32) - *(v8 + 24);
  v113 = v8;
  if (!v9)
  {
    v58 = 0x100000000;
    goto LABEL_77;
  }

  v109 = a2;
  v10 = 0;
  v111 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  v114 = 1;
  do
  {
    v11 = 0;
    v112 = v10;
    v12 = *(v8 + 24) + 24 * v10;
    v128 = 0x200000001;
    while (1)
    {
      v13 = *(&v128 + v11);
      LODWORD(v122[0]) = 0;
      (*(**(v12 + 8) + 232))(*(v12 + 8), v13, v122);
      v14 = v122[0];
      if (LODWORD(v122[0]))
      {
        v15 = *a3;
        v16 = a3[1] - *a3;
        if (v16)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0xCCCCCCCCCCCCCCCDLL * (v16 >> 3);
          while (1)
          {
            v20 = v18;
            if (v13 != 2)
            {
              goto LABEL_12;
            }

            v21 = sub_8DA94(v8);
            v15 = *a3;
            v22 = (a3[1] - *a3) >> 3;
            if ((v21 & 1) == 0)
            {
              break;
            }

            if (0xCCCCCCCCCCCCCCCDLL * v22 <= v18)
            {
              sub_269EF8();
            }

            *buf = *(v15 + v17);
            *&buf[16] = *(v15 + v17 + 16);
            *&buf[32] = *(v15 + v17 + 32);
            v23 = sub_EAE3C(v8);
            sub_EB5C4(buf, v23, (buf[12] & 0x20) == 0);
            v24 = (*(**(v12 + 8) + 136))(*(v12 + 8), 2, v18);
            v25 = buf;
LABEL_14:
            v26 = sub_5FB04(v25, v24);
            ++v18;
            v14 = v122[0];
            if (v20 + 1 >= LODWORD(v122[0]))
            {
              goto LABEL_18;
            }

            v15 = *a3;
            v19 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3);
            v17 += 40;
            if (v19 <= v18 || !v26)
            {
              v18 = v20 + 1;
              goto LABEL_18;
            }
          }

          v19 = 0xCCCCCCCCCCCCCCCDLL * v22;
LABEL_12:
          if (v19 <= v18)
          {
            sub_269EF8();
          }

          v24 = (*(**(v12 + 8) + 136))(*(v12 + 8), v13, v18);
          v25 = v15 + v17;
          goto LABEL_14;
        }

        v18 = 0;
        v26 = 1;
LABEL_18:
        if (v18 < v14 && v26)
        {
          do
          {
            v28 = *(a3[1] - 5);
            v29 = *(*(**(v12 + 8) + 136))(*(v12 + 8), v13, v18);
            LOBYTE(v26) = v28 == v29;
            v18 = (v18 + 1);
          }

          while (v18 < LODWORD(v122[0]) && v28 == v29);
        }

        v114 &= v26;
        if (!v26)
        {
          break;
        }
      }

      v11 += 4;
      if (v11 == 8)
      {
        LODWORD(v30) = 0;
        goto LABEL_68;
      }
    }

    (*(**(v12 + 8) + 24))(*(v12 + 8));
    for (i = 0; i != 8; i += 4)
    {
      v32 = *(&v128 + i);
      LODWORD(v121[0]) = 0;
      (*(**(v12 + 8) + 232))(*(v12 + 8), v32, v121);
      v33 = LODWORD(v121[0]);
      if (!LODWORD(v121[0]))
      {
        continue;
      }

      v34 = a3[1];
      if (v34 == *a3)
      {
        LODWORD(v30) = 0;
        v36 = 0;
        v43 = a3[1];
      }

      else
      {
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = v36;
          v38 = *sub_5544(25);
          v39 = v38;
          if (v38)
          {
            v40 = v38;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v41 = *a3;
              sub_618A4(v122);
            }
          }

          v42 = (*(**(v12 + 8) + 128))(*(v12 + 8), v32, v37, *a3 + v35);
          LODWORD(v30) = v42;
          v36 = v37 + 1;
          v33 = LODWORD(v121[0]);
          v34 = *a3;
          v43 = a3[1];
          if (v37 + 1 >= LODWORD(v121[0]))
          {
            break;
          }

          v35 += 40;
          if (0xCCCCCCCCCCCCCCCDLL * ((v43 - v34) >> 3) <= v36 || v42 != 0)
          {
            v36 = v37 + 1;
            break;
          }
        }

        if (v37 + 1 >= LODWORD(v121[0]))
        {
          goto LABEL_64;
        }
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v43 - v34) >> 3) < v33 && v30 == 0)
      {
        v46 = *(v43 - 5);
        v47 = *sub_5544(25);
        v48 = v47;
        if (v47)
        {
          v49 = v47;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = (*(**(v12 + 8) + 160))(*(v12 + 8));
            sub_22170(v122, v50);
            v51 = v122;
            if (SHIBYTE(v123) < 0)
            {
              v51 = v122[0];
            }

            *buf = 136315906;
            *&buf[4] = "DSPChain.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1757;
            *&buf[18] = 2080;
            *&buf[20] = v51;
            *&buf[28] = 2048;
            *&buf[30] = v46;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Format was not specified for some busses on DSP processor of type '%s'.  Assuming these are auxiliary buses. Overwriting sample rate of unspecified busses' formats to %f, and marking as interleaved.", buf, 0x26u);
            if (SHIBYTE(v123) < 0)
            {
              operator delete(v122[0]);
            }
          }
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) >= 2)
        {
          v52 = *sub_5544(25);
          v53 = v52;
          if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "DSPChain.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1758;
            _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d More than one bus format was specified.  Using sample rate of the last specified format", buf, 0x12u);
          }
        }

        if (v36 >= LODWORD(v121[0]))
        {
          continue;
        }

        do
        {
          v54 = (*(**(v12 + 8) + 136))(*(v12 + 8), v32, v36);
          v55 = *(v54 + 32);
          v56 = *(v54 + 16);
          *buf = *v54;
          *&buf[16] = v56;
          *&buf[32] = v55;
          *buf = v46;
          sub_EB5C4(buf, SHIDWORD(v56), 1);
          v57 = (*(**(v12 + 8) + 128))(*(v12 + 8), v32, v36, buf);
          LODWORD(v30) = v57;
          v36 = (v36 + 1);
        }

        while (v36 < LODWORD(v121[0]) && !v57);
      }

LABEL_64:
      if (v30)
      {
        goto LABEL_67;
      }
    }

    LODWORD(v30) = 0;
LABEL_67:
    (*(**(v12 + 8) + 16))(*(v12 + 8));
LABEL_68:
    if (v30)
    {
      break;
    }

    v10 = v112 + 1;
  }

  while (v112 + 1 < v111);
  if (v114)
  {
    v58 = 0x100000000;
  }

  else
  {
    v58 = 0;
  }

  if (v30)
  {
    v30 = v30;
    a2 = v109;
    goto LABEL_79;
  }

  a2 = v109;
LABEL_77:
  v59 = *a3;
  v30 = 0;
  if (a3[1] != *a3)
  {
    v60 = *v59;
    v61 = v59[1];
    *(v8 + 488) = *(v59 + 4);
    *(v8 + 456) = v60;
    *(v8 + 472) = v61;
  }

LABEL_79:
  sub_47C90(v110);
  v62 = v58 | v30;
  std::recursive_mutex::lock((v8 + 888));
  if (!(v58 | v30))
  {
    if (v62)
    {
      if (sub_5FB04(a2, v8 + 504))
      {
        v65 = sub_649C8(v8);
        if (sub_5FB04(v8 + 544, v65))
        {
          v66 = sub_65088(v8);
          if (sub_5FB04(v66, v8 + 592) && sub_5FB04(v8 + 632, a4))
          {
            if (*(v8 + 448) != 1 || (v67 = *(v8 + 952)) != 0 && *v67 && (v68 = *v67, v68 == sub_8E078(v8)) && *(v8 + 984) != *(v8 + 992))
            {
              v69 = *(v8 + 952);
              if (v69)
              {
                v70 = *v69;
                if (v70)
                {
                  v71 = 0;
                  v72 = (v69 + 4);
                  do
                  {
                    if (*v72)
                    {
                      bzero(*v72, *(v72 - 1));
                      v70 = *v69;
                    }

                    ++v71;
                    v72 += 2;
                  }

                  while (v71 < v70);
                }
              }

              v73 = *(v8 + 968);
              if (v73)
              {
                v74 = *v73;
                if (v74)
                {
                  v75 = 0;
                  v76 = (v73 + 4);
                  do
                  {
                    if (*v76)
                    {
                      bzero(*v76, *(v76 - 1));
                      v74 = *v73;
                    }

                    ++v75;
                    v76 += 2;
                  }

                  while (v75 < v74);
                }
              }

              sub_61FB8(v8, a5);
              if (*(v8 + 800) == 1 && sub_2C1F48(v8))
              {
                sub_1324BC(v8);
              }

              goto LABEL_159;
            }
          }
        }
      }
    }

    v77 = sub_649C8(v8);
    v62 = sub_13242C(v8 + 504, a2, v77);
    if (v62)
    {
      v78 = *sub_5544(14);
      v64 = v78;
      if (!v78 || !os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1478;
      goto LABEL_116;
    }

    v79 = sub_65088(v8);
    v62 = sub_13242C(v8 + 592, v79, a4);
    if (v62)
    {
      v80 = *sub_5544(14);
      v64 = v80;
      if (!v80 || !os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1482;
LABEL_116:
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
      goto LABEL_117;
    }

    if (*(v8 + 800) == 1)
    {
      sub_2C1F48(v8);
    }

    v82 = *(v8 + 1168);
    if (v82)
    {
      v83 = sub_65088(v8);
      memset(buf, 0, sizeof(buf));
      sub_235534(v82, v83, buf);
    }

    sub_1324BC(v8);
    v128 = v110;
    v129 = 1;
    sub_26C0(v110);
    std::recursive_mutex::lock((v8 + 888));
    v84 = (v8 + 984);
    sub_132938(v8 + 984, *(v8 + 984));
    v85 = *(v8 + 24);
    if (v85 == *(v8 + 32))
    {
      std::recursive_mutex::unlock((v8 + 888));
      v107 = v110;
    }

    else
    {
      v86 = 0;
      do
      {
        if (!v86)
        {
          v86 = *(v8 + 952);
        }

        v87 = (*(**(v85 + 8) + 136))(*(v85 + 8), 1, 0);
        if ((*(v87 + 12) & 0x20) != 0)
        {
          v88 = *(v87 + 28);
        }

        else
        {
          v88 = 1;
        }

        sub_8FF68(v121, v86, v88);
        if ((*(**(v85 + 8) + 224))(*(v85 + 8)))
        {
          v86 = *(v8 + 968);
        }

        v89 = (*(**(v85 + 8) + 136))(*(v85 + 8), 2, 0);
        if ((*(v89 + 12) & 0x20) != 0)
        {
          v90 = *(v89 + 28);
        }

        else
        {
          v90 = 1;
        }

        sub_8FF68(v120, v86, v90);
        __p = 0;
        v117 = 0;
        sub_5D7F4(&__p, v121);
        v118 = 0;
        v119 = 0;
        sub_5D7F4(&v118, v120);
        v91 = *(v8 + 992);
        v92 = *(v8 + 1000);
        if (v91 >= v92)
        {
          v94 = (v91 - *v84) >> 5;
          if ((v94 + 1) >> 59)
          {
            sub_189A00();
          }

          v95 = v92 - *v84;
          v96 = v95 >> 4;
          if (v95 >> 4 <= (v94 + 1))
          {
            v96 = v94 + 1;
          }

          if (v95 >= 0x7FFFFFFFFFFFFFE0)
          {
            v97 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v96;
          }

          *&buf[32] = v84;
          if (v97)
          {
            if (!(v97 >> 59))
            {
              operator new();
            }

            sub_6ACD8();
          }

          *buf = 0;
          *&buf[8] = 32 * v94;
          *&buf[16] = (32 * v94);
          sub_13300C(32 * v94, &__p);
          *&buf[16] += 32;
          v98 = *(v8 + 992);
          v99 = *(v8 + 984);
          v122[0] = v84;
          v122[1] = &v125;
          v123 = &v126;
          v124 = 0;
          v100 = v99;
          v101 = (*&buf[8] + v99 - v98);
          v126 = v101;
          v125 = v101;
          v102 = v101;
          if (v99 == v98)
          {
            v124 = 1;
          }

          else
          {
            do
            {
              *v102 = 0;
              *(v102 + 2) = 0;
              sub_5D7F4(v102, v100);
              v103 = v100 + 16;
              *(v102 + 2) = 0;
              *(v102 + 6) = 0;
              sub_5D7F4(v102 + 2, v103);
              v102 = v126 + 32;
              v126 += 32;
              v100 = v103 + 16;
            }

            while (v100 != v98);
            v124 = 1;
            do
            {
              sub_5D988(v99 + 2);
              sub_5D988(v99);
              v99 += 4;
            }

            while (v99 != v98);
          }

          sub_148834(v122);
          v8 = v113;
          v104 = *(v113 + 984);
          *(v113 + 984) = v101;
          v105 = *(v113 + 1000);
          v115 = *&buf[16];
          *(v113 + 992) = *&buf[16];
          *&buf[16] = v104;
          *&buf[24] = v105;
          *buf = v104;
          *&buf[8] = v104;
          sub_1496D0(buf);
          v93 = v115;
        }

        else
        {
          sub_13300C(*(v8 + 992), &__p);
          v93 = v91 + 32;
          *(v8 + 992) = v91 + 32;
        }

        *(v8 + 992) = v93;
        sub_5D988(&v118);
        sub_5D988(&__p);
        sub_5D988(v120);
        sub_5D988(v121);
        v85 += 24;
      }

      while (v85 != *(v8 + 32));
      v106 = v129;
      std::recursive_mutex::unlock((v8 + 888));
      if ((v106 & 1) == 0)
      {
        goto LABEL_158;
      }

      v107 = v128;
    }

    sub_3174(v107);
LABEL_158:
    sub_61FB8(v8, a5);
LABEL_159:
    v62 = 0;
    goto LABEL_118;
  }

  v63 = *sub_5544(14);
  v64 = v63;
  if (v63 && os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DSPChain.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1445;
    goto LABEL_116;
  }

LABEL_117:

LABEL_118:
  std::recursive_mutex::unlock((v8 + 888));
  return v62;
}

uint64_t sub_649C8(uint64_t a1)
{
  v2 = a1 + 48;
  sub_26C0(a1 + 48);
  v3 = *(a1 + 24);
  if (*(a1 + 32) == v3)
  {
    v4 = a1 + 456;
  }

  else
  {
    v4 = (*(**(v3 + 8) + 136))(*(v3 + 8), 1, 0);
  }

  sub_3174(v2);
  return v4;
}

uint64_t sub_64A74(uint64_t a1, void *outData, AudioObjectPropertySelector a3)
{
  if (a3 != 1885762592 && a3 != 1936092532)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "Stream_HAL_Common.cpp";
        v21 = 1024;
        v22 = 359;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v5 = *(a1 + 80);
  *&inAddress.mScope = 1735159650;
  ioDataSize = 40;
  inAddress.mSelector = a3;
  PropertyData = AudioObjectGetPropertyData(v5, &inAddress, 0, 0, &ioDataSize, outData);
  if (PropertyData)
  {
    v7 = sub_5544(23);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, PropertyData);
        v9 = v16 >= 0 ? __p : __p[0];
        v10 = *(a1 + 80);
        *buf = 136316162;
        v20 = "Stream_HAL_Common.cpp";
        v21 = 1024;
        v22 = 364;
        v23 = 1024;
        v24 = PropertyData;
        v25 = 2080;
        v26 = v9;
        v27 = 1024;
        v28 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') getting the current stream format for stream %u", buf, 0x28u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return PropertyData;
}

void sub_64CA8(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 144))(a1) & 1) == 0)
  {
    v4 = *(a2 + 8);
    if (v4 > 1836343850)
    {
      v5 = v4 == 1836343851;
      v6 = 1836344107;
    }

    else
    {
      v5 = v4 == 1667443507;
      v6 = 1667509043;
    }

    if (!v5 && v4 != v6)
    {
      v8 = (*(*a1 + 104))(a1);
      if (v8 != *a2)
      {
        v9 = sub_5544(23);
        v10 = sub_5544(37);
        v11 = 0;
        *v16 = 0x100000002;
        v12 = *(v9 + 8);
        while (1)
        {
          v13 = *&v16[v11];
          if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
          {
            break;
          }

          v11 += 4;
          if (v11 == 8)
          {
            goto LABEL_16;
          }
        }

        if ((v12 & v13) == 0)
        {
          v9 = v10;
        }

LABEL_16:
        v14 = *v9;
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = *a2;
            *v16 = 136315906;
            *&v16[4] = "VirtualStream.cpp";
            v17 = 1024;
            v18 = 80;
            v19 = 2048;
            v20 = v8;
            v21 = 2048;
            v22 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Reporting virtual format sample rate as %f (rate from physical device is %f)", v16, 0x26u);
          }
        }
      }

      *a2 = v8;
    }
  }
}

uint64_t sub_64E94(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5 = *(a1 + 936);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (a2)
      {
        a2 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_12;
      }

      if (a2)
      {
        goto LABEL_9;
      }
    }

    sub_132994(a1, a3, a4, a5);
  }

  if (!v5)
  {
LABEL_19:

    sub_65A70(a1, a2, a3, a4, a5);
  }

  if (v5 == 1)
  {
    if (!a2)
    {
      a2 = 0;
      goto LABEL_19;
    }

LABEL_9:

    sub_8CEC0(a1, a3, a4, a5);
  }

LABEL_12:
  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "AggregateDevice_Simple.cpp";
    v11 = 1024;
    v12 = 768;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unsupported speaker input", &v9, 0x12u);
  }

  return 0;
}

uint64_t sub_65088(uint64_t a1)
{
  v2 = a1 + 48;
  sub_26C0(a1 + 48);
  v3 = *(a1 + 32);
  if (v3 == *(a1 + 24))
  {
    v4 = a1 + 456;
  }

  else
  {
    v4 = (*(**(v3 - 16) + 136))(*(v3 - 16), 2, 0);
  }

  sub_3174(v2);
  return v4;
}

uint64_t sub_65134(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    sub_651F4(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_65184(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      sub_651F4(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

void sub_651F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void *sub_65234(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_652A0();
  }

  return result;
}

void sub_65310(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *sub_65388(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_6541C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB0E0(v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_65448(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  sub_6578C(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  sub_6578C(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !v4[1])
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          sub_189A00();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          sub_1D5F64(v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v4[1];
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          sub_189A00();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_1D5F64(v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 2;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_65714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void *sub_6578C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1D5F64(a2);
    }

    sub_189A00();
  }

  return result;
}

void sub_65830(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_651F4(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t sub_658AC(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, (16 * a2) | 8u, 0x10800404ACF7207uLL);
    if (v4)
    {
      *v4 = a2;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 2 * (v4 != 0);
  return a1;
}

uint64_t sub_6591C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_5DB28(a1, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_5DB28(a1 + 24, *a3, a3[1], 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 4));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_5D7F4((a1 + 48), a4);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_5D7F4((a1 + 64), a5);
  return a1;
}

void sub_659E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5D988(v2);
  sub_5DD9C(va);
  sub_5DD9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65A20(unsigned int *a1, unint64_t a2)
{
  if (a1 | a2)
  {
    v4 = 0;
    if (a1 && a2)
    {
      v7 = v2;
      v8 = v3;
      v6 = 0;
      sub_5DCB8(a1, a2, &v6);
      v4 = v6;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void sub_65A70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = a2;
  sub_61EEC(a1, a2);
  if (v6)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = *(a5 + 4);
    sub_638B0();
  }

  v10 = *a5;
  v11 = a5[1];
  v12 = *(a5 + 4);
  sub_638B0();
}

void sub_65BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_65C0C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  do
  {
    v6 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v6;
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[5];
    *(a3 + 64) = v4[4];
    *(a3 + 80) = v9;
    *(a3 + 32) = v7;
    *(a3 + 48) = v8;
    v10 = v4[6];
    v11 = v4[7];
    v12 = v4[9];
    *(a3 + 128) = v4[8];
    *(a3 + 144) = v12;
    *(a3 + 96) = v10;
    *(a3 + 112) = v11;
    sub_5D7F4((a3 + 160), (v4 + 10));
    sub_5D7F4((a3 + 176), (v4 + 11));
    *(a3 + 192) = v4[12];
    a3 += 208;
    v4 += 13;
  }

  while (v4 != v5);
  return v5;
}

void sub_65CAC(uint64_t *a1, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      sub_5DD40(a1, *a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x13B13B13B13B13BLL)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x9D89D89D89D89DLL)
      {
        v11 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v11 = v10;
      }

      sub_5DAD4(a1, v11);
    }

    sub_189A00();
  }

  v12 = a1[1] - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v12 >> 4) >= a4)
  {
    sub_65C0C(a2, a3, v8);

    sub_5DD40(a1, v14);
  }

  else
  {
    v13 = sub_65C0C(a2, (a2 + v12), v8);
    a1[1] = sub_5DBB0(a1, v13, a3, a1[1]);
  }
}

void sub_65E38(void *a1)
{
  v5 = a1[108] != a1[107] && ((v2 = sub_4CF4((a1 + 107), 0, 0), v3 = *(v2 + 192), (*(v3 + 448) & 1) != 0) || *(v3 + 584) || *(v3 + 672) || (v4 = *(v3 + 1160)) != 0 && (*(v4 + 104) & 1) != 0 || *(v3 + 1168)) && *(v2 + 8) == 1819304813;
  if (a1[111] != a1[110])
  {
    if (v6 = sub_4CF4((a1 + 107), 1, 0), v7 = *(v6 + 192), (*(v7 + 448)) || *(v7 + 584) || *(v7 + 672) || (v8 = *(v7 + 1160)) != 0 && (*(v8 + 104) & 1) != 0 || *(v7 + 1168))
    {
      v9 = *(v6 + 8) == 1819304813;
      if (!v5)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v9 = 0;
  if (v5)
  {
LABEL_18:
    v10 = sub_4CF4((a1 + 107), 0, 0);
    sub_8EE40(*(v10 + 192));
  }

LABEL_19:
  if (v9)
  {
    v11 = *(sub_4CF4((a1 + 107), 1, 0) + 192);

    sub_8EE40(v11);
  }
}

void sub_65F90(caulk::concurrent::message *this)
{
  *this = off_6D0708;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_66024(caulk::build::detail *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  kind = caulk::build::detail::get_kind(a1);
  if ((kind & 1) != 0 || (caulk::build::detail::get_kind(kind) & 2) != 0)
  {
    sub_66930(buf, a1, a2);
    v7 = *buf;
    *a3 = *buf;
    if (*(a1 + 108) != *(a1 + 107))
    {
      v8 = *(a1 + 80);
      if (*(a1 + 81) == v8)
      {
        v44 = sub_5544(14);
        v45 = *v44;
        if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1508;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Expected at least one input stream.  Found 0.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Expected at least one input stream.  Found 0.");
      }

      sub_65234(v51, *v8 + 120);
      if (v52)
      {
        v9 = *a2;
        if ((*a2 & 2) != 0)
        {
          v10 = sub_5544(17);
          v11 = sub_5544(41);
          v12 = 0;
          *buf = 0x100000002;
          v13 = *(v10 + 8);
          while (1)
          {
            v14 = *&buf[v12];
            if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
            {
              break;
            }

            v12 += 4;
            if (v12 == 8)
            {
              if ((v13 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_15;
            }
          }

          if ((v13 & v14) == 0)
          {
            v10 = v11;
          }

          if (*(v10 + 8))
          {
LABEL_15:
            v15 = *v10;
            if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1517;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitor for primary input streams", buf, 0x12u);
            }
          }

LABEL_18:
          v16 = sub_4CF4(a1 + 856, 0, 0);
          v17 = *(v16 + 56);
          *buf = *(v16 + 40);
          *&buf[16] = v17;
          v54 = *(v16 + 72);
          v50 = xmmword_5171F0;
          if (v7)
          {
            (*(*v7 + 16))(v7, &v50, buf, v51);
          }

          v9 = *a2;
        }

        if ((v9 & 4) != 0)
        {
          v18 = sub_5544(17);
          v19 = sub_5544(41);
          v20 = 0;
          *buf = 0x100000002;
          v21 = *(v18 + 8);
          while (1)
          {
            v22 = *&buf[v20];
            if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
            {
              break;
            }

            v20 += 4;
            if (v20 == 8)
            {
              if ((v21 & 1) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_30;
            }
          }

          if ((v21 & v22) == 0)
          {
            v18 = v19;
          }

          if (*(v18 + 8))
          {
LABEL_30:
            v23 = *v18;
            if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1524;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitor for secondary input streams", buf, 0x12u);
            }
          }

LABEL_33:
          v24 = sub_4CF4(a1 + 856, 0, 0);
          v25 = *(v24 + 16);
          *buf = *v24;
          *&buf[16] = v25;
          v54 = *(v24 + 32);
          v50 = xmmword_517320;
          if (v7)
          {
            (*(*v7 + 16))(v7, &v50, buf, v51);
          }
        }
      }

      sub_65310(v51);
    }

    if (*(a1 + 111) != *(a1 + 110))
    {
      v26 = *(a1 + 83);
      if (*(a1 + 84) == v26)
      {
        v47 = sub_5544(14);
        v48 = *v47;
        if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1535;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Expected at least one output stream.  Found 0.", buf, 0x12u);
        }

        v49 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v49, "Expected at least one output stream.  Found 0.");
      }

      sub_65234(v51, *v26 + 120);
      if (v52)
      {
        v27 = *a2;
        if ((*a2 & 4) != 0)
        {
          v28 = sub_5544(17);
          v29 = sub_5544(41);
          v30 = 0;
          *buf = 0x100000002;
          v31 = *(v28 + 8);
          while (1)
          {
            v32 = *&buf[v30];
            if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
            {
              break;
            }

            v30 += 4;
            if (v30 == 8)
            {
              if ((v31 & 1) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_48;
            }
          }

          if ((v31 & v32) == 0)
          {
            v28 = v29;
          }

          if (*(v28 + 8))
          {
LABEL_48:
            v33 = *v28;
            if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1544;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitor for secondary ouput streams", buf, 0x12u);
            }
          }

LABEL_51:
          v34 = sub_4CF4(a1 + 856, 1, 0);
          v35 = *(v34 + 16);
          *buf = *v34;
          *&buf[16] = v35;
          v54 = *(v34 + 32);
          v50 = xmmword_517330;
          if (v7)
          {
            (*(*v7 + 16))(v7, &v50, buf, v51);
          }

          v27 = *a2;
        }

        if ((v27 & 2) != 0)
        {
          v36 = sub_5544(17);
          v37 = sub_5544(41);
          v38 = 0;
          *buf = 0x100000002;
          v39 = *(v36 + 8);
          while (1)
          {
            v40 = *&buf[v38];
            if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
            {
              break;
            }

            v38 += 4;
            if (v38 == 8)
            {
              if ((v39 & 1) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_63;
            }
          }

          if ((v39 & v40) == 0)
          {
            v36 = v37;
          }

          if (*(v36 + 8))
          {
LABEL_63:
            v41 = *v36;
            if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1551;
              _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitor for primary ouput streams", buf, 0x12u);
            }
          }

LABEL_66:
          v42 = sub_4CF4(a1 + 856, 1, 0);
          v43 = *(v42 + 56);
          *buf = *(v42 + 40);
          *&buf[16] = v43;
          v54 = *(v42 + 72);
          v50 = xmmword_517340;
          if (v7)
          {
            (*(*v7 + 16))(v7, &v50, buf, v51);
          }
        }
      }

      sub_65310(v51);
    }
  }
}

void sub_66794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_65310(va);
  *v4 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

void sub_66844(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_66024(a1, a2, a3);
  if ((*(a1 + 936) & 0xFFFFFFFE) == 2)
  {
    v6 = *a3;
    if (*a3)
    {
      if (*(a1 + 976))
      {
        if ((*a2 & 2) != 0)
        {
          v7 = *(*(a1 + 984) + 4);
          v8 = 0x100000000;
          v9 = 0;
          v10 = v7;
          (*(*v6 + 16))(v6, &v8, *(a1 + 1008) + 40, a1 + 960);
        }
      }
    }
  }
}

void sub_668F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_66930(caulk::build::detail *a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  result = caulk::build::detail::get_kind(a1);
  if ((result & 1) != 0 || (result = caulk::build::detail::get_kind(result), (result & 2) != 0))
  {
    if ((*a3 >> 1))
    {
      sub_22170(&v10, *(a2 + 276));
      std::to_string(&v9, *(a2 + 280));
      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v9;
      }

      else
      {
        v6 = v9.__r_.__value_.__r.__words[0];
      }

      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v9.__r_.__value_.__l.__size_;
      }

      v8 = std::string::append(&v10, v6, size);
      __p = *v8;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      sub_456160();
    }
  }

  return result;
}

void sub_66A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  *v26 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_66A80(uint64_t a1, unsigned __int8 a2)
{
  *&inAddress.mSelector = 0x676C6F6264617463;
  inAddress.mElement = 0;
  v4 = (*(*a1 + 120))(a1);
  HasProperty = AudioObjectHasProperty(v4, &inAddress);
  if (!HasProperty)
  {
    v11 = sub_5544(17);
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_22CE0(__p);
      }
    }
  }

  v6 = (*(*a1 + 120))(a1);
  result = sub_66E40(v6, &inAddress);
  if (result)
  {
    if (!HasProperty)
    {
      return result;
    }

    if (a2)
    {
      v10 = 1;
    }

    else
    {
      if ((a2 & 0x20) == 0)
      {
        v8 = "Disabling";
        if ((a2 & 0x80) != 0)
        {
          v8 = "Enabling";
        }

        if ((a2 & 0x40) != 0)
        {
          v9 = "Enabling";
        }

        else
        {
          v9 = v8;
        }

        if ((a2 & 0x40) != 0)
        {
          v10 = 3;
        }

        else
        {
          v10 = (a2 & 0x80) >> 5;
        }

        goto LABEL_23;
      }

      v10 = 2;
    }

    v9 = "Enabling";
LABEL_23:
    v12 = sub_5544(17);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315906;
      *&buf.mScope = "AggregateDevice.cpp";
      v20 = 1024;
      v21 = 517;
      v22 = 2080;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s HAL data taps, Setting kAudioDevicePropertyEnableCaptureFile to %d", &buf, 0x22u);
    }

    v14 = (*(*a1 + 120))(a1);
    LODWORD(__p[0]) = v10;
    strcpy(&buf, "ctadbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    result = AudioObjectSetPropertyData(v14, &buf, 0, 0, 4u, __p);
    v15 = result;
    if (result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v15;
    }

    return result;
  }

  result = sub_5544(17);
  if (*result)
  {
    result = os_log_type_enabled(*result, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_22CE0(__p);
    }
  }

  return result;
}

void sub_66E2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_66E40(AudioObjectID a1, const AudioObjectPropertyAddress *a2)
{
  outIsSettable = 0;
  IsPropertySettable = AudioObjectIsPropertySettable(a1, a2, &outIsSettable);
  return outIsSettable && IsPropertySettable == 0;
}

uint64_t sub_66E7C(uint64_t a1)
{
  v1 = (a1 + 184);
  for (i = *(a1 + 192); i != v1; i = i[1])
  {
    v3 = i[3];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = i[2];
        if (v6)
        {
          (*(*v6 + 144))(v6);
        }

        sub_1A8C0(v5);
      }
    }
  }

  return 0;
}

void sub_66F04(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  __cxa_end_catch();
  sub_1A8C0(v2);
  JUMPOUT(0x66EF4);
}

void sub_66F54(uint64_t a1)
{
  v2 = *(a1 + 248);
  v3 = *(a1 + 256);
  while (v2 != v3)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    sub_1215C(&__p, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 3);
    (*(**v2 + 48))(*v2, &__p);
    (*(**v2 + 16))();
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    v2 += 2;
  }

  sub_677EC(a1);
  if (atomic_exchange((a1 + 485), 0))
  {
    v4 = sub_5544(17);
    sub_51E48(3, v4, "", 441, "", "IO Proc about to start. Applying deferred timesync update!");
    LOBYTE(__p) = 0;
    v8 = 0;
    sub_32235C(a1, &__p);
  }
}

void sub_6706C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_67090(uint64_t a1)
{
  v2 = **(a1 + 64);
  sub_67600(v8, (a1 + 8));
  sub_67600(v9, (a1 + 32));
  v10 = *(a1 + 56);
  if (!*v2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v12 = 1024;
      v13 = 502;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(v2 + 8))
  {
    sub_68E60();
    *buf = v2;
    sub_67600(&buf[8], v8);
    sub_67600(v14, v9);
    v14[3] = v10;
    operator new();
  }

  v3 = sub_5544(13);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    v12 = 1024;
    v13 = 506;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", buf, 0x12u);
  }

  sub_477A0(v9[1]);
  sub_477A0(v8[1]);
}

void sub_675C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  __cxa_end_catch();
  sub_477A0(a15);
  JUMPOUT(0x67364);
}

void *sub_67600(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

uint64_t *sub_67794(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_477A0(*(v1 + 40));
    sub_477A0(*(v1 + 16));
    operator delete();
  }

  return result;
}

void sub_677EC(uint64_t a1)
{
  v2 = (*(*a1 + 560))(a1, 1735159650);
  v9 = v2;
  v10 = BYTE4(v2);
  v3 = sub_5544(17);
  v4 = *v3;
  if ((v2 & 0x100000000) != 0)
  {
    if (v4 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 276);
      sub_68108(&__p, &v7);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      *&buf[4] = "AggregateDeviceUtilities.cpp";
      v12 = 1024;
      v13 = 216;
      v14 = 1024;
      LODWORD(v15[0]) = v2;
      WORD2(v15[0]) = 2080;
      *(v15 + 6) = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting fixed buffer size of %u on VAD %s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    strcpy(buf, "zisfbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a1 + 48))(a1, buf, 0, 0, 4, &v9);
  }

  else if (v4 && os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 276);
    sub_68108(&__p, &v7);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "AggregateDeviceUtilities.cpp";
    v12 = 1024;
    v13 = 222;
    v14 = 2080;
    v15[0] = p_p;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Could not find fixed buffer size for VAD %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

unint64_t sub_67A44(_DWORD *a1, int a2)
{
  sub_67EA8();
  v4 = qword_6E8DE8;
  if (!qword_6E8DE8)
  {
    goto LABEL_9;
  }

  v5 = a1[69];
  v6 = &qword_6E8DE8;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == &qword_6E8DE8 || *(v6 + 8) > v5)
  {
LABEL_9:
    v6 = &qword_6E8DE8;
  }

  sub_67EA8();
  v10 = *a1;
  if (v6 == &qword_6E8DE8)
  {
    if ((*(v10 + 160))(a1) && (*(*a1 + 168))(a1))
    {
      v20 = (*(*a1 + 104))(a1);
      LODWORD(v18) = vcvtad_u64_f64(v20 * 0.0199999996);
      v21 = sub_5544(1);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136316162;
        v35 = "AggregateDeviceUtilities.cpp";
        v36 = 1024;
        v37 = 244;
        v38 = 2048;
        *v39 = 0x3F947AE140000000;
        *&v39[8] = 1024;
        *&v39[10] = v18;
        v40 = 2048;
        v41 = v20;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting buffer duration of %f seconds for HAL ADM (equivalent to frame size of %u with sample rate of %f)", &v34, 0x2Cu);
      }

      goto LABEL_23;
    }

    goto LABEL_35;
  }

  v11 = (*(v10 + 104))(a1);
  v13 = v6[6];
  v12 = v6[7];
  if (v13 != v12)
  {
    while (*v13 != -1 && *v13 != v11)
    {
      v13 += 2;
      if (v13 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  if (v13 != v12)
  {
    v15 = sub_5544(17);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
    {
      v17 = v13[1];
      v34 = 136315906;
      v35 = "RoutingTypes.cpp";
      v36 = 1024;
      v37 = 3673;
      v38 = 1024;
      *v39 = v11;
      *&v39[4] = 1024;
      *&v39[6] = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d FindBufferSizeForSR sampleRate = %u bufferSizeSamples = %u\n", &v34, 0x1Eu);
    }

    LODWORD(v18) = v13[1];
    goto LABEL_23;
  }

LABEL_29:
  if (*(v6 + 80) != 1 || (v23 = v6[9]) == 0)
  {
LABEL_35:
    v28 = *(*a1 + 592);
    if (a2 == 1869968496)
    {
      v30 = a1;
      v31 = 1;
    }

    else
    {
      if (a2 != 1768845428)
      {
        v29 = v28(a1, 1);
        v19 = HIDWORD(v29);
        if ((v29 & 0x100000000) != 0)
        {
          LODWORD(v18) = v29;
          return v18 | (v19 << 32);
        }

        v28 = *(*a1 + 592);
      }

      v30 = a1;
      v31 = 0;
    }

    v32 = v28(v30, v31);
    LODWORD(v18) = v32;
    v19 = HIDWORD(v32);
    return v18 | (v19 << 32);
  }

  v24 = 1000 / v23;
  v25 = sub_5544(17);
  v26 = *v25;
  v18 = v11 / v24;
  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
  {
    if ((v6[10] & 1) == 0)
    {
      sub_1EC054();
    }

    v27 = v6[9];
    v34 = 136316162;
    v35 = "RoutingTypes.cpp";
    v36 = 1024;
    v37 = 3681;
    v38 = 1024;
    *v39 = v11;
    *&v39[4] = 2048;
    *&v39[6] = v18;
    v40 = 2048;
    v41 = *&v27;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d FindBufferSizeForSR sampleRate = %u bufferSizeSamples = %lu bufferSizeInMS = %lu\n", &v34, 0x2Cu);
  }

LABEL_23:
  LOBYTE(v19) = 1;
  return v18 | (v19 << 32);
}

void sub_67EA8()
{
  v1 = 0;
  if ((atomic_load_explicit(&qword_6E8DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8DF8))
  {
    v0 = sub_DD858();
    sub_2A5D7C(v0, &v1);

    __cxa_guard_release(&qword_6E8DF8);
  }
}

unint64_t sub_67F44(uint64_t a1, int a2)
{
  v2 = 640;
  if (a2)
  {
    v2 = 664;
  }

  v3 = (a1 + v2);
  v5 = *v3;
  v4 = v3[1];
  if (v5 == v4)
  {
    v10 = 0;
    LOBYTE(v9) = 0;
LABEL_8:
    LOBYTE(v8) = 0;
  }

  else
  {
    while (1)
    {
      v8 = *(*v5 + 648);
      v9 = HIDWORD(v8);
      if ((v8 & 0x100000000) != 0)
      {
        break;
      }

      v5 += 2;
      if (v5 == v4)
      {
        LOBYTE(v9) = 0;
        v10 = v8 >> 8;
        goto LABEL_8;
      }
    }

    v10 = v8 >> 8;
    v12 = sub_5544(20);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 276);
      sub_68108(&__p, &v17);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v15 = "Input";
      v16 = *v5;
      if (a2)
      {
        v15 = "Output";
      }

      *buf = 136316418;
      v20 = "AggregateDevice_CommonBase.cpp";
      v21 = 1024;
      v22 = 3425;
      v23 = 1024;
      v24 = v8;
      v25 = 2080;
      v26 = p_p;
      v27 = 2080;
      v28 = v15;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Found fixed block size %u for VAD %s and direction %s on virtual stream %p", buf, 0x36u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return v8 | (v10 << 8) | (v9 << 32);
}

std::string *sub_68108(std::string *a1, unsigned int *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[", 1uLL);
  sub_22170(&__p, *a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a2[1])
  {
    std::string::append(a1, "_", 1uLL);
    std::to_string(&__p, a2[1]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v6, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a1, "]", 1uLL);
}

void sub_68204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_68244(uint64_t a1)
{
  v2[0] = a1;
  sub_68540(a1);
  return sub_67794(v2);
}

void sub_68540(uint64_t a1)
{
  v2 = *a1;
  v3 = sub_5544(13);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_2942EC(v24, (a1 + 8));
        v5 = v25;
        v6 = v24[0];
        sub_2942EC(__p, v2 + 3);
        v7 = v24;
        if (v5 < 0)
        {
          v7 = v6;
        }

        if (v23 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "CoreTelephonyInterface.cpp";
        v27 = 1024;
        v28 = 463;
        v29 = 2080;
        v30 = v7;
        v31 = 2080;
        v32 = v8;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Activating Route: %s Current: %s", buf, 0x26u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }
    }
  }

  v9 = *(a1 + 8);
  if (v9 != (a1 + 16))
  {
    do
    {
      v10 = v9[5];
      v11 = *(v9 + 8);
      *buf = v9 + 4;
      v12 = sub_916FC((v2 + 3), v11);
      v12[5] += v10;
      v13 = v9[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
    }

    while (v14 != (a1 + 16));
  }

  v16 = *(a1 + 32);
  if (v16 != (a1 + 40))
  {
    do
    {
      v17 = v16[5];
      v18 = *(v16 + 8);
      *buf = v16 + 4;
      v19 = sub_916FC((v2 + 6), v18);
      v19[5] += v17;
      v20 = v16[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v16[2];
          v15 = *v21 == v16;
          v16 = v21;
        }

        while (!v15);
      }

      v16 = v21;
    }

    while (v21 != (a1 + 40));
  }

  v2[9] += *(a1 + 56);
  sub_687A8(v2);
}