uint64_t AppleHPMLibRT13Interface::forceATCRTUpdateModeCIO(AppleHPMLibRT13Interface *this, int a2)
{
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", "forceATCRTUpdateModeCIO", *(this + 2), *(this + 10), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 2);
    v5 = *(this + 10);
    *buf = 136315906;
    v11 = "forceATCRTUpdateModeCIO";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", buf, 0x22u);
  }

  updated = AppleHPMLibPriv::forceUpdateMode(*(this + 1), *(this + 2));
  if (updated)
  {
    if (*(this + 25) == 1)
    {
      printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - Forcing CIO + USB2 failed\n\n", "forceATCRTUpdateModeCIO", *(this + 2), *(this + 10));
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_37E8(this + 2, this);
    }

    if (*(this + 24) == 1)
    {
      AppleHPMLibRTInterface::triggerSystemPanic(this, "AppleHPMLibRTUpdaterInterface - forcing CIO + USB2 failed\n");
    }
  }

  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "forceATCRTUpdateModeCIO", *(this + 2), *(this + 10), updated);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 2);
    v8 = *(this + 10);
    *buf = 136315906;
    v11 = "forceATCRTUpdateModeCIO";
    v12 = 2048;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = updated;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return updated;
}

uint64_t AppleHPMLibRT13Interface::forceATCRTPower(AppleHPMLibRT13Interface *this, int a2)
{
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", "forceATCRTPower", *(this + 2), *(this + 10), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 2);
    v5 = *(this + 10);
    *buf = 136315906;
    v11 = "forceATCRTPower";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", buf, 0x22u);
  }

  if ((*(*this + 40))(this, a2 != 0))
  {
    v6 = 3758097129;
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "forceATCRTPower", *(this + 2), *(this + 10), v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 2);
    v8 = *(this + 10);
    *buf = 136315906;
    v11 = "forceATCRTPower";
    v12 = 2048;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return v6;
}

uint64_t AppleHPMLibRT13Interface::forceATCRTUpdateMode(AppleHPMLibRT13Interface *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", "forceATCRTUpdateMode", *(this + 2), *(this + 10), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 2);
    v7 = *(this + 10);
    *buf = 136315906;
    v15 = "forceATCRTUpdateMode";
    v16 = 2048;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", buf, 0x22u);
  }

  v8 = (*(*this + 32))(this, a2, a3);
  if (!v8)
  {
    v9 = *(*this + 40);
    if (a2)
    {
      v8 = v9(this, 65);
      if (!v8)
      {
        usleep(0x186A0u);
        v8 = (*(*this + 40))(this, 1);
      }
    }

    else
    {
      v8 = v9(this, 0);
    }
  }

  if (v8)
  {
    v10 = 3758097129;
  }

  else
  {
    v10 = 0;
  }

  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "forceATCRTUpdateMode", *(this + 2), *(this + 10), v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 2);
    v12 = *(this + 10);
    *buf = 136315906;
    v15 = "forceATCRTUpdateMode";
    v16 = 2048;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return v10;
}

uint64_t AppleHPMLibRT13Interface::execVOUT(AppleHPMLibRT13Interface *this, int a2)
{
  v34 = a2;
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. value = 0x%X\n\n", "execVOUT", *(this + 2), *(this + 10), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 2);
    v5 = *(this + 10);
    *buf = 136315906;
    v36 = "execVOUT";
    v37 = 2048;
    v38 = v4;
    v39 = 1024;
    v40 = v5;
    v41 = 1024;
    v42 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. value = 0x%X\n\n", buf, 0x22u);
  }

  v33 = 1448039764;
  v32 = 0;
  v6 = AppleHPMLibPriv::IECSAtomicCommand(*(this + 1), &dword_0 + 1, &v33, &v34, 0, &v32, 0, 1u, 1u, v25, 1uLL, *(this + 2), 0);
  v7 = v6;
  if (!v6 && (v32 & 0xF) == 0)
  {
    goto LABEL_51;
  }

  if (*(this + 25) == 1)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - first VOUT failed, check if HPM is in DFUf [0x%X], taskRetCode=0x%X\n\n", "execVOUT", *(this + 2), *(this + 10), v6, v32);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v17 = *(this + 2);
    v18 = *(this + 10);
    *buf = 136316162;
    v36 = "execVOUT";
    v37 = 2048;
    v38 = v17;
    v39 = 1024;
    v40 = v18;
    v41 = 1024;
    v42 = v7;
    v43 = 1024;
    v44 = v32;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - first VOUT failed, check if HPM is in DFUf [0x%X], taskRetCode=0x%X\n\n", buf, 0x28u);
  }

  v31 = 0;
  v30 = 4;
  v9 = AppleHPMLibPriv::iecsRead(*(this + 1), *(this + 2), 3u, &v31, 4uLL, 0, &v30, v8);
  if (v9)
  {
    if (*(this + 25) == 1)
    {
      printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - Read mode failed [0x%X]\n\n", "execVOUT", *(this + 2), *(this + 10), v9);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_386C(this + 2, this);
    }

    v10 = 3758097129;
    v11 = "AppleHPMLibRTUpdaterInterface - Read mode failed\n";
    goto LABEL_36;
  }

  if (v31 != 1716864580)
  {
    if (*(this + 25))
    {
      printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - Not in DFUf but still failed VOUT, modeData=0x%x\n\n", "execVOUT", *(this + 2), *(this + 10), v31);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_38F8(this + 2, this);
    }

    v10 = 3758097129;
    v11 = "AppleHPMLibRTUpdaterInterface - Not in DFUf but still failed VOUT\n";
    goto LABEL_36;
  }

  if (*(this + 25))
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - pulling HPM out of DFUf...\n\n", "execVOUT", *(this + 2), *(this + 10));
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_3984(this + 2, this);
  }

  v29 = 1145460070;
  v28 = 0;
  v12 = AppleHPMLibPriv::IECSAtomicCommand(*(this + 1), &dword_0 + 1, &v29, &v28, 0, &v32, 0, 1u, 1u, v26, 1uLL, *(this + 2), 0);
  v13 = v12;
  if (!v12 && (v32 & 0xF) == 0)
  {
    if (*(this + 25) == 1)
    {
      printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - trying VOUT after cancelling DFUf, value = 0x%X\n\n", "execVOUT", *(this + 2), *(this + 10), v34);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_3A08(this + 2, this);
    }

    v19 = AppleHPMLibPriv::IECSAtomicCommand(*(this + 1), &dword_0 + 1, &v33, &v34, 0, &v32, 0, 1u, 1u, v27, 1uLL, *(this + 2), 0);
    v20 = v19;
    if (v19 || (v32 & 0xF) != 0)
    {
      if (*(this + 25) == 1)
      {
        printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - second VOUT failed, status = [0x%X], taskRetCode=0x%X, modeData=0x%x\n\n", "execVOUT", *(this + 2), *(this + 10), v19, v32, v31);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v23 = *(this + 2);
        v24 = *(this + 10);
        *buf = 136316418;
        v36 = "execVOUT";
        v37 = 2048;
        v38 = v23;
        v39 = 1024;
        v40 = v24;
        v41 = 1024;
        v42 = v20;
        v43 = 1024;
        v44 = v32;
        v45 = 1024;
        v46 = v31;
        _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - second VOUT failed, status = [0x%X], taskRetCode=0x%X, modeData=0x%x\n\n", buf, 0x2Eu);
      }

      v11 = "AppleHPMLibRTUpdaterInterface - Second VOUT failed\n";
      goto LABEL_35;
    }

LABEL_51:
    v10 = 0;
    goto LABEL_37;
  }

  if (*(this + 25) == 1)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - cancelling DFUf failed [0x%X], taskRetCode=0x%X, modeData=0x%x\n\n", "execVOUT", *(this + 2), *(this + 10), v12, v32, v31);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v21 = *(this + 2);
    v22 = *(this + 10);
    *buf = 136316418;
    v36 = "execVOUT";
    v37 = 2048;
    v38 = v21;
    v39 = 1024;
    v40 = v22;
    v41 = 1024;
    v42 = v13;
    v43 = 1024;
    v44 = v32;
    v45 = 1024;
    v46 = v31;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - cancelling DFUf failed [0x%X], taskRetCode=0x%X, modeData=0x%x\n\n", buf, 0x2Eu);
  }

  v11 = "AppleHPMLibRTUpdaterInterface - First VOUT failed and cancelling DFUf failed\n";
LABEL_35:
  v10 = 3758097129;
LABEL_36:
  AppleHPMLibRTInterface::triggerSystemPanic(this, v11);
LABEL_37:
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "execVOUT", *(this + 2), *(this + 10), v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(this + 2);
    v15 = *(this + 10);
    *buf = 136315906;
    v36 = "execVOUT";
    v37 = 2048;
    v38 = v14;
    v39 = 1024;
    v40 = v15;
    v41 = 1024;
    v42 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return v10;
}

uint64_t AppleHPMLibRT13InterfaceA3::forceATCRTUpdateMode(AppleHPMLibRT13InterfaceA3 *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", "forceATCRTUpdateMode", *(this + 2), *(this + 10), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 2);
    v7 = *(this + 10);
    *buf = 136315906;
    v15 = "forceATCRTUpdateMode";
    v16 = 2048;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", buf, 0x22u);
  }

  buf[0] = 0;
  v8 = AppleHPMLibRT13InterfaceA3::inADFU(this, buf);
  if (buf[0])
  {
    v9 = -536870184;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (!v10)
  {
    v10 = AppleHPMLibRT13Interface::forceATCRTUpdateMode(this, a2, a3);
  }

  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "forceATCRTUpdateMode", *(this + 2), *(this + 10), v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 2);
    v12 = *(this + 10);
    *buf = 136315906;
    v15 = "forceATCRTUpdateMode";
    v16 = 2048;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return v10;
}

uint64_t AppleHPMLibRT13InterfaceA3::inADFU(AppleHPMLibRT13InterfaceA3 *this, BOOL *a2)
{
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry\n\n", "inADFU", *(this + 2), *(this + 10));
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 2);
    v6 = *(this + 10);
    *buf = 136315650;
    v14 = "inADFU";
    v15 = 2048;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry\n\n", buf, 0x1Cu);
  }

  v12 = 0;
  v11 = 4;
  if (a2)
  {
    v7 = AppleHPMLibPriv::iecsRead(*(this + 1), *(this + 2), 3u, &v12, 4uLL, 0, &v11, v4);
    if (!v7)
    {
      if (v12 == 1430668353)
      {
        if (*(this + 25))
        {
          printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - HPM in ADFU\n\n", "inADFU", *(this + 2), *(this + 10));
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_3B3C(this + 2, this);
        }

        v7 = 0;
        *a2 = 1;
      }

      else
      {
        if (*(this + 25))
        {
          printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - HPM is NOT in ADFU, modeData=0x%x\n\n", "inADFU", *(this + 2), *(this + 10), v12);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_3AB0(this + 2, this);
        }

        v7 = 0;
        *a2 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = 3758097090;
  }

  if (*(this + 25) == 1)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - check for in ADFU failed [0x%X]\n\n", "inADFU", *(this + 2), *(this + 10), v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_3BC0(this);
  }

  AppleHPMLibRTInterface::triggerSystemPanic(this, "AppleHPMLibRTUpdaterInterface - Check for in ADFU failed\n");
LABEL_17:
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "inADFU", *(this + 2), *(this + 10), v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 2);
    v9 = *(this + 10);
    *buf = 136315906;
    v14 = "inADFU";
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return v7;
}

uint64_t AppleHPMLibRT13InterfaceA3::forceATCRTPower(AppleHPMLibRT13InterfaceA3 *this, int a2)
{
  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", "forceATCRTPower", *(this + 2), *(this + 10), a2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 2);
    v5 = *(this + 10);
    *buf = 136315906;
    v14 = "forceATCRTPower";
    v15 = 2048;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - entry. enable = 0x%X\n\n", buf, 0x22u);
  }

  v12 = 0;
  v6 = AppleHPMLibRT13InterfaceA3::inADFU(this, &v12);
  if (v12)
  {
    v7 = -536870184;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    v8 = AppleHPMLibRT13Interface::forceATCRTPower(this, a2);
  }

  if (*(this + 25) == 1 && (*(this + 32) & 2) != 0)
  {
    printf("AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", "forceATCRTPower", *(this + 2), *(this + 10), v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 2);
    v10 = *(this + 10);
    *buf = 136315906;
    v14 = "forceATCRTPower";
    v15 = 2048;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleHPMLibRT13Interface::%s@0x%llx RID%u - exit status=0x%X\n\n", buf, 0x22u);
  }

  return v8;
}

uint64_t *sub_1DA8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *(a2 + 40);
  return result;
}

void AppleHPMLibRTInterface::AppleHPMLibRTInterface(AppleHPMLibRTInterface *this, void **a2, uint64_t a3, int a4)
{
  *(this + 10) = a4;
  v5 = (this + 40);
  *(this + 24) = 0;
  v6 = this + 24;
  v7 = *a2;
  *this = &off_8208;
  *(this + 1) = v7;
  *(this + 2) = a3;
  v8 = (this + 16);
  *(this + 25) = os_parse_boot_arg_string();
  if (os_parse_boot_arg_int())
  {
    *v6 = 0;
  }

  if ((os_parse_boot_arg_int() & 1) == 0)
  {
    *(this + 4) = 1;
  }

  if (*(this + 25) == 1)
  {
    printf("AppleHPMLibRTInterface::%s@0x%llx RID%u - AppleHPMLibRTUpdater - panic debug enabled:%u\n\n", "AppleHPMLibRTInterface", *v8, *v5, *v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_3C5C(v8, v5, v6);
  }
}

void AppleHPMLibRTInterface::triggerSystemPanic(AppleHPMLibRTInterface *this, const char *a2)
{
  if (*(this + 24) == 1)
  {
    v3 = reboot_np(3072, a2);
    if (v3)
    {
      if (*(this + 25) == 1)
      {
        printf("AppleHPMLibRTInterface::%s@0x%llx RID%u - Failed to trigger system panic: %u\n", "triggerSystemPanic", *(this + 2), *(this + 10), v3);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_3D00(this);
      }
    }
  }
}

uint64_t AppleHPMLibPriv::addRefStatic(AppleHPMLibPriv *this, void *a2)
{
  v2 = *(this + 1);
  result = (*(v2 + 64) + 1);
  *(v2 + 64) = result;
  return result;
}

uint64_t AppleHPMLibPriv::releaseStatic(AppleHPMLibPriv *this, void *a2)
{
  v2 = *(this + 1);
  v3 = v2[16];
  v2[16] = v3 - 1;
  if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2, a2);
  }

  return v3;
}

uint64_t AppleHPMLibPriv::probeStatic(AppleHPMLibPriv *this, void *a2, io_object_t object, unsigned int a4, int *a5)
{
  if (object && IOObjectConformsTo(object, "AppleHPM"))
  {
    return 0;
  }

  else
  {
    return 3758097090;
  }
}

uint64_t AppleHPMLibPriv::startStatic(AppleHPMLibPriv *this, void *a2, io_service_t service)
{
  v3 = *(this + 1);
  v3[17] = service;
  v4 = IOServiceOpen(service, mach_task_self_, 0x2Au, v3 + 18);
  if (v3[18])
  {
    v5 = v4;
  }

  else
  {
    v5 = 3758097088;
  }

  if (!v5)
  {
    AppleHPMLibPriv::getRID(v3);
  }

  return v5;
}

uint64_t AppleHPMLibPriv::stopStatic(AppleHPMLibPriv *this, void *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 72);
  if (v3)
  {
    IOServiceClose(v3);
    *(v2 + 72) = 0;
  }

  return 0;
}

uint64_t AppleHPMLibPriv::iecsRead(AppleHPMLibPriv *this, uint64_t a2, unsigned int a3, void *a4, vm_size_t size, unsigned int a6, void *a7, unint64_t *a8)
{
  v8 = 3758097084;
  v9 = *(this + 1);
  v10 = *(v9 + 72);
  address = 0;
  if (!v10)
  {
    return v8;
  }

  v17 = vm_allocate(mach_task_self_, &address, size, 1);
  if (!address)
  {
    return 3758097086;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = size;
  input[3] = address;
  input[4] = a6;
  outputCnt = 1;
  __chkstk_darwin(v17);
  v20 = 0;
  v18 = IOConnectCallScalarMethod(*(v9 + 72), 0, input, 5u, &v20, &outputCnt);
  v8 = v18;
  if (!a7 || v18)
  {
    if (v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a7 = v20;
  }

  memmove(a4, address, size);
LABEL_9:
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }

  return v8;
}

uint64_t AppleHPMLibPriv::iecsWrite(AppleHPMLibPriv *this, uint64_t a2, unsigned int a3, const void *a4, vm_size_t size, unsigned int a6)
{
  v6 = 3758097084;
  v7 = *(this + 1);
  v8 = *(v7 + 72);
  address = 0;
  if (v8)
  {
    vm_allocate(mach_task_self_, &address, size, 1);
    if (address)
    {
      memmove(address, a4, size);
      input[0] = a2;
      input[1] = a3;
      input[2] = size;
      input[3] = address;
      input[4] = a6;
      outputCnt = 0;
      v6 = IOConnectCallScalarMethod(*(v7 + 72), 1u, input, 5u, 0, &outputCnt);
      if (address)
      {
        vm_deallocate(mach_task_self_, address, size);
      }
    }

    else
    {
      return 3758097086;
    }
  }

  return v6;
}

uint64_t AppleHPMLibPriv::iecsCommand(AppleHPMLibPriv *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(*(this + 1) + 72);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  outputCnt = 0;
  return IOConnectCallScalarMethod(v4, 2u, input, 3u, 0, &outputCnt);
}

uint64_t AppleHPMLibPriv::sendVDM(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, vm_size_t size, unsigned int a6)
{
  v6 = 3758097084;
  v7 = *(a1 + 8);
  v8 = *(v7 + 72);
  address = 0;
  if (v8)
  {
    vm_allocate(mach_task_self_, &address, size, 1);
    if (address)
    {
      memmove(address, a4, size);
      input[0] = a2;
      input[1] = a3;
      input[2] = size;
      input[3] = address;
      input[4] = a6;
      outputCnt = 0;
      v6 = IOConnectCallScalarMethod(*(v7 + 72), 3u, input, 5u, 0, &outputCnt);
      if (address)
      {
        vm_deallocate(mach_task_self_, address, size);
      }
    }

    else
    {
      return 3758097086;
    }
  }

  return v6;
}

uint64_t AppleHPMLibPriv::receiveVDM(uint64_t a1, uint64_t a2, void *a3, vm_size_t size, unsigned int a5, _DWORD *a6, _BYTE *a7, void *a8)
{
  v8 = 3758097084;
  v9 = *(a1 + 8);
  v10 = *(v9 + 72);
  address = 0;
  if (v10)
  {
    v18 = vm_allocate(mach_task_self_, &address, size, 1);
    if (address)
    {
      input[0] = a2;
      input[1] = size;
      input[2] = address;
      input[3] = a5;
      outputCnt = 3;
      __chkstk_darwin(v18);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v8 = IOConnectCallScalarMethod(*(v9 + 72), 4u, input, 4u, &v20, &outputCnt);
      if (!v8)
      {
        if (a8)
        {
          *a8 = v20;
        }

        if (a7)
        {
          *a7 = v21;
        }

        if (a6)
        {
          *a6 = v22;
        }

        memmove(a3, address, size);
      }

      if (address)
      {
        vm_deallocate(mach_task_self_, address, size);
      }
    }

    else
    {
      return 3758097086;
    }
  }

  return v8;
}

uint64_t AppleHPMLibPriv::receiveVDMAttention(uint64_t a1, uint64_t a2, void *a3, vm_size_t size, unsigned int a5, _DWORD *a6, _BYTE *a7, void *a8)
{
  v8 = 3758097084;
  v9 = *(a1 + 8);
  v10 = *(v9 + 72);
  address = 0;
  if (v10)
  {
    v18 = vm_allocate(mach_task_self_, &address, size, 1);
    if (address)
    {
      input[0] = a2;
      input[1] = size;
      input[2] = address;
      input[3] = a5;
      outputCnt = 3;
      __chkstk_darwin(v18);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v8 = IOConnectCallScalarMethod(*(v9 + 72), 5u, input, 4u, &v20, &outputCnt);
      if (!v8)
      {
        if (a8)
        {
          *a8 = v20;
        }

        if (a7)
        {
          *a7 = v21;
        }

        if (a6)
        {
          *a6 = v22;
        }

        memmove(a3, address, size);
      }

      if (address)
      {
        vm_deallocate(mach_task_self_, address, size);
      }
    }

    else
    {
      return 3758097086;
    }
  }

  return v8;
}

uint64_t AppleHPMLibPriv::forceMode(AppleHPMLibPriv *this, void *a2)
{
  if (!*(*(this + 1) + 72))
  {
    return 3758097084;
  }

  __chkstk_darwin(this);
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  outputCnt = 0;
  return IOConnectCallScalarMethod(*(v6 + 72), 7u, v8, 4u, 0, &outputCnt);
}

uint64_t AppleHPMLibPriv::forceUpdateMode(AppleHPMLibPriv *this, void *a2)
{
  if (!*(*(this + 1) + 72))
  {
    return 3758097084;
  }

  __chkstk_darwin();
  v6[0] = v2;
  v6[1] = v3;
  outputCnt = 0;
  return IOConnectCallScalarMethod(*(v4 + 72), 8u, v6, 2u, 0, &outputCnt);
}

uint64_t AppleHPMLibPriv::IECSAtomicCommand(AppleHPMLibPriv *this, void *a2, _DWORD *a3, const void *a4, _DWORD *a5, void *a6, _DWORD *a7, unsigned int a8, unsigned __int16 a9, unsigned __int16 a10, unint64_t a11, unint64_t a12, unsigned int a13)
{
  v13 = *(this + 1);
  v14 = *(v13 + 72);
  address = 0;
  if (!v14)
  {
    v19 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v20 = 3758097084;
    goto LABEL_37;
  }

  v28 = a2;
  vm_allocate(mach_task_self_, &address, 4uLL, 1);
  v19 = 0;
  if (address)
  {
    v20 = 0;
  }

  else
  {
    v20 = 3758097086;
  }

  v33 = 0;
  if (a8 && address)
  {
    v19 = a8;
    vm_allocate(mach_task_self_, &v33, a8, 1);
    if (v33)
    {
      v20 = 0;
    }

    else
    {
      v20 = 3758097086;
    }
  }

  v32 = 0;
  if (a5 && !v20)
  {
    vm_allocate(mach_task_self_, &v32, 4uLL, 1);
    if (v32)
    {
      v20 = 0;
    }

    else
    {
      v20 = 3758097086;
    }
  }

  v21 = 0;
  v31 = 0;
  if (a9 && !v20)
  {
    vm_allocate(mach_task_self_, &v31, a9, 1);
    if (v31)
    {
      v20 = 0;
    }

    else
    {
      v20 = 3758097086;
    }

    v21 = a9;
  }

  v30 = 0;
  if (!a7 || v20)
  {
    v22 = v21;
    if (v20)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v22 = v21;
    vm_allocate(mach_task_self_, &v30, 4uLL, 1);
    if (!v30)
    {
      v20 = 3758097086;
      goto LABEL_37;
    }
  }

  *address = *a3;
  if (v33)
  {
    memmove(v33, a4, v19);
  }

  v23 = v32;
  if (v32)
  {
    *v32 = *a5;
    v23 = v32;
  }

  input[0] = v28;
  input[1] = address;
  input[2] = v33;
  input[3] = v23;
  input[4] = v31;
  input[5] = v30;
  input[6] = a8;
  input[7] = a9;
  input[8] = a11;
  input[9] = a12;
  input[10] = a13;
  outputCnt = 0;
  v24 = IOConnectCallScalarMethod(*(v13 + 72), 9u, input, 0xBu, 0, &outputCnt);
  v20 = v24;
  if (!v24 && v30)
  {
    *a7 = *v30;
  }

  if (!v24 && v31)
  {
    memmove(a6, v31, v22);
  }

LABEL_37:
  if (address)
  {
    vm_deallocate(mach_task_self_, address, 4uLL);
    address = 0;
  }

  if (v33)
  {
    vm_deallocate(mach_task_self_, v33, v19);
    v33 = 0;
  }

  if (v32)
  {
    vm_deallocate(mach_task_self_, v32, 4uLL);
    v32 = 0;
  }

  if (v31)
  {
    vm_deallocate(mach_task_self_, v31, 4uLL);
    v31 = 0;
  }

  if (v30)
  {
    vm_deallocate(mach_task_self_, v30, 4uLL);
  }

  return v20;
}

uint64_t AppleHPMLibPriv::EnableOptions(AppleHPMLibPriv *this, void *a2)
{
  if (!*(*(this + 1) + 72))
  {
    return 3758097084;
  }

  __chkstk_darwin(this);
  v6[0] = v2;
  v6[1] = v3;
  outputCnt = 0;
  return IOConnectCallScalarMethod(*(v4 + 72), 0xAu, v6, 2u, 0, &outputCnt);
}

uint64_t AppleHPMLibPriv::forceATCRTUpdateMode(AppleHPMLibPriv *this, void *a2)
{
  v3 = this;
  if (*(*(this + 1) + 72))
  {
    operator new();
  }

  return 3758097084;
}

uint64_t AppleHPMLibPriv::forceATCRTPower(AppleHPMLibPriv *this, void *a2)
{
  v3 = this;
  if (*(*(this + 1) + 72))
  {
    operator new();
  }

  return 3758097084;
}

uint64_t AppleHPMLibPriv::forceUSBDeviceMode(AppleHPMLibPriv *this, void *a2)
{
  if (!*(*(this + 1) + 72))
  {
    return 3758097084;
  }

  __chkstk_darwin(this);
  v6[0] = v2;
  v6[1] = v3;
  outputCnt = 0;
  return IOConnectCallScalarMethod(*(v4 + 72), 0xDu, v6, 2u, 0, &outputCnt);
}

uint64_t AppleHPMLibPriv::changeSSAMTransmitReceiver(AppleHPMLibPriv *this, void *a2)
{
  if (!*(*(this + 1) + 72))
  {
    return 3758097084;
  }

  __chkstk_darwin(this);
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  outputCnt = 0;
  return IOConnectCallScalarMethod(*(v5 + 72), 0xBu, v7, 3u, 0, &outputCnt);
}

uint64_t AppleHPMLibPriv::updateSSAMConnection(AppleHPMLibPriv *this, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *(this + 1);
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  outputCnt = 0;
  return IOConnectCallScalarMethod(*(v4 + 72), 0xCu, input, 3u, 0, &outputCnt);
}

uint64_t AppleHPMLibFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x12u, 0xA1u, 0xDCu, 0xCFu, 0xCFu, 0x7Au, 0x47u, 0x75u, 0xBEu, 0xE5u, 0x9Cu, 0x43u, 0x19u, 0xF4u, 0xCDu, 0x2Bu);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    AppleHPMLibPriv::alloc(v4);
  }

  return 0;
}

void AppleHPMLibPriv::AppleHPMLibPriv(AppleHPMLibPriv *this)
{
  *(this + 19) = 0xFFFF;
  *(this + 16) = 0;
  *this = off_8238;
  *(this + 1) = &AppleHPMLibPriv::sIOCFPlugInVTable;
  *(this + 2) = this;
  *(this + 3) = &AppleHPMLibPriv::sAppleHPMLibVTable;
  *(this + 4) = this;
  *(this + 5) = &AppleHPMLibPriv::sAppleHPMSSAMLibVTable;
  *(this + 6) = this;
  v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x70u, 0xFFu, 0x44u, 0x3Eu, 0x8Au, 0xCFu, 0x43u, 0xACu, 0xB7u, 0x93u, 0xE7u, 0x91u, 0x1Cu, 0x1Cu, 0xCu, 0xD5u);
  *(this + 7) = v2;
  CFRetain(v2);
  CFPlugInAddInstanceForFactory(*(this + 7));
}

void AppleHPMLibPriv::~AppleHPMLibPriv(CFUUIDRef *this)
{
  *this = off_8238;
  CFPlugInRemoveInstanceForFactory(this[7]);
  CFRelease(this[7]);
}

{
  AppleHPMLibPriv::~AppleHPMLibPriv(this);

  operator delete();
}

uint64_t AppleHPMLibPriv::getRID(AppleHPMLibPriv *this)
{
  v2 = 3758097136;
  v3 = *(this + 17);
  if (v3)
  {
    parent = 0;
    if (!IORegistryEntryGetParentEntry(v3, "IOService", &parent))
    {
      CFProperty = IORegistryEntryCreateCFProperty(parent, @"rid", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v5 = CFProperty;
        if (CFDataGetLength(CFProperty) <= 4)
        {
          v8.location = 0;
          v8.length = 4;
          CFDataGetBytes(v5, v8, this + 76);
          v2 = 0;
        }

        else
        {
          v2 = 3758097084;
        }

        CFRelease(v5);
      }
    }
  }

  return v2;
}

void sub_37E8(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_386C(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_38F8(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_3984(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_3A08(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  v8 = *v2;
  sub_1DB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_3AB0(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_3B3C(uint64_t *a1, uint64_t a2)
{
  sub_1DA8(a1, a2, __stack_chk_guard);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_3BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  sub_1D88();
  sub_1DB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_3C5C(uint64_t *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v7 = 136315906;
  v8 = "AppleHPMLibRTInterface";
  v9 = 2048;
  sub_1F84();
  v10 = v6;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "AppleHPMLibRTInterface::%s@0x%llx RID%u - AppleHPMLibRTUpdater - panic debug enabled:%u\n\n", &v7, 0x22u);
}

void sub_3D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  v4 = 136315906;
  v5 = "triggerSystemPanic";
  v6 = 2048;
  sub_1F84();
  v7 = v3;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "AppleHPMLibRTInterface::%s@0x%llx RID%u - Failed to trigger system panic: %u\n", &v4, 0x22u);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}