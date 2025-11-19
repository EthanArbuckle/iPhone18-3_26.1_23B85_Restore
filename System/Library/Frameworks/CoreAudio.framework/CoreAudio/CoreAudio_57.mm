uint64_t HALS_Control::SetPropertyData(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if (*a3 <= 1818457189)
  {
    if (v8 <= 1818453109)
    {
      if (v8 != 1650685548)
      {
        if (v8 != 1651272546)
        {
LABEL_33:
          HALS_Object::SetPropertyData(result, a2, a3, a4, a5, a6, a7, a8);
        }

        goto LABEL_32;
      }

      if (a4 > 3)
      {
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HALS_Control.cpp";
        v15 = 1024;
        v16 = 617;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue";
        goto LABEL_36;
      }

LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (v8 == 1818453110)
    {
      if (a4 > 3)
      {
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HALS_Control.cpp";
        v15 = 1024;
        v16 = 603;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v8 != 1818456950)
    {
      goto LABEL_33;
    }

    if (a4 > 3)
    {
      goto LABEL_32;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v13 = 136315394;
    v14 = "HALS_Control.cpp";
    v15 = 1024;
    v16 = 596;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue";
    goto LABEL_36;
  }

  if (v8 <= 1935962741)
  {
    if (v8 == 1818457190)
    {
      if (a4 > 3)
      {
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HALS_Control.cpp";
        v15 = 1024;
        v16 = 610;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v8 != 1935893353)
    {
      goto LABEL_33;
    }

    if (a4 > 3)
    {
      goto LABEL_32;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v13 = 136315394;
    v14 = "HALS_Control.cpp";
    v15 = 1024;
    v16 = 624;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem";
LABEL_36:
    _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, v10, &v13, 0x12u);
    goto LABEL_37;
  }

  if (v8 == 1936745334)
  {
    if (a4 > 3)
    {
      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_Control.cpp";
      v15 = 1024;
      v16 = 631;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v8 != 1935962742)
  {
    goto LABEL_33;
  }

  if (a4 <= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v13 = 136315394;
    v14 = "HALS_Control.cpp";
    v15 = 1024;
    v16 = 589;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioSliderControlPropertyValue";
    goto LABEL_36;
  }

LABEL_32:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_Control::GetPropertyData(uint64_t this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v21 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1818456949)
  {
    if (mSelector <= 1935894893)
    {
      if (mSelector <= 1852400498)
      {
        if (mSelector == 1818456950)
        {
          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }

            v17 = 136315394;
            v18 = "HALS_Control.cpp";
            v19 = 1024;
            v20 = 443;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue";
            goto LABEL_98;
          }
        }

        else
        {
          if (mSelector != 1818457190)
          {
            goto LABEL_81;
          }

          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }

            v17 = 136315394;
            v18 = "HALS_Control.cpp";
            v19 = 1024;
            v20 = 489;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction";
            goto LABEL_98;
          }
        }

        goto LABEL_74;
      }

      if (mSelector != 1852400499)
      {
        if (mSelector == 1935892841)
        {
          goto LABEL_34;
        }

        if (mSelector != 1935893353)
        {
          goto LABEL_81;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 507;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem";
          goto LABEL_98;
        }

        goto LABEL_74;
      }

      goto LABEL_49;
    }

    if (mSelector <= 1935962741)
    {
      if (mSelector == 1935894894)
      {
LABEL_49:
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 523;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyItemName";
          goto LABEL_98;
        }

        if (a7 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 524;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad qualifier data size for kAudioSelectorControlPropertyItemName";
          goto LABEL_98;
        }

        goto LABEL_63;
      }

      if (mSelector != 1935962738)
      {
        goto LABEL_81;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 433;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyRange";
        goto LABEL_98;
      }
    }

    else
    {
      if (mSelector == 1935962742)
      {
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 424;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyValue";
          goto LABEL_98;
        }

        goto LABEL_74;
      }

      if (mSelector != 1936745315)
      {
        if (mSelector != 1936745334)
        {
          goto LABEL_81;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 542;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue";
          goto LABEL_98;
        }

        goto LABEL_74;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 551;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyPanningChannels";
        goto LABEL_98;
      }
    }

LABEL_63:
    *a6 = 0;
    v12 = 8;
LABEL_76:
    *a5 = v12;
    goto LABEL_77;
  }

  if (mSelector > 1668506479)
  {
    if (mSelector <= 1818453106)
    {
      if (mSelector != 1668506480)
      {
        if (mSelector == 1818453106)
        {
          if (a4 <= 0xF)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_99;
            }

            v17 = 136315394;
            v18 = "HALS_Control.cpp";
            v19 = 1024;
            v20 = 461;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelRange";
            goto LABEL_98;
          }

          *a6 = 0;
          a6[1] = 0;
          v12 = 16;
          goto LABEL_76;
        }

        goto LABEL_81;
      }

      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 406;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioControlPropertyScope";
        goto LABEL_98;
      }

      v13 = *(this + 48);
LABEL_80:
      *a6 = v13;
      goto LABEL_75;
    }

    switch(mSelector)
    {
      case 1818453107:
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 480;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertDecibelsToScalar";
          goto LABEL_98;
        }

        break;
      case 1818453110:
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 452;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue";
          goto LABEL_98;
        }

        break;
      case 1818456932:
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          v17 = 136315394;
          v18 = "HALS_Control.cpp";
          v19 = 1024;
          v20 = 471;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertScalarToDecibels";
          goto LABEL_98;
        }

        break;
      default:
        goto LABEL_81;
    }

    goto LABEL_74;
  }

  if (mSelector <= 1651272547)
  {
    if (mSelector != 1650685548)
    {
      if (mSelector != 1651272546)
      {
        goto LABEL_81;
      }

LABEL_34:
      *a5 = 0;
LABEL_77:
      v14 = *MEMORY[0x1E69E9840];
      return this;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      v17 = 136315394;
      v18 = "HALS_Control.cpp";
      v19 = 1024;
      v20 = 498;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue";
      goto LABEL_98;
    }

LABEL_74:
    *a6 = 0;
LABEL_75:
    v12 = 4;
    goto LABEL_76;
  }

  switch(mSelector)
  {
    case 1651272548:
      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 567;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioBlockControlPropertyDescriptor";
        goto LABEL_98;
      }

      if (a7 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 568;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad qualifier data size for kAudioBlockControlPropertyDescriptor";
LABEL_98:
        _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, v11, &v17, 0x12u);
LABEL_99:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      goto LABEL_63;
    case 1667591277:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 415;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioControlPropertyElement";
        goto LABEL_98;
      }

      v13 = *(this + 52);
      goto LABEL_80;
    case 1668049771:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_99;
        }

        v17 = 136315394;
        v18 = "HALS_Control.cpp";
        v19 = 1024;
        v20 = 533;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyItemKind";
        goto LABEL_98;
      }

      goto LABEL_74;
  }

LABEL_81:
  v15 = *MEMORY[0x1E69E9840];

  return HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

uint64_t HALS_Control::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 4;
  if (*a3 > 1818456949)
  {
    if (v3 > 1935894893)
    {
      if (v3 <= 1935962741)
      {
        if (v3 != 1935894894 && v3 != 1935962738)
        {
          return HALS_Object::GetPropertyDataSize(4, a2, a3);
        }
      }

      else
      {
        if (v3 == 1935962742)
        {
          return result;
        }

        if (v3 != 1936745315)
        {
          v5 = 1936745334;
          goto LABEL_26;
        }
      }

      return 8;
    }

    if (v3 > 1852400498)
    {
      if (v3 == 1852400499)
      {
        return 8;
      }

      if (v3 != 1935892841)
      {
        v5 = 1935893353;
        goto LABEL_26;
      }

      return 0;
    }

    if (v3 == 1818456950)
    {
      return result;
    }

    v6 = 29798;
LABEL_25:
    v5 = v6 | 0x6C630000;
    goto LABEL_26;
  }

  if (v3 <= 1668506479)
  {
    if (v3 > 1651272547)
    {
      if (v3 != 1651272548)
      {
        if (v3 == 1667591277)
        {
          return result;
        }

        v5 = 1668049771;
LABEL_26:
        if (v3 == v5)
        {
          return result;
        }

        return HALS_Object::GetPropertyDataSize(4, a2, a3);
      }

      return 8;
    }

    if (v3 == 1650685548)
    {
      return result;
    }

    if (v3 != 1651272546)
    {
      return HALS_Object::GetPropertyDataSize(4, a2, a3);
    }

    return 0;
  }

  if (v3 <= 1818453106)
  {
    if (v3 != 1668506480)
    {
      if (v3 == 1818453106)
      {
        return 16;
      }

      return HALS_Object::GetPropertyDataSize(4, a2, a3);
    }
  }

  else if (v3 != 1818453107 && v3 != 1818453110)
  {
    v6 = 29540;
    goto LABEL_25;
  }

  return result;
}

uint64_t HALS_Control::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 > 1818456949)
  {
    if (v4 > 1935894893)
    {
      if (v4 <= 1935962741)
      {
        v5 = v4 == 1935894894;
        v6 = 1935962738;
        goto LABEL_34;
      }

      if (v4 == 1936745334)
      {
        return 1;
      }

      if (v4 == 1936745315)
      {
        return result;
      }

      v10 = 1935962742;
    }

    else if (v4 <= 1852400498)
    {
      if (v4 == 1818456950)
      {
        return 1;
      }

      v10 = 1818457190;
    }

    else
    {
      if (v4 == 1852400499 || v4 == 1935892841)
      {
        return result;
      }

      v10 = 1935893353;
    }

LABEL_39:
    if (v4 == v10)
    {
      return 1;
    }

    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  if (v4 > 1668506479)
  {
    if (v4 <= 1818453109)
    {
      if ((v4 - 1818453106) >= 2 && v4 != 1668506480)
      {
        return HALS_Object::IsPropertySettable(0, a2, a3);
      }

      return result;
    }

    if (v4 != 1818453110)
    {
      if (v4 == 1818456932)
      {
        return result;
      }

      return HALS_Object::IsPropertySettable(0, a2, a3);
    }

    return 1;
  }

  if (v4 <= 1651272547)
  {
    if (v4 != 1650685548)
    {
      v10 = 1651272546;
      goto LABEL_39;
    }

    return 1;
  }

  v5 = v4 == 1651272548 || v4 == 1667591277;
  v6 = 1668049771;
LABEL_34:
  if (!v5 && v4 != v6)
  {
    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_Control::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1818456949)
  {
    if (v4 > 1935893352)
    {
      if (v4 > 1935962741)
      {
        if (v4 <= 1936745333)
        {
          if (v4 != 1935962742)
          {
            if (v4 != 1936745315)
            {
              return 0;
            }

            goto LABEL_87;
          }

LABEL_41:
          v13 = *(a1 + 20);
          v12 = *(a1 + 24);
          v14 = v13 == v12;
          v15 = 1936483442;
LABEL_88:
          if (v13 == v15)
          {
            v14 = 1;
          }

          v25 = v13 != v12 || v13 == v15;
          v26 = v12 == v15;
          if (v14)
          {
            return v25;
          }

          else
          {
            return v26;
          }
        }

        if (v4 == 1936745334)
        {
LABEL_87:
          v13 = *(a1 + 20);
          v12 = *(a1 + 24);
          v14 = v13 == v12;
          v15 = 1936744814;
          goto LABEL_88;
        }

        v8 = 1937007734;
        goto LABEL_65;
      }

      if (v4 != 1935893353 && v4 != 1935894894)
      {
        if (v4 == 1935962738)
        {
          goto LABEL_41;
        }

        return 0;
      }

LABEL_42:
      v16 = *(a1 + 20);
      v9 = *(a1 + 24);
      if (v16 > 1751740517)
      {
        if (v16 == 1751740518 || v16 == 1852601964)
        {
          return result;
        }

        v17 = 1936483188;
      }

      else
      {
        if (v16 == 1668047723 || v16 == 1684370292)
        {
          return result;
        }

        v17 = 1685287523;
      }

      if (v16 == v17)
      {
        return result;
      }

      result = v16 != v9;
      if (v16 == v9)
      {
        return result;
      }

      result = 0;
      if (v9 > 1751740517)
      {
        if (v9 == 1751740518 || v9 == 1936483188)
        {
          return 1;
        }

        v18 = 1852601964;
      }

      else
      {
        if (v9 == 1668047723 || v9 == 1684370292)
        {
          return 1;
        }

        v18 = 1685287523;
      }

      goto LABEL_110;
    }

    if (v4 > 1869638758)
    {
      if (v4 == 1869638759 || v4 == 1870098020)
      {
        return result;
      }

      v7 = 1935892841;
      goto LABEL_36;
    }

    if (v4 != 1818456950 && v4 != 1818457190)
    {
      v7 = 1852400499;
LABEL_36:
      if (v4 != v7)
      {
        return 0;
      }

      goto LABEL_42;
    }

    goto LABEL_29;
  }

  if (v4 > 1668049770)
  {
    if (v4 > 1818453106)
    {
      if (v4 == 1818453107 || v4 == 1818453110)
      {
        goto LABEL_29;
      }

      v6 = 29540;
    }

    else
    {
      if (v4 == 1668049771)
      {
        goto LABEL_42;
      }

      if (v4 == 1668506480)
      {
        return result;
      }

      v6 = 25714;
    }

    if (v4 != (v6 | 0x6C630000))
    {
      return 0;
    }

LABEL_29:
    v10 = *(a1 + 20);
    v9 = *(a1 + 24);
    if (v10 <= 1936028006)
    {
      if (v10 == 1818588780)
      {
        return result;
      }

      v11 = 1886544237;
    }

    else
    {
      if (v10 == 1936028007 || v10 == 1937072758)
      {
        return result;
      }

      v11 = 1986817381;
    }

    if (v10 == v11)
    {
      return result;
    }

    result = v10 != v9;
    if (v10 == v9)
    {
      return result;
    }

    result = 0;
    if (v9 <= 1936028006)
    {
      if (v9 == 1818588780)
      {
        return 1;
      }

      v18 = 1886544237;
    }

    else
    {
      if (v9 == 1936028007 || v9 == 1986817381)
      {
        return 1;
      }

      v18 = 1937072758;
    }

LABEL_110:
    if (v9 != v18)
    {
      return result;
    }

    return 1;
  }

  if (v4 > 1651272547)
  {
    if (v4 != 1651272548)
    {
      if (v4 == 1667591277)
      {
        return result;
      }

      v8 = 1668047219;
LABEL_65:
      if (v4 == v8)
      {
        return result;
      }

      return 0;
    }

    goto LABEL_67;
  }

  if (v4 == 1650682995)
  {
    return result;
  }

  if (v4 != 1650685548)
  {
    if (v4 != 1651272546)
    {
      return 0;
    }

LABEL_67:
    v20 = *(a1 + 20);
    v19 = *(a1 + 24);
    v22 = v20 == 1651273579 || v20 == 1936028002;
    result = v20 != v19 || v22;
    if (v20 != v19 && v20 != 1651273579)
    {
      v24 = v19 == 1651273579 || v19 == 1936028002;
      if (v20 == 1936028002)
      {
        return result;
      }

      else
      {
        return v24;
      }
    }

    return result;
  }

  v28 = *(a1 + 20);
  v27 = *(a1 + 24);
  LODWORD(result) = HALB_Info::IsSubClass(v28, 1953458028);
  v29 = result;
  if (v28 == v27)
  {
    result = result;
  }

  else
  {
    result = 1;
  }

  if (v28 != v27 && (v29 & 1) == 0)
  {

    return HALB_Info::IsSubClass(v27, 1953458028);
  }

  return result;
}

void HALS_Control::HALS_Control(HALS_Object *a1, uint64_t a2, int a3, int a4, HALS_Object *a5, int a6, int a7)
{
  v9 = a5;
  HALS_Object::HALS_Object(a1, a3, a4, a2, a5);
  *v11 = &unk_1F5986D30;
  *(v11 + 48) = v9;
  *(v11 + 52) = a6;
  *(v11 + 56) = *(a2 + 16);
  *(v11 + 60) = a7;
  operator new();
}

void HALS_Control::~HALS_Control(HALS_Control *this)
{
  *this = &unk_1F5986D30;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_MetaSubTap::SetPropertyData(HALS_MetaSubTap *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v41 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8, a5, a6, a7) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v14 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  mSelector = a3->mSelector;
  if (a3->mSelector > 1685218931)
  {
    if (mSelector == 1685218932)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubTap.cpp";
        v39 = 1024;
        v40 = 226;
        v31 = MEMORY[0x1E69E9C10];
        v32 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
        goto LABEL_37;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 0x40000000;
      v36[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_9;
      v36[3] = &__block_descriptor_tmp_10_16220;
      v36[4] = this;
      v36[5] = a5;
      v25 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v25, v36);
      v26 = *(this + 4);
      if (a8)
      {
        v27 = *(a8 + 4);
      }

      else
      {
        v27 = 0;
      }

      strcpy(&buf, "tfrdbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      HALS_Object::PropertiesChanged(this, v26, v27, 1, &buf);
    }

    else
    {
      if (mSelector != 2020373603)
      {
        goto LABEL_27;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubTap.cpp";
        v39 = 1024;
        v40 = 213;
        v31 = MEMORY[0x1E69E9C10];
        v32 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
        goto LABEL_37;
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 0x40000000;
      v37[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
      v37[3] = &__block_descriptor_tmp_8_16218;
      v37[4] = this;
      v37[5] = a3;
      v37[6] = a5;
      v19 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v19, v37);
      v20 = *(this + 4);
      if (a8)
      {
        v21 = *(a8 + 4);
      }

      else
      {
        v21 = 0;
      }

      mScope = a3->mScope;
      buf.mSelector = 2020373603;
      *&buf.mScope = mScope;
      HALS_Object::PropertiesChanged(this, v20, v21, 1, &buf);
    }
  }

  else
  {
    if (mSelector != 1685218913)
    {
      if (mSelector != 1685218929)
      {
        goto LABEL_27;
      }

      if (a4 > 3)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 0x40000000;
        v34[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_13;
        v34[3] = &__block_descriptor_tmp_14_16224;
        v34[4] = this;
        v34[5] = a5;
        v16 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v16, v34);
        v17 = *(this + 4);
        if (a8)
        {
          v18 = *(a8 + 4);
        }

        else
        {
          v18 = 0;
        }

        strcpy(&buf, "qfrdbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        HALS_Object::PropertiesChanged(this, v17, v18, 1, &buf);
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        v33 = __cxa_allocate_exception(0x10uLL);
        *v33 = off_1F5991DD8;
        v33[2] = 561211770;
      }

      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_MetaSubTap.cpp";
      v39 = 1024;
      v40 = 252;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
LABEL_37:
      _os_log_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, v32, &buf, 0x12u);
      goto LABEL_38;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_MetaSubTap.cpp";
      v39 = 1024;
      v40 = 239;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
      goto LABEL_37;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 0x40000000;
    v35[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_11;
    v35[3] = &__block_descriptor_tmp_12_16222;
    v35[4] = this;
    v35[5] = a5;
    v22 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v22, v35);
    v23 = *(this + 4);
    if (a8)
    {
      v24 = *(a8 + 4);
    }

    else
    {
      v24 = 0;
    }

    strcpy(&buf, "afrdbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    HALS_Object::PropertiesChanged(this, v23, v24, 1, &buf);
  }

LABEL_27:
  HALS_ObjectMap::ReleaseObject(v14, v13);
  v29 = *MEMORY[0x1E69E9840];
}

void sub_1DE66C25C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_MetaSubTap::GetPropertyData(HALS_MetaSubTap *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v31 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9, a5, a6, a7, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v20 = 2003332927;
    goto LABEL_29;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1685218931)
  {
    if (mSelector == 1685218932)
    {
      if (a4 > 3)
      {
        v15 = v25;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 0x40000000;
        v25[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
        v25[3] = &__block_descriptor_tmp_3_16229;
        v25[4] = this;
        v25[5] = a6;
        goto LABEL_15;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136315394;
      v28 = "HALS_MetaSubTap.cpp";
      v29 = 1024;
      v30 = 170;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
      goto LABEL_27;
    }

    if (mSelector != 2020373603)
    {
      goto LABEL_17;
    }

    if (a4 > 7)
    {
      v15 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v26[3] = &__block_descriptor_tmp_16227;
      v26[4] = this;
      v26[5] = a6;
      v26[6] = a3;
      v16 = 8;
LABEL_16:
      v17 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v17, v15);
      *a5 = v16;
      goto LABEL_17;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v28 = "HALS_MetaSubTap.cpp";
    v29 = 1024;
    v30 = 161;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
LABEL_27:
    _os_log_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v20 = 561211770;
LABEL_29:
    exception[2] = v20;
  }

  if (mSelector == 1685218913)
  {
    if (a4 > 3)
    {
      v15 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_4;
      v24[3] = &__block_descriptor_tmp_5_16231;
      v24[4] = this;
      v24[5] = a6;
      goto LABEL_15;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v28 = "HALS_MetaSubTap.cpp";
    v29 = 1024;
    v30 = 179;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
    goto LABEL_27;
  }

  if (mSelector == 1685218929)
  {
    if (a4 > 3)
    {
      v15 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_6;
      v23[3] = &__block_descriptor_tmp_7_16233;
      v23[4] = this;
      v23[5] = a6;
LABEL_15:
      v16 = 4;
      goto LABEL_16;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v28 = "HALS_MetaSubTap.cpp";
    v29 = 1024;
    v30 = 188;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
    goto LABEL_27;
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
}

double ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 4 * (**(a1 + 48) == 1768845428) + 80);
  result = *&a2;
  **(a1 + 40) = result;
  return result;
}

uint64_t HALS_MetaSubTap::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 96))(a1, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v7 = *a3;
  if (*a3 == 2020373603)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 1685218932)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 1685218929)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (v7 == 1685218913)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  if (v7 <= 1685218931)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t HALS_MetaSubTap::IsPropertySettable(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  result = 1;
  if (((*a3 - 1685218913) > 0x13 || ((1 << (*a3 - 97)) & 0x90001) == 0) && *a3 != 2020373603)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_MetaSubTap::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (result)
  {
    v6 = *a3;
    if (*a3 > 1685218931)
    {
      if (v6 == 1685218932)
      {
        return 1;
      }

      else if (v6 == 2020373603)
      {
        v7 = a3[1];
        return v7 == 1768845428 || v7 == 1869968496;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v6 == 1685218913 || v6 == 1685218929;
    }
  }

  return result;
}

void HALS_MetaSubTap::~HALS_MetaSubTap(HALS_MetaSubTap *this)
{
  *this = &unk_1F5986E30;
  CACFString::~CACFString((this + 56));
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5986E30;
  CACFString::~CACFString((this + 56));

  HALS_Object::~HALS_Object(this);
}

uint64_t HALS_PDPControl::SetPropertyData(HALS_PDPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, unsigned int a6, const void *a7, HALS_Client *a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (HALS_ObjectMap::CopyObjectByObjectID(*(this + 14)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "HALS_PDPControl.cpp";
      v34 = 1024;
      v35 = 146;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPControl::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    v28 = 560947818;
LABEL_26:
    *v27 = off_1F5991DD8;
    v27[2] = v28;
  }

  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v13))
  {
    v14 = atomic_load(0xA0);
    v15 = a8 ? *(a8 + 60) : getpid();
    if (v14 != -1 && v14 != v15)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      v28 = 560492391;
      goto LABEL_26;
    }
  }

  v16 = *(this + 5);
  if (v16 == 1986817381 || v16 == 1836414053)
  {
    operator new();
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector == 1937007734)
    {
      goto LABEL_18;
    }

    v18 = 1869638759;
  }

  else
  {
    if (mSelector == 1650682995)
    {
      goto LABEL_18;
    }

    v18 = 1668047219;
  }

  if (mSelector != v18)
  {
    HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, a3, a6, a7, a4, a5);
    goto LABEL_20;
  }

LABEL_18:
  v19 = *(this + 4);
  mScope = a3->mScope;
  mElement = a3->mElement;
  kdebug_trace();
  HALS_Control::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
  v22 = *(this + 4);
  v23 = a3->mSelector;
  kdebug_trace();
LABEL_20:
  result = pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE66CF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, HALS_ObjectMap *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v22);
  HALS_ObjectMap::ReleaseObject(a12, v24);
  _Unwind_Resume(a1);
}

uint64_t HALS_PDPControl::GetPropertyData(HALS_PDPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1852400498)
  {
    v18 = mSelector == 1650682995;
    v19 = 1668047219;
  }

  else
  {
    if (mSelector == 1852400499)
    {
      *a5 = a4;
      v22 = *(this + 9);
      *&v25.mSelector = 0x676C6F626C6E616DLL;
      v25.mElement = 0;
      return HALS_PDPUCPlugIn::ObjectGetPropertyData(*(v22 + 72), a2, &v25, a7, a8, a5, a6);
    }

    v18 = mSelector == 1937007734;
    v19 = 1869638759;
  }

  if (v18 || mSelector == v19)
  {

    return HALS_Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 9) + 72);

    return HALS_PDPUCPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_PDPControl::GetPropertyDataSize(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  if (((*(*a1 + 96))(a1, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1852400498)
  {
    v12 = mSelector == 1650682995;
    v13 = 1668047219;
  }

  else
  {
    v12 = mSelector == 1852400499 || mSelector == 1937007734;
    v13 = 1869638759;
  }

  if (v12 || mSelector == v13)
  {

    return HALS_Control::GetPropertyDataSize(a1, a2, a3);
  }

  else
  {
    v16 = *(a1[9] + 64);

    return HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v16, a2, a3, a4, a5);
  }
}

uint64_t HALS_PDPControl::IsPropertySettable(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3)
{
  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1852400498)
  {
    v7 = mSelector == 1650682995;
    v8 = 1668047219;
  }

  else
  {
    v7 = mSelector == 1852400499 || mSelector == 1937007734;
    v8 = 1869638759;
  }

  if (v7 || mSelector == v8)
  {

    return HALS_Control::IsPropertySettable(a1, a2, a3);
  }

  else
  {
    v11 = *(a1[9] + 56);

    return HALS_PDPUCPlugIn::ObjectIsPropertySettable(v11, a2, a3);
  }
}

uint64_t HALS_PDPControl::HasProperty(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (result)
  {
    v8 = *a3;
    if (*a3 <= 1852400498)
    {
      v9 = v8 == 1650682995;
      v10 = 1668047219;
    }

    else
    {
      v9 = v8 == 1852400499 || v8 == 1937007734;
      v10 = 1869638759;
    }

    if (v9 || v8 == v10)
    {

      return HALS_Control::HasProperty(a1, a2, a3);
    }

    else
    {
      return (*(a1[9] + 48))(a2, a3) != 0;
    }
  }

  return result;
}

void HALS_PDPControl::~HALS_PDPControl(HALS_PDPControl *this)
{
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_PDPControl::Activate(HALS_PDPControl *this)
{
  v7.mElement = 0;
  v8 = 4;
  v2 = *(this + 9);
  v3 = *(this + 4);
  *&v7.mSelector = 0x676C6F6263736370;
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(v2 + 72), v3, &v7, 0, 0, &v8, this + 48);
  v7.mElement = 0;
  v8 = 4;
  v4 = *(this + 9);
  v5 = *(this + 4);
  *&v7.mSelector = 0x676C6F6263656C6DLL;
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(v4 + 72), v5, &v7, 0, 0, &v8, this + 52);
  HALS_Object::Activate(this, v6);
}

uint64_t AMCP::get_system_property_traits_list(AMCP *this)
{
  {
    AMCP::get_system_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_system_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_system_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_system_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_system_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_system_property_traits_list(void)::$_0 &&>>()
{
  v23[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1886152483, 1, 0, 0, &AMCP::Property_Traits<1886152483u>::k_valid_scopes, &AMCP::Property_Traits<1668577315u>::k_valid_scopes, 0, 1886152483, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1651472419, 1, 0, 0, &AMCP::Property_Traits<1651472419u>::k_valid_scopes, &AMCP::Property_Traits<1668049699u>::k_valid_scopes, 0, 1651472419, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668049699, 1, 0, 0, &AMCP::Property_Traits<1668049699u>::k_valid_scopes, &AMCP::Property_Traits<1684370979u>::k_valid_scopes, 0, 1668049699, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1684370979, 1, 0, 0, &AMCP::Property_Traits<1684370979u>::k_valid_scopes, "N14mcp_applesauce2CF15PropertyListRefE", 0, 1684370979, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1668577315, 1, 0, 0, &AMCP::Property_Traits<1668577315u>::k_valid_scopes, &AMCP::Property_Traits<1852793891u>::k_valid_scopes, 0, 0, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v23, 1852793891, 1, 0, 0, &AMCP::Property_Traits<1852793891u>::k_valid_scopes, &AMCP::Property_Traits<1651861860u>::k_valid_scopes, 0, 0, 14);
  operator new();
}

void sub_1DE66DD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1152;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

std::string *AMCP::IO_Core::Stream_Connection::Stream_Connection(std::string *this, __int128 *a2, std::string::size_type a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v14;
  }

  v15 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v15;
  this[1].__r_.__value_.__r.__words[2] = a3;
  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v30 = 0;
  v31 = 0;
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&this[3], &v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v16 = *a5;
  v17 = a5[1];
  this[7].__r_.__value_.__r.__words[2] = *(a5 + 4);
  *&this[7].__r_.__value_.__l.__data_ = v17;
  *&this[6].__r_.__value_.__r.__words[1] = v16;
  *&this[8].__r_.__value_.__l.__data_ = *a7;
  *a7 = 0;
  *(a7 + 8) = 0;
  this[11].__r_.__value_.__s.__data_[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  this[11].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__s.__data_[8] = 0;
  v18 = *(a6 + 16);
  v19 = *(a6 + 32);
  *&this[12].__r_.__value_.__l.__data_ = *a6;
  *&this[12].__r_.__value_.__r.__words[2] = v18;
  this[13].__r_.__value_.__l.__size_ = v19;
  this[13].__r_.__value_.__r.__words[2] = 0;
  this[14].__r_.__value_.__r.__words[0] = 0;
  this[14].__r_.__value_.__l.__size_ = 0;
  if (*a5 != *a6 || *(a5 + 2) != *(a6 + 8) || *(a5 + 3) != *(a6 + 12) || *(a5 + 4) != *(a6 + 16) || *(a5 + 5) != *(a6 + 20) || *(a5 + 6) != *(a6 + 24) || *(a5 + 7) != *(a6 + 28) || *(a5 + 8) != *(a6 + 32))
  {
    outAudioConverter = 0;
    if (a4)
    {
      v21 = a6;
    }

    else
    {
      v21 = a5;
    }

    if (a4)
    {
      v22 = a5;
    }

    else
    {
      v22 = a6;
    }

    v23 = AudioConverterNew(v21, v22, &outAudioConverter);
    if (!v23)
    {
      operator new();
    }

    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v23);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v43 = "Stream_Connection.cpp";
      v44 = 1024;
      v45 = 261;
      v46 = 2080;
      v47 = "err";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to create audio format converter for stream connection", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v33, "Failed to create audio format converter for stream connection");
    std::runtime_error::runtime_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5992170;
    v35 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
    v48 = "void AMCP::IO_Core::Stream_Connection::configure_audio_converter(AMCP::Direction, const CA::StreamDescription &, const CA::StreamDescription &)";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
    v50 = 261;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100](&this[14].__r_.__value_.__l.__size_, 0);
  data = this[14].__r_.__value_.__l.__data_;
  this[13].__r_.__value_.__r.__words[2] = 0;
  this[14].__r_.__value_.__r.__words[0] = 0;
  if (data)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](data);
  }

  v24 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE66E1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  MEMORY[0x1E12C1730](v30, 0x10A1C404618BBCFLL);
  std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100]((v29 + 344), 0);
  v32 = *(v29 + 336);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v29 + 280);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v29 + 264) == 1)
  {
    v34 = *(v29 + 256);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  v35 = *(v29 + 216);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v29 + 200);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v29 + 72));
  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Stream_Connection::get_unique_read_range(AMCP::IO_Core::Stream_Connection *this)
{
  v3 = *(this + 7);
  v2 = *(this + 8);
  v4 = *(this + 24);
  v5 = *(this + 25);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 72))(v6);
  AMCP::DAL::DAL_Time::get_sample_time(v6);
  AMCP::DAL::DAL_Time::get_sample_time(&v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE66E418(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IO_Core::Stream_Connection::maybe_capture_audio(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 272);
  v3 = *(a1 + 280);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    if ((*(a1 + 264) & 1) == 0)
    {
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "Stream_Connection.cpp";
        v22 = 1024;
        v23 = 204;
        v24 = 2080;
        v25 = "not (m_current_time_for_audio_capture)";
        _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s cycle data must have been captured for this cycle before we can write to the file", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("cycle data must have been captured for this cycle before we can write to the file", &v11);
      std::logic_error::logic_error(&v12, &v11);
      v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v13, &v12);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = -1;
      v13.__vftable = &unk_1F5991430;
      v14 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
      v26 = "void AMCP::IO_Core::Stream_Connection::maybe_capture_audio(const DAL::Readable_Range &)";
      v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
      v28 = 204;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
    }

    AMCP::DAL::create_timestamp_data(buf, (a1 + 224), *(a2 + 24), *(a2 + 32));
    (*(**v4 + 16))(*v4, buf, a2);
    std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(buf);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE66E72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table((v25 - 128));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::IO_Core::Stream_Connection::get_converter_buffer(AMCP::Log::AMCP_Scope_Registry *this, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 328);
  if (!v2)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "Stream_Connection.cpp";
      v21 = 1024;
      v22 = 220;
      v23 = 2080;
      v24 = "not (m_converter_buffer)";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no converter buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("no converter buffer", &v10);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "std::shared_ptr<DAL::DAL_Buffer> AMCP::IO_Core::Stream_Connection::get_converter_buffer() const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
    v27 = 220;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v3 = *(a2 + 336);
  *this = v2;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE66EA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::DAL::DAL_Settings>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59870A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_Stream::GetPropertyData(HALS_Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v41 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1935894637)
  {
    if (mSelector > 1885762622)
    {
      if (mSelector > 1885762668)
      {
        if (mSelector == 1885762669)
        {
          if (a4 <= 0x27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Stream.cpp";
              v39 = 1024;
              v40 = 389;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          goto LABEL_70;
        }

        if (mSelector != 1935762292)
        {
          goto LABEL_73;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v39 = 1024;
            v40 = 274;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive", buf, 0x12u);
          }

          v19 = __cxa_allocate_exception(0x10uLL);
          *v19 = off_1F5991DD8;
          v19[2] = 561211770;
        }

LABEL_49:
        v15 = 1;
        goto LABEL_50;
      }

      if (mSelector == 1885762623)
      {
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v39 = 1024;
            v40 = 380;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported", buf, 0x12u);
          }

          v27 = __cxa_allocate_exception(0x10uLL);
          *v27 = off_1F5991DD8;
          v27[2] = 561211770;
        }

        goto LABEL_70;
      }

      v17 = 29793;
    }

    else
    {
      if (mSelector <= 1885762591)
      {
        if (mSelector == 1819107691)
        {
          v24 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
          v26 = v24;
          if (v24)
          {
            strcpy(buf, "kamlbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            (*(*v24 + 120))(v24, *(this + 7), buf, a4, a5, a6, a7, a8, a9);
          }

          HALS_ObjectMap::ReleaseObject(v26, v25);
          goto LABEL_72;
        }

        if (mSelector != 1819569763)
        {
          goto LABEL_73;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v39 = 1024;
            v40 = 310;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyLatency", buf, 0x12u);
          }

          v36 = __cxa_allocate_exception(0x10uLL);
          *v36 = off_1F5991DD8;
          v36[2] = 561211770;
        }

        *a6 = 0;
        v15 = *a6 + HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
LABEL_50:
        *a6 = v15;
LABEL_53:
        v21 = 4;
LABEL_71:
        *a5 = v21;
        goto LABEL_72;
      }

      if (mSelector == 1885762592)
      {
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v39 = 1024;
            v40 = 359;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat", buf, 0x12u);
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          *v28 = off_1F5991DD8;
          v28[2] = 561211770;
        }

        goto LABEL_70;
      }

      v17 = 29731;
    }

    if (mSelector != (v17 | 0x70660000))
    {
      goto LABEL_73;
    }

    goto LABEL_47;
  }

  if (mSelector <= 1936092512)
  {
    if (mSelector > 1936092450)
    {
      if (mSelector != 1936092451)
      {
        if (mSelector != 1936092479)
        {
          goto LABEL_73;
        }

        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v39 = 1024;
            v40 = 341;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported", buf, 0x12u);
          }

          v18 = __cxa_allocate_exception(0x10uLL);
          *v18 = off_1F5991DD8;
          v18[2] = 561211770;
        }

LABEL_70:
        a6[4] = 0;
        *a6 = 0u;
        *(a6 + 1) = 0u;
        v21 = 40;
        goto LABEL_71;
      }

LABEL_47:
      *a5 = 0;
LABEL_72:
      v30 = *MEMORY[0x1E69E9840];
      return;
    }

    if (mSelector != 1935894638)
    {
      if (mSelector == 1935960434)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v39 = 1024;
            v40 = 283;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection", buf, 0x12u);
          }

          v32 = __cxa_allocate_exception(0x10uLL);
          *v32 = off_1F5991DD8;
          v32[2] = 561211770;
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 0x40000000;
        v37[2] = ___ZNK11HALS_Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
        v37[3] = &__block_descriptor_tmp_16389;
        v37[4] = this;
        v37[5] = a6;
        v16 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v16, v37);
        goto LABEL_53;
      }

      goto LABEL_73;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Stream.cpp";
        v39 = 1024;
        v40 = 301;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel", buf, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = off_1F5991DD8;
      v33[2] = 561211770;
    }

    goto LABEL_49;
  }

  if (mSelector <= 1936092531)
  {
    if (mSelector != 1936092513)
    {
      if (mSelector != 1936092525)
      {
        goto LABEL_73;
      }

      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v39 = 1024;
          v40 = 350;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch", buf, 0x12u);
        }

        v20 = __cxa_allocate_exception(0x10uLL);
        *v20 = off_1F5991DD8;
        v20[2] = 561211770;
      }

      goto LABEL_70;
    }

    goto LABEL_47;
  }

  switch(mSelector)
  {
    case 1936092532:
      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v39 = 1024;
          v40 = 320;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat", buf, 0x12u);
        }

        v35 = __cxa_allocate_exception(0x10uLL);
        *v35 = off_1F5991DD8;
        v35[2] = 561211770;
      }

      goto LABEL_70;
    case 1952542835:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v39 = 1024;
          v40 = 398;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream", buf, 0x12u);
        }

        v34 = __cxa_allocate_exception(0x10uLL);
        *v34 = off_1F5991DD8;
        v34[2] = 561211770;
      }

      goto LABEL_52;
    case 1952805485:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v39 = 1024;
          v40 = 292;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType", buf, 0x12u);
        }

        v14 = __cxa_allocate_exception(0x10uLL);
        *v14 = off_1F5991DD8;
        v14[2] = 561211770;
      }

LABEL_52:
      *a6 = 0;
      goto LABEL_53;
  }

LABEL_73:
  v31 = *MEMORY[0x1E69E9840];

  HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

uint64_t HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(HALS_Stream *this, HALS_Client *a2)
{
  if (!AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    return 0;
  }

  if (a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 8);
  std::mutex::lock((v6 + 24));
  v7 = *(v6 + 96);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v6 + 96;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != v6 + 96 && *(v8 + 32) <= v4)
  {
    v5 = *(v8 + 40);
  }

  else
  {
LABEL_14:
    v5 = 0;
  }

  std::mutex::unlock((v6 + 24));
  return v5;
}

uint64_t HALS_Stream::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 <= 1935894637)
  {
    if (v3 > 1885762622)
    {
      if (v3 > 1885762668)
      {
        if (v3 == 1885762669)
        {
          return 40;
        }

        v4 = 1935762292;
LABEL_25:
        if (v3 == v4)
        {
          return 4;
        }

        return HALS_Object::GetPropertyDataSize(a1, a2, a3);
      }

      if (v3 == 1885762623)
      {
        return 40;
      }

      v5 = 29793;
    }

    else
    {
      if (v3 <= 1885762591)
      {
        if (v3 == 1819107691)
        {
          return 8;
        }

        v4 = 1819569763;
        goto LABEL_25;
      }

      if (v3 == 1885762592)
      {
        return 40;
      }

      v5 = 29731;
    }

    if (v3 != (v5 | 0x70660000))
    {
      return HALS_Object::GetPropertyDataSize(a1, a2, a3);
    }

    return 0;
  }

  if (v3 <= 1936092512)
  {
    if (v3 <= 1936092450)
    {
      if (v3 == 1935894638)
      {
        return 4;
      }

      v4 = 1935960434;
      goto LABEL_25;
    }

    if (v3 != 1936092451)
    {
      v6 = 27967;
      goto LABEL_29;
    }

    return 0;
  }

  if (v3 > 1936092531)
  {
    if (v3 != 1936092532)
    {
      if (v3 != 1952542835)
      {
        v4 = 1952805485;
        goto LABEL_25;
      }

      return 4;
    }

    return 40;
  }

  if (v3 == 1936092513)
  {
    return 0;
  }

  v6 = 28013;
LABEL_29:
  if (v3 == (v6 | 0x73660000))
  {
    return 40;
  }

  return HALS_Object::GetPropertyDataSize(a1, a2, a3);
}

uint64_t HALS_Stream::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 > 1935894637)
  {
    if (v4 <= 1936092512)
    {
      if (v4 <= 1936092450)
      {
        v6 = v4 == 1935894638;
        v7 = 1935960434;
        goto LABEL_24;
      }

      v6 = v4 == 1936092451;
      v8 = 27967;
    }

    else
    {
      if (v4 > 1936092531)
      {
        if (v4 != 1952805485 && v4 != 1952542835)
        {
          if (v4 != 1936092532)
          {
            return HALS_Object::IsPropertySettable(0, a2, a3);
          }

          return 1;
        }

        return result;
      }

      v6 = v4 == 1936092513;
      v8 = 28013;
    }

    v7 = v8 | 0x73660000;
LABEL_24:
    if (!v6 && v4 != v7)
    {
      return HALS_Object::IsPropertySettable(0, a2, a3);
    }

    return result;
  }

  if (v4 > 1885762622)
  {
    if (v4 > 1885762668)
    {
      v6 = v4 == 1885762669;
      v7 = 1935762292;
    }

    else
    {
      v6 = v4 == 1885762623;
      v7 = 1885762657;
    }

    goto LABEL_24;
  }

  if (v4 <= 1885762591)
  {
    v6 = v4 == 1819107691;
    v7 = 1819569763;
    goto LABEL_24;
  }

  if (v4 == 1885762592)
  {
    return 1;
  }

  if (v4 != 1885762595)
  {
    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_Stream::HasProperty(HALS_Stream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  v5 = 1;
  if (a3->mSelector > 1935762291)
  {
    if (mSelector <= 1936092478)
    {
      if (mSelector > 1935960433)
      {
        if (mSelector == 1935960434)
        {
          return v5;
        }

        v9 = 1936092451;
      }

      else
      {
        if (mSelector == 1935762292)
        {
          return v5;
        }

        v9 = 1935894638;
      }

      goto LABEL_33;
    }

    if (mSelector > 1937007733)
    {
      if (mSelector == 1937007734)
      {
        return v5;
      }

      if (mSelector != 1952542835)
      {
        v9 = 1952805485;
LABEL_33:
        if (mSelector == v9)
        {
          return v5;
        }
      }
    }

    else
    {
      v8 = mSelector - 1936092479;
      if (v8 <= 0x35 && ((1 << v8) & 0x20400400000001) != 0)
      {
        return v5;
      }
    }

    return 0;
  }

  if (mSelector <= 1870098019)
  {
    if (mSelector <= 1819107690)
    {
      if (mSelector == 1650682995)
      {
        return v5;
      }

      v9 = 1668047219;
    }

    else
    {
      if (mSelector == 1819107691)
      {
        v12 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
        v14 = v12;
        if (v12)
        {
          v16 = 0x676C6F626C6D616BLL;
          v17 = 0;
          v5 = (*(*v12 + 96))(v12, *(this + 7), &v16, a4);
        }

        else
        {
          v5 = 0;
        }

        HALS_ObjectMap::ReleaseObject(v14, v13);
        return v5;
      }

      if (mSelector == 1819569763)
      {
        return v5;
      }

      v9 = 1869638759;
    }

    goto LABEL_33;
  }

  if (mSelector > 1885762656)
  {
    if (mSelector == 1885762657)
    {
      return v5;
    }

    v9 = 1885762669;
    goto LABEL_33;
  }

  if (((mSelector - 1885762592) > 0x1F || ((1 << (mSelector - 32)) & 0x80000009) == 0) && mSelector != 1870098020)
  {
    return 0;
  }

  return v5;
}

void HALS_Stream::~HALS_Stream(HALS_Stream *this)
{
  HALS_Stream::~HALS_Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987148;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_Stream::HALS_Stream(uint64_t a1, HALS_Stream *this, uint64_t a3, char a4, int a5)
{
  v8 = this;
  if (HALB_Info::IsStandardClass(this))
  {
    v11 = v8;
  }

  else
  {
    v11 = 1634956402;
  }

  HALS_Object::HALS_Object(a1, v8, v11, a3, v10);
  *a1 = &unk_1F5987148;
  *(a1 + 48) = *(a3 + 16);
  *(a1 + 52) = a4;
  *(a1 + 56) = a5;
  operator new();
}

void HALS_Stream::GetCurrentVirtualFormat(HALS_Stream *this, AudioStreamBasicDescription *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  strcpy(buf, "tmfsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  LODWORD(v21[0]) = 0;
  v5 = (*(*this + 120))(this, v4, buf, 40, v21, a2, 0, 0, 0);
  if (a2->mSampleRate <= 0.0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "HALS_Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 444;
      *&buf[18] = 1024;
      *&buf[20] = v20;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Invalid stream virtual format %u sample rate is 0", buf, 0x18u);
    }
  }

  v10 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v12 = v10;
  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3002000000;
    v23 = __Block_byref_object_copy__66_20170;
    v24 = __Block_byref_object_dispose__67_20171;
    v25 = 0;
    v26 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZNK11HALS_Device39GetClientChannelCountFromDSPDescriptionEv_block_invoke;
    v21[3] = &unk_1E86789E0;
    v21[4] = buf;
    v21[5] = v10;
    v13 = (*(*v10 + 64))(v10);
    HALB_CommandGate::ExecuteCommand(v13, v21);
    v14 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
    if ((v14 & 0x100000000) != 0)
    {
      mFormatFlags = a2->mFormatFlags;
      if ((mFormatFlags & 0x20) != 0)
      {
        mChannelsPerFrame = 1;
      }

      else
      {
        mChannelsPerFrame = a2->mChannelsPerFrame;
        if (!mChannelsPerFrame)
        {
          v17 = (a2->mBitsPerChannel + 7) >> 3;
LABEL_16:
          v18 = v17 * v14;
          a2->mFormatFlags = mFormatFlags & 0xFFFFFFDF;
          a2->mBytesPerPacket = v18;
          a2->mFramesPerPacket = 1;
          a2->mBytesPerFrame = v18;
          a2->mChannelsPerFrame = v14;
          goto LABEL_17;
        }
      }

      v17 = a2->mBytesPerFrame / mChannelsPerFrame;
      goto LABEL_16;
    }
  }

LABEL_17:
  HALS_ObjectMap::ReleaseObject(v12, v11);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1DE670358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Stream::ApplyHostedDSPModifiersForClient(HALS_Stream *this, HALS_ObjectMap *a2, int a3)
{
  updated = HALS_DSPHostPerClientStreamEdits::update_stream_with_modifiers(this, a2);
  if (a3 && updated)
  {
    v7 = *(*(this + 1) + 28);
    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(&v13, 0, v12);
    v9 = HALS_System::CopyDeviceByObjectID(v13, v7, 0);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v9)
    {
      v10 = HALS_ObjectMap::CopyObjectByObjectID(a2);
      HALS_ObjectMap::ReleaseObject(v10, v11);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }
}

void DSP_Host_OffloadDictionary::make_empty(DSP_Host_OffloadDictionary *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v9 = Mutable;
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  v3 = cf;
  cf = 0;
  v8 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v5 = *(this + 2);
  *(this + 2) = v3;
  v8 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE670570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_OffloadDictionary::get_debug_string(DSP_Host_OffloadDictionary *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v4 = *(a2 + 16);
  if (v4 && CFDictionaryGetCount(v4))
  {
    DSP_Host_OffloadDictionary::get_offload_id_list(&v18, a2);
    v5 = v18;
    v6 = v19;
    if (v18 != v19)
    {
      v7 = "'";
      do
      {
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
        }

        else
        {
          v8 = *v5;
          __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        v9 = strlen(v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v7, v9);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, p_p, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "'", 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 = (v5 + 24);
        v7 = " '";
      }

      while (v5 != v6);
    }

    __p.__r_.__value_.__r.__words[0] = &v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "<no offloads>", 13);
  }

  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      *(this + 23) = 0;
      goto LABEL_32;
    }

    locale = v23[1].__locale_;
    v13 = v23[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v12;
  if (v12)
  {
    memmove(this, locale, v12);
  }

LABEL_32:
  *(this + v12) = 0;
  v20[0] = *MEMORY[0x1E69E54D8];
  v15 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v15;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v29);
}

void sub_1DE6708F0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);
  MEMORY[0x1E12C15F0](va);
  _Unwind_Resume(a1);
}

void DSP_Host_OffloadDictionary::get_offload_id_list(DSP_Host_OffloadDictionary *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 16);
  if (v3 && CFDictionaryGetCount(v3))
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Count = CFDictionaryGetCount(v5);
    __p[0] = 0;
    std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count);
    CFDictionaryGetKeysAndValues(*(a2 + 16), keys, 0);
    v7 = keys;
    v8 = v16;
    if (keys != v16)
    {
      do
      {
        applesauce::CF::StringRef::from_get(&cf, *v7);
        if (!cf)
        {
          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
          __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_as<std::string,0>(__p, cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v14 == 1)
        {
          std::vector<std::string>::push_back[abi:ne200100](this, __p);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v7;
      }

      while (v7 != v8);
      v7 = keys;
    }

    if (v7)
    {
      v16 = v7;
      operator delete(v7);
    }
  }
}

void sub_1DE670AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  __cxa_free_exception(v18);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_OffloadDictionary::has_id(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3 || !CFDictionaryGetCount(v3))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (!v7)
  {
    return applesauce::CF::details::has_key<applesauce::CF::StringRef>(v5, 0);
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  if (!v9)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v9;
  v11 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(*(a1 + 16), v9);
  CFRelease(v10);
  return v11;
}

void sub_1DE670C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_OffloadDictionary::has_all_id(DSP_Host_OffloadDictionary *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "all available");
  has_id = DSP_Host_OffloadDictionary::has_id(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return has_id;
}

void sub_1DE670CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

DSP_Host_OffloadDictionary *DSP_Host_OffloadDictionary::remove(DSP_Host_OffloadDictionary *this, const DSP_Host_OffloadDictionary *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    if (CFDictionaryGetCount(v3))
    {
      v5 = *(a2 + 2);
      if (v5)
      {
        if (CFDictionaryGetCount(v5))
        {
          if (DSP_Host_OffloadDictionary::has_all_id(a2))
          {
            DSP_Host_OffloadDictionary::make_empty(this);
          }

          else
          {
            DSP_Host_OffloadDictionary::get_offload_id_list(&v28, this);
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
            v27 = Mutable;
            v7 = v28;
            for (i = v29; v7 != i; v7 = (v7 + 24))
            {
              if (*(v7 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v26, *v7, *(v7 + 1));
              }

              else
              {
                v9 = *v7;
                v26.__r_.__value_.__r.__words[2] = *(v7 + 2);
                *&v26.__r_.__value_.__l.__data_ = v9;
              }

              if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v10 = &v26;
              }

              else
              {
                v10 = v26.__r_.__value_.__r.__words[0];
              }

              if (v10)
              {
                if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v26.__r_.__value_.__l.__size_;
                }

                v10 = CFStringCreateWithBytes(0, v10, size, 0x8000100u, 0);
                cf = v10;
                if (!v10)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              else
              {
                cf = 0;
              }

              v12 = *(a2 + 2);
              if (!v12)
              {
                v19 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v19, "Could not construct");
                __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              if (!applesauce::CF::details::has_key<applesauce::CF::StringRef &>(v12, v10))
              {
                v13 = *(this + 2);
                if (!v13)
                {
                  v21 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v21, "Could not construct");
                  __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef &>(&v23, v13, cf);
                if (v24 == 1)
                {
                  v14 = v23;
                  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(Mutable, cf, v23);
                  if (v14)
                  {
                    CFRelease(v14);
                  }
                }
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v26.__r_.__value_.__l.__data_);
              }
            }

            mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v23, Mutable);
            v15 = v23;
            v23 = 0;
            v26.__r_.__value_.__r.__words[0] = v15;
            if (v15)
            {
              v16 = CFGetTypeID(v15);
              if (v16 != CFDictionaryGetTypeID())
              {
                v22 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v22, "Could not construct");
                __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }
            }

            v17 = *(this + 2);
            *(this + 2) = v15;
            v26.__r_.__value_.__r.__words[0] = v17;
            if (v17)
            {
              CFRelease(v17);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            v26.__r_.__value_.__r.__words[0] = &v28;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
          }
        }
      }
    }
  }

  return this;
}

void sub_1DE671024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, char a12, __int16 *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&__p);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a20);
  __p = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_OffloadDictionary::has_same_ids(uint64_t a1, char **a2)
{
  DSP_Host_OffloadDictionary::get_offload_id_list(&v14, a1);
  v3 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  if (v15 == v14)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(v14, v15, v4, 1);
  v5 = a2[1];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3));
  if (v5 == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(*a2, v5, v7, 1);
  v8 = v14;
  v9 = v15;
  v11 = a2;
  v10 = *a2;
  if (v15 - v14 == v11[1] - v10)
  {
    if (v14 == v15)
    {
      v12 = 1;
    }

    else
    {
      do
      {
        v12 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v8, v10);
        if (!v12)
        {
          break;
        }

        v8 += 24;
        v10 += 24;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  return v12;
}

BOOL DSP_Host_OffloadDictionary::has_same_ids(DSP_Host_OffloadDictionary *this, const DSP_Host_OffloadDictionary *a2)
{
  DSP_Host_OffloadDictionary::get_offload_id_list(&v6, a2);
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
  has_same_ids = DSP_Host_OffloadDictionary::has_same_ids(this, v5);
  v8 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  return has_same_ids;
}

void sub_1DE671284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  *(v14 - 24) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  _Unwind_Resume(a1);
}

DSP_Host_OffloadDictionary *DSP_Host_OffloadDictionary::deep_copy_from(DSP_Host_OffloadDictionary *this, const __CFString *a2)
{
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = PropertyListDeepImmutableCopy(a2);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v8 = *(this + 2);
    *(this + 2) = v6;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return this;
}

void sub_1DE67140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DSP_Host_OffloadDictionary>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x1E12C1730](v2, 0x60C40149E097CLL);
  }

  return a1;
}

const __CFDictionary *DSP_Host_OffloadDictionary::deep_copy_to(DSP_Host_OffloadDictionary *this, __CFDictionary *a2, const char *a3)
{
  result = *(this + 2);
  if (result)
  {
    result = CFDictionaryGetCount(result);
    if (a3)
    {
      if (a2)
      {
        if (result)
        {
          DSP_Host_OffloadDictionary::deep_copy(&v6);
        }
      }
    }
  }

  return result;
}

void sub_1DE6715F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  std::unique_ptr<DSP_Host_OffloadDictionary>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void DSP_Host_OffloadDictionary::deep_copy_to(DSP_Host_OffloadDictionary *this, __CFDictionary **a2, const char *a3)
{
  v4 = *(this + 2);
  if (v4)
  {
    Count = CFDictionaryGetCount(v4);
    if (a3)
    {
      if (Count)
      {
        v8 = PropertyListDeepImmutableCopy(*(this + 2));
        v12 = &unk_1F5991008;
        v13 = v8;
        v9 = strlen(a3);
        v10 = CFStringCreateWithBytes(0, a3, v9, 0x8000100u, 0);
        if (!v10)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        OS::CF::MutableDictionary::SetValueForKey<OS::CF::Dictionary>(a2[1], v10, v13);
        CFRelease(v10);
        OS::CF::UntypedObject::~UntypedObject(&v12);
      }
    }
  }
}

void sub_1DE671740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  OS::CF::UntypedObject::~UntypedObject(va1);
  _Unwind_Resume(a1);
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::Dictionary>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

void HALS_PlugInObject::CacheCustomPropertyInfo(HALS_PlugInObject *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x1E12C1700](v2, 0x1000C803E1C8BA9);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
  v3 = *(this + 1);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 5);
  v13 = 0x676C6F6263757374;
  v14 = 0;
  v7 = (*(*v4 + 544))(v4, v6, 0, &v13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7)
  {
    v8 = *(this + 1);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(this + 5);
    v13 = 0x676C6F6263757374;
    v14 = 0;
    v12 = (*(*v9 + 560))(v9, v11, 0, &v13, 0, 0);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v12 >= 0xC)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v12 / 0xC);
    }
  }
}

void sub_1DE671A98(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_PlugInObject::IsCustomProperty(HALS_PlugInObject *this, int a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  if (*v3 == a2)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 3;
  while (v2 - 1 != v5)
  {
    v7 = *v6;
    v6 += 3;
    ++v5;
    if (v7 == a2)
    {
      return v5 < v2;
    }
  }

  v5 = *(this + 8);
  return v5 < v2;
}

void HALS_PlugInObject::HALS_PlugInObject(HALS_PlugInObject *this, HALS_PlugIn *a2, int a3)
{
  *this = &unk_1F5987248;
  *(this + 1) = a2;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = a3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v3 = (a2 + 336);
  if (!a2)
  {
    v3 = 0;
  }

  if (v3 != this)
  {
    HALS_ObjectMap::RetainObject(a2, a2);
  }
}

void HALS_PlugInObject::~HALS_PlugInObject(HALS_PlugInObject *this)
{
  v20 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5987248;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = (v2 + 336);
  }

  else
  {
    v3 = 0;
  }

  if (v3 != this)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 4));
    v6 = v4;
    if (v4)
    {
      v7 = *(v4 + 416);
      v8 = *(v6 + 53);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        (*(*v7 + 120))(v7, *(this + 5));
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "HALS_PlugInObject.cpp";
        v18 = 1024;
        v19 = 52;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Could not retrieve the owning plugin from the object map", &v16, 0x12u);
      }
    }

    HALS_ObjectMap::ReleaseObject(*(this + 1), v5);
    HALS_ObjectMap::ReleaseObject(v6, v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    MEMORY[0x1E12C1700](v14, 0x1000C803E1C8BA9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE671D74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInObject::HasResourceBundle(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 40))(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v7)
  {
    return 0;
  }

  v14 = 0x676C6F6272737263;
  v15 = 0;
  v8 = *(a1 + 8);
  v9 = *(v8 + 416);
  v10 = *(v8 + 424);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    v11 = *(a2 + 240);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*v9 + 544))(v9, 1, v11, &v14);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v12;
}

void sub_1DE671E90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *HALS_PlugInObject::CopyResourceBundlePath(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 40))(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v7)
  {
    cf = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
    v22 = 1;
    if (!cf)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v25 = 136315394;
        *&v25[4] = "HALS_PlugInObject.cpp";
        v26 = 1024;
        v27 = 150;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: couldn't allocate the plug-in's path for kAudioDevicePropertyResourceBundle", v25, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v19 = 0x676C6F6272737263;
    LODWORD(v20) = 0;
    v8 = *(a1 + 8);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a2)
    {
      v11 = *(a2 + 240);
    }

    else
    {
      v11 = 0;
    }

    theString = 0;
    v23 = 0;
    (*(*v9 + 568))(v9, 1, v11, &v19, 0, 0, 8, &v23, &theString);
    v13 = theString;
    *v25 = theString;
    v25[8] = 1;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v13 && CFStringGetLength(v13))
    {
      HasPrefix = CFStringHasPrefix(*v25, @"/");
      v15 = cf;
      if (!HasPrefix)
      {
        v12 = CFStringCreateWithFormat(0, 0, @"%@/%@", cf, *v25, v19, v20);
        goto LABEL_24;
      }

      if (cf)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = cf;
      if (cf)
      {
LABEL_21:
        CFRetain(v15);
        v12 = cf;
LABEL_24:
        CACFString::~CACFString(v25);
        CACFString::~CACFString(&cf);
        goto LABEL_25;
      }
    }

    v12 = 0;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE672170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  CACFString::~CACFString(va);
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::UpdateRawDescription(CFDictionaryRef *this)
{
  OS::CF::MutableDictionary::MutableDictionary(v27, this[2]);
  OS::CF::MutableArray::MutableArray(v25);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v23, this[2], @"subdevices");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v24);
  if (Size)
  {
    v3 = Size;
    v4 = 0;
    while (1)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(v21, v23, v4);
      TypeID = OS::CF::UntypedObject::GetTypeID(v22);
      if (TypeID == CFDictionaryGetTypeID())
      {
        break;
      }

      v6 = OS::CF::UntypedObject::GetTypeID(v22);
      if (v6 == CFArrayGetTypeID())
      {
        OS::CF::MutableArray::MutableArray(&v19);
        OS::CF::UntypedObject::As<OS::CF::Array>(&v17, v21);
        v7 = OS::CF::ArrayBase<__CFArray const*>::GetSize(v18);
        if (v7)
        {
          v8 = v7;
          for (i = 0; i != v8; ++i)
          {
            OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&v14, &v17, i);
            if (cf)
            {
              OS::CF::UntypedObject::UntypedObject(v12, cf);
              v12[0] = &unk_1F5991008;
              HALS_MetaDeviceDescription::UpdateSubDevice(v13, this, v12);
              OS::CF::UntypedObject::~UntypedObject(v12);
              OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(theArray, v13[1]);
              OS::CF::UntypedObject::~UntypedObject(v13);
            }

            OS::CF::UntypedObject::~UntypedObject(&v14);
          }
        }

        Copy = theArray;
        if (theArray)
        {
          Copy = CFArrayCreateCopy(0, theArray);
        }

        v14 = &unk_1F59910D0;
        cf = Copy;
        if (v26 && Copy)
        {
          CFArrayAppendValue(v26, Copy);
        }

        OS::CF::UntypedObject::~UntypedObject(&v14);
LABEL_18:
        OS::CF::UntypedObject::~UntypedObject(&v17);
LABEL_19:
        OS::CF::UntypedObject::~UntypedObject(&v19);
      }

      OS::CF::UntypedObject::~UntypedObject(v21);
      if (++v4 == v3)
      {
        goto LABEL_21;
      }
    }

    OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v19, v21);
    if (theArray)
    {
      OS::CF::UntypedObject::UntypedObject(v16, theArray);
      v16[0] = &unk_1F5991008;
      HALS_MetaDeviceDescription::UpdateSubDevice(&v17, this, v16);
      OS::CF::UntypedObject::~UntypedObject(v16);
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v26, v18);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_21:
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v28, @"subdevices", v26);
  v11 = v28;
  if (v28)
  {
    v11 = CFDictionaryCreateCopy(0, v28);
  }

  OS::CF::UntypedObject::operator=((this + 1), v11);
  OS::CF::UntypedObject::~UntypedObject(v23);
  OS::CF::UntypedObject::~UntypedObject(v25);
  OS::CF::UntypedObject::~UntypedObject(v27);
}

void sub_1DE672448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(va1);
  OS::CF::UntypedObject::~UntypedObject(va2);
  OS::CF::UntypedObject::~UntypedObject(va3);
  OS::CF::UntypedObject::~UntypedObject((v7 - 96));
  OS::CF::UntypedObject::~UntypedObject((v7 - 80));
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::UpdateSubDeviceList(CFDictionaryRef *this, HALS_Device *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v33, this[2], @"subdevices");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v34);
  v31 = 0uLL;
  v32 = 0;
  v29 = 0uLL;
  v30 = 0;
  if ((HALS_MetaDeviceDescription::IsStackRequested(this) & 1) == 0)
  {
    if (!Size)
    {
      goto LABEL_29;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      *v39 = 0;
      v40 = 0;
      v41 = 0;
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(&cf, v33, v9);
      TypeID = OS::CF::UntypedObject::GetTypeID(v38);
      if (TypeID == CFDictionaryGetTypeID())
      {
        break;
      }

      v12 = OS::CF::UntypedObject::GetTypeID(v38);
      if (v12 == CFArrayGetTypeID())
      {
        OS::CF::UntypedObject::As<OS::CF::Array>(&v35, &cf);
        if (v36)
        {
          v13 = OS::CF::ArrayBase<__CFArray const*>::GetSize(v36);
          if (v13)
          {
            v14 = v13;
            for (i = 0; i != v14; ++i)
            {
              OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v28, &v35, i);
              if (v28[1])
              {
                HALS_MetaDeviceDescription::AddOrUpdateSubDevice(this, a2, v28, v39, &v29);
              }

              OS::CF::UntypedObject::~UntypedObject(v28);
            }
          }
        }

        goto LABEL_23;
      }

LABEL_24:
      v16 = *v39;
      if (*v39 != v40)
      {
        std::vector<std::vector<HALS_MetaSubDevice *>>::push_back[abi:ne200100](&v31, v39);
      }

      OS::CF::UntypedObject::~UntypedObject(&cf);
      if (v16)
      {
        operator delete(v16);
      }

      v9 = ++v10;
      if (Size <= v10)
      {
        goto LABEL_29;
      }
    }

    OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v35, &cf);
    if (v36)
    {
      HALS_MetaDeviceDescription::AddOrUpdateSubDevice(this, a2, &v35, v39, &v29);
    }

LABEL_23:
    OS::CF::UntypedObject::~UntypedObject(&v35);
    goto LABEL_24;
  }

  *v39 = 0;
  v40 = 0;
  v41 = 0;
  if (Size)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&cf, v33, v5);
      if (v38)
      {
        HALS_MetaDeviceDescription::AddOrUpdateSubDevice(this, a2, &cf, v39, &v29);
      }

      OS::CF::UntypedObject::~UntypedObject(&cf);
      v5 = v6;
    }

    while (Size > v6++);
    v8 = *v39;
    if (*v39 != v40)
    {
      std::vector<std::vector<HALS_MetaSubDevice *>>::push_back[abi:ne200100](&v31, v39);
    }

    if (v8)
    {
      operator delete(v8);
    }
  }

LABEL_29:
  HALS_MetaDeviceDescription::TeardownSubDeviceList(this);
  v17 = (this + 3);
  if (this[3])
  {
    std::vector<std::vector<std::byte>>::clear[abi:ne200100](this + 3);
    operator delete(*v17);
    *v17 = 0;
    this[4] = 0;
    this[5] = 0;
  }

  v18 = this[6];
  *(this + 3) = v31;
  this[5] = v32;
  v32 = 0;
  v31 = 0uLL;
  this[7] = v18;
  if (v18)
  {
    operator delete(v18);
    this[6] = 0;
    this[7] = 0;
    this[8] = 0;
  }

  *(this + 3) = v29;
  this[8] = v30;
  v30 = 0;
  v29 = 0uLL;
  this[12] = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v35, this[2], @"master");
  OS::CF::String::AsCString(&v35, v39, 256);
  if (v36)
  {
    v19 = this[3];
    for (j = this[4]; v19 != j; v19 += 3)
    {
      v21 = *v19;
      v22 = v19[1];
      while (v21 != v22)
      {
        v23 = HALS_MetaSubDevice::CopyRealDeviceUID(*v21);
        cf = &unk_1F5991188;
        v38 = v23;
        if (OS::CF::operator==(v23, v36))
        {
          v24 = *v21;
          this[12] = *v21;
        }

        else
        {
          v24 = this[12];
        }

        OS::CF::UntypedObject::~UntypedObject(&cf);
        if (v24)
        {
          goto LABEL_43;
        }

        ++v21;
      }
    }
  }

LABEL_43:
  if (!this[12])
  {
    v25 = this[3];
    if (this[4] != v25)
    {
      this[12] = **v25;
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v35);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v39, this[2], @"clock");
  applesauce::CF::StringRef::from_get(&cf, v40);
  ClockSubDevice = HALS_MetaDeviceDescription::AllocateClockSubDevice(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (ClockSubDevice)
  {
    this[13] = ClockSubDevice;
    (**ClockSubDevice)(ClockSubDevice);
  }

  OS::CF::UntypedObject::~UntypedObject(v39);
  *v39 = &v31;
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](v39);
  OS::CF::UntypedObject::~UntypedObject(v33);
  v27 = *MEMORY[0x1E69E9840];
}

void sub_1DE6728D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char *a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a15;
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&a24);
  OS::CF::UntypedObject::~UntypedObject(&a18);
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::UpdateSubTapList(HALS_MetaDeviceDescription *this)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v17, *(this + 2), @"taps");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v18);
  if (Size)
  {
    v3 = Size;
    v4 = 0;
    v10 = 0u;
    v5 = 1;
    do
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(v16, v17, v4);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v14, v16);
      if (theDict)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v12, theDict, @"uid");
        if (v13)
        {
          v11[0] = 0;
          v11[1] = 0;
          HALS_System::GetInstance(&v19, 0, v11);
          v7 = HALS_System::CopyTapByUUID(v19, v13);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v7 && (*(v7 + 91) != 1 || HALS_MetaDeviceDescription::IsPrivate(this)))
          {
            operator new();
          }

          HALS_ObjectMap::ReleaseObject(v7, v6);
        }

        OS::CF::UntypedObject::~UntypedObject(v12);
      }

      OS::CF::UntypedObject::~UntypedObject(&v14);
      OS::CF::UntypedObject::~UntypedObject(v16);
      v4 = v5;
    }

    while (v3 > v5++);
  }

  else
  {
    v10 = 0u;
  }

  HALS_MetaDeviceDescription::TeardownSubTapList(this);
  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
  }

  *(this + 72) = v10;
  *(this + 11) = 0;
  OS::CF::UntypedObject::~UntypedObject(v17);
}

void sub_1DE672EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a21);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  OS::CF::UntypedObject::~UntypedObject(&a26);
  OS::CF::UntypedObject::~UntypedObject((v28 - 120));
  CACFString::~CACFString((v27 + 56));
  HALS_Object::~HALS_Object(v27);
  MEMORY[0x1E12C1730](v27, 0x10E1C40A2920553);
  HALS_ObjectMap::ReleaseObject(v26, v30);
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(&a15);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  if (a9)
  {
    operator delete(a9);
  }

  OS::CF::UntypedObject::~UntypedObject(&a19);
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::TeardownSubTapList(HALS_MetaDeviceDescription *this)
{
  v2 = *(this + 9);
  v3 = *(this + 10);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
        HALS_ObjectMap::ObjectIsDead(*v2, v4);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 9);
  }

  *(this + 10) = v2;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F5991080;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          v8 = v4;
          v9 = v7;
        }

        else
        {
          v8 = v4;
          v9 = 0;
        }

        return OS::CF::UntypedObject::operator=(v8, v9);
      }
    }
  }

  return result;
}

const __CFBoolean *HALS_MetaDeviceDescription::IsPrivate(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"private"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v4, this[2], @"private");
  v2 = OS::CF::Boolean::AsBool(v4[1]);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2;
}

const __CFDictionary *OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(const __CFDictionary *result, const void *a2)
{
  if (result)
  {
    return (CFDictionaryContainsKey(result, a2) != 0);
  }

  return result;
}

const __CFBoolean *HALS_MetaDeviceDescription::IsStackRequested(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"stacked"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v4, this[2], @"stacked");
  v2 = OS::CF::Boolean::AsBool(v4[1]);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2;
}

void HALS_MetaDeviceDescription::AddOrUpdateSubDevice(uint64_t a1, HALS_ObjectMap *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v29, *(a3 + 8), @"uid");
  if (v30)
  {
    v26[0] = 0;
    v26[1] = 0;
    HALS_System::GetInstance(&v27, 0, v26);
    v10 = v27;
    v11 = v30;
    v25 = 0;
    std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(v31, &v25, 1);
    v12 = HALS_System::CopyDeviceByUID(v10, v11, 0, v31);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v31);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v12 && v12 != a2 && HALS_IODevice::GetTransportType(v12) != 1735554416)
    {
      v14 = *(v12 + 4);
      v15 = *(a1 + 24);
      v16 = *(a1 + 32);
      while (v15 != v16)
      {
        for (i = *v15; i != *(v15 + 8); ++i)
        {
          v18 = *i;
          if (HALS_MetaSubDevice::GetRealDeviceObjectID(*i) == v14)
          {
            v19 = *(v15 + 8);
            v20 = v19 - (i + 1);
            if (v19 != (i + 1))
            {
              memmove(i, i + 1, v19 - (i + 1));
            }

            *(v15 + 8) = i + v20;
LABEL_18:
            v27 = v18;
            if (v18)
            {
              v21 = *(a3 + 8);
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 0x40000000;
              v31[2] = ___ZN18HALS_MetaSubDevice16SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke;
              v31[3] = &__block_descriptor_tmp_17_11169;
              v31[4] = v18;
              v31[5] = v12;
              v31[6] = v21;
              v22 = (*(*v18 + 64))(v18);
              HALB_CommandGate::ExecuteCommand(v22, v31);
              if (HALS_MetaDeviceDescription::CanBeActive(a1, v12))
              {
                a5 = a4;
              }

              std::vector<HALS_Device *>::push_back[abi:ne200100](a5, &v27);
              goto LABEL_28;
            }

LABEL_26:
            operator new();
          }
        }

        v15 += 24;
      }

      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      while (v23 != v24)
      {
        if (HALS_MetaSubDevice::GetRealDeviceObjectID(*v23) == v14)
        {
          v18 = *v23;
          goto LABEL_18;
        }

        ++v23;
      }

      goto LABEL_26;
    }

LABEL_28:
    HALS_ObjectMap::ReleaseObject(v12, v13);
  }

  OS::CF::UntypedObject::~UntypedObject(v29);
}

void sub_1DE67351C(void *a1)
{
  MEMORY[0x1E12C1730](v2, 0x10E1C4011717AD3);
  HALS_ObjectMap::ReleaseObject(v1, v4);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6734ECLL);
}

void sub_1DE67359C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<HALS_MetaSubDevice *>>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    v15 = 0;
    v16 = v10;
    v17 = 24 * v6;
    v18 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 0;
    std::vector<HALS_MetaSubDevice *>::__init_with_size[abi:ne200100]<HALS_MetaSubDevice **,HALS_MetaSubDevice **>(24 * v6, *a2, a2[1], (a2[1] - *a2) >> 3);
    v5 = (v17 + 24);
    v11 = a1[1] - *a1;
    v12 = &v16[-v11];
    memcpy(&v16[-v11], *a1, v11);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v5;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<std::vector<float>>::~__split_buffer(&v15);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    std::vector<HALS_MetaSubDevice *>::__init_with_size[abi:ne200100]<HALS_MetaSubDevice **,HALS_MetaSubDevice **>(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    v5 = v4 + 24;
    a1[1] = v5;
  }

  a1[1] = v5;
}

void sub_1DE67371C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFTypeID OS::CF::UntypedObject::As<OS::CF::Array>(void *a1, uint64_t a2)
{
  TypeID = OS::CF::UntypedObject::GetTypeID(*(a2 + 8));
  result = CFArrayGetTypeID();
  if (TypeID == result)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      result = CFRetain(v6);
    }

    a1[1] = v6;
  }

  else
  {
    a1[1] = 0;
  }

  *a1 = &unk_1F59910D0;
  return result;
}

void HALS_MetaDeviceDescription::TeardownSubDeviceList(HALS_MetaDeviceDescription *this)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  v2 = (this + 24);
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        HALS_ObjectMap::ObjectIsDead(*v5, v7);
      }

      ++v5;
    }

    v3 += 3;
  }

  std::vector<std::vector<std::byte>>::clear[abi:ne200100](v2);
  v8 = *(this + 13);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    HALS_ObjectMap::ObjectIsDead(*(this + 13), v9);
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
}

uint64_t HALS_MetaDeviceDescription::AllocateClockSubDevice(uint64_t a1, const __CFString **a2)
{
  v18[43] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v14[0] = 0;
    v14[1] = 0;
    HALS_System::GetInstance(&v15, 0, v14);
    v3 = v15;
    v4 = *a2;
    LODWORD(v17) = 0;
    std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(v18, &v17, 1);
    v5 = HALS_System::CopyClockDeviceByUID(v3, v4, v18);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v18);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v5)
    {
      v13[2] = 0;
      operator new();
    }

    v13[0] = 0;
    v13[1] = 0;
    HALS_System::GetInstance(&v15, 0, v13);
    v6 = v15;
    v7 = *a2;
    LODWORD(v17) = 0;
    std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(v18, &v17, 1);
    v8 = HALS_System::CopyDeviceByUID(v6, v7, 0, v18);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v18);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v8)
    {
      v18[0] = 0;
      operator new();
    }

    HALS_ObjectMap::ReleaseObject(0, v9);
    HALS_ObjectMap::ReleaseObject(0, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE673B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1E12C1730](v14, 0x10E1C4011717AD3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  HALS_ObjectMap::ReleaseObject(v15, v17);
  HALS_ObjectMap::ReleaseObject(v13, v18);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(uint64_t result, int *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[a3]; ++i)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
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
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_1DE674050(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void HALS_MetaSubDevice::HALS_MetaSubDevice<HALS_Device>(HALS_MetaSubDevice *a1, HALS_MetaDevice *a2, uint64_t a3, __CFString *a4, __CFDictionary *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  HALS_MetaSubDevice::HALS_MetaSubDevice(a1, a2, a4, a5, a5);
}

void sub_1DE674164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALS_Listener::~HALS_Listener(&a9);
  HALS_MetaSubDevice::~HALS_MetaSubDevice(v9);
  _Unwind_Resume(a1);
}

void std::vector<HALS_MetaSubDevice *>::__init_with_size[abi:ne200100]<HALS_MetaSubDevice **,HALS_MetaSubDevice **>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE674208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_MetaDeviceDescription::CanBeActive(const __CFDictionary **this, HALS_Device *a2)
{
  if (HALS_IODevice::GetTransportType(a2) == 1735554416)
  {
    return 0;
  }

  v4 = atomic_load(a2 + 40);
  if (v4 != -1 && v4 != *(*this + 366))
  {
    return 0;
  }

  TotalNumberChannels = HALS_Device::GetTotalNumberChannels(a2, 1);
  v7 = HALS_Device::GetTotalNumberChannels(a2, 0);
  if ((HALS_MetaDeviceDescription::IsStackRequested(this) & 1) != 0 || (v8 = this[3], this[4] - v8 == 24) && *(v8 + 1) - *v8 >= 9uLL)
  {
    if (v7)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!(TotalNumberChannels | v7))
  {
    return 0;
  }

LABEL_13:
  NominalSampleRate = HALS_MetaDeviceDescription::GetNominalSampleRate(this);
  for (i = 0; ; ++i)
  {
    v11 = i >= HALS_IODevice::GetNumberStreams(a2, 0);
    result = v11;
    if (v11)
    {
      break;
    }

    v13 = HALS_IODevice::CopyStreamByIndex(a2, 0, i);
    v15 = v13;
    v16 = !v13 || (HALS_Stream::GetCurrentVirtualFormat(v13, &v17), v17.mFormatID == 1819304813) && (v17.mFormatFlags & 0x40) == 0 || NominalSampleRate == v17.mSampleRate || NominalSampleRate == 0.0;
    HALS_ObjectMap::ReleaseObject(v15, v14);
    if (!v16)
    {
      return 0;
    }
  }

  return result;
}

double HALS_MetaDeviceDescription::GetNominalSampleRate(HALS_MetaDeviceDescription *this)
{
  v1 = *(this + 13);
  if (v1 || (v1 = *(this + 12)) != 0)
  {
    v2 = HALS_MetaSubDevice::CopyRealIODevice(v1);
    v4 = v2;
    if (v2)
    {
      v5 = (*(*v2 + 272))(v2);
    }

    else
    {
      v5 = 0.0;
    }
  }

  else
  {
    v7 = *(this + 9);
    if (((*(this + 10) - v7) & 0x7FFFFFFF8) == 0)
    {
      return 0.0;
    }

    v8 = HALS_ObjectMap::CopyObjectByObjectID(*(*v7 + 72));
    v4 = v8;
    if (v8)
    {
      v10 = *(v8 + 264);
      v9 = *(v8 + 272);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v10 + 24);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v5 = *(v10 + 24);
      }
    }

    else
    {
      v5 = 0.0;
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  return v5;
}

OS::CF::MutableDictionary *OS::CF::MutableDictionary::MutableDictionary(OS::CF::MutableDictionary *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  }

  *this = &unk_1F598E458;
  *(this + 1) = MutableCopy;
  return this;
}

void HALS_MetaDeviceDescription::UpdateSubDevice(void *a1, uint64_t a2, uint64_t a3)
{
  OS::CF::MutableDictionary::MutableDictionary(v37);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v35, *(a3 + 8), @"uid");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"uid", cf);
  v34[0] = 0;
  v34[1] = 0;
  HALS_System::GetInstance(&v39, 0, v34);
  v6 = v39;
  v7 = cf;
  v31 = 0;
  std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(&v32, &v31, 1);
  v8 = HALS_System::CopyDeviceByUID(v6, v7, 0, &v32);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v32);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v8 && HALS_IODevice::GetTransportType(v8) != 1735554416)
  {
    v11 = HALS_Device::CopyServerLocalizedName(v8);
    v32 = &unk_1F5991188;
    v33 = v11;
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"name", v11);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    TotalNumberChannels = HALS_Device::GetTotalNumberChannels(v8, 1);
    OS::CF::Number::Number<unsigned int>(&v32, TotalNumberChannels);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"channels-in", v33);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    v13 = HALS_Device::GetTotalNumberChannels(v8, 0);
    OS::CF::Number::Number<unsigned int>(&v32, v13);
    v9 = theDict;
    v10 = v33;
  }

  else
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v32, *(a3 + 8), @"name");
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"name", v33);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"channels-in");
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"channels-in", v33);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"channels-out");
    v9 = theDict;
    v10 = v33;
  }

  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v9, @"channels-out", v10);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v39 = &unk_1F5991188;
  v40 = v14;
  v15 = *(a2 + 24);
  for (i = *(a2 + 32); v15 != i; v15 += 3)
  {
    v17 = *v15;
    v18 = v15[1];
    while (v17 != v18)
    {
      v19 = HALS_MetaSubDevice::CopyRealDeviceUID(*v17);
      v32 = &unk_1F5991188;
      v33 = v19;
      if (OS::CF::operator==(v19, v40))
      {
        v20 = *v17;
        OS::CF::UntypedObject::~UntypedObject(&v32);
        if (v20)
        {
          OS::CF::UntypedObject::~UntypedObject(&v39);
          ExtraLatency = HALS_MetaSubDevice::GetExtraLatency(v20, 1);
          OS::CF::Number::Number<unsigned int>(&v32, ExtraLatency);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-in", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          v22 = HALS_MetaSubDevice::GetExtraLatency(v20, 0);
          OS::CF::Number::Number<unsigned int>(&v32, v22);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-out", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          IsDriftCorrectionOn = HALS_MetaSubDevice::IsDriftCorrectionOn(v20);
          OS::CF::Number::Number<int>(&v32, IsDriftCorrectionOn);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          DriftCorrectionAlgorithm = HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(v20);
          OS::CF::Number::Number<unsigned int>(&v32, DriftCorrectionAlgorithm);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift algorithm", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          DriftCorrectionQuality = HALS_MetaSubDevice::GetDriftCorrectionQuality(v20);
          OS::CF::Number::Number<unsigned int>(&v32, DriftCorrectionQuality);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift quality", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          IsSynchPaddingOn = HALS_MetaSubDevice::IsSynchPaddingOn(v20);
          OS::CF::Number::Number<int>(&v32, IsSynchPaddingOn ^ 1);
          v27 = theDict;
          v28 = v33;
          goto LABEL_19;
        }
      }

      else
      {
        OS::CF::UntypedObject::~UntypedObject(&v32);
      }

      ++v17;
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v39);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"latency-in");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-in", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"latency-out");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-out", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"drift");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"drift algorithm");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift algorithm", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"drift quality");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift quality", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"don't pad");
  v27 = theDict;
  v28 = v33;
LABEL_19:
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v27, @"don't pad", v28);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  v29 = theDict;
  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  else
  {
    Copy = 0;
  }

  *a1 = &unk_1F5991008;
  a1[1] = Copy;
  HALS_ObjectMap::ReleaseObject(v8, v29);
  OS::CF::UntypedObject::~UntypedObject(v35);
  OS::CF::UntypedObject::~UntypedObject(v37);
}

void sub_1DE674AB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE67474CLL);
}

void sub_1DE674AC4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674718);
}

void sub_1DE674AD0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674A4CLL);
}

void sub_1DE674ADC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674A18);
}

void sub_1DE674AE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6749E8);
}

void sub_1DE674AF4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6749B8);
}

void sub_1DE674B00(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674988);
}

void sub_1DE674B0C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674954);
}

void sub_1DE674B18(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22)
{
  HALS_ObjectMap::ReleaseObject(v22, a2);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  OS::CF::UntypedObject::~UntypedObject(&a19);
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::CopyServerLocalizedName(HALS_Device *this)
{
  v2 = *(this + 4);
  v5 = 0x676C6F626E616D6CLL;
  v6 = 0;
  v7 = 0;
  (*(*this + 120))(this, v2, &v5, 8, &v6 + 4, &v7, 0, 0, 0);
  result = v7;
  if (!v7)
  {
    v4 = *(this + 4);
    v5 = 0x676C6F626C6E616DLL;
    LODWORD(v6) = 0;
    v9 = 0;
    v8 = 0;
    (*(*this + 120))(this, v4, &v5, 8, &v8, &v9, 0, 0, 0);
    return v9;
  }

  return result;
}

void sub_1DE674C74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674C64);
}

void sub_1DE674C84(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674C00);
}

void HALS_MetaDeviceDescription::~HALS_MetaDeviceDescription(HALS_MetaDeviceDescription *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = (this + 24);
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&v4);
  OS::CF::UntypedObject::~UntypedObject((this + 8));
}

CFDictionaryRef HALS_MetaDeviceDescription::CopyRawDescription(CFDictionaryRef *this)
{
  HALS_MetaDeviceDescription::UpdateRawDescription(this);
  v2 = this[2];
  if (v2)
  {
    CFRetain(v2);
  }

  return v2;
}

uint64_t HALS_MetaDeviceDescription::GetStackedChannelPolicy(const __CFDictionary **this)
{
  v2 = OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"stacked channel policy");
  if (v2)
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v6, this[2], @"stacked channel policy");
    v3 = OS::CF::Boolean::AsBool(v6[1]);
    OS::CF::UntypedObject::~UntypedObject(v6);
    if (v3)
    {
      return 0;
    }
  }

  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v2);
  return (*(*platform_behaviors + 32))(platform_behaviors);
}

const __CFBoolean *HALS_MetaDeviceDescription::IsHidden(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"hidden"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v4, this[2], @"hidden");
  v2 = OS::CF::Boolean::AsBool(v4[1]);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2;
}

uint64_t HALS_MetaDeviceDescription::IsolatedUseCaseID(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"isolated use case"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v4, this[2], @"isolated use case");
  v2 = OS::CF::Number::GetValue<unsigned int>(v4[1], 0);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2 | 0x100000000;
}

CFTypeRef HALS_MetaDeviceDescription::CopyDeviceName(CFDictionaryRef theDict)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v3, theDict, @"name");
  v1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  OS::CF::UntypedObject::~UntypedObject(&v3);
  return v1;
}

void OS::CF::MutableDictionary::RemoveKey(OS::CF::MutableDictionary *this, const __CFString *a2)
{
  if (this)
  {
    CFDictionaryRemoveValue(this, a2);
  }
}

uint64_t HALS_MetaDeviceDescription::CanBeDefaultDevice(const __CFDictionary **this, int a2, int a3)
{
  if (HALS_MetaDeviceDescription::IsPrivate(this) & 1) != 0 || (HALS_MetaDeviceDescription::IsHidden(this))
  {
    return 0;
  }

  NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(*this, a2);
  v7 = (this[10] - this[9]) >> 3;
  if (!a2)
  {
    LODWORD(v7) = 0;
  }

  if (NumberStreamsExcludingReferenceStreams == v7)
  {
    return 0;
  }

  v9 = this[3];
  v10 = this[4];
  if (v9 == v10)
  {
    return 1;
  }

  do
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    while (v11 != v12)
    {
      v13 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v11);
      v15 = v13;
      v16 = !v13 || !HALS_IODevice::GetNumberStreams(v13, a2) || HALS_Device::CanBeDefaultDevice(v15, a2, a3);
      HALS_ObjectMap::ReleaseObject(v15, v14);
      if (!v16)
      {
        return 0;
      }

      ++v11;
    }

    v9 = (v9 + 24);
    result = 1;
  }

  while (v9 != v10);
  return result;
}

CFTypeRef HALS_MetaDeviceDescription::CopyTapList(CFDictionaryRef theDict)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v3, theDict, @"taps");
  v1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  OS::CF::UntypedObject::~UntypedObject(&v3);
  return v1;
}

void get_tap_sample_rate_range(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = vdupq_n_s64(0x40CF400000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40D5888000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40E5888000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40E7700000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40F5888000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40F7700000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x4107700000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
}

void sub_1DE6751B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_MetaDeviceDescription::GetSubDeviceByIndex(uint64_t **this, HALS_MetaDeviceDescription *a2, int a3)
{
  if (this != a2)
  {
    v3 = 0;
    do
    {
      for (i = *this; i != this[1]; ++i)
      {
        if (v3 == a3)
        {
          v5 = *i;
          v3 = a3;
          if (*i)
          {
            return v5;
          }
        }

        else
        {
          ++v3;
        }
      }

      this += 3;
    }

    while (this != a2);
  }

  return 0;
}

BOOL HALS_MetaDeviceDescription::IsDeviceInRawDescription(CFDictionaryRef *this, const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = &unk_1F5991188;
  v27 = cf;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v24, this[2], @"subdevices");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v25);
  if (Size)
  {
    v5 = Size;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(v22, v24, v6);
      TypeID = OS::CF::UntypedObject::GetTypeID(v23);
      if (TypeID == CFDictionaryGetTypeID())
      {
        OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v20, v22);
        if (theDict)
        {
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v18, theDict, @"uid");
          if (v19)
          {
            v9 = OS::CF::operator==(v19, v27);
          }

          else
          {
            v9 = 0;
          }

          OS::CF::UntypedObject::~UntypedObject(v18);
          goto LABEL_27;
        }
      }

      else
      {
        v10 = OS::CF::UntypedObject::GetTypeID(v23);
        if (v10 != CFArrayGetTypeID())
        {
          v9 = 0;
          goto LABEL_28;
        }

        OS::CF::UntypedObject::As<OS::CF::Array>(&v20, v22);
        if (theDict)
        {
          v11 = OS::CF::ArrayBase<__CFArray const*>::GetSize(theDict);
          if (v11)
          {
            v12 = v11;
            v13 = 1;
            do
            {
              OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v18, &v20, v13 - 1);
              if (v19)
              {
                OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v16, v19, @"uid");
                if (theString1)
                {
                  v9 = OS::CF::operator==(theString1, v27);
                }

                else
                {
                  v9 = 0;
                }

                OS::CF::UntypedObject::~UntypedObject(&v16);
              }

              else
              {
                v9 = 0;
              }

              OS::CF::UntypedObject::~UntypedObject(v18);
              if (v9)
              {
                break;
              }
            }

            while (v13++ < v12);
            goto LABEL_27;
          }
        }
      }

      v9 = 0;
LABEL_27:
      OS::CF::UntypedObject::~UntypedObject(&v20);
LABEL_28:
      OS::CF::UntypedObject::~UntypedObject(v22);
      if (!v9)
      {
        v6 = ++v7;
        if (v5 > v7)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  v9 = 0;
LABEL_32:
  OS::CF::UntypedObject::~UntypedObject(v24);
  OS::CF::UntypedObject::~UntypedObject(&v26);
  return v9;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Array>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F59910D0;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        v8 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
        result = CFArrayGetTypeID();
        if (v8 == result)
        {
          if (v7)
          {
            CFRetain(v7);
            v9 = v4;
            v10 = v7;
          }

          else
          {
            v9 = v4;
            v10 = 0;
          }

          return OS::CF::UntypedObject::operator=(v9, v10);
        }
      }
    }
  }

  return result;
}

void HALS_MetaDeviceDescription::SetSubDSPTypesForClient(uint64_t a1, void *a2)
{
  OS::CF::MutableDictionary::MutableDictionary(v15, *(a1 + 16));
  if (a2[2])
  {
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      while (1)
      {
        v7 = *(v5 + 7);
        if (v7 == 3)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = 1;
LABEL_7:
          OS::CF::Number::Number<unsigned int>(&v13, v8);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"vocal isolation type", v14);
          OS::CF::UntypedObject::~UntypedObject(&v13);
        }

        v9 = v5[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v5[2];
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
        if (v10 == v4)
        {
          goto LABEL_16;
        }
      }

      v8 = 2;
      goto LABEL_7;
    }
  }

  else
  {
    OS::CF::Number::Number<unsigned int>(&v13, 0);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"vocal isolation type", v14);
    OS::CF::UntypedObject::~UntypedObject(&v13);
  }

LABEL_16:
  Copy = theDict;
  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  OS::CF::UntypedObject::operator=(a1 + 8, Copy);
  OS::CF::UntypedObject::~UntypedObject(v15);
}

void HALS_MetaDeviceDescription::GetDSPInputSettingsOverride(HALS_MetaDeviceDescription *this, uint64_t a2)
{
  *this = 0;
  v3 = CFStringCreateWithBytes(0, "dsp input settings override", 27, 0x8000100u, 0);
  v7 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(*(a2 + 16), v3))
  {
    goto LABEL_6;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(v5, *(a2 + 16), v3);
  if (v6)
  {
    operator new();
  }

  OS::CF::UntypedObject::~UntypedObject(v5);
  v3 = v7;
  if (v7)
  {
LABEL_6:
    CFRelease(v3);
  }
}

void sub_1DE675784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  OS::CF::UntypedObject::~UntypedObject(va);
  applesauce::CF::StringRef::~StringRef(va1);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

BOOL HALS_MetaDeviceDescription::IsDeviceInRawDescription(CFDictionaryRef *this, HALS_Device *a2)
{
  v3 = (*(*a2 + 216))(a2);
  v6[0] = &unk_1F5991188;
  v6[1] = v3;
  IsDeviceInRawDescription = HALS_MetaDeviceDescription::IsDeviceInRawDescription(this, v3);
  OS::CF::UntypedObject::~UntypedObject(v6);
  return IsDeviceInRawDescription;
}

uint64_t AMCP::DAL::Multi_Reader_Synchronized_Mixer::remove_source(uint64_t a1, unsigned int *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    AMCP::DAL::Synchronized_Mixer::remove_source(a1, a2, 0);
  }

  os_unfair_lock_lock((a1 + 156));
  v5 = *(a1 + 164);
  *(a1 + 164) = v5 - 1;
  if (v5 == 1)
  {
    *(a1 + 168) = 1;
  }

  else if (v5 <= 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "Multi_Reader_Synchronized_Mixer.cpp";
      v24 = 1024;
      v25 = 42;
      v26 = 2080;
      v27 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v13);
    std::logic_error::logic_error(&v14, &v13);
    v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v15, &v14);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    v15.__vftable = &unk_1F5991430;
    v16 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v15);
    v28 = "virtual BOOL AMCP::DAL::Multi_Reader_Synchronized_Mixer::remove_source(const Source_ID &, Buffer_Alignment)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Synchronized_Mixer.cpp";
    v30 = 42;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  os_unfair_lock_unlock((a1 + 156));
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE675B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 39);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::add_source(os_unfair_lock_s *a1, unsigned int *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    AMCP::DAL::Synchronized_Mixer::add_source(a1, a2, 0);
  }

  os_unfair_lock_lock(a1 + 39);
  os_unfair_lock_opaque = a1[41]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000000) != 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "Multi_Reader_Synchronized_Mixer.cpp";
      v23 = 1024;
      v24 = 24;
      v25 = 2080;
      v26 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "virtual void AMCP::DAL::Multi_Reader_Synchronized_Mixer::add_source(const Source_ID &, Buffer_Alignment)";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Synchronized_Mixer.cpp";
    v29 = 24;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  a1[41]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
  v6 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(a1 + 39);
}

void sub_1DE675E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 39);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::commit_direct_write(os_unfair_lock_s *a1, unsigned int *a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 39);
  AMCP::DAL::Synchronized_Mixer::commit_direct_write(a1, a2, a3);

  os_unfair_lock_unlock(a1 + 39);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(uint64_t a1, int *a2, __int128 *a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v10 = *MEMORY[0x1E69E9840];

    AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(a1, a2, a3);
  }

  os_unfair_lock_lock((a1 + 156));
  v8 = *(a1 + 164);
  if (v8 < 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "Multi_Reader_Synchronized_Mixer.cpp";
      v27 = 1024;
      v28 = 76;
      v29 = 2080;
      v30 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v31 = "virtual void AMCP::DAL::Multi_Reader_Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(const Source_ID &, const DAL_Time_Range &, Buffer_Alignment)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Synchronized_Mixer.cpp";
    v33 = 76;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  if (v8 == 1 || *(a1 + 168) == 1)
  {
    *(a1 + 168) = 0;
    AMCP::DAL::Ring_Buffer_Base::set_anchor_time_and_nominal_buffer_size(a1, v7, a3);
  }

  v9 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 156));
}

void sub_1DE676298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  os_unfair_lock_unlock(v24 + 39);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::get_allowed_read_range(AMCP::DAL::Multi_Reader_Synchronized_Mixer *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 40))
  {
    AMCP::DAL::DAL_Buffer::get_timebase(&v5, this);
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(a2, &v5, 0.0, 4294967300.0);
    v3 = v6;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v4 = *(*this + 64);

    v4();
  }
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::get_time_range(AMCP::DAL::Multi_Reader_Synchronized_Mixer *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 39);
  *a2 = *(this + 8);
  v4 = *(this + 4);
  *(a2 + 16) = *(this + 3);
  *(a2 + 24) = v4;
  v5 = *(this + 5);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 3);
  v6 = *(this + 9);
  *(a2 + 56) = *(this + 8);
  *(a2 + 64) = v6;
  v7 = *(this + 10);
  *(a2 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 39);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::~Multi_Reader_Synchronized_Mixer(AMCP::DAL::Multi_Reader_Synchronized_Mixer *this)
{
  AMCP::DAL::Synchronized_Mixer::~Synchronized_Mixer(this);

  JUMPOUT(0x1E12C1730);
}

void HALB_AsyncLogMessage::perform(HALB_AsyncLogMessage *this)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *(this + 34);
  v3 = mach_absolute_time();
  v4 = v3 * 0.0000000416666667;
  if (*&_LastSyncOffset + 0.5 >= v4)
  {
    v5 = *&_BootAbsoluteTime;
  }

  else
  {
    v3 = gettimeofday(v54, 0);
    _LastSyncOffset = *&v4;
    v5 = *v54 - *MEMORY[0x1E695E470] + *&v54[8] * 0.000001 - v4;
    *&_BootAbsoluteTime = v5;
  }

  v6 = CATimeUtilities::GregorianDateFromAbsoluteTime(v3, v5 + v2 * 0.0000000416666667);
  v8 = llround(v7 * 1000000.0);
  snprintf(__str, 0x40uLL, "%02d:%02d:%02d.%06d", (v6 >> 24) >> 24, SHIDWORD(v6) >> 24, v8 / 1000000, v8 % 1000000);
  if (!*(this + 80))
  {
    goto LABEL_28;
  }

  v9 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 72));
  v11 = v9;
  if (!v9)
  {
    goto LABEL_15;
  }

  v12 = *(v9 + 5);
  if (v12 <= 1701078389)
  {
    if (v12 == 1633773415)
    {
LABEL_13:
      v14 = (*(*v9 + 224))(v9);
      v15 = v14 != 0;
      goto LABEL_16;
    }

    v13 = 1633969526;
  }

  else
  {
    if (v12 == 1701078390 || v12 == 1701733488)
    {
      goto LABEL_13;
    }

    v13 = 1919182198;
  }

  if (v12 == v13)
  {
    goto LABEL_13;
  }

  v16 = *(v9 + 6);
  if (v12 != v16)
  {
    v15 = 0;
    v14 = 0;
    if (v16 <= 1701078389)
    {
      if (v16 == 1633773415)
      {
        goto LABEL_13;
      }

      v53 = 1633969526;
    }

    else
    {
      if (v16 == 1701078390 || v16 == 1919182198)
      {
        goto LABEL_13;
      }

      v53 = 1701733488;
    }

    if (v16 == v53)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_15:
    v14 = 0;
    v15 = 0;
  }

LABEL_16:
  HALS_ObjectMap::ReleaseObject(v11, v10);
  v17 = *(this + 80);
  if (v17 <= 1)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_31;
      }

      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (!v25)
        {
          goto LABEL_31;
        }

        v26 = *(this + 35);
        *v54 = 136316418;
        *&v54[4] = "HALB_AsyncLog.cpp";
        *&v54[12] = 1024;
        *&v54[14] = 133;
        v55 = 2080;
        v56 = __str;
        v57 = 2048;
        v58 = v26;
        v59 = 2080;
        v60 = this + 16;
        v61 = 2080;
        v62 = v14;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s";
      }

      else
      {
        if (!v25)
        {
          goto LABEL_31;
        }

        v51 = *(this + 35);
        v52 = *(this + 36);
        *v54 = 136316418;
        *&v54[4] = "HALB_AsyncLog.cpp";
        *&v54[12] = 1024;
        *&v54[14] = 137;
        v55 = 2080;
        v56 = __str;
        v57 = 2048;
        v58 = v51;
        v59 = 2080;
        v60 = this + 16;
        v61 = 2048;
        v62 = v52;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu";
      }

      v28 = 58;
      goto LABEL_30;
    }

LABEL_28:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v27 = *(this + 35);
    *v54 = 136316162;
    *&v54[4] = "HALB_AsyncLog.cpp";
    *&v54[12] = 1024;
    *&v54[14] = 127;
    v55 = 2080;
    v56 = __str;
    v57 = 2048;
    v58 = v27;
    v59 = 2080;
    v60 = this + 16;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  %s thread %llx: %s";
    v28 = 48;
    goto LABEL_30;
  }

  if (v17 == 2)
  {
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (!v32)
      {
        goto LABEL_31;
      }

      v33 = *(this + 35);
      v34 = *(this + 37);
      *v54 = 136316674;
      *&v54[4] = "HALB_AsyncLog.cpp";
      *&v54[12] = 1024;
      *&v54[14] = 144;
      v55 = 2080;
      v56 = __str;
      v57 = 2048;
      v58 = v33;
      v59 = 2080;
      v60 = this + 16;
      v61 = 2080;
      v62 = v14;
      v63 = 2048;
      v64 = v34;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s arg2: %llu";
    }

    else
    {
      if (!v32)
      {
        goto LABEL_31;
      }

      v39 = *(this + 35);
      v40 = *(this + 36);
      v41 = *(this + 37);
      *v54 = 136316674;
      *&v54[4] = "HALB_AsyncLog.cpp";
      *&v54[12] = 1024;
      *&v54[14] = 148;
      v55 = 2080;
      v56 = __str;
      v57 = 2048;
      v58 = v39;
      v59 = 2080;
      v60 = this + 16;
      v61 = 2048;
      v62 = v40;
      v63 = 2048;
      v64 = v41;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu arg2: %llu";
    }

    v28 = 68;
    goto LABEL_30;
  }

  if (v17 == 3)
  {
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (!v35)
      {
        goto LABEL_31;
      }

      v36 = *(this + 35);
      v37 = *(this + 37);
      v38 = *(this + 38);
      *v54 = 136316930;
      *&v54[4] = "HALB_AsyncLog.cpp";
      *&v54[12] = 1024;
      *&v54[14] = 155;
      v55 = 2080;
      v56 = __str;
      v57 = 2048;
      v58 = v36;
      v59 = 2080;
      v60 = this + 16;
      v61 = 2080;
      v62 = v14;
      v63 = 2048;
      v64 = v37;
      v65 = 2048;
      v66 = v38;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s arg2: %llu arg3: %llu";
    }

    else
    {
      if (!v35)
      {
        goto LABEL_31;
      }

      v42 = *(this + 35);
      v43 = *(this + 36);
      v44 = *(this + 37);
      v45 = *(this + 38);
      *v54 = 136316930;
      *&v54[4] = "HALB_AsyncLog.cpp";
      *&v54[12] = 1024;
      *&v54[14] = 159;
      v55 = 2080;
      v56 = __str;
      v57 = 2048;
      v58 = v42;
      v59 = 2080;
      v60 = this + 16;
      v61 = 2048;
      v62 = v43;
      v63 = 2048;
      v64 = v44;
      v65 = 2048;
      v66 = v45;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu arg2: %llu arg3: %llu";
    }

    v28 = 78;
LABEL_30:
    _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEFAULT, v24, v54, v28);
    goto LABEL_31;
  }

  if (v17 != 4)
  {
    goto LABEL_31;
  }

  v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (!v18)
    {
      goto LABEL_31;
    }

    v19 = *(this + 35);
    v20 = *(this + 37);
    v21 = *(this + 38);
    v22 = *(this + 39);
    *v54 = 136317186;
    *&v54[4] = "HALB_AsyncLog.cpp";
    *&v54[12] = 1024;
    *&v54[14] = 166;
    v55 = 2080;
    v56 = __str;
    v57 = 2048;
    v58 = v19;
    v59 = 2080;
    v60 = this + 16;
    v61 = 2080;
    v62 = v14;
    v63 = 2048;
    v64 = v20;
    v65 = 2048;
    v66 = v21;
    v67 = 2048;
    v68 = v22;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s arg2: %llu arg3: %llu arg4: %llu";
    goto LABEL_50;
  }

  if (v18)
  {
    v46 = *(this + 35);
    v47 = *(this + 36);
    v48 = *(this + 37);
    v49 = *(this + 38);
    v50 = *(this + 39);
    *v54 = 136317186;
    *&v54[4] = "HALB_AsyncLog.cpp";
    *&v54[12] = 1024;
    *&v54[14] = 170;
    v55 = 2080;
    v56 = __str;
    v57 = 2048;
    v58 = v46;
    v59 = 2080;
    v60 = this + 16;
    v61 = 2048;
    v62 = v47;
    v63 = 2048;
    v64 = v48;
    v65 = 2048;
    v66 = v49;
    v67 = 2048;
    v68 = v50;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu arg2: %llu arg3: %llu arg4: %llu";
LABEL_50:
    v28 = 88;
    goto LABEL_30;
  }

LABEL_31:
  v29 = *(this + 41);
  if (v29)
  {
    v30 = atomic_load((v29 + 32));
    if (v30)
    {
      OSAtomicEnqueue((v29 + 16), this, 0x150uLL);
    }

    else
    {
      (*(*this + 8))(this);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void std::shared_ptr<HALB_CommandGate>::shared_ptr[abi:ne200100]<HALB_CommandGate,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1DE676E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALB_CommandGate>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

HALB_Mutex **std::unique_ptr<HALB_CommandGate>::~unique_ptr[abi:ne200100](HALB_Mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    HALB_Mutex::~HALB_Mutex(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<HALB_CommandGate *,std::shared_ptr<HALB_CommandGate>::__shared_ptr_default_delete<HALB_CommandGate,HALB_CommandGate>,std::allocator<HALB_CommandGate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI16HALB_CommandGateE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

HALB_Mutex *std::__shared_ptr_pointer<HALB_CommandGate *,std::shared_ptr<HALB_CommandGate>::__shared_ptr_default_delete<HALB_CommandGate,HALB_CommandGate>,std::allocator<HALB_CommandGate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    HALB_Mutex::~HALB_Mutex(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<HALB_CommandGate *,std::shared_ptr<HALB_CommandGate>::__shared_ptr_default_delete<HALB_CommandGate,HALB_CommandGate>,std::allocator<HALB_CommandGate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t (**std::any_cast[abi:ne200100]<std::string const>(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5400], std::bad_any_cast::~bad_any_cast);
}

uint64_t (**std::any_cast[abi:ne200100]<unsigned int const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x1E69E5480], &std::__any_imp::__unique_typeinfo<unsigned int>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x1E69E55A0] + 16);
  return result;
}

void HALB_CaptureFile_NameBuilder::FindAndBuild(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1;
  v34 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    while (*v5 != a3)
    {
      v5 += 40;
      if (v5 == a2)
      {
        goto LABEL_76;
      }
    }
  }

  if (v5 != a2)
  {
    v6 = *v5;
    if (*v5 <= 3)
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            goto LABEL_76;
          }

          v7 = std::any_cast[abi:ne200100]<std::string const>((v5 + 8));
          if (!v7)
          {
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          if (*(v7 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v7, v7[1]);
          }

          else
          {
            v8 = *v7;
            __p.__r_.__value_.__r.__words[2] = v7[2];
            *&__p.__r_.__value_.__l.__data_ = v8;
          }

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
        }

        else
        {
          v16 = std::any_cast[abi:ne200100]<std::string const>((v5 + 8));
          if (!v16)
          {
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          if (*(v16 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v16, v16[1]);
          }

          else
          {
            v17 = *v16;
            __p.__r_.__value_.__r.__words[2] = v16[2];
            *&__p.__r_.__value_.__l.__data_ = v17;
          }

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
        }

        goto LABEL_71;
      }

      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_76;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "-Index_", 7);
        goto LABEL_33;
      }

      v21 = *(v5 + 8);
      v20 = v5 + 8;
      v19 = v21;
      if (!v21)
      {
        goto LABEL_77;
      }

      if (!v22)
      {
        goto LABEL_77;
      }

      v23 = *v22 == 1;
      if (*v22 == 1)
      {
        v13 = "-in";
      }

      else
      {
        v13 = "-out";
      }

      v24 = 3;
      goto LABEL_47;
    }

    if (v6 > 5)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          goto LABEL_76;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "-", 1);
        v14 = std::any_cast[abi:ne200100]<std::string const>((v5 + 8));
        if (!v14)
        {
          std::__throw_bad_any_cast[abi:ne200100]();
        }

        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v14, v14[1]);
        }

        else
        {
          v15 = *v14;
          __p.__r_.__value_.__r.__words[2] = v14[2];
          *&__p.__r_.__value_.__l.__data_ = v15;
        }

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

LABEL_71:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_76;
      }

      v27 = *(v5 + 8);
      v26 = v5 + 8;
      v25 = v27;
      if (v27)
      {
        if (v28)
        {
          v23 = *v28 == 0;
          if (*v28)
          {
            v13 = "-PostDSP";
          }

          else
          {
            v13 = "-PreDSP";
          }

          v24 = 7;
LABEL_47:
          if (v23)
          {
            v29 = v24;
          }

          else
          {
            v29 = v24 + 1;
          }

          goto LABEL_75;
        }
      }
    }

    else
    {
      if (v6 == 4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "-", 1);
LABEL_33:
        v18 = std::any_cast[abi:ne200100]<unsigned int const>((v5 + 8));
        if (v18)
        {
          MEMORY[0x1E12C1210](a4, *v18);
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (v6 != 5)
      {
        goto LABEL_76;
      }

      v11 = *(v5 + 8);
      v10 = v5 + 8;
      v9 = v11;
      if (v11)
      {
        if (v12)
        {
          if (*v12 == 1)
          {
            v13 = "-software_reference";
          }

          else
          {
            if (*v12 != 2)
            {
              goto LABEL_76;
            }

            v13 = "-hardware_reference";
          }

          v29 = 19;
LABEL_75:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v13, v29);
          goto LABEL_76;
        }
      }
    }

LABEL_77:
    std::__throw_bad_any_cast[abi:ne200100]();
  }

LABEL_76:
  v32 = *MEMORY[0x1E69E9840];
}

void _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, _OWORD *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 5)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 5)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 5;
      v15 = &v8[32 * (a3 - (v14 >> 5))];
      v18 = 32 * a3 - 32 * (v14 >> 5);
      do
      {
        v19 = &v8[v17];
        v20 = a4[1];
        *v19 = *a4;
        *(v19 + 1) = v20;
        v17 += 32;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v21 = &__src[32 * a3];
        v22 = &v15[-32 * a3];
        v23 = v15;
        if (v22 < v8)
        {
          v23 = v15;
          do
          {
            v24 = *v22;
            v25 = *(v22 + 1);
            v22 += 32;
            *v23 = v24;
            *(v23 + 1) = v25;
            v23 += 32;
          }

          while (v22 < v8);
        }

        *(a1 + 8) = v23;
        if (v15 != v21)
        {
          memmove(&__src[32 * a3], __src, v15 - v21);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          v4 += 2 * v26;
        }

        do
        {
          v27 = v4[1];
          *v6 = *v4;
          v6[1] = v27;
          v6 += 2;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 5);
      if (v11 >> 59)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 32 * ((__src - v10) >> 5);
      v29 = (v28 + 32 * a3);
      v30 = 32 * a3;
      v31 = v28;
      do
      {
        v32 = a4[1];
        *v31 = *a4;
        v31[1] = v32;
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
      v33 = *(a1 + 8) - __src;
      memcpy(v29, __src, v33);
      v34 = &v29[v33];
      *(a1 + 8) = v6;
      v35 = *a1;
      v36 = v6 - *a1;
      v37 = v28 - v36;
      memcpy((v28 - v36), *a1, v36);
      *a1 = v37;
      *(a1 + 8) = v34;
      *(a1 + 16) = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<float>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      v17 = (v16 + v16) * cos(v15);
      *a5++ = v17;
      v18 = exp(v14 + v14);
      *a6++ = -v18;
      v19 = v9 * *(v13 - 1);
      v20 = v9 * *v13;
      v21 = hypot(v19, v20);
      *(v10 - 22) = v21 + v21;
      *(v10 - 11) = atan2(v20, v19);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<float>(int a1, uint64_t a2, float *a3, _DWORD *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      v17 = v11 * v14;
      *a3++ = v17;
      *&v16 = v11 * -(v15 * v16);
      *a4++ = LODWORD(v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

void _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, __int128 *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 6)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 6)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 6;
      v15 = &v8[64 * (a3 - (v14 >> 6))];
      v18 = (a3 << 6) - (v14 >> 6 << 6);
      do
      {
        v19 = &v8[v17];
        v21 = *a4;
        v20 = a4[1];
        v22 = a4[3];
        *(v19 + 2) = a4[2];
        *(v19 + 3) = v22;
        *v19 = v21;
        *(v19 + 1) = v20;
        v17 += 64;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v23 = &__src[64 * a3];
        v24 = &v15[-64 * a3];
        v25 = v15;
        if (v24 < v8)
        {
          v25 = v15;
          do
          {
            v27 = *v24;
            v26 = *(v24 + 1);
            v28 = *(v24 + 3);
            *(v25 + 2) = *(v24 + 2);
            *(v25 + 3) = v28;
            *v25 = v27;
            *(v25 + 1) = v26;
            v25 += 64;
            v24 += 64;
          }

          while (v24 < v8);
        }

        *(a1 + 8) = v25;
        if (v15 != v23)
        {
          memmove(&__src[64 * a3], __src, v15 - v23);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v29 = 0;
          }

          else
          {
            v29 = a3;
          }

          v4 += 4 * v29;
        }

        do
        {
          v31 = *v4;
          v30 = v4[1];
          v32 = v4[3];
          v6[2] = v4[2];
          v6[3] = v32;
          *v6 = v31;
          v6[1] = v30;
          v6 += 4;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 6);
      if (v11 >> 58)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = (__src - v10) >> 6 << 6;
      v34 = (v33 + (a3 << 6));
      v35 = a3 << 6;
      v36 = v33;
      do
      {
        v38 = *a4;
        v37 = a4[1];
        v39 = a4[3];
        v36[2] = a4[2];
        v36[3] = v39;
        *v36 = v38;
        v36[1] = v37;
        v36 += 4;
        v35 -= 64;
      }

      while (v35);
      v40 = *(a1 + 8) - __src;
      memcpy(v34, __src, v40);
      v41 = &v34[v40];
      *(a1 + 8) = v6;
      v42 = *a1;
      v43 = v6 - *a1;
      v44 = v33 - v43;
      memcpy((v33 - v43), *a1, v43);
      *a1 = v44;
      *(a1 + 8) = v41;
      *(a1 + 16) = 0;
      if (v42)
      {

        operator delete(v42);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<double>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, long double *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      *a5++ = (v16 + v16) * cos(v15);
      *a6++ = -exp(v14 + v14);
      v17 = v9 * *(v13 - 1);
      v18 = v9 * *v13;
      v19 = hypot(v17, v18);
      *(v10 - 22) = v19 + v19;
      *(v10 - 11) = atan2(v18, v17);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<double>(int a1, uint64_t a2, double *a3, double *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      *a3++ = v11 * v14;
      *a4++ = v11 * -(v15 * v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = v6 >> 1;
    if (v6 >> 1 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, v9);
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    a4.i32[0] = *a3;
    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = result + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE757E30)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE757E20)))).i32[1])
      {
        *v15 = a4.i32[0];
        v15[1] = a4.i32[0];
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    a4.i32[0] = *a3;
    v21 = (4 * a2 - (v10 - result) - 4) >> 2;
    v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21);
    v24 = (v10 + 8);
    v25 = 1;
    do
    {
      v26 = vdupq_n_s64(v25 - 1);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DE757E30)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DE757E20)))).i32[1])
      {
        *v24 = a4.i32[0];
        v24[1] = a4.i32[0];
      }

      v25 += 4;
      v24 += 4;
      v22 -= 4;
    }

    while (v22);
    v28 = (v10 + 4 * v20);
  }

  else
  {
    v28 = &result[a2];
  }

  a1[1] = v28;
  return result;
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1ECDAE3C0;
  v2 = qword_1ECDAE3C8;
  if (qword_1ECDAE3C0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1ECDAE3C8 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1ECDAE3C0;
  if (qword_1ECDAE3C8)
  {
    v5 = qword_1ECDAE3C0;
    v6 = qword_1ECDAE3C8;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v26 = *a1;
    v9 = *(a1 + 16);
    v28[0] = 0;
    v28[1] = 0;
    v27 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v24 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, v8) != 0xFF)
      {
        v25 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v8, &v25, &v26, &v24))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v24;
        if (qword_1ECDAE3C0 > v24)
        {
          goto LABEL_57;
        }

        if (!qword_1ECDAE3C0 && qword_1ECDAE3C8)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1ECDAE3C0 + 40 * qword_1ECDAE3C8;
        if (v24 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1ECDAE3D0 >= qword_1ECDAE3C8)
          {
            if (qword_1ECDAE3D0 == qword_1ECDAE3C8)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(&v23, v24, &v26);
            }

            else
            {
              if (v15 == v24)
              {
                v20 = v26;
                *(v15 + 16) = v27;
                *v15 = v20;
                *(v15 + 24) = *v28;
                v28[0] = 0;
                v28[1] = 0;
                ++qword_1ECDAE3C8;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1ECDAE3C8;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v26;
                v14[16] = v27;
                v18 = *v28;
                v28[0] = 0;
                v28[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v23 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v24 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v26) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, (v7 - 40)) != 0xFF)
        {
          v24 = (v7 - 40);
          goto LABEL_43;
        }

        v25 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v1, &v25, &v26, &v24))
        {
LABEL_43:
          if (!qword_1ECDAE3C0 && v24)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v23 = v24;
LABEL_48:
          if (v28[1])
          {
            std::__shared_weak_count::__release_weak(v28[1]);
          }

          v5 = v23;
          if (!v23)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          goto LABEL_51;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_51:
  v21 = *MEMORY[0x1E69E9840];
  return v5 + 24;
}

void sub_1DE678560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernel>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v5 = v3 == v4;
    v2 = v3 < v4 ? 0xFFFFFFFFLL : 1;
    if (v5)
    {
      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      if (v6 == v7)
      {
        LODWORD(v2) = 0;
      }

      else
      {
        LODWORD(v2) = -127;
      }

      if (v6 > v7)
      {
        LODWORD(v2) = 1;
      }

      if (v6 < v7)
      {
        v2 = 0xFFFFFFFFLL;
      }

      else
      {
        v2 = v2;
      }

      if (!v2)
      {
        v8 = *(a1 + 16);
        v9 = *(a2 + 16);
        v10 = v8 == v9;
        if (v8 < v9)
        {
          LODWORD(v2) = -1;
        }

        else
        {
          LODWORD(v2) = 1;
        }

        if (v10)
        {
          return 0;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(void *a1, const char *a2, __int128 *a3)
{
  if (qword_1ECDAE3D0 != qword_1ECDAE3C8)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1ECDAE3D0 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1ECDAE3D0 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1ECDAE3D0;
  }

  if (qword_1ECDAE3D0 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1ECDAE3D0 / 5uLL;
  }

  v5 = qword_1ECDAE3D0 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1ECDAE3D0 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v10 = qword_1ECDAE3C0;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1ECDAE3C0;
  v14 = qword_1ECDAE3C0 + 40 * qword_1ECDAE3C8;
  v15 = v11;
  if (qword_1ECDAE3C0 != a2)
  {
    v16 = qword_1ECDAE3C0;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1ECDAE3C8;
    if (qword_1ECDAE3C8)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1ECDAE3C0);
  }

  qword_1ECDAE3C0 = v12;
  ++qword_1ECDAE3C8;
  qword_1ECDAE3D0 = v6;
  *a1 = &a2[v12 - v10];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1ECDAE360;
  v2 = qword_1ECDAE368;
  if (qword_1ECDAE360)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1ECDAE368 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1ECDAE360;
  if (qword_1ECDAE368)
  {
    v5 = qword_1ECDAE360;
    v6 = qword_1ECDAE368;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v26 = *a1;
    v9 = *(a1 + 16);
    v28[0] = 0;
    v28[1] = 0;
    v27 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v24 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, v8) != 0xFF)
      {
        v25 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v8, &v25, &v26, &v24))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v24;
        if (qword_1ECDAE360 > v24)
        {
          goto LABEL_57;
        }

        if (!qword_1ECDAE360 && qword_1ECDAE368)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1ECDAE360 + 40 * qword_1ECDAE368;
        if (v24 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1ECDAE370 >= qword_1ECDAE368)
          {
            if (qword_1ECDAE370 == qword_1ECDAE368)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(&v23, v24, &v26);
            }

            else
            {
              if (v15 == v24)
              {
                v20 = v26;
                *(v15 + 16) = v27;
                *v15 = v20;
                *(v15 + 24) = *v28;
                v28[0] = 0;
                v28[1] = 0;
                ++qword_1ECDAE368;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1ECDAE368;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v26;
                v14[16] = v27;
                v18 = *v28;
                v28[0] = 0;
                v28[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v23 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v24 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v26) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v26, (v7 - 40)) != 0xFF)
        {
          v24 = (v7 - 40);
          goto LABEL_43;
        }

        v25 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v1, &v25, &v26, &v24))
        {
LABEL_43:
          if (!qword_1ECDAE360 && v24)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v23 = v24;
LABEL_48:
          if (v28[1])
          {
            std::__shared_weak_count::__release_weak(v28[1]);
          }

          v5 = v23;
          if (!v23)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          goto LABEL_51;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_51:
  v21 = *MEMORY[0x1E69E9840];
  return v5 + 24;
}

void sub_1DE678EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernelD>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernelD>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(void *a1, const char *a2, __int128 *a3)
{
  if (qword_1ECDAE370 != qword_1ECDAE368)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1ECDAE370 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1ECDAE370 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1ECDAE370;
  }

  if (qword_1ECDAE370 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1ECDAE370 / 5uLL;
  }

  v5 = qword_1ECDAE370 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1ECDAE370 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v10 = qword_1ECDAE360;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1ECDAE360;
  v14 = qword_1ECDAE360 + 40 * qword_1ECDAE368;
  v15 = v11;
  if (qword_1ECDAE360 != a2)
  {
    v16 = qword_1ECDAE360;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1ECDAE368;
    if (qword_1ECDAE368)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1ECDAE360);
  }

  qword_1ECDAE360 = v12;
  ++qword_1ECDAE368;
  qword_1ECDAE370 = v6;
  *a1 = &a2[v12 - v10];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

void RamstadSRC::RamstadSRC(RamstadSRC *this, double a2, double a3, unsigned int a4, unsigned int a5, double a6)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 22) = 1;
  *(this + 7) = 0u;
  v7 = this + 112;
  *(this + 10) = 0u;
  *(this + 13) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  v8 = a2 / a3;
  v9 = vcvtpd_s64_f64(v8);
  if (a5 != 34)
  {
    v9 = 1;
  }

  if (a5 >= 0x40)
  {
    v10 = 11;
  }

  else
  {
    v10 = 8;
  }

  *(this + 93) = a5 > 0x5F;
  v11 = dbl_1DE7581A0[a5 - 33 < 2];
  *(this + 13) = v11;
  *(this + 12) = 0x3E80000000000000;
  *(this + 92) = 0;
  *(this + 12) = a4;
  *(this + 13) = 256;
  v12 = vcvtmd_s64_f64(v8);
  *(this + 14) = v10;
  *(this + 15) = v12;
  v13 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
  *(this + 10) = (v12 << 32 >> 1) + v13;
  *(this + 32) = -1;
  *(this + 66) = -1;
  *(this + 17) = v13;
  *(this + 18) = 0;
  *(this + 22) = v9;
  v14 = fmin(0.9999 / v8, 1.0) * v11;
  if (a5 >= 0x40)
  {
    v15 = (3 * a4 + 1) >> 1;
  }

  else
  {
    v15 = a4;
  }

  if (a5 < 0x60)
  {
    v59 = 0uLL;
    v60 = 0uLL;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(v7, 0, v15, &v59);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 136, *(this + 17), v15, &v59);
    {
      GetKernelFactory(void)::sFactory = 850045863;
      *algn_1ECDAE388 = 0u;
      *&algn_1ECDAE388[16] = 0u;
      *&algn_1ECDAE388[32] = 0u;
      *&algn_1ECDAE388[48] = 0u;
      *&qword_1ECDAE3C8 = 0u;
    }

    v31 = *(this + 13);
    v30 = *(this + 14);
    v32 = *(this + 92);
    std::mutex::lock(&GetKernelFactory(void)::sFactory);
    v33 = (v32 & 1) == 0;
    v35 = qword_1ECDAE3C0;
    v34 = qword_1ECDAE3C8;
    v36 = qword_1ECDAE3C0;
    if (!qword_1ECDAE3C0 && qword_1ECDAE3C8)
    {
LABEL_53:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v37 = v35 + 40 * v34;
      if (v36 == v37)
      {
        break;
      }

      v38 = *(v36 + 32);
      if (!v38 || *(v38 + 8) == -1)
      {
        if (v35 > v36)
        {
          goto LABEL_70;
        }

        if (!v35 && v34)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v36 >= v37)
        {
LABEL_70:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v36 + 40 != v37)
        {
          v39 = v36;
          do
          {
            v40 = v39 + 40;
            v41 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v39, v39 + 40) + 80;
            v39 = v40;
          }

          while (v41 != v37);
        }

        v42 = *(v37 - 8);
        if (v42)
        {
          std::__shared_weak_count::__release_weak(v42);
        }

        v35 = qword_1ECDAE3C0;
        v34 = --qword_1ECDAE3C8;
      }

      else
      {
        v36 += 40;
      }

      if (v35)
      {
        v43 = 1;
      }

      else
      {
        v43 = v34 == 0;
      }

      if (!v43)
      {
        goto LABEL_53;
      }
    }

    v63 = v30;
    v64 = v31;
    v65 = v14;
    v66 = v33;
    v48 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v63);
    v49 = v48[1];
    if (!v49 || (v50 = std::__shared_weak_count::lock(v49)) == 0 || !*v48)
    {
      operator new();
    }

    *&v51 = *v48;
    *(&v51 + 1) = v50;
    v58 = v51;
    std::mutex::unlock(&GetKernelFactory(void)::sFactory);
    v52 = *(this + 1);
    v53 = v58;
    *this = v58;
    if (v52)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 160, 0, v15, &v59);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 184, *(this + 23), v15, &v59);
    {
      GetKernelFactoryD(void)::sFactory.__m_.__sig = 850045863;
      *GetKernelFactoryD(void)::sFactory.__m_.__opaque = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[16] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[32] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[48] = 0u;
      *&qword_1ECDAE368 = 0u;
    }

    v17 = *(this + 13);
    v16 = *(this + 14);
    v18 = *(this + 92);
    std::mutex::lock(&GetKernelFactoryD(void)::sFactory);
    v19 = (v18 & 1) == 0;
    v21 = qword_1ECDAE360;
    v20 = qword_1ECDAE368;
    v22 = qword_1ECDAE360;
    if (!qword_1ECDAE360 && qword_1ECDAE368)
    {
LABEL_31:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v23 = v21 + 40 * v20;
      if (v22 == v23)
      {
        break;
      }

      v24 = *(v22 + 32);
      if (!v24 || *(v24 + 8) == -1)
      {
        if (v21 > v22)
        {
          goto LABEL_69;
        }

        if (!v21 && v20)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v22 >= v23)
        {
LABEL_69:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v22 + 40 != v23)
        {
          v25 = v22;
          do
          {
            v26 = v25 + 40;
            v27 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v25, v25 + 40) + 80;
            v25 = v26;
          }

          while (v27 != v23);
        }

        v28 = *(v23 - 8);
        if (v28)
        {
          std::__shared_weak_count::__release_weak(v28);
        }

        v21 = qword_1ECDAE360;
        v20 = --qword_1ECDAE368;
      }

      else
      {
        v22 += 40;
      }

      if (v21)
      {
        v29 = 1;
      }

      else
      {
        v29 = v20 == 0;
      }

      if (!v29)
      {
        goto LABEL_31;
      }
    }

    v63 = v16;
    v64 = v17;
    v65 = v14;
    v66 = v19;
    v44 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v63);
    v45 = v44[1];
    if (!v45 || (v46 = std::__shared_weak_count::lock(v45)) == 0 || !*v44)
    {
      operator new();
    }

    *&v47 = *v44;
    *(&v47 + 1) = v46;
    v57 = v47;
    std::mutex::unlock(&GetKernelFactoryD(void)::sFactory);
    v52 = *(this + 3);
    v53 = v57;
    *(this + 1) = v57;
    if (v52)
    {
LABEL_64:
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }
  }

  v54 = *(this + 12);
  LODWORD(v67) = 0;
  std::vector<float>::assign(this + 26, v54, &v67, v53);
  v55 = *(this + 12);
  LODWORD(v67) = 0;
  std::vector<float>::assign(this + 29, v55, &v67, v56);
}

void sub_1DE679DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  shared_weak_owners = v16[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v16[3].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  v19 = *v17;
  if (*v17)
  {
    v16[2].__vftable = v19;
    operator delete(v19);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v20);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::mutex::unlock(&GetKernelFactory(void)::sFactory);
  v21 = v12[29];
  if (v21)
  {
    v12[30] = v21;
    operator delete(v21);
  }

  v22 = *v14;
  if (*v14)
  {
    v12[27] = v22;
    operator delete(v22);
  }

  v23 = v12[23];
  if (v23)
  {
    v12[24] = v23;
    operator delete(v23);
  }

  v24 = *v13;
  if (*v13)
  {
    v12[21] = v24;
    operator delete(v24);
  }

  v25 = v12[17];
  if (v25)
  {
    v12[18] = v25;
    operator delete(v25);
  }

  v26 = *a12;
  if (*a12)
  {
    v12[15] = v26;
    operator delete(v26);
  }

  v27 = v12[3];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = v12[1];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void RamstadSRC::~RamstadSRC(RamstadSRC *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

double RamstadSRC::processMono(RamstadSRC *this, RamstadSRC *a2, const float *a3, float *a4, int a5, int a6, int a7, int a8)
{
  if (*(a2 + 12) == 1)
  {
    RamstadSRC::checkPreflight(&v307, a2, a5, a6);
    if ((v308 & 1) == 0)
    {
      v46 = 0;
      v27 = v307;
LABEL_161:
      *this = v27;
      *(this + 4) = v46;
      goto LABEL_162;
    }

    v16 = *(a2 + 92);
    if (*(a2 + 93) == 1)
    {
      if (*(a2 + 92))
      {
        v18 = *(a2 + 17);
        v17 = *(a2 + 18);
        v19 = *(a2 + 22);
        v20 = *(a2 + 2);
        v21 = *(v20 + 16);
        v22 = *(v20 + 40);
        v23 = *(a2 + 20);
        v24 = *(a2 + 23);
        v25 = *(a2 + 13);
        v26 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v28 = 0;
            do
            {
              v30 = v23[2];
              v29 = v23[3];
              v31 = v19;
              v33 = *v23;
              v32 = v23[1];
              if (v19 >= 1)
              {
                do
                {
                  v34 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v35 = vmlaq_f64(v34, v30, v21[2]);
                  v36 = vmlaq_f64(v34, v29, v21[3]);
                  v37 = vmlaq_f64(v34, v33, *v21);
                  v38 = vmlaq_f64(vmlaq_f64(v34, v32, v21[1]), v24[1], v21[5]);
                  v39 = vmlaq_f64(v37, *v24, v21[4]);
                  v40 = vmlaq_f64(v36, v24[3], v21[7]);
                  v41 = vmlaq_f64(v35, v24[2], v21[6]);
                  *v24 = v33;
                  v24[1] = v32;
                  v24[2] = v30;
                  v24[3] = v29;
                  v23[2] = v41;
                  v23[3] = v40;
                  a3 += a7;
                  v33 = v39;
                  *v23 = v39;
                  v23[1] = v38;
                  v32 = v38;
                  v30 = v41;
                  v29 = v40;
                  --v31;
                }

                while (v31);
              }

              v27 += v19;
              v42 = (v22 + ((2 * v17) << 6));
              v43 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v42[4], *v24), v33, *v42), vmlaq_f64(vmulq_f64(v42[6], v24[2]), v30, v42[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v42[5], v24[1]), v32, v42[1]), vmlaq_f64(vmulq_f64(v42[7], v24[3]), v29, v42[3]))));
              *a4 = v43;
              a4 += a8;
              v44 = v17 + v18;
              if (v44 < v25)
              {
                v19 = v26;
              }

              else
              {
                v19 = v26 + 1;
              }

              if (v44 < v25)
              {
                v45 = 0;
              }

              else
              {
                v45 = v25;
              }

              v17 = v44 - v45;
              ++v28;
            }

            while (v28 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v207 = v23[2];
            v206 = v23[3];
            v208 = *v23;
            v209 = v23[1];
            v210 = v205;
            do
            {
              v211 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v212 = vmlaq_f64(v211, v207, v21[2]);
              v213 = vmlaq_f64(v211, v206, v21[3]);
              v214 = vmlaq_f64(v211, v208, *v21);
              v215 = vmlaq_f64(vmlaq_f64(v211, v209, v21[1]), v24[1], v21[5]);
              v216 = vmlaq_f64(v214, *v24, v21[4]);
              v217 = vmlaq_f64(v213, v24[3], v21[7]);
              v218 = vmlaq_f64(v212, v24[2], v21[6]);
              *v24 = v208;
              v24[1] = v209;
              v24[2] = v207;
              v24[3] = v206;
              v23[2] = v218;
              v23[3] = v217;
              a3 += a7;
              v208 = v216;
              *v23 = v216;
              v23[1] = v215;
              v209 = v215;
              v207 = v218;
              v206 = v217;
              --v210;
            }

            while (v210);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v111 = 0;
            v27 = 0;
            do
            {
              if (v19 < 1)
              {
                v128 = v23[6];
                v127 = v23[7];
                v130 = v23[4];
                v129 = v23[5];
              }

              else
              {
                v112 = v19;
                do
                {
                  v113 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v114 = *v23;
                  v115 = v23[1];
                  v116 = v23[2];
                  v117 = v23[3];
                  v118 = vmlaq_f64(vmlaq_f64(v113, *v23, *v21), *v24, v21[8]);
                  v119 = vmlaq_f64(vmlaq_f64(v113, v115, v21[1]), v24[1], v21[9]);
                  v120 = vmlaq_f64(vmlaq_f64(v113, v116, v21[2]), v24[2], v21[10]);
                  v121 = vmlaq_f64(vmlaq_f64(v113, v117, v21[3]), v24[3], v21[11]);
                  v24[2] = v116;
                  v24[3] = v117;
                  *v24 = v114;
                  v24[1] = v115;
                  v23[2] = v120;
                  v23[3] = v121;
                  *v23 = v118;
                  v23[1] = v119;
                  v123 = v23[4];
                  v122 = v23[5];
                  v125 = v23[6];
                  v124 = v23[7];
                  v126 = vmlaq_f64(v113, v123, v21[4]);
                  v127 = vmlaq_f64(vmlaq_f64(0, v124, v21[7]), v24[7], v21[15]);
                  v128 = vmlaq_f64(vmlaq_f64(0, v125, v21[6]), v24[6], v21[14]);
                  v129 = vmlaq_f64(vmlaq_f64(v113, v122, v21[5]), v24[5], v21[13]);
                  v130 = vmlaq_f64(v126, v24[4], v21[12]);
                  v24[4] = v123;
                  v24[5] = v122;
                  v24[6] = v125;
                  v24[7] = v124;
                  v23[6] = v128;
                  v23[7] = v127;
                  v23[4] = v130;
                  v23[5] = v129;
                  a3 += a7;
                  --v112;
                }

                while (v112);
              }

              v27 += v19;
              v131 = (v22 + ((4 * v17) << 6));
              v132 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v131[8], *v24), *v23, *v131), vmlaq_f64(vmulq_f64(v131[10], v24[2]), v23[2], v131[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v131[9], v24[1]), v23[1], v131[1]), vmlaq_f64(vmulq_f64(v131[11], v24[3]), v23[3], v131[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v131[12], v24[4]), v130, v131[4]), vmlaq_f64(vmulq_f64(v131[14], v24[6]), v128, v131[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v131[13], v24[5]), v129, v131[5]), vmlaq_f64(vmulq_f64(v131[15], v24[7]), v127, v131[7])))));
              *a4 = v132;
              a4 += a8;
              v133 = v17 + v18;
              if (v133 < v25)
              {
                v19 = v26;
              }

              else
              {
                v19 = v26 + 1;
              }

              if (v133 < v25)
              {
                v134 = 0;
              }

              else
              {
                v134 = v25;
              }

              v17 = v133 - v134;
              ++v111;
            }

            while (v111 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v248 = v205;
            do
            {
              v249 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v250 = *v23;
              v251 = v23[1];
              v252 = v23[2];
              v253 = v23[3];
              v254 = vmlaq_f64(vmlaq_f64(v249, *v23, *v21), *v24, v21[8]);
              v255 = vmlaq_f64(vmlaq_f64(v249, v251, v21[1]), v24[1], v21[9]);
              v256 = vmlaq_f64(vmlaq_f64(v249, v252, v21[2]), v24[2], v21[10]);
              v257 = vmlaq_f64(vmlaq_f64(v249, v253, v21[3]), v24[3], v21[11]);
              v24[2] = v252;
              v24[3] = v253;
              *v24 = v250;
              v24[1] = v251;
              v23[2] = v256;
              v23[3] = v257;
              *v23 = v254;
              v23[1] = v255;
              v259 = v23[4];
              v258 = v23[5];
              v261 = v23[6];
              v260 = v23[7];
              v262 = vmlaq_f64(v249, v259, v21[4]);
              v263 = vmlaq_f64(vmlaq_f64(0, v260, v21[7]), v24[7], v21[15]);
              v264 = vmlaq_f64(vmlaq_f64(0, v261, v21[6]), v24[6], v21[14]);
              v265 = vmlaq_f64(vmlaq_f64(v249, v258, v21[5]), v24[5], v21[13]);
              v266 = vmlaq_f64(v262, v24[4], v21[12]);
              v24[4] = v259;
              v24[5] = v258;
              v24[6] = v261;
              v24[7] = v260;
              v23[6] = v264;
              v23[7] = v263;
              v23[4] = v266;
              v23[5] = v265;
              a3 += a7;
              --v248;
            }

            while (v248);
          }
        }
      }

      else
      {
        v66 = *(a2 + 17);
        v17 = *(a2 + 18);
        v19 = *(a2 + 22);
        v67 = *(a2 + 2);
        v68 = *(v67 + 16);
        v69 = *(v67 + 40);
        v70 = *(a2 + 20);
        v71 = *(a2 + 23);
        v72 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v73 = 0;
            do
            {
              v75 = v70[2];
              v74 = v70[3];
              v76 = v19;
              v78 = *v70;
              v77 = v70[1];
              if (v19 >= 1)
              {
                do
                {
                  v79 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v80 = vmlaq_f64(v79, v75, v68[2]);
                  v81 = vmlaq_f64(v79, v74, v68[3]);
                  v82 = vmlaq_f64(v79, v78, *v68);
                  v83 = vmlaq_f64(vmlaq_f64(v79, v77, v68[1]), v71[1], v68[5]);
                  v84 = vmlaq_f64(v82, *v71, v68[4]);
                  v85 = vmlaq_f64(v81, v71[3], v68[7]);
                  v86 = vmlaq_f64(v80, v71[2], v68[6]);
                  *v71 = v78;
                  v71[1] = v77;
                  v71[2] = v75;
                  v71[3] = v74;
                  v70[2] = v86;
                  v70[3] = v85;
                  a3 += a7;
                  v78 = v84;
                  *v70 = v84;
                  v70[1] = v83;
                  v77 = v83;
                  v75 = v86;
                  v74 = v85;
                  --v76;
                }

                while (v76);
              }

              v27 += v19;
              v87 = (v69 + (((v17 >> 22) & 0x1FE) << 6));
              v88 = v71[2];
              v89 = v71[3];
              v90 = vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v71, v87[12]), v78, v87[8]), vmlaq_f64(vmulq_f64(v88, v87[14]), v75, v87[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v71[1], v87[13]), v77, v87[9]), vmlaq_f64(vmulq_f64(v89, v87[15]), v74, v87[11]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v87[4], *v71), v78, *v87), vmlaq_f64(vmulq_f64(v87[6], v88), v75, v87[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v87[5], v71[1]), v77, v87[1]), vmlaq_f64(vmulq_f64(v87[7], v89), v74, v87[3]))));
              *v90.f64 = v90.f64[1] + *(a2 + 12) * (v17 & 0x7FFFFF) * (v90.f64[0] - v90.f64[1]);
              *a4 = *v90.f64;
              a4 += a8;
              LODWORD(v87) = v17 + v66;
              v17 = (v17 + v66) & 0x7FFFFFFF;
              v19 = v72 + (v87 >> 31);
              ++v73;
            }

            while (v73 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v228 = v70[2];
            v227 = v70[3];
            v229 = *v70;
            v230 = v70[1];
            v231 = v205;
            do
            {
              v232 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v233 = vmlaq_f64(v232, v228, v68[2]);
              v234 = vmlaq_f64(v232, v227, v68[3]);
              v235 = vmlaq_f64(v232, v229, *v68);
              v236 = vmlaq_f64(vmlaq_f64(v232, v230, v68[1]), v71[1], v68[5]);
              v237 = vmlaq_f64(v235, *v71, v68[4]);
              v238 = vmlaq_f64(v234, v71[3], v68[7]);
              v239 = vmlaq_f64(v233, v71[2], v68[6]);
              *v71 = v229;
              v71[1] = v230;
              v71[2] = v228;
              v71[3] = v227;
              v70[2] = v239;
              v70[3] = v238;
              a3 += a7;
              v229 = v237;
              *v70 = v237;
              v70[1] = v236;
              v230 = v236;
              v228 = v239;
              v227 = v238;
              --v231;
            }

            while (v231);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v152 = 0;
            do
            {
              if (v19 < 1)
              {
                v169 = v70[6];
                v168 = v70[7];
                v171 = v70[4];
                v170 = v70[5];
              }

              else
              {
                v153 = v19;
                do
                {
                  v154 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v155 = *v70;
                  v156 = v70[1];
                  v157 = v70[2];
                  v158 = v70[3];
                  v159 = vmlaq_f64(vmlaq_f64(v154, *v70, *v68), *v71, v68[8]);
                  v160 = vmlaq_f64(vmlaq_f64(v154, v156, v68[1]), v71[1], v68[9]);
                  v161 = vmlaq_f64(vmlaq_f64(v154, v157, v68[2]), v71[2], v68[10]);
                  v162 = vmlaq_f64(vmlaq_f64(v154, v158, v68[3]), v71[3], v68[11]);
                  v71[2] = v157;
                  v71[3] = v158;
                  *v71 = v155;
                  v71[1] = v156;
                  v70[2] = v161;
                  v70[3] = v162;
                  *v70 = v159;
                  v70[1] = v160;
                  v164 = v70[4];
                  v163 = v70[5];
                  v166 = v70[6];
                  v165 = v70[7];
                  v167 = vmlaq_f64(v154, v164, v68[4]);
                  v168 = vmlaq_f64(vmlaq_f64(0, v165, v68[7]), v71[7], v68[15]);
                  v169 = vmlaq_f64(vmlaq_f64(0, v166, v68[6]), v71[6], v68[14]);
                  v170 = vmlaq_f64(vmlaq_f64(v154, v163, v68[5]), v71[5], v68[13]);
                  v171 = vmlaq_f64(v167, v71[4], v68[12]);
                  v71[4] = v164;
                  v71[5] = v163;
                  v71[6] = v166;
                  v71[7] = v165;
                  v70[6] = v169;
                  v70[7] = v168;
                  v70[4] = v171;
                  v70[5] = v170;
                  a3 += a7;
                  --v153;
                }

                while (v153);
              }

              v27 += v19;
              v172 = (v69 + (((v17 >> 21) & 0x3FC) << 6));
              v173 = v70[1];
              v175 = v70[2];
              v174 = v70[3];
              v176 = v71[2];
              v177 = v71[3];
              v178 = v71[6];
              v179 = v71[7];
              v180 = v71[4];
              v181 = v71[5];
              v182 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v71, v172[24]), *v70, v172[16]), vmlaq_f64(vmulq_f64(v176, v172[26]), v175, v172[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v71[1], v172[25]), v173, v172[17]), vmlaq_f64(vmulq_f64(v177, v172[27]), v174, v172[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v172[8], *v71), *v70, *v172), vmlaq_f64(vmulq_f64(v172[10], v176), v175, v172[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v172[9], v71[1]), v173, v172[1]), vmlaq_f64(vmulq_f64(v172[11], v177), v174, v172[3])))), vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v180, v172[28]), v171, v172[20]), vmlaq_f64(vmulq_f64(v178, v172[30]), v169, v172[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v181, v172[29]), v170, v172[21]), vmlaq_f64(vmulq_f64(v179, v172[31]), v168, v172[23]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v172[12], v180), v171, v172[4]), vmlaq_f64(vmulq_f64(v172[14], v178), v169, v172[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v172[13], v181), v170, v172[5]), vmlaq_f64(vmulq_f64(v172[15], v179), v168, v172[7])))));
              *v182.f64 = v182.f64[1] + *(a2 + 12) * (v17 & 0x7FFFFF) * (v182.f64[0] - v182.f64[1]);
              *a4 = *v182.f64;
              a4 += a8;
              LODWORD(v172) = v17 + v66;
              v17 = (v17 + v66) & 0x7FFFFFFF;
              v19 = v72 + (v172 >> 31);
              ++v152;
            }

            while (v152 != a6);
          }

          v205 = a5 - v27;
          if (a5 <= v27)
          {
            goto LABEL_160;
          }

          if (v19 < v205)
          {
            v205 = v19;
          }

          if (v205 >= 1)
          {
            v277 = v205;
            do
            {
              v278 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v279 = *v70;
              v280 = v70[1];
              v281 = v70[2];
              v282 = v70[3];
              v283 = vmlaq_f64(vmlaq_f64(v278, *v70, *v68), *v71, v68[8]);
              v284 = vmlaq_f64(vmlaq_f64(v278, v280, v68[1]), v71[1], v68[9]);
              v285 = vmlaq_f64(vmlaq_f64(v278, v281, v68[2]), v71[2], v68[10]);
              v286 = vmlaq_f64(vmlaq_f64(v278, v282, v68[3]), v71[3], v68[11]);
              v71[2] = v281;
              v71[3] = v282;
              *v71 = v279;
              v71[1] = v280;
              v70[2] = v285;
              v70[3] = v286;
              *v70 = v283;
              v70[1] = v284;
              v288 = v70[4];
              v287 = v70[5];
              v290 = v70[6];
              v289 = v70[7];
              v291 = vmlaq_f64(v278, v288, v68[4]);
              v292 = vmlaq_f64(vmlaq_f64(0, v289, v68[7]), v71[7], v68[15]);
              v293 = vmlaq_f64(vmlaq_f64(0, v290, v68[6]), v71[6], v68[14]);
              v294 = vmlaq_f64(vmlaq_f64(v278, v287, v68[5]), v71[5], v68[13]);
              v295 = vmlaq_f64(v291, v71[4], v68[12]);
              v71[4] = v288;
              v71[5] = v287;
              v71[6] = v290;
              v71[7] = v289;
              v70[6] = v293;
              v70[7] = v292;
              v70[4] = v295;
              v70[5] = v294;
              a3 += a7;
              --v277;
            }

            while (v277);
          }
        }
      }
    }

    else if (*(a2 + 92))
    {
      v47 = *(a2 + 17);
      v17 = *(a2 + 18);
      v19 = *(a2 + 22);
      v48 = *(*a2 + 16);
      v49 = *(*a2 + 40);
      v50 = *(a2 + 14);
      v51 = *(a2 + 17);
      v52 = *(a2 + 13);
      v53 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v54 = 0;
          do
          {
            v56 = *v50;
            v57 = v50[1];
            v58 = v19;
            if (v19 >= 1)
            {
              do
              {
                v59 = vld1q_dup_f32(a3);
                v55 = 4 * a7;
                a3 = (a3 + v55);
                v60 = vmlaq_f32(v59, v57, v48[1]);
                v61 = vmlaq_f32(vmlaq_f32(v59, v56, *v48), *v51, v48[2]);
                v62 = vmlaq_f32(v60, v51[1], v48[3]);
                *v51 = v56;
                v51[1] = v57;
                *v50 = v61;
                v50[1] = v62;
                v56 = v61;
                v57 = v62;
                --v58;
              }

              while (v58);
            }

            v27 += v19;
            v63 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v49 + 32 * (2 * v17) + 32), *v51), v56, *(v49 + 32 * (2 * v17))), vmlaq_f32(vmulq_f32(*(v49 + 32 * (2 * v17) + 48), v51[1]), v57, *(v49 + 32 * (2 * v17) + 16)));
            *a4 = vaddv_f32(vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)));
            a4 += a8;
            v64 = v17 + v47;
            if (v64 < v52)
            {
              v19 = v53;
            }

            else
            {
              v19 = v53 + 1;
            }

            if (v64 < v52)
            {
              v65 = 0;
            }

            else
            {
              v65 = v52;
            }

            v17 = v64 - v65;
            ++v54;
          }

          while (v54 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v220 = *v50;
          v219 = v50[1];
          v222 = v205;
          do
          {
            v223 = vld1q_dup_f32(a3);
            v221 = 4 * a7;
            a3 = (a3 + v221);
            v224 = vmlaq_f32(v223, v219, v48[1]);
            v225 = vmlaq_f32(vmlaq_f32(v223, v220, *v48), *v51, v48[2]);
            v226 = vmlaq_f32(v224, v51[1], v48[3]);
            *v51 = v220;
            v51[1] = v219;
            *v50 = v225;
            v50[1] = v226;
            v220 = v225;
            v219 = v226;
            --v222;
          }

          while (v222);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v135 = 0;
          v27 = 0;
          do
          {
            if (v19 < 1)
            {
              v145 = v50[2];
              v144 = v50[3];
            }

            else
            {
              v137 = v19;
              do
              {
                v138 = vld1q_dup_f32(a3);
                v136 = 4 * a7;
                a3 = (a3 + v136);
                v139 = v50[1];
                v140 = vmlaq_f32(vmlaq_f32(v138, *v50, *v48), *v51, v48[4]);
                v141 = vmlaq_f32(vmlaq_f32(v138, v139, v48[1]), v51[1], v48[5]);
                *v51 = *v50;
                v51[1] = v139;
                *v50 = v140;
                v50[1] = v141;
                v142 = v50[2];
                v143 = v50[3];
                v144 = vmlaq_f32(vmlaq_f32(0, v143, v48[3]), v51[3], v48[7]);
                v145 = vmlaq_f32(vmlaq_f32(v138, v142, v48[2]), v51[2], v48[6]);
                v51[2] = v142;
                v51[3] = v143;
                v50[2] = v145;
                v50[3] = v144;
                --v137;
              }

              while (v137);
            }

            v27 += v19;
            v146 = (v49 + 32 * (4 * v17));
            v147 = vmlaq_f32(vmulq_f32(v146[6], v51[2]), v145, v146[2]);
            v148 = vaddq_f32(vmlaq_f32(vmulq_f32(v146[4], *v51), *v50, *v146), vmlaq_f32(vmulq_f32(v146[5], v51[1]), v50[1], v146[1]));
            *v148.i8 = vadd_f32(*v148.i8, *&vextq_s8(v148, v148, 8uLL));
            v149 = vaddq_f32(v147, vmlaq_f32(vmulq_f32(v146[7], v51[3]), v144, v146[3]));
            *v149.i8 = vadd_f32(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
            *a4 = vaddv_f32(vadd_f32(vzip1_s32(*v148.i8, *v149.i8), vzip2_s32(*v148.i8, *v149.i8)));
            a4 += a8;
            v150 = v17 + v47;
            if (v150 < v52)
            {
              v19 = v53;
            }

            else
            {
              v19 = v53 + 1;
            }

            if (v150 < v52)
            {
              v151 = 0;
            }

            else
            {
              v151 = v52;
            }

            v17 = v150 - v151;
            ++v135;
          }

          while (v135 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v268 = v205;
          do
          {
            v269 = vld1q_dup_f32(a3);
            v267 = 4 * a7;
            a3 = (a3 + v267);
            v270 = v50[1];
            v271 = vmlaq_f32(vmlaq_f32(v269, *v50, *v48), *v51, v48[4]);
            v272 = vmlaq_f32(vmlaq_f32(v269, v270, v48[1]), v51[1], v48[5]);
            *v51 = *v50;
            v51[1] = v270;
            *v50 = v271;
            v50[1] = v272;
            v273 = v50[2];
            v274 = v50[3];
            v275 = vmlaq_f32(vmlaq_f32(0, v274, v48[3]), v51[3], v48[7]);
            v276 = vmlaq_f32(vmlaq_f32(v269, v273, v48[2]), v51[2], v48[6]);
            v51[2] = v273;
            v51[3] = v274;
            v50[2] = v276;
            v50[3] = v275;
            --v268;
          }

          while (v268);
        }
      }
    }

    else
    {
      v91 = *(a2 + 17);
      v17 = *(a2 + 18);
      v19 = *(a2 + 22);
      v92 = *(*a2 + 16);
      v93 = *(*a2 + 40);
      v94 = *(a2 + 14);
      v95 = *(a2 + 17);
      v96 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v97 = 0;
          do
          {
            v99 = *v94;
            v100 = v94[1];
            v101 = v19;
            if (v19 >= 1)
            {
              do
              {
                v102 = vld1q_dup_f32(a3);
                v98 = 4 * a7;
                a3 = (a3 + v98);
                v103 = vmlaq_f32(v102, v100, v92[1]);
                v104 = vmlaq_f32(vmlaq_f32(v102, v99, *v92), *v95, v92[2]);
                v105 = vmlaq_f32(v103, v95[1], v92[3]);
                *v95 = v99;
                v95[1] = v100;
                *v94 = v104;
                v94[1] = v105;
                v99 = v104;
                v100 = v105;
                --v101;
              }

              while (v101);
            }

            v27 += v19;
            v106 = *(a2 + 12) * (v17 & 0x7FFFFF);
            v107 = (v93 + 32 * ((v17 >> 22) & 0x1FE));
            v108 = v95[1];
            v109 = vaddq_f32(vmlaq_f32(vmulq_f32(v107[2], *v95), v99, *v107), vmlaq_f32(vmulq_f32(v107[3], v108), v100, v107[1]));
            *v109.i8 = vadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
            v110 = vaddq_f32(vmlaq_f32(vmulq_f32(*v95, v107[6]), v99, v107[4]), vmlaq_f32(vmulq_f32(v108, v107[7]), v100, v107[5]));
            *v110.i8 = vadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL));
            *v110.i8 = vadd_f32(vzip1_s32(*v110.i8, *v109.i8), vzip2_s32(*v110.i8, *v109.i8));
            *a4 = *&v110.i32[1] + (v106 * (*v110.i32 - *&v110.i32[1]));
            a4 += a8;
            LODWORD(v107) = v17 + v91;
            v17 = (v17 + v91) & 0x7FFFFFFF;
            v19 = v96 + (v107 >> 31);
            ++v97;
          }

          while (v97 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v241 = *v94;
          v240 = v94[1];
          v243 = v205;
          do
          {
            v244 = vld1q_dup_f32(a3);
            v242 = 4 * a7;
            a3 = (a3 + v242);
            v245 = vmlaq_f32(v244, v240, v92[1]);
            v246 = vmlaq_f32(vmlaq_f32(v244, v241, *v92), *v95, v92[2]);
            v247 = vmlaq_f32(v245, v95[1], v92[3]);
            *v95 = v241;
            v95[1] = v240;
            *v94 = v246;
            v94[1] = v247;
            v241 = v246;
            v240 = v247;
            --v243;
          }

          while (v243);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v183 = 0;
          do
          {
            if (v19 < 1)
            {
              v193 = v94[2];
              v192 = v94[3];
            }

            else
            {
              v185 = v19;
              do
              {
                v186 = vld1q_dup_f32(a3);
                v184 = 4 * a7;
                a3 = (a3 + v184);
                v187 = v94[1];
                v188 = vmlaq_f32(vmlaq_f32(v186, *v94, *v92), *v95, v92[4]);
                v189 = vmlaq_f32(vmlaq_f32(v186, v187, v92[1]), v95[1], v92[5]);
                *v95 = *v94;
                v95[1] = v187;
                *v94 = v188;
                v94[1] = v189;
                v190 = v94[2];
                v191 = v94[3];
                v192 = vmlaq_f32(vmlaq_f32(0, v191, v92[3]), v95[3], v92[7]);
                v193 = vmlaq_f32(vmlaq_f32(v186, v190, v92[2]), v95[2], v92[6]);
                v95[2] = v190;
                v95[3] = v191;
                v94[2] = v193;
                v94[3] = v192;
                --v185;
              }

              while (v185);
            }

            v27 += v19;
            v194 = *(a2 + 12) * (v17 & 0x7FFFFF);
            v195 = (v93 + 32 * ((v17 >> 21) & 0x3FC));
            v196 = v94[1];
            v197 = v95[1];
            v199 = v95[2];
            v198 = v95[3];
            v200 = vaddq_f32(vmlaq_f32(vmulq_f32(v195[4], *v95), *v94, *v195), vmlaq_f32(vmulq_f32(v195[5], v197), v196, v195[1]));
            *v200.i8 = vadd_f32(*v200.i8, *&vextq_s8(v200, v200, 8uLL));
            v201 = vaddq_f32(vmlaq_f32(vmulq_f32(v195[6], v199), v193, v195[2]), vmlaq_f32(vmulq_f32(v195[7], v198), v192, v195[3]));
            *v201.i8 = vadd_f32(*v201.i8, *&vextq_s8(v201, v201, 8uLL));
            v202 = vmlaq_f32(vmulq_f32(v199, v195[14]), v193, v195[10]);
            v203 = vaddq_f32(vmlaq_f32(vmulq_f32(*v95, v195[12]), *v94, v195[8]), vmlaq_f32(vmulq_f32(v197, v195[13]), v196, v195[9]));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            v204 = vaddq_f32(v202, vmlaq_f32(vmulq_f32(v198, v195[15]), v192, v195[11]));
            *v204.i8 = vadd_f32(*v204.i8, *&vextq_s8(v204, v204, 8uLL));
            *v203.i8 = vadd_f32(vadd_f32(vzip1_s32(*v203.i8, *v200.i8), vzip2_s32(*v203.i8, *v200.i8)), vadd_f32(vzip1_s32(*v204.i8, *v201.i8), vzip2_s32(*v204.i8, *v201.i8)));
            *a4 = *&v203.i32[1] + (v194 * (*v203.i32 - *&v203.i32[1]));
            a4 += a8;
            LODWORD(v195) = v17 + v91;
            v17 = (v17 + v91) & 0x7FFFFFFF;
            v19 = v96 + (v195 >> 31);
            ++v183;
          }

          while (v183 != a6);
        }

        v205 = a5 - v27;
        if (a5 <= v27)
        {
          goto LABEL_160;
        }

        if (v19 < v205)
        {
          v205 = v19;
        }

        if (v205 >= 1)
        {
          v297 = v205;
          do
          {
            v298 = vld1q_dup_f32(a3);
            v296 = 4 * a7;
            a3 = (a3 + v296);
            v299 = v94[1];
            v300 = vmlaq_f32(vmlaq_f32(v298, *v94, *v92), *v95, v92[4]);
            v301 = vmlaq_f32(vmlaq_f32(v298, v299, v92[1]), v95[1], v92[5]);
            *v95 = *v94;
            v95[1] = v299;
            *v94 = v300;
            v94[1] = v301;
            v302 = v94[2];
            v303 = v94[3];
            v304 = vmlaq_f32(vmlaq_f32(0, v303, v92[3]), v95[3], v92[7]);
            v305 = vmlaq_f32(vmlaq_f32(v298, v302, v92[2]), v95[2], v92[6]);
            v95[2] = v302;
            v95[3] = v303;
            v94[2] = v305;
            v94[3] = v304;
            --v297;
          }

          while (v297);
        }
      }
    }

    v19 -= v205;
    v27 += v205;
LABEL_160:
    *(a2 + 18) = v17;
    *(a2 + 22) = v19;
    v46 = 1;
    goto LABEL_161;
  }

  *this = 1919747182;
  *(this + 4) = 0;
LABEL_162:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}