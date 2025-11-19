BOOL TV3Property<unsigned long,14u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,14u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,14u,1u>::marshalSetter_Global);
}

void TV3Property<unsigned long,14u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0xE);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F72B394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<unsigned long,14u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xE);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<unsigned long,14u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,14u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<unsigned long,14u,1u>::stubSetter);
}

char *TV3Property<unsigned long,14u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "Q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "Q");
  result = strdup(__str);
  *(a3 + 24) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 unsignedIntegerValue];
  return AudioUnitSetProperty(v3, 0xEu, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0xEu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

void TCFDictionary_CF2C<__CFString const*,AUProperty const*>::~TCFDictionary_CF2C(TCFDictionaryBase *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(a1);

  JUMPOUT(0x193ADF220);
}

void TCFDictionary_C2C<unsigned int,AUProperty const*>::~TCFDictionary_C2C(TCFDictionaryBase *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t MP413KVoiceSpecificConfig::Deserialize(uint64_t a1, uint64_t a2)
{
  v181 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = *(a2 + 20) - 32;
  *(a2 + 20) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = *(a2 + 16);
    v7 = *(a2 + 20);
    v5 = v7 + 32;
    v9 = v7 == -32;
    *a2 += 4;
    v6 = (v8 >> v7) | v4;
    v10 = v8 << -v7;
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v10;
    }

    *(a2 + 16) = v4;
    *(a2 + 20) = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 == 1363952461)
  {
    *(a1 + 8) = 1363952461;
    v11 = v5 - 32;
    *(a2 + 20) = v11;
    if (v11 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v15 = (*a2 + 4);
      *a2 = v15;
      v17 = *(a2 + 16);
      v16 = *(a2 + 20);
      v12 = (v17 >> v16) | v4;
      v11 = v16 + 32;
      if (v16 == -32)
      {
        v18 = 0;
        *(a1 + 12) = v12;
        *(a2 + 16) = 0xFFFFFFF800000000;
        goto LABEL_18;
      }

      v4 = v17 << -v16;
      *(a2 + 16) = v4;
    }

    else
    {
      v12 = v4;
    }

    *(a1 + 12) = v12;
    v18 = HIBYTE(v4);
    v19 = v11 - 8;
    *(a2 + 20) = v19;
    if (v19 >= 0)
    {
      v20 = v4 << 8;
      goto LABEL_20;
    }

    v15 = *a2;
LABEL_18:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
    v21 = (*a2 + 4);
    *a2 = v21;
    v23 = *(a2 + 16);
    v22 = *(a2 + 20);
    v18 |= v23 >> v22;
    v19 = v22 + 32;
    if (v22 == -32)
    {
      v25 = 0;
      *(a1 + 16) = v18;
      v24 = (a1 + 16);
      *(a2 + 16) = 0xFFFFFFF800000000;
      goto LABEL_24;
    }

    v20 = v23 << -v22;
LABEL_20:
    *(a2 + 16) = v20;
    *(a1 + 16) = v18;
    v24 = (a1 + 16);
    v25 = HIBYTE(v20);
    v26 = v19 - 8;
    *(a2 + 20) = v26;
    if (v26 >= 0)
    {
      v27 = v20 << 8;
LABEL_27:
      *(a2 + 16) = v27;
      *v24 += v25 << 8;
      v30 = HIBYTE(v27);
      v31 = v26 - 8;
      *(a2 + 20) = v31;
      if (v31 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v34 = *(a2 + 16);
        v33 = *(a2 + 20);
        v30 |= v34 >> v33;
        v31 = v33 + 32;
        if (v33 == -32)
        {
          v32 = 0;
        }

        else
        {
          v32 = v34 << -v33;
        }
      }

      else
      {
        v32 = v27 << 8;
      }

      *(a2 + 16) = v32;
      *v24 += v30 << 16;
      v35 = HIBYTE(v32);
      v36 = v31 - 8;
      *(a2 + 20) = v36;
      if (v36 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v39 = *(a2 + 16);
        v38 = *(a2 + 20);
        v35 |= v39 >> v38;
        v36 = v38 + 32;
        if (v38 == -32)
        {
          v37 = 0;
        }

        else
        {
          v37 = v39 << -v38;
        }
      }

      else
      {
        v37 = v32 << 8;
      }

      *(a2 + 16) = v37;
      *v24 += v35 << 24;
      v40 = HIBYTE(v37);
      v41 = v36 - 8;
      *(a2 + 20) = v41;
      if (v41 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        v43 = (*a2 + 4);
        *a2 = v43;
        v45 = *(a2 + 16);
        v44 = *(a2 + 20);
        v40 |= v45 >> v44;
        v41 = v44 + 32;
        if (v44 == -32)
        {
          v46 = 0;
          *(a1 + 20) = v40;
          *(a2 + 16) = 0xFFFFFFF800000000;
          goto LABEL_45;
        }

        v42 = v45 << -v44;
      }

      else
      {
        v42 = v37 << 8;
      }

      *(a2 + 16) = v42;
      *(a1 + 20) = v40;
      v46 = HIBYTE(v42);
      v47 = v41 - 8;
      *(a2 + 20) = v47;
      if (v47 >= 0)
      {
        v48 = v42 << 8;
        goto LABEL_48;
      }

      v43 = *a2;
LABEL_45:
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v43);
      *a2 += 4;
      v50 = *(a2 + 16);
      v49 = *(a2 + 20);
      v46 |= v50 >> v49;
      *(a2 + 20) = v49 + 32;
      if (v49 == -32)
      {
        v48 = 0;
      }

      else
      {
        v48 = v50 << -v49;
      }

LABEL_48:
      *(a2 + 16) = v48;
      *(a1 + 21) = v46;
      if (*(a1 + 20) != 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v177 = 136315394;
          v178 = "ACMP4BitStreams.cpp";
          v179 = 1024;
          v180 = 1375;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: unsupported voice format major version";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (v46)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v177 = 136315394;
          v178 = "ACMP4BitStreams.cpp";
          v179 = 1024;
          v180 = 1376;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: unsupported voice format minor version";
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      for (i = 0; i != 16; ++i)
      {
        v54 = *(a2 + 16);
        v55 = HIBYTE(v54);
        v56 = *(a2 + 20) - 8;
        *(a2 + 20) = v56;
        if (v56 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v59 = *(a2 + 16);
          v58 = *(a2 + 20);
          v55 |= v59 >> v58;
          *(a2 + 20) = v58 + 32;
          if (v58 == -32)
          {
            v57 = 0;
          }

          else
          {
            v57 = v59 << -v58;
          }
        }

        else
        {
          v57 = v54 << 8;
        }

        *(a2 + 16) = v57;
        *(a1 + 22 + i) = v55;
      }

      v60 = *(a2 + 16);
      v61 = HIBYTE(v60);
      v62 = *(a2 + 20) - 8;
      *(a2 + 20) = v62;
      if (v62 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        v64 = (*a2 + 4);
        *a2 = v64;
        v66 = *(a2 + 16);
        v65 = *(a2 + 20);
        v61 |= v66 >> v65;
        v62 = v65 + 32;
        if (v65 == -32)
        {
          v68 = 0;
          *(a1 + 38) = v61;
          v67 = (a1 + 38);
          *(a2 + 16) = 0xFFFFFFF800000000;
          goto LABEL_72;
        }

        v63 = v66 << -v65;
      }

      else
      {
        v63 = v60 << 8;
      }

      *(a2 + 16) = v63;
      *(a1 + 38) = v61;
      v67 = (a1 + 38);
      v68 = HIBYTE(v63);
      v69 = v62 - 8;
      *(a2 + 20) = v69;
      if (v69 >= 0)
      {
        v70 = v63 << 8;
LABEL_75:
        *(a2 + 16) = v70;
        *v67 += v68 << 8;
        for (j = 40; j != 120; ++j)
        {
          v74 = *(a2 + 16);
          v75 = HIBYTE(v74);
          v76 = *(a2 + 20) - 8;
          *(a2 + 20) = v76;
          if (v76 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v79 = *(a2 + 16);
            v78 = *(a2 + 20);
            v75 |= v79 >> v78;
            *(a2 + 20) = v78 + 32;
            if (v78 == -32)
            {
              v77 = 0;
            }

            else
            {
              v77 = v79 << -v78;
            }
          }

          else
          {
            v77 = v74 << 8;
          }

          *(a2 + 16) = v77;
          *(a1 + j) = v75;
        }

        v80 = *(a2 + 16);
        v81 = HIBYTE(v80);
        v82 = *(a2 + 20) - 8;
        *(a2 + 20) = v82;
        if (v82 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          v84 = (*a2 + 4);
          *a2 = v84;
          v86 = *(a2 + 16);
          v85 = *(a2 + 20);
          v81 |= v86 >> v85;
          v82 = v85 + 32;
          if (v85 == -32)
          {
            v88 = 0;
            *(a1 + 120) = v81;
            v87 = (a1 + 120);
            *(a2 + 16) = 0xFFFFFFF800000000;
            goto LABEL_90;
          }

          v83 = v86 << -v85;
        }

        else
        {
          v83 = v80 << 8;
        }

        *(a2 + 16) = v83;
        *(a1 + 120) = v81;
        v87 = (a1 + 120);
        v88 = HIBYTE(v83);
        v89 = v82 - 8;
        *(a2 + 20) = v89;
        if (v89 >= 0)
        {
          v90 = v83 << 8;
          goto LABEL_93;
        }

        v84 = *a2;
LABEL_90:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v84);
        *a2 += 4;
        v92 = *(a2 + 16);
        v91 = *(a2 + 20);
        v88 |= v92 >> v91;
        v89 = v91 + 32;
        if (v91 == -32)
        {
          v90 = 0;
        }

        else
        {
          v90 = v92 << -v91;
        }

LABEL_93:
        *(a2 + 16) = v90;
        *v87 += v88 << 8;
        v93 = HIBYTE(v90);
        v94 = v89 - 8;
        *(a2 + 20) = v94;
        if (v94 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          v96 = (*a2 + 4);
          *a2 = v96;
          v98 = *(a2 + 16);
          v97 = *(a2 + 20);
          v93 |= v98 >> v97;
          v94 = v97 + 32;
          if (v97 == -32)
          {
            v100 = 0;
            *(a1 + 122) = v93;
            v99 = (a1 + 122);
            *(a2 + 16) = 0xFFFFFFF800000000;
            goto LABEL_101;
          }

          v95 = v98 << -v97;
        }

        else
        {
          v95 = v90 << 8;
        }

        *(a2 + 16) = v95;
        *(a1 + 122) = v93;
        v99 = (a1 + 122);
        v100 = HIBYTE(v95);
        v101 = v94 - 8;
        *(a2 + 20) = v101;
        if (v101 >= 0)
        {
          v102 = v95 << 8;
          goto LABEL_104;
        }

        v96 = *a2;
LABEL_101:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v96);
        *a2 += 4;
        v104 = *(a2 + 16);
        v103 = *(a2 + 20);
        v100 |= v104 >> v103;
        v101 = v103 + 32;
        if (v103 == -32)
        {
          v102 = 0;
        }

        else
        {
          v102 = v104 << -v103;
        }

LABEL_104:
        *(a2 + 16) = v102;
        *v99 += v100 << 8;
        v105 = HIBYTE(v102);
        v106 = v101 - 8;
        *(a2 + 20) = v106;
        if (v106 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          v108 = (*a2 + 4);
          *a2 = v108;
          v110 = *(a2 + 16);
          v109 = *(a2 + 20);
          v105 |= v110 >> v109;
          v106 = v109 + 32;
          if (v109 == -32)
          {
            v112 = 0;
            *(a1 + 124) = v105;
            v111 = (a1 + 124);
            *(a2 + 16) = 0xFFFFFFF800000000;
            goto LABEL_112;
          }

          v107 = v110 << -v109;
        }

        else
        {
          v107 = v102 << 8;
        }

        *(a2 + 16) = v107;
        *(a1 + 124) = v105;
        v111 = (a1 + 124);
        v112 = HIBYTE(v107);
        v113 = v106 - 8;
        *(a2 + 20) = v113;
        if (v113 >= 0)
        {
          v114 = v107 << 8;
          goto LABEL_115;
        }

        v108 = *a2;
LABEL_112:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v108);
        *a2 += 4;
        v116 = *(a2 + 16);
        v115 = *(a2 + 20);
        v112 |= v116 >> v115;
        v113 = v115 + 32;
        if (v115 == -32)
        {
          v114 = 0;
        }

        else
        {
          v114 = v116 << -v115;
        }

LABEL_115:
        *(a2 + 16) = v114;
        *v111 += v112 << 8;
        v117 = HIBYTE(v114);
        v118 = v113 - 8;
        *(a2 + 20) = v118;
        if (v118 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          v120 = (*a2 + 4);
          *a2 = v120;
          v122 = *(a2 + 16);
          v121 = *(a2 + 20);
          v117 |= v122 >> v121;
          v118 = v121 + 32;
          if (v121 == -32)
          {
            v124 = 0;
            *(a1 + 126) = v117;
            v123 = (a1 + 126);
            *(a2 + 16) = 0xFFFFFFF800000000;
            goto LABEL_123;
          }

          v119 = v122 << -v121;
        }

        else
        {
          v119 = v114 << 8;
        }

        *(a2 + 16) = v119;
        *(a1 + 126) = v117;
        v123 = (a1 + 126);
        v124 = HIBYTE(v119);
        v125 = v118 - 8;
        *(a2 + 20) = v125;
        if (v125 >= 0)
        {
          v126 = v119 << 8;
          goto LABEL_126;
        }

        v120 = *a2;
LABEL_123:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v120);
        *a2 += 4;
        v128 = *(a2 + 16);
        v127 = *(a2 + 20);
        v124 |= v128 >> v127;
        v125 = v127 + 32;
        if (v127 == -32)
        {
          v126 = 0;
        }

        else
        {
          v126 = v128 << -v127;
        }

LABEL_126:
        *(a2 + 16) = v126;
        *v123 += v124 << 8;
        v129 = HIBYTE(v126);
        v130 = v125 - 8;
        *(a2 + 20) = v130;
        if (v130 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          v132 = (*a2 + 4);
          *a2 = v132;
          v134 = *(a2 + 16);
          v133 = *(a2 + 20);
          v129 |= v134 >> v133;
          v130 = v133 + 32;
          if (v133 == -32)
          {
            v136 = 0;
            *(a1 + 128) = v129;
            v135 = (a1 + 128);
            *(a2 + 16) = 0xFFFFFFF800000000;
            goto LABEL_134;
          }

          v131 = v134 << -v133;
        }

        else
        {
          v131 = v126 << 8;
        }

        *(a2 + 16) = v131;
        *(a1 + 128) = v129;
        v135 = (a1 + 128);
        v136 = HIBYTE(v131);
        v137 = v130 - 8;
        *(a2 + 20) = v137;
        if (v137 >= 0)
        {
          v138 = v131 << 8;
          goto LABEL_137;
        }

        v132 = *a2;
LABEL_134:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v132);
        *a2 += 4;
        v140 = *(a2 + 16);
        v139 = *(a2 + 20);
        v136 |= v140 >> v139;
        v137 = v139 + 32;
        if (v139 == -32)
        {
          v138 = 0;
        }

        else
        {
          v138 = v140 << -v139;
        }

LABEL_137:
        *(a2 + 16) = v138;
        *v135 += v136 << 8;
        v141 = HIBYTE(v138);
        v142 = v137 - 8;
        *(a2 + 20) = v142;
        if (v142 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          v144 = (*a2 + 4);
          *a2 = v144;
          v146 = *(a2 + 16);
          v145 = *(a2 + 20);
          v141 |= v146 >> v145;
          v142 = v145 + 32;
          if (v145 == -32)
          {
            v148 = 0;
            *(a1 + 130) = v141;
            v147 = (a1 + 130);
            *(a2 + 16) = 0xFFFFFFF800000000;
            goto LABEL_145;
          }

          v143 = v146 << -v145;
        }

        else
        {
          v143 = v138 << 8;
        }

        *(a2 + 16) = v143;
        *(a1 + 130) = v141;
        v147 = (a1 + 130);
        v148 = HIBYTE(v143);
        v149 = v142 - 8;
        *(a2 + 20) = v149;
        if (v149 >= 0)
        {
          v150 = v143 << 8;
          goto LABEL_148;
        }

        v144 = *a2;
LABEL_145:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v144);
        *a2 += 4;
        v152 = *(a2 + 16);
        v151 = *(a2 + 20);
        v148 |= v152 >> v151;
        v149 = v151 + 32;
        if (v151 == -32)
        {
          v150 = 0;
        }

        else
        {
          v150 = v152 << -v151;
        }

LABEL_148:
        *(a2 + 16) = v150;
        *v147 += v148 << 8;
        v153 = HIBYTE(v150);
        v154 = v149 - 8;
        *(a2 + 20) = v154;
        if (v154 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v157 = *(a2 + 16);
          v156 = *(a2 + 20);
          v153 |= v157 >> v156;
          v154 = v156 + 32;
          if (v156 == -32)
          {
            v155 = 0;
          }

          else
          {
            v155 = v157 << -v156;
          }
        }

        else
        {
          v155 = v150 << 8;
        }

        *(a2 + 16) = v155;
        *v147 += v153 << 16;
        v158 = HIBYTE(v155);
        v159 = v154 - 8;
        *(a2 + 20) = v159;
        if (v159 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v162 = *(a2 + 16);
          v161 = *(a2 + 20);
          v158 |= v162 >> v161;
          v159 = v161 + 32;
          if (v161 == -32)
          {
            v160 = 0;
          }

          else
          {
            v160 = v162 << -v161;
          }
        }

        else
        {
          v160 = v155 << 8;
        }

        v163 = 0;
        *(a2 + 16) = v160;
        *(a1 + 130) += v158 << 24;
        v164 = (a1 + 134);
        v165 = 8;
        v166 = v164;
        while (1)
        {
          v167 = HIBYTE(v160);
          v168 = v159 - 8;
          *(a2 + 20) = v168;
          if (v168 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            v170 = (*a2 + 4);
            *a2 = v170;
            v172 = *(a2 + 16);
            v171 = *(a2 + 20);
            v167 |= v172 >> v171;
            v168 = v171 + 32;
            if (v171 == -32)
            {
              v173 = 0;
              v174 = &v164[v163];
              *v166 = v167;
              *(a2 + 16) = 0xFFFFFFF800000000;
LABEL_167:
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, v170);
              *a2 += 4;
              v176 = *(a2 + 16);
              v175 = *(a2 + 20);
              v173 |= v176 >> v175;
              v159 = v175 + 32;
              *(a2 + 20) = v175 + 32;
              if (v175 == -32)
              {
                v160 = 0;
              }

              else
              {
                v160 = v176 << -v175;
              }

              goto LABEL_170;
            }

            v169 = v172 << -v171;
          }

          else
          {
            v169 = v160 << 8;
          }

          *(a2 + 16) = v169;
          *v166 = v167;
          v173 = HIBYTE(v169);
          v159 = v168 - 8;
          *(a2 + 20) = v159;
          if (v159 < 0)
          {
            v170 = *a2;
            v174 = v166;
            goto LABEL_167;
          }

          v160 = v169 << 8;
          v174 = v166;
LABEL_170:
          *(a2 + 16) = v160;
          *v174 += v173 << 8;
          ++v163;
          ++v166;
          if (!--v165)
          {
            result = 0;
            goto LABEL_56;
          }
        }
      }

      v64 = *a2;
LABEL_72:
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v64);
      *a2 += 4;
      v72 = *(a2 + 16);
      v71 = *(a2 + 20);
      v68 |= v72 >> v71;
      *(a2 + 20) = v71 + 32;
      if (v71 == -32)
      {
        v70 = 0;
      }

      else
      {
        v70 = v72 << -v71;
      }

      goto LABEL_75;
    }

    v21 = *a2;
LABEL_24:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v21);
    *a2 += 4;
    v29 = *(a2 + 16);
    v28 = *(a2 + 20);
    v25 |= v29 >> v28;
    v26 = v28 + 32;
    if (v28 == -32)
    {
      v27 = 0;
    }

    else
    {
      v27 = v29 << -v28;
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v177 = 136315394;
    v178 = "ACMP4BitStreams.cpp";
    v179 = 1024;
    v180 = 1354;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: unsupported voice format";
LABEL_54:
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, &v177, 0x12u);
  }

LABEL_55:
  result = 4294967090;
LABEL_56:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MPEG2AACSpecificConfig::Deserialize(_DWORD *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = *(a2 + 20) - 32;
  *(a2 + 20) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v9 = v6 + 32;
    v8 = v6 == -32;
    *a2 += 4;
    v4 |= v7 >> v6;
    v10 = v7 << -v6;
    if (v8)
    {
      v10 = 0;
    }

    *(a2 + 16) = v10;
    *(a2 + 20) = v9;
  }

  if (v4 != 1094994246)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = 136315394;
      v41 = "ACMP4BitStreams.cpp";
      v42 = 1024;
      v43 = 3425;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  ADIFHeader::Deserialize: adif_id() is incorrect";
LABEL_30:
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v24, &v40, 0x12u);
    }

LABEL_31:
    result = 4294967090;
    goto LABEL_32;
  }

  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[2] = Bit;
  if (Bit)
  {
    for (i = 0; i != 9; ++i)
    {
      v13 = *(a2 + 16);
      v14 = HIBYTE(v13);
      v15 = *(a2 + 20) - 8;
      *(a2 + 20) = v15;
      if (v15 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v18 = *(a2 + 16);
        v17 = *(a2 + 20);
        v14 |= v18 >> v17;
        *(a2 + 20) = v17 + 32;
        if (v17 == -32)
        {
          v16 = 0;
        }

        else
        {
          v16 = v18 << -v17;
        }
      }

      else
      {
        v16 = v13 << 8;
      }

      *(a2 + 16) = v16;
      *(a1 + i + 12) = v14;
    }
  }

  a1[6] = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[7] = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[8] = TBitstreamReader<unsigned int>::GetBit(a2);
  v19 = *(a2 + 16);
  v20 = v19 >> 9;
  v21 = *(a2 + 20) - 23;
  *(a2 + 20) = v21;
  if (v21 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v25 = (*a2 + 4);
    *a2 = v25;
    v27 = *(a2 + 16);
    v26 = *(a2 + 20);
    v20 |= v27 >> v26;
    v21 = v26 + 32;
    if (v26 == -32)
    {
      v28 = 0;
      a1[9] = v20;
      *(a2 + 16) = 0xFFFFFFFC00000000;
      goto LABEL_24;
    }

    v22 = v27 << -v26;
  }

  else
  {
    v22 = v19 << 23;
  }

  *(a2 + 16) = v22;
  a1[9] = v20;
  v28 = v22 >> 28;
  v29 = v21 - 4;
  *(a2 + 20) = v29;
  if (v29 >= 0)
  {
    v30 = 16 * v22;
    goto LABEL_27;
  }

  v25 = *a2;
LABEL_24:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v25);
  *a2 += 4;
  v32 = *(a2 + 16);
  v31 = *(a2 + 20);
  v28 |= v32 >> v31;
  v29 = v31 + 32;
  *(a2 + 20) = v31 + 32;
  if (v31 == -32)
  {
    v30 = 0;
  }

  else
  {
    v30 = v32 << -v31;
  }

LABEL_27:
  *(a2 + 16) = v30;
  if (v28)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = 136315394;
      v41 = "ACMP4BitStreams.cpp";
      v42 = 1024;
      v43 = 3439;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  ADIFHeader::Deserialize: count of PCEs exceeds our capacity";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (!a1[8])
  {
    v35 = v30 >> 12;
    v36 = v29 - 20;
    *(a2 + 20) = v36;
    if (v36 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v39 = *(a2 + 16);
      v38 = *(a2 + 20);
      v35 |= v39 >> v38;
      *(a2 + 20) = v38 + 32;
      if (v38 == -32)
      {
        v37 = 0;
      }

      else
      {
        v37 = v39 << -v38;
      }
    }

    else
    {
      v37 = v30 << 20;
    }

    *(a2 + 16) = v37;
    a1[10] = v35;
  }

  MP4AudioProgramConfig::Deserialize(a1 + 11, a2);
  result = 0;
LABEL_32:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4AudioProgramConfig::Deserialize(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4 >> 28;
  v6 = *(a2 + 20) - 4;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = (*a2 + 4);
    *a2 = v8;
    v10 = *(a2 + 16);
    v9 = *(a2 + 20);
    v5 |= v10 >> v9;
    v6 = v9 + 32;
    if (v9 == -32)
    {
      v11 = 0;
      *a1 = v5;
      *(a2 + 16) = 0xFFFFFFFE00000000;
      goto LABEL_9;
    }

    v7 = v10 << -v9;
  }

  else
  {
    v7 = 16 * v4;
  }

  *a1 = v5;
  v11 = v7 >> 30;
  v12 = v6 - 2;
  *(a2 + 16) = v7;
  *(a2 + 20) = v12;
  if (v12 >= 0)
  {
    v13 = 4 * v7;
    goto LABEL_12;
  }

  v8 = *a2;
LABEL_9:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v8);
  *a2 += 4;
  v15 = *(a2 + 16);
  v14 = *(a2 + 20);
  v11 |= v15 >> v14;
  *(a2 + 20) = v14 + 32;
  if (v14 == -32)
  {
    v13 = 0;
  }

  else
  {
    v13 = v15 << -v14;
  }

LABEL_12:
  *(a2 + 16) = v13;
  a1[1] = v11;
  MP4SampleRate::Deserialize((a1 + 2), a2, 0);
  v16 = *(a2 + 16);
  v17 = v16 >> 28;
  v18 = *(a2 + 20) - 4;
  *(a2 + 20) = v18;
  if (v18 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v20 = (*a2 + 4);
    *a2 = v20;
    v22 = *(a2 + 16);
    v21 = *(a2 + 20);
    v17 |= v22 >> v21;
    v18 = v21 + 32;
    if (v21 == -32)
    {
      v24 = 0;
      a1[3] = v17;
      v23 = a1 + 3;
      *(a2 + 16) = 0xFFFFFFFC00000000;
      goto LABEL_20;
    }

    v19 = v22 << -v21;
  }

  else
  {
    v19 = 16 * v16;
  }

  a1[3] = v17;
  v23 = a1 + 3;
  v24 = v19 >> 28;
  v25 = v18 - 4;
  *(a2 + 16) = v19;
  *(a2 + 20) = v25;
  if (v25 >= 0)
  {
    v26 = 16 * v19;
    goto LABEL_22;
  }

  v20 = *a2;
LABEL_20:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v20);
  v27 = (*a2 + 4);
  *a2 = v27;
  v29 = *(a2 + 16);
  v28 = *(a2 + 20);
  v24 |= v29 >> v28;
  v25 = v28 + 32;
  if (v28 == -32)
  {
    v31 = 0;
    a1[36] = v24;
    v30 = a1 + 36;
    *(a2 + 16) = 0xFFFFFFFC00000000;
    goto LABEL_26;
  }

  v26 = v29 << -v28;
LABEL_22:
  a1[36] = v24;
  v30 = a1 + 36;
  v31 = v26 >> 28;
  v32 = v25 - 4;
  *(a2 + 16) = v26;
  *(a2 + 20) = v32;
  if (v32 >= 0)
  {
    v33 = 16 * v26;
    goto LABEL_28;
  }

  v27 = *a2;
LABEL_26:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v27);
  v34 = (*a2 + 4);
  *a2 = v34;
  v36 = *(a2 + 16);
  v35 = *(a2 + 20);
  v31 |= v36 >> v35;
  v32 = v35 + 32;
  if (v35 == -32)
  {
    v38 = 0;
    v37 = a1 + 69;
    a1[69] = v31;
    *(a2 + 16) = 0xFFFFFFFE00000000;
    goto LABEL_32;
  }

  v33 = v36 << -v35;
LABEL_28:
  v37 = a1 + 69;
  a1[69] = v31;
  v38 = v33 >> 30;
  v39 = v32 - 2;
  *(a2 + 16) = v33;
  *(a2 + 20) = v39;
  if (v39 >= 0)
  {
    v40 = 4 * v33;
    goto LABEL_34;
  }

  v34 = *a2;
LABEL_32:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v34);
  v41 = (*a2 + 4);
  *a2 = v41;
  v43 = *(a2 + 16);
  v42 = *(a2 + 20);
  v38 |= v43 >> v42;
  v39 = v42 + 32;
  if (v42 == -32)
  {
    v45 = 0;
    v44 = a1 + 102;
    a1[102] = v38;
    *(a2 + 16) = 0xFFFFFFFD00000000;
    goto LABEL_38;
  }

  v40 = v43 << -v42;
LABEL_34:
  v44 = a1 + 102;
  a1[102] = v38;
  v45 = v40 >> 29;
  v46 = v39 - 3;
  *(a2 + 16) = v40;
  *(a2 + 20) = v46;
  if (v46 >= 0)
  {
    v47 = 8 * v40;
    goto LABEL_40;
  }

  v41 = *a2;
LABEL_38:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v41);
  v48 = (*a2 + 4);
  *a2 = v48;
  v50 = *(a2 + 16);
  v49 = *(a2 + 20);
  v45 |= v50 >> v49;
  v46 = v49 + 32;
  if (v49 == -32)
  {
    v52 = 0;
    v51 = a1 + 135;
    a1[135] = v45;
    *(a2 + 16) = 0xFFFFFFFC00000000;
    goto LABEL_44;
  }

  v47 = v50 << -v49;
LABEL_40:
  v51 = a1 + 135;
  a1[135] = v45;
  v52 = v47 >> 28;
  v53 = v46 - 4;
  *(a2 + 16) = v47;
  *(a2 + 20) = v53;
  if (v53 >= 0)
  {
    v54 = 16 * v47;
    goto LABEL_47;
  }

  v48 = *a2;
LABEL_44:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v48);
  *a2 += 4;
  v56 = *(a2 + 16);
  v55 = *(a2 + 20);
  v52 |= v56 >> v55;
  *(a2 + 20) = v55 + 32;
  if (v55 == -32)
  {
    v54 = 0;
  }

  else
  {
    v54 = v56 << -v55;
  }

LABEL_47:
  *(a2 + 16) = v54;
  a1[168] = v52;
  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[201] = Bit;
  if (Bit)
  {
    v58 = *(a2 + 16);
    v59 = v58 >> 28;
    v60 = *(a2 + 20) - 4;
    *(a2 + 20) = v60;
    if (v60 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v63 = *(a2 + 16);
      v62 = *(a2 + 20);
      v59 |= v63 >> v62;
      *(a2 + 20) = v62 + 32;
      if (v62 == -32)
      {
        v61 = 0;
      }

      else
      {
        v61 = v63 << -v62;
      }
    }

    else
    {
      v61 = 16 * v58;
    }

    *(a2 + 16) = v61;
    a1[202] = v59;
  }

  v64 = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[204] = v64;
  if (v64)
  {
    v65 = *(a2 + 16);
    v66 = v65 >> 28;
    v67 = *(a2 + 20) - 4;
    *(a2 + 20) = v67;
    if (v67 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v70 = *(a2 + 16);
      v69 = *(a2 + 20);
      v66 |= v70 >> v69;
      *(a2 + 20) = v69 + 32;
      if (v69 == -32)
      {
        v68 = 0;
      }

      else
      {
        v68 = v70 << -v69;
      }
    }

    else
    {
      v68 = 16 * v65;
    }

    *(a2 + 16) = v68;
    a1[205] = v66;
  }

  v71 = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[207] = v71;
  if (v71)
  {
    v72 = *(a2 + 16);
    v73 = v72 >> 30;
    v74 = *(a2 + 20) - 2;
    *(a2 + 20) = v74;
    if (v74 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v77 = *(a2 + 16);
      v76 = *(a2 + 20);
      v73 |= v77 >> v76;
      *(a2 + 20) = v76 + 32;
      if (v76 == -32)
      {
        v75 = 0;
      }

      else
      {
        v75 = v77 << -v76;
      }
    }

    else
    {
      v75 = 4 * v72;
    }

    *(a2 + 16) = v75;
    a1[208] = v73;
    a1[209] = TBitstreamReader<unsigned int>::GetBit(a2);
  }

  MP4AudioElementList::Deserialize(v23, a2, 1);
  MP4AudioElementList::Deserialize(v30, a2, 1);
  MP4AudioElementList::Deserialize(v37, a2, 1);
  MP4AudioElementList::Deserialize(v44, a2, 0);
  MP4AudioElementList::Deserialize(v51, a2, 0);
  result = MP4AudioElementList::Deserialize(a1 + 168, a2, 1);
  v79 = *(a2 + 16);
  v80 = *(a2 + 20);
  if ((v80 & 7) != 0)
  {
    *(a2 + 20) = v80 & 0xFFFFFFF8;
    if (v80 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v81 = *(a2 + 20);
      *a2 += 4;
      v80 = v81 + 32;
      if (v81 == -32)
      {
        v79 = 0;
      }

      else
      {
        v79 = *(a2 + 16) << -v81;
      }
    }

    else
    {
      v79 <<= v80 & 7;
      v80 &= 0xFFFFFFF8;
    }

    *(a2 + 16) = v79;
  }

  v82 = HIBYTE(v79);
  v83 = v80 - 8;
  *(a2 + 20) = v83;
  if (v83 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v86 = *(a2 + 16);
    v85 = *(a2 + 20);
    v82 |= v86 >> v85;
    *(a2 + 20) = v85 + 32;
    if (v85 == -32)
    {
      v84 = 0;
    }

    else
    {
      v84 = v86 << -v85;
    }
  }

  else
  {
    v84 = v79 << 8;
  }

  *(a2 + 16) = v84;
  a1[210] = v82;
  if (v82)
  {
    v87 = 0;
    do
    {
      v88 = *(a2 + 16);
      v89 = HIBYTE(v88);
      v90 = *(a2 + 20) - 8;
      *(a2 + 20) = v90;
      if (v90 < 0)
      {
        result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v93 = *(a2 + 16);
        v92 = *(a2 + 20);
        v89 |= v93 >> v92;
        *(a2 + 20) = v92 + 32;
        if (v92 == -32)
        {
          v91 = 0;
        }

        else
        {
          v91 = v93 << -v92;
        }
      }

      else
      {
        v91 = v88 << 8;
      }

      *(a2 + 16) = v91;
      *(a1 + v87++ + 844) = v89;
    }

    while (v87 < a1[210]);
  }

  return result;
}

uint64_t MP4SampleRate::Deserialize(MP4SampleRate *this, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = v6 >> 28;
  v8 = *(a2 + 20) - 4;
  *(a2 + 20) = v8;
  if (v8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v11 = *(a2 + 16);
    v10 = *(a2 + 20);
    v7 |= v11 >> v10;
    *(a2 + 20) = v10 + 32;
    if (v10 == -32)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11 << -v10;
    }
  }

  else
  {
    v9 = 16 * v6;
  }

  *(a2 + 16) = v9;
  result = MP4SampleRate::SetFromIndex(this, v7, a3);
  if (v7 == 15)
  {
    v13 = *(a2 + 16);
    v14 = v13 >> 8;
    v15 = *(a2 + 20) - 24;
    *(a2 + 20) = v15;
    if (v15 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v18 = *(a2 + 16);
      v17 = *(a2 + 20);
      v14 |= v18 >> v17;
      *(a2 + 20) = v17 + 32;
      if (v17 == -32)
      {
        v16 = 0;
      }

      else
      {
        v16 = v18 << -v17;
      }
    }

    else
    {
      v16 = v13 << 24;
    }

    *(a2 + 16) = v16;
    *this = v14;
  }

  return result;
}

unsigned int *MP4AudioElementList::Deserialize(unsigned int *result, uint64_t a2, int a3)
{
  if (*result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      if (a3)
      {
        result = TBitstreamReader<unsigned int>::GetBit(a2);
        v7[1] = result;
      }

      v8 = *(a2 + 16);
      v9 = v8 >> 28;
      v10 = *(a2 + 20) - 4;
      *(a2 + 20) = v10;
      if (v10 < 0)
      {
        result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v13 = *(a2 + 16);
        v12 = *(a2 + 20);
        v9 |= v13 >> v12;
        *(a2 + 20) = v12 + 32;
        if (v12 == -32)
        {
          v11 = 0;
        }

        else
        {
          v11 = v13 << -v12;
        }
      }

      else
      {
        v11 = 16 * v8;
      }

      *(a2 + 16) = v11;
      v7[17] = v9;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

_DWORD *MP4SampleRate::SetFromIndex(_DWORD *this, unsigned int a2, int a3)
{
  if (a2 > 0xC)
  {
    if (a2 >= 0x10 && a3 || a2 >= 0xF && !a3)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Error in MP4SampleRate::deserialize(): illegal sample rate index";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }
  }

  else
  {
    *this = MP4SampleRate::kMP4SampleRateTable[a2];
  }

  return this;
}

uint64_t MPEG1Or2SpecificConfig::Deserialize(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20) - 32;
  *(a2 + 20) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = *(a2 + 16);
    v7 = *(a2 + 20);
    v5 = v7 + 32;
    v9 = v7 == -32;
    *a2 += 4;
    v6 = (v8 >> v7) | v4;
    v10 = v8 << -v7;
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v10;
    }

    *(a2 + 16) = v4;
  }

  else
  {
    v6 = v4;
  }

  *(a1 + 8) = bswap32(v6);
  v11 = v4 >> 23;
  v12 = v5 - 9;
  *(a2 + 20) = v12;
  if (v12 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v15 = *(a2 + 16);
    v14 = *(a2 + 20);
    v11 |= v15 >> v14;
    *(a2 + 20) = v14 + 32;
    if (v14 == -32)
    {
      v13 = 0;
    }

    else
    {
      v13 = v15 << -v14;
    }
  }

  else
  {
    v13 = v4 << 9;
  }

  *(a2 + 16) = v13;
  *(a1 + 12) = v11;
  return 0;
}

unint64_t MP4SampleRate::Index(MP4SampleRate *this)
{
  v1 = 13;
  v2 = &MP4SampleRate::kMP4SampleRateTable;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[4 * (v1 >> 1)];
    v6 = *v4;
    v5 = (v4 + 1);
    v1 += ~(v1 >> 1);
    if (v6 > this)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  if (v2 == "mcaa caarcaatcaahcaa" || *v2 != this)
  {
    return 15;
  }

  else
  {
    return (v2 - &MP4SampleRate::kMP4SampleRateTable) >> 2;
  }
}

uint64_t MP4SampleRate::Serialize(int *a1, uint64_t a2)
{
  v4 = MP4SampleRate::Index(*a1);
  if (v4 == 15)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 15, 4u);
    v4 = *a1;
    v5 = a2;
    v6 = 24;
  }

  else
  {
    v5 = a2;
    v6 = 4;
  }

  return AT::TBitstreamWriter<unsigned int>::PutBits(v5, v4, v6);
}

uint64_t MP4AudioObjectType::Deserialize(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = v4 >> 27;
  v6 = *(a2 + 20) - 5;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = 32 * v4;
  }

  *(a2 + 16) = v7;
  *v3 = v5;
  if (v5 == 31)
  {
    v10 = v7 >> 26;
    v11 = v6 - 6;
    *(a2 + 20) = v11;
    if (v11 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v14 = *(a2 + 16);
      v13 = *(a2 + 20);
      v10 |= v14 >> v13;
      *(a2 + 20) = v13 + 32;
      if (v13 == -32)
      {
        v12 = 0;
      }

      else
      {
        v12 = v14 << -v13;
      }
    }

    else
    {
      v12 = v7 << 6;
    }

    *(a2 + 16) = v12;
    v5 = v10 + *v3 + 1;
    *v3 = v5;
  }

  if ((v5 & 0xFFFFFFFE) == 0xA)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t MP4AudioObjectType::Serialize(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  if (a1 < 0x1F)
  {
    v5 = a2;
    v6 = 5;
  }

  else
  {
    v4 = a1 - 32;
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 31, 5u);
    v5 = a2;
    v3 = v4;
    v6 = 6;
  }

  return AT::TBitstreamWriter<unsigned int>::PutBits(v5, v3, v6);
}

uint64_t ADTSHeader::Deserialize(ADTSHeader *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 6)
  {
    v4 = a2[1];
    v5 = (*a2 << 24) | (v4 << 16);
    v6 = a2[2];
    *this = (a2[3] | (v6 << 8) | v5) >> 4;
    v7 = (a2[4] << 16) & 0xF0FFFFFF | ((a2[3] & 0xF) << 24) | (a2[5] << 8);
    *(this + 1) = v7 | a2[6];
    if (v5 >> 20 != 4095)
    {
      v3 = 1937337955;
      goto LABEL_7;
    }

    if ((v4 & 6) != 0)
    {
      v3 = 1818327410;
      goto LABEL_7;
    }

    if ((v4 & 8) != 0 && (v6 & 0xC0) == 0xC0)
    {
      v3 = 1886547814;
      goto LABEL_7;
    }

    if ((v6 & 0x3Cu) >= 0x31)
    {
      v3 = 1918989413;
      goto LABEL_7;
    }

    v9 = (v7 >> 13) & 0x1FFF;
    if (v4)
    {
      v10 = 7;
    }

    else
    {
      v10 = 9;
    }

    if (v9 > v10)
    {
      if (v4)
      {
        *(this + 4) = 0;
        return *(this + 3);
      }

      if (a3 > 8)
      {
        *(this + 4) = bswap32(*(a2 + 7)) >> 16;
        return *(this + 3);
      }
    }
  }

  v3 = 1651861094;
LABEL_7:
  *(this + 3) = v3;
  return *(this + 3);
}

unsigned int *MP4AudioElementList::Serialize(unsigned int *result, uint64_t a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = &v3[v4];
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5[1], 1u);
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5[17], 4u);
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t MP4AudioProgramConfig::SerializeCount(MP4AudioProgramConfig *this, char a2)
{
  if (MP4SampleRate::Index(*(this + 2)) == 15)
  {
    v4 = 28;
  }

  else
  {
    v4 = 4;
  }

  v5 = v4 + 28;
  v6 = v4 | 0x20;
  if (!*(this + 201))
  {
    v6 = v5;
  }

  if (*(this + 204))
  {
    v7 = v6 + 5;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (*(this + 207))
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v9 = v7 + v8 + 4 * (*(this + 135) + *(this + 102)) + 5 * (*(this + 36) + *(this + 3) + *(this + 69) + *(this + 168));
  if (((v9 + a2) & 7) != 0)
  {
    v9 = v9 - ((v9 + a2) & 7) + 8;
  }

  return (v9 + 8 * *(this + 210) + 8);
}

uint64_t MP4AudioProgramConfig::Serialize(uint64_t a1, uint64_t a2)
{
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *a1, 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 4), 2u);
  v4 = MP4SampleRate::Index(*(a1 + 8));
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v4, 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 12), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 144), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 276), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 408), 2u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 540), 3u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 672), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 804), 1u);
  if (*(a1 + 804))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 808), 4u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 816), 1u);
  if (*(a1 + 816))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 820), 4u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 828), 1u);
  if (*(a1 + 828))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 832), 2u);
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 836), 1u);
  }

  MP4AudioElementList::Serialize((a1 + 12), a2);
  MP4AudioElementList::Serialize((a1 + 144), a2);
  MP4AudioElementList::Serialize((a1 + 276), a2);
  if (*(a1 + 408))
  {
    v5 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 476 + 4 * v5++), 4u);
    }

    while (v5 < *(a1 + 408));
  }

  if (*(a1 + 540))
  {
    v6 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 608 + 4 * v6++), 4u);
    }

    while (v6 < *(a1 + 540));
  }

  MP4AudioElementList::Serialize((a1 + 672), a2);
  v7 = *(a2 + 28) & 7;
  if (v7)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, v7);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 840), 8u);
  if (*(a1 + 840))
  {
    v8 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 844 + v8++), 8u);
    }

    while (v8 < *(a1 + 840));
  }

  return AT::TBitstreamWriter<unsigned int>::Flush(a2);
}

uint64_t MP4AudioProgramConfig::TotalNumChannels(MP4AudioProgramConfig *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    LODWORD(result) = 0;
    v4 = (this + 16);
    do
    {
      if (*v4++)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      result = (v6 + result);
      --v2;
    }

    while (v2);
  }

  else
  {
    result = 0;
  }

  v7 = *(this + 36);
  if (v7)
  {
    v8 = (this + 148);
    do
    {
      if (*v8++)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      result = (v10 + result);
      --v7;
    }

    while (v7);
  }

  v11 = *(this + 69);
  if (v11)
  {
    v12 = (this + 280);
    do
    {
      if (*v12++)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      result = (v14 + result);
      --v11;
    }

    while (v11);
  }

  v15 = *(this + 102);
  if (v15)
  {
    v16 = (this + 412);
    do
    {
      if (*v16++)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      result = (v18 + result);
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1208);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "ACMP4BitStreams.cpp";
      v30 = 1024;
      v31 = 1461;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: NULL MP413KVoiceSpecificConfig";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v7 = *(a2 + 8);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = HIBYTE(v9);
  v12 = v10 - 8;
  *(a2 + 20) = v10 - 8;
  if (v10 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v8);
    v14 = (*a2 + 4);
    *a2 = v14;
    v18 = *(a2 + 16);
    v17 = *(a2 + 20);
    v11 |= v18 >> v17;
    v12 = v17 + 32;
    *(a2 + 20) = v17 + 32;
    if (v17 == -32)
    {
      v13 = 0;
    }

    else
    {
      v13 = v18 << -v17;
    }
  }

  else
  {
    v13 = v9 << 8;
    v14 = v8;
  }

  *(a2 + 16) = v13;
  *(a1 + 32) = v11;
  if (v11 == 5)
  {
    v19 = 0;
    v20 = 0;
    v21 = v7 - v8;
    while (1)
    {
      v22 = HIBYTE(v13);
      v12 -= 8;
      *(a2 + 20) = v12;
      if (v12 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v14);
        v14 = (*a2 + 4);
        *a2 = v14;
        v24 = *(a2 + 16);
        v23 = *(a2 + 20);
        v22 |= v24 >> v23;
        v12 = v23 + 32;
        *(a2 + 20) = v23 + 32;
        v13 = v23 == -32 ? 0 : v24 << -v23;
      }

      else
      {
        v13 <<= 8;
      }

      *(a2 + 16) = v13;
      if (v19 == 5)
      {
        break;
      }

      ++v19;
      v25 = v22 & 0x7F | (v20 << 7);
      v20 = v25;
      if ((v22 & 0x80) == 0)
      {
        *(a1 + 36) = v25;
        if (v19 != 5)
        {
          if (a3)
          {
            *a3 = (v10 - v12 + 8 * (v14 - *(a2 + 8) + v21)) / 8;
          }

          result = (*(*v3 + 16))(v3, a2);
          if (!result)
          {
            *(a1 + 48) = 1;
            goto LABEL_31;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          v28 = 136315394;
          v29 = "ACMP4BitStreams.cpp";
          v30 = 1024;
          v31 = 1477;
          v15 = MEMORY[0x1E69E9C10];
          v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: could not parse QCelp header";
LABEL_29:
          _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v16, &v28, 0x12u);
          goto LABEL_30;
        }

LABEL_27:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v28 = 136315394;
        v29 = "ACMP4BitStreams.cpp";
        v30 = 1024;
        v31 = 1469;
        v15 = MEMORY[0x1E69E9C10];
        v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
        goto LABEL_29;
      }
    }

    *(a1 + 36) = 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "ACMP4BitStreams.cpp";
    v30 = 1024;
    v31 = 1465;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
    goto LABEL_29;
  }

LABEL_30:
  result = 4294967090;
LABEL_31:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 && *(a2 + 20) + 8 * (*(a2 + 8) - *a2) < a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "ACMP4BitStreams.cpp";
      v24 = 1024;
      v25 = 1494;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(): BitstreamReader doesn't provide access to the full specified length of the AudioSpecificConfig";
LABEL_21:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  MP4AudioObjectType::Deserialize((a1 + 10), a2);
  MP4SampleRate::Deserialize((a1 + 11), a2, 1);
  if (a1[11])
  {
    v7 = *(a2 + 16);
    v8 = v7 >> 28;
    v9 = *(a2 + 20) - 4;
    *(a2 + 20) = v9;
    if (v9 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v12 = *(a2 + 16);
      v11 = *(a2 + 20);
      v8 |= v12 >> v11;
      *(a2 + 20) = v11 + 32;
      if (v11 == -32)
      {
        v10 = 0;
      }

      else
      {
        v10 = v12 << -v11;
      }
    }

    else
    {
      v10 = 16 * v7;
    }

    *(a2 + 16) = v10;
    a1[14] = 0;
    v13 = a1 + 14;
    a1[18] = -1;
    a1[20] = -1;
    v14 = a1 + 20;
    a1[12] = v8;
    a1[15] = 0;
    v15 = a1 + 15;
    v16 = a1[10];
    if (v16 == 29)
    {
      *v13 = 5;
      a1[18] = 1;
    }

    else
    {
      if (v16 != 5)
      {
        goto LABEL_24;
      }

      *v13 = 5;
      v14 = a1 + 18;
    }

    *v14 = 1;
    MP4SampleRate::Deserialize((a1 + 15), a2, 1);
    v17 = a1[11];
    if (*v15 != v17 && *v15 != 2 * v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "ACMP4BitStreams.cpp";
        v24 = 1024;
        v25 = 1527;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig: the sampleRate is incorrect";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    MP4AudioObjectType::Deserialize((a1 + 10), a2);
    v16 = a1[10];
    v20 = a1[12];
LABEL_24:
    v21 = a1[11];
    if (v16 <= 23)
    {
      if (v16 <= 6)
      {
        if ((v16 - 1) < 4)
        {
          goto LABEL_27;
        }

LABEL_47:
        operator new();
      }

      if (v16 > 20)
      {
        if (v16 != 21 && v16 != 23)
        {
          goto LABEL_47;
        }
      }

      else if (v16 != 7)
      {
        if (v16 != 8)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

LABEL_27:
      operator new();
    }

    if (v16 > 36)
    {
      if ((v16 - 37) < 2)
      {
        operator new();
      }

      if (v16 == 39)
      {
        operator new();
      }

      if (v16 == 42)
      {
        operator new();
      }

      goto LABEL_47;
    }

    if (v16 > 34)
    {
      if (v16 != 35)
      {
        operator new();
      }

      operator new();
    }

    if (v16 != 24)
    {
      if (v16 == 30)
      {
        operator new();
      }

      goto LABEL_47;
    }

LABEL_36:
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "ACMP4BitStreams.cpp";
    v24 = 1024;
    v25 = 1505;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig: invalid sample rate";
    goto LABEL_21;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return 4294967090;
}

void sub_18F72F57C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<MP4SpatialAudioSpecificConfig *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4SpatialAudioSpecificConfig>,std::allocator<MP4SpatialAudioSpecificConfig>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MP4SpatialAudioSpecificConfig *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4SpatialAudioSpecificConfig>,std::allocator<MP4SpatialAudioSpecificConfig>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__shared_ptr_pointer<MP4AOTSpecificBase *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4AOTSpecificBase>,std::allocator<MP4AOTSpecificBase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MP4AOTSpecificBase *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4AOTSpecificBase>,std::allocator<MP4AOTSpecificBase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(_DWORD *a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = HIBYTE(v8);
  v11 = v9 - 8;
  *(a2 + 20) = v9 - 8;
  if (v9 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v7);
    v13 = (*a2 + 4);
    *a2 = v13;
    v15 = *(a2 + 16);
    v14 = *(a2 + 20);
    v10 |= v15 >> v14;
    v11 = v14 + 32;
    *(a2 + 20) = v14 + 32;
    if (v14 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15 << -v14;
    }
  }

  else
  {
    v12 = v8 << 8;
    v13 = v7;
  }

  *(a2 + 16) = v12;
  a1[8] = v10;
  if (v10 == 5)
  {
    v16 = 0;
    v17 = 0;
    v18 = v6 - v7;
    do
    {
      v19 = HIBYTE(v12);
      v11 -= 8;
      *(a2 + 20) = v11;
      if (v11 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
        v13 = (*a2 + 4);
        *a2 = v13;
        v21 = *(a2 + 16);
        v20 = *(a2 + 20);
        v19 |= v21 >> v20;
        v11 = v20 + 32;
        *(a2 + 20) = v20 + 32;
        if (v20 == -32)
        {
          v12 = 0;
        }

        else
        {
          v12 = v21 << -v20;
        }
      }

      else
      {
        v12 <<= 8;
      }

      *(a2 + 16) = v12;
      if (v16 == 5)
      {
        a1[9] = 0;
        goto LABEL_24;
      }

      ++v16;
      v22 = v19 & 0x7F | (v17 << 7);
      v17 = v22;
    }

    while ((v19 & 0x80) != 0);
    a1[9] = v22;
    if (v16 != 5)
    {
      if (a3)
      {
        *a3 = (v9 - v11 + 8 * (v13 - *(a2 + 8) + v18)) / 8;
        v22 = a1[9];
      }

      v23 = *MEMORY[0x1E69E9840];

      return DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(a1, a2, 8 * v22);
    }

LABEL_24:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v28 = 136315394;
    v29 = "ACMP4BitStreams.cpp";
    v30 = 1024;
    v31 = 1763;
    v25 = MEMORY[0x1E69E9C10];
    v26 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload: the Decoder specific info tag size is incorrect";
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "ACMP4BitStreams.cpp";
    v30 = 1024;
    v31 = 1759;
    v25 = MEMORY[0x1E69E9C10];
    v26 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload: the DecoderSpecificInfo tag is incorrect";
LABEL_26:
    _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, v26, &v28, 0x12u);
  }

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
  return 4294967090;
}

uint64_t DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1208);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "ACMP4BitStreams.cpp";
      v32 = 1024;
      v33 = 1801;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: NULL MPEG2AACSpecificConfig";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v5 = *(a1 + 8);
  if ((v5 - 102) >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "ACMP4BitStreams.cpp";
      v32 = 1024;
      v33 = 1820;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: unrecognized object type indication";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v8 = *(a2 + 8);
  v9 = *a2;
  v10 = *(a2 + 20);
  *(a1 + 40) = v5 - 101;
  v11 = *(a2 + 16);
  v12 = HIBYTE(v11);
  v13 = *(a2 + 20) - 8;
  *(a2 + 20) = v13;
  if (v13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v9);
    v15 = (*a2 + 4);
    *a2 = v15;
    v19 = *(a2 + 16);
    v18 = *(a2 + 20);
    v12 |= v19 >> v18;
    v13 = v18 + 32;
    *(a2 + 20) = v18 + 32;
    if (v18 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v19 << -v18;
    }
  }

  else
  {
    v14 = v11 << 8;
    v15 = v9;
  }

  *(a2 + 16) = v14;
  *(a1 + 32) = v12;
  if (v12 == 5)
  {
    v20 = 0;
    v21 = 0;
    v22 = v8 - v9;
    while (1)
    {
      v23 = HIBYTE(v14);
      v13 -= 8;
      *(a2 + 20) = v13;
      if (v13 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
        v15 = (*a2 + 4);
        *a2 = v15;
        v25 = *(a2 + 16);
        v24 = *(a2 + 20);
        v23 |= v25 >> v24;
        v13 = v24 + 32;
        *(a2 + 20) = v24 + 32;
        v14 = v24 == -32 ? 0 : v25 << -v24;
      }

      else
      {
        v14 <<= 8;
      }

      *(a2 + 16) = v14;
      if (v20 == 5)
      {
        break;
      }

      ++v20;
      v26 = v23 & 0x7F | (v21 << 7);
      v21 = v26;
      if ((v23 & 0x80) == 0)
      {
        *(a1 + 36) = v26;
        if (v20 != 5)
        {
          if (a3)
          {
            *a3 = (v10 - v13 + 8 * (v15 - *(a2 + 8) + v22)) / 8;
          }

          if (!(*(*v3 + 16))(v3, a2))
          {
            memcpy((a1 + 88), (v3 + 44), 0x44CuLL);
            result = 0;
            v29 = *(a1 + 96);
            *(a1 + 48) = 0;
            *(a1 + 44) = v29;
            *(a1 + 72) = -1;
            *(a1 + 80) = -1;
            goto LABEL_34;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }

          v30 = 136315394;
          v31 = "ACMP4BitStreams.cpp";
          v32 = 1024;
          v33 = 1837;
          v16 = MEMORY[0x1E69E9C10];
          v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: could not parse ADIF header";
LABEL_32:
          _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, v17, &v30, 0x12u);
          goto LABEL_33;
        }

LABEL_30:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v30 = 136315394;
        v31 = "ACMP4BitStreams.cpp";
        v32 = 1024;
        v33 = 1829;
        v16 = MEMORY[0x1E69E9C10];
        v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
        goto LABEL_32;
      }
    }

    *(a1 + 36) = 0;
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = 136315394;
    v31 = "ACMP4BitStreams.cpp";
    v32 = 1024;
    v33 = 1825;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
    goto LABEL_32;
  }

LABEL_33:
  result = 4294967090;
LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1208);
  if (!v3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v28 = 136315394;
    v29 = "ACMP4BitStreams.cpp";
    v30 = 1024;
    v31 = 1882;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload: NULL MPEG1Or2SpecificConfig";
LABEL_27:
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v16, &v28, 0x12u);
    goto LABEL_28;
  }

  v7 = *(a2 + 8);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = HIBYTE(v9);
  v12 = v10 - 8;
  *(a2 + 20) = v10 - 8;
  if (v10 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v8);
    v14 = (*a2 + 4);
    *a2 = v14;
    v18 = *(a2 + 16);
    v17 = *(a2 + 20);
    v11 |= v18 >> v17;
    v12 = v17 + 32;
    *(a2 + 20) = v17 + 32;
    if (v17 == -32)
    {
      v13 = 0;
    }

    else
    {
      v13 = v18 << -v17;
    }
  }

  else
  {
    v13 = v9 << 8;
    v14 = v8;
  }

  *(a2 + 16) = v13;
  *(a1 + 32) = v11;
  if (v11 != 5)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v28 = 136315394;
    v29 = "ACMP4BitStreams.cpp";
    v30 = 1024;
    v31 = 1886;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
    goto LABEL_27;
  }

  v19 = 0;
  v20 = 0;
  v21 = v7 - v8;
  do
  {
    v22 = HIBYTE(v13);
    v12 -= 8;
    *(a2 + 20) = v12;
    if (v12 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v14);
      v14 = (*a2 + 4);
      *a2 = v14;
      v24 = *(a2 + 16);
      v23 = *(a2 + 20);
      v22 |= v24 >> v23;
      v12 = v23 + 32;
      *(a2 + 20) = v23 + 32;
      if (v23 == -32)
      {
        v13 = 0;
      }

      else
      {
        v13 = v24 << -v23;
      }
    }

    else
    {
      v13 <<= 8;
    }

    *(a2 + 16) = v13;
    if (v19 == 5)
    {
      *(a1 + 36) = 0;
      goto LABEL_25;
    }

    ++v19;
    v25 = v22 & 0x7F | (v20 << 7);
    v20 = v25;
  }

  while ((v22 & 0x80) != 0);
  *(a1 + 36) = v25;
  if (v19 != 5)
  {
    if (a3)
    {
      *a3 = (v10 - v12 + 8 * (v14 - *(a2 + 8) + v21)) / 8;
    }

    (*(*v3 + 16))(v3, a2);
    operator new();
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "ACMP4BitStreams.cpp";
    v30 = 1024;
    v31 = 1890;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
    goto LABEL_27;
  }

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
  return 4294967090;
}

uint64_t DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = HIBYTE(v8);
  v11 = v9 - 8;
  *(a2 + 20) = v9 - 8;
  if (v9 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v7);
    v13 = (*a2 + 4);
    *a2 = v13;
    v15 = *(a2 + 16);
    v14 = *(a2 + 20);
    v10 |= v15 >> v14;
    v11 = v14 + 32;
    *(a2 + 20) = v14 + 32;
    if (v14 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15 << -v14;
    }
  }

  else
  {
    v12 = v8 << 8;
    v13 = v7;
  }

  *(a2 + 16) = v12;
  *(a1 + 32) = v10;
  if (v10 != 5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = 136315394;
      v58 = "ACMP4BitStreams.cpp";
      v59 = 1024;
      v60 = 1919;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v16 = 0;
  v17 = v6 - v7;
  v18 = 6;
  do
  {
    v19 = HIBYTE(v12);
    v11 -= 8;
    *(a2 + 20) = v11;
    if (v11 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v21 = *(a2 + 16);
      v20 = *(a2 + 20);
      v19 |= v21 >> v20;
      v11 = v20 + 32;
      *(a2 + 20) = v20 + 32;
      if (v20 == -32)
      {
        v12 = 0;
      }

      else
      {
        v12 = v21 << -v20;
      }
    }

    else
    {
      v12 <<= 8;
    }

    *(a2 + 16) = v12;
    if (!--v18)
    {
      *(a1 + 36) = 0;
      goto LABEL_23;
    }

    v22 = v19 & 0x7F | (v16 << 7);
    v16 = v22;
  }

  while ((v19 & 0x80) != 0);
  *(a1 + 36) = v22;
  if (v22 <= 0x1F)
  {
LABEL_23:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    v57 = 136315394;
    v58 = "ACMP4BitStreams.cpp";
    v59 = 1024;
    v60 = 1923;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
    goto LABEL_63;
  }

  if (a3)
  {
    *a3 = (v9 - v11 + 8 * (v13 - *(a2 + 8) + v17)) / 8;
    v12 = *(a2 + 16);
    v11 = *(a2 + 20);
  }

  v23 = HIBYTE(v12);
  v24 = v11 - 8;
  *(a2 + 20) = v24;
  if (v24 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
    v13 = (*a2 + 4);
    *a2 = v13;
    v29 = *(a2 + 16);
    v28 = *(a2 + 20);
    v23 |= v29 >> v28;
    v24 = v28 + 32;
    *(a2 + 20) = v28 + 32;
    if (v28 == -32)
    {
      v25 = 0;
    }

    else
    {
      v25 = v29 << -v28;
    }
  }

  else
  {
    v25 = v12 << 8;
  }

  *(a2 + 16) = v25;
  if (!v23)
  {
    v33 = HIBYTE(v25);
    v31 = v24 - 8;
    *(a2 + 20) = v31;
    if (v31 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v37 = *(a2 + 16);
      v36 = *(a2 + 20);
      v33 |= v37 >> v36;
      v31 = v36 + 32;
      *(a2 + 20) = v36 + 32;
      if (v36 == -32)
      {
        v32 = 0;
      }

      else
      {
        v32 = v37 << -v36;
      }
    }

    else
    {
      v32 = v25 << 8;
    }

    *(a2 + 16) = v32;
    if (v33 != 30)
    {
      goto LABEL_61;
    }

LABEL_52:
    v41 = HIBYTE(v32);
    v42 = v31 - 8;
    *(a2 + 20) = v42;
    if (v42 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v45 = *(a2 + 16);
      v44 = *(a2 + 20);
      v41 |= v45 >> v44;
      v42 = v44 + 32;
      *(a2 + 20) = v44 + 32;
      if (v44 == -32)
      {
        v43 = 0;
      }

      else
      {
        v43 = v45 << -v44;
      }
    }

    else
    {
      v43 = v32 << 8;
    }

    *(a2 + 16) = v43;
    if (v41 != 1)
    {
      goto LABEL_61;
    }

    if (v42 + 8 * (*(a2 + 8) - v13) <= 231)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      v57 = 136315394;
      v58 = "ACMP4BitStreams.cpp";
      v59 = 1024;
      v60 = 1955;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the Decoder specific info is too small to contain a full Vorbis identification header";
      goto LABEL_63;
    }

    v48 = v42 - 32;
    *(a2 + 20) = v48;
    if (v48 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v51 = *(a2 + 16);
      v50 = *(a2 + 20);
      v49 = (v51 >> v50) | v43;
      v48 = v50 + 32;
      if (v50 == -32)
      {
        v52 = 0;
        *(a2 + 16) = 0xFFFFFFF000000000;
        goto LABEL_73;
      }

      v43 = v51 << -v50;
      *(a2 + 16) = v43;
    }

    else
    {
      v49 = v43;
    }

    v52 = HIWORD(v43);
    v53 = v48 - 16;
    *(a2 + 20) = v53;
    if (v53 >= 0)
    {
      v54 = v43 << 16;
      goto LABEL_76;
    }

LABEL_73:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
    *a2 += 4;
    v56 = *(a2 + 16);
    v55 = *(a2 + 20);
    v52 |= v56 >> v55;
    *(a2 + 20) = v55 + 32;
    if (v55 == -32)
    {
      v54 = 0;
    }

    else
    {
      v54 = v56 << -v55;
    }

LABEL_76:
    *(a2 + 16) = v54;
    if (v49 == 1987015266 && v52 == 26995)
    {
      result = 0;
      goto LABEL_65;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = 136315394;
      v58 = "ACMP4BitStreams.cpp";
      v59 = 1024;
      v60 = 1959;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the identification header packet type does not indicate Vorbis";
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (v23 == 2)
  {
    v30 = HIBYTE(v25);
    v31 = v24 - 8;
    *(a2 + 20) = v31;
    if (v31 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v35 = *(a2 + 16);
      v34 = *(a2 + 20);
      v30 |= v35 >> v34;
      v31 = v34 + 32;
      *(a2 + 20) = v34 + 32;
      v32 = v34 == -32 ? 0 : v35 << -v34;
    }

    else
    {
      v32 = v25 << 8;
    }

    *(a2 + 16) = v32;
    if (v30 == 30)
    {
      while (1)
      {
        v38 = HIBYTE(v32);
        v31 -= 8;
        *(a2 + 20) = v31;
        if (v31 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
          v13 = (*a2 + 4);
          *a2 = v13;
          v40 = *(a2 + 16);
          v39 = *(a2 + 20);
          v38 |= v40 >> v39;
          v31 = v39 + 32;
          *(a2 + 20) = v39 + 32;
          v32 = v39 == -32 ? 0 : v40 << -v39;
        }

        else
        {
          v32 <<= 8;
        }

        *(a2 + 16) = v32;
        if (v31 + 8 * (*(a2 + 8) - v13) <= 7)
        {
          break;
        }

        if (v38 != 0xFF)
        {
          goto LABEL_52;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = 136315394;
        v58 = "ACMP4BitStreams.cpp";
        v59 = 1024;
        v60 = 1940;
        v26 = MEMORY[0x1E69E9C10];
        v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the Decoder specific info is too small to contain a Vorbis identification header";
        goto LABEL_63;
      }

      goto LABEL_64;
    }
  }

LABEL_61:
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_64;
  }

  v57 = 136315394;
  v58 = "ACMP4BitStreams.cpp";
  v59 = 1024;
  v60 = 1954;
  v26 = MEMORY[0x1E69E9C10];
  v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the identification header packet type is incorrect";
LABEL_63:
  _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, v27, &v57, 0x12u);
LABEL_64:
  result = 4294967090;
LABEL_65:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4OTISpecificBase::MakeObjectTypeSpecific(int a1)
{
  if (a1 > 104)
  {
    if (a1 == 105 || a1 == 107)
    {
      operator new();
    }

    if (a1 == 225)
    {
      operator new();
    }
  }

  else if ((a1 - 102) < 3)
  {
    operator new();
  }

  return 0;
}

void ADIFHeader::Clear(ADIFHeader *this)
{
  bzero(this, 4uLL);
  bzero(this + 4, 9uLL);
  bzero(this + 16, 4uLL);
  bzero(this + 20, 4uLL);
  bzero(this + 24, 4uLL);
  bzero(this + 28, 4uLL);

  bzero(this + 32, 4uLL);
}

uint64_t DecoderConfigDescr::Deserialize(unsigned int *a1, uint64_t a2, int *a3, int a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = *a2;
  v58 = 0;
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v10);
  v13 = v11 - 8;
  *(a2 + 20) = v11 - 8;
  if (v11 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v9);
    v15 = (*a2 + 4);
    *a2 = v15;
    v17 = *(a2 + 16);
    v16 = *(a2 + 20);
    v12 |= v17 >> v16;
    v13 = v16 + 32;
    *(a2 + 20) = v16 + 32;
    if (v16 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v17 << -v16;
    }
  }

  else
  {
    v14 = v10 << 8;
    v15 = v9;
  }

  *(a2 + 16) = v14;
  *a1 = v12;
  if (v12 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 1995;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the DecoderConfigDescriptor tag is incorrect";
LABEL_23:
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
    goto LABEL_24;
  }

  v18 = 0;
  v19 = 0;
  v20 = v8 - v9;
  do
  {
    v21 = HIBYTE(v14);
    v13 -= 8;
    *(a2 + 20) = v13;
    if (v13 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
      v15 = (*a2 + 4);
      *a2 = v15;
      v23 = *(a2 + 16);
      v22 = *(a2 + 20);
      v21 |= v23 >> v22;
      v13 = v22 + 32;
      *(a2 + 20) = v22 + 32;
      if (v22 == -32)
      {
        v14 = 0;
      }

      else
      {
        v14 = v23 << -v22;
      }
    }

    else
    {
      v14 <<= 8;
    }

    *(a2 + 16) = v14;
    if (v18 == 5)
    {
      a1[1] = 0;
      goto LABEL_21;
    }

    ++v18;
    v24 = v21 & 0x7F | (v19 << 7);
    v19 = v24;
  }

  while ((v21 & 0x80) != 0);
  a1[1] = v24;
  if (v18 == 5)
  {
LABEL_21:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 1999;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the Decoder config descriptor tag size is incorrect";
    goto LABEL_23;
  }

  v25 = HIBYTE(v14);
  v26 = v13 - 8;
  *(a2 + 20) = v26;
  if (v26 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
    v15 = (*a2 + 4);
    *a2 = v15;
    v33 = *(a2 + 16);
    v32 = *(a2 + 20);
    v25 |= v33 >> v32;
    *(a2 + 20) = v32 + 32;
    if (v32 == -32)
    {
      v27 = 0;
    }

    else
    {
      v27 = v33 << -v32;
    }
  }

  else
  {
    v27 = v14 << 8;
  }

  *(a2 + 16) = v27;
  a1[2] = v25;
  if (v25 != 64 && ((v25 - 105) & 0xFFFFFFFD) != 0 && v25 - 102 >= 3 && (v25 - 221 > 4 || ((1 << (v25 + 35)) & 0x13) == 0))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2008;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the object type ID is incorrect";
    goto LABEL_23;
  }

  v34 = *(a2 + 16);
  v35 = v34 >> 26;
  v36 = *(a2 + 20) - 6;
  *(a2 + 20) = v36;
  if (v36 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
    *a2 += 4;
    v39 = *(a2 + 16);
    v38 = *(a2 + 20);
    v35 |= v39 >> v38;
    *(a2 + 20) = v38 + 32;
    if (v38 == -32)
    {
      v37 = 0;
    }

    else
    {
      v37 = v39 << -v38;
    }
  }

  else
  {
    v37 = v34 << 6;
  }

  *(a2 + 16) = v37;
  a1[3] = v35;
  if (v35 != 5)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2012;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the stream type is incorrect";
    goto LABEL_23;
  }

  a1[4] = TBitstreamReader<unsigned int>::GetBit(a2);
  TBitstreamReader<unsigned int>::SkipBits(a2, 1);
  v41 = *(a2 + 16);
  v40 = *(a2 + 20);
  v42 = v41 >> 8;
  *(a2 + 20) = v40 - 24;
  if (v40 - 24 >= 0)
  {
    v43 = v41 << 24;
    *(a2 + 16) = v41 << 24;
    v44 = *a2;
    v45 = v40 - 56;
    goto LABEL_46;
  }

  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
  v44 = (*a2 + 4);
  *a2 = v44;
  v46 = *(a2 + 16);
  v45 = *(a2 + 20);
  v42 |= v46 >> v45;
  if (v45 == -32)
  {
    v43 = 0;
    a1[5] = v42;
    *(a2 + 16) = 0xFFFFFFE000000000;
    goto LABEL_49;
  }

  v43 = v46 << -v45;
  *(a2 + 16) = v43;
LABEL_46:
  a1[5] = v42;
  *(a2 + 20) = v45;
  v47 = v43;
  if (v45 < 0)
  {
LABEL_49:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v44);
    v44 = (*a2 + 4);
    *a2 = v44;
    v49 = *(a2 + 16);
    v48 = *(a2 + 20);
    v47 = (v49 >> v48) | v43;
    v45 = v48 + 32;
    if (v48 != -32)
    {
      v43 = v49 << -v48;
      *(a2 + 16) = v43;
      goto LABEL_51;
    }

    v43 = 0;
    a1[6] = v47;
    *(a2 + 16) = 0xFFFFFFE000000000;
LABEL_54:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v44);
    v52 = *(a2 + 16);
    v51 = *(a2 + 20);
    v50 = v51 + 32;
    v53 = v51 == -32;
    v44 = (*a2 + 4);
    *a2 = v44;
    v43 |= v52 >> v51;
    v54 = v52 << -v51;
    if (v53)
    {
      v54 = 0;
    }

    *(a2 + 16) = v54;
    *(a2 + 20) = v50;
  }

  else
  {
LABEL_51:
    a1[6] = v47;
    v50 = v45 - 32;
    *(a2 + 20) = v50;
    if (v50 < 0)
    {
      goto LABEL_54;
    }
  }

  a1[7] = v43;
  v55 = (v11 - v50 + 8 * (v44 - *(a2 + 8) + v20)) / 8;
  if (a4 == 2)
  {
    v56 = &v58;
    goto LABEL_62;
  }

  if (a4 != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2042;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the requested byte offset is not supported";
    goto LABEL_23;
  }

  v56 = 0;
  if (a3)
  {
    *a3 = v55;
  }

LABEL_62:
  v57 = a1[2];
  if (v57 != 64)
  {
    MP4OTISpecificBase::MakeObjectTypeSpecific(v57);
    std::shared_ptr<MP4OTISpecificBase>::reset[abi:ne200100]<MP4OTISpecificBase,0>();
  }

  result = DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(a1, a2, v56);
  if (!a3 || a4 != 2 || result)
  {
    goto LABEL_25;
  }

  if (v56)
  {
    result = 0;
    *a3 = *v56 + v55;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2086;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: failed to obtain offset to decoder specific config";
    goto LABEL_23;
  }

LABEL_24:
  result = 4294967090;
LABEL_25:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7311C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<MP4OTISpecificBase *,std::shared_ptr<MP4OTISpecificBase>::__shared_ptr_default_delete<MP4OTISpecificBase,MP4OTISpecificBase>,std::allocator<MP4OTISpecificBase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MP4OTISpecificBase *,std::shared_ptr<MP4OTISpecificBase>::__shared_ptr_default_delete<MP4OTISpecificBase,MP4OTISpecificBase>,std::allocator<MP4OTISpecificBase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(DecoderConfigDescr *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 10);
  if (MP4SampleRate::Index(*(this + 11)) == 15)
  {
    v3 = 28;
  }

  else
  {
    v3 = 4;
  }

  if (v2 <= 0x1F)
  {
    v4 = 9;
  }

  else
  {
    v4 = 15;
  }

  v5 = (v4 + v3);
  if (v2 == 29 || v2 == 5)
  {
    if (MP4SampleRate::Index(*(this + 15)) == 15)
    {
      v7 = 28;
    }

    else
    {
      v7 = 4;
    }

    v5 = (v5 + v7 + 5);
  }

  if (v2 - 1 < 4)
  {
    goto LABEL_17;
  }

  if (v2 == 39)
  {
    v8 = *(this + 149);
    goto LABEL_25;
  }

  if (v2 == 23)
  {
LABEL_17:
    v8 = *(this + 149);
    if (!v8)
    {
      LODWORD(v5) = v5 + 3;
      if (*(this + 12))
      {
        goto LABEL_27;
      }

      v9 = MP4AudioProgramConfig::SerializeCount((this + 88), v5);
LABEL_26:
      LODWORD(v5) = v9 + v5;
LABEL_27:
      v10 = *(this + 10);
      if ((v10 - 19) < 9 || v10 == 39 || v10 == 17)
      {
        LODWORD(v5) = v5 + 2;
      }

      v11 = *(this + 18);
      if (v11 != -1 && *(this + 17) == 695)
      {
        v12 = *(this + 14);
        v13 = v12 <= 0x1F ? 5 : 11;
        LODWORD(v5) = v5 + v13 + 11;
        if (v12 == 5)
        {
          LODWORD(v5) = v5 + 1;
          if (v11 == 1)
          {
            v14 = MP4SampleRate::Index(*(this + 15)) == 15 ? 28 : 4;
            LODWORD(v5) = v14 + v5;
            if (*(this + 20) != -1 && *(this + 19) == 1352)
            {
              LODWORD(v5) = v5 + 12;
            }
          }
        }
      }

      goto LABEL_42;
    }

LABEL_25:
    v9 = (*(*v8 + 24))(v8, v5);
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "ACMP4BitStreams.cpp";
    v20 = 1024;
    v21 = 2151;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount: Unsupported AudioObjectType", &v18, 0x12u);
  }

LABEL_42:
  v15 = v5 >> 3;
  if ((v5 & 7) != 0)
  {
    result = v15 + 1;
  }

  else
  {
    result = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DecoderConfigDescr::GetDefaultPriming(DecoderConfigDescr *this, unsigned int *a2)
{
  result = 0;
  v4 = *(this + 10);
  v5 = 2112;
  if (v4 > 22)
  {
    switch(v4)
    {
      case 39:
        v5 = 256;
        if (*(this + 149))
        {
          result = 0;
          v6 = *(this + 13) == 0;
          v7 = 240;
LABEL_14:
          if (!v6)
          {
            v5 = v7;
          }

          goto LABEL_17;
        }

LABEL_16:
        result = 0;
        goto LABEL_17;
      case 29:
        goto LABEL_17;
      case 23:
        v5 = 512;
        if (*(this + 149))
        {
          result = 0;
          v6 = *(this + 13) == 0;
          v7 = 480;
          goto LABEL_14;
        }

        goto LABEL_16;
    }

LABEL_11:
    v5 = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  if (v4 != 2 && v4 != 5)
  {
    goto LABEL_11;
  }

LABEL_17:
  *a2 = v5;
  return result;
}

uint64_t DecoderConfigDescr::GetFramesPerPacket(DecoderConfigDescr *this)
{
  v1 = *(this + 10) - 1;
  result = 384;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 20:
    case 28:
      result = 1024;
      if (*(this + 149))
      {
        if (*(this + 13))
        {
          result = 960;
        }

        else
        {
          result = 1024;
        }
      }

      if (*(this + 18) == 1)
      {
        v4 = *(this + 11);
        if (v4)
        {
          v5 = *(this + 15) == v4;
          goto LABEL_9;
        }
      }

      break;
    case 7:
    case 23:
      v8 = *(this + 149);
      if (!v8)
      {
        goto LABEL_42;
      }

      if (v8[4])
      {
        v9 = v8[8];
        if (v9 >= 4)
        {
          goto LABEL_42;
        }

        result = dword_18F901E30[v9];
      }

      else
      {
        v15 = v8[9];
        if (v8[5])
        {
          if (v15 >= 0x10)
          {
            result = 160;
            if (v15 >= 0x17)
            {
              if (v15 >= 0x20)
              {
                result = 0;
              }

              else
              {
                result = 160;
              }
            }
          }

          else
          {
            result = 320;
          }
        }

        else
        {
          if (v15 == 27)
          {
            v16 = 240;
          }

          else
          {
            v16 = 0;
          }

          if (v15 >= 0x1B)
          {
            v17 = v16;
          }

          else
          {
            v17 = 80;
          }

          if (v15 >= 0x16)
          {
            v18 = v17;
          }

          else
          {
            v18 = 160;
          }

          if (v15 >= 6)
          {
            v19 = v18;
          }

          else
          {
            v19 = 240;
          }

          if (v15 >= 3)
          {
            result = v19;
          }

          else
          {
            result = 320;
          }

          if (v8[11])
          {
            v12 = v8[13];
            goto LABEL_63;
          }
        }
      }

      break;
    case 8:
    case 24:
      result = 160;
      break;
    case 22:
      result = 512;
      if (*(this + 149))
      {
        if (*(this + 13))
        {
          result = 480;
        }

        else
        {
          result = 512;
        }
      }

      break;
    case 31:
      return result;
    case 32:
      result = 1152;
      break;
    case 33:
      if (*(this + 11) <= 0x5DC0u)
      {
        result = 576;
      }

      else
      {
        result = 1152;
      }

      break;
    case 34:
      v10 = *(this + 149);
      if (!v10)
      {
        goto LABEL_42;
      }

      result = *(v10 + 20);
      break;
    case 35:
      v14 = *(this + 149);
      if (!v14)
      {
        goto LABEL_42;
      }

      result = *(v14 + 12);
      break;
    case 36:
    case 37:
      v7 = *(this + 149);
      if (!v7)
      {
        goto LABEL_42;
      }

      result = (1024 << (*(v7 + 1116) & 7));
      break;
    case 38:
      v11 = *(this + 149);
      result = 512;
      if (v11)
      {
        result = v11[4] ? 480 : 512;
        if (v11[6])
        {
          v12 = v11[7];
LABEL_63:
          v5 = v12 == 0;
LABEL_9:
          v6 = !v5;
          result = (result << v6);
        }
      }

      break;
    case 41:
      v13 = *(this + 149);
      if (v13 && *(v13 + 216) == 1)
      {
        result = kUSACSbrFrameLengthInfoTable[4 * *(v13 + 12) + 2];
      }

      else
      {
LABEL_42:
        result = 0;
      }

      break;
    default:
      result = 1024;
      break;
  }

  return result;
}

uint64_t DecoderConfigDescr::GetBaseLevelASBD(DecoderConfigDescr *this, AudioStreamBasicDescription *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = 1633772320;
  bzero(a2, 0x28uLL);
  v6 = *(this + 10);
  if (v6 > 3)
  {
    if (v6 > 38)
    {
      if (v6 == 39)
      {
        v4 = 1633772389;
        goto LABEL_19;
      }

      if (v6 == 42)
      {
        v4 = 1970495843;
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 == 4)
      {
        v4 = 1633772404;
        goto LABEL_19;
      }

      if (v6 == 23)
      {
        v4 = 1633772396;
        goto LABEL_19;
      }
    }

LABEL_14:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "ACMP4BitStreams.cpp";
      v18 = 1024;
      v19 = 2610;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::BaseLevelASBD: unsupported or unknown MP4 Audio Object Type", buf, 0x12u);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_41;
  }

  if (v6 == 1)
  {
    v4 = 1633772397;
    goto LABEL_19;
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v4 = 1633772402;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_19:
  a2->mFormatID = v4;
  LODWORD(v5) = *(this + 11);
  a2->mSampleRate = v5;
  FramesPerPacket = DecoderConfigDescr::GetFramesPerPacket(this);
  a2->mFramesPerPacket = FramesPerPacket;
  v10 = *(this + 14) == 5 || (v6 - 5) >= 0xFFFFFFFC;
  if (v10 && *(this + 18) == 1 && *(this + 15) == 2 * *(this + 11))
  {
    FramesPerPacket >>= 1;
    a2->mFramesPerPacket = FramesPerPacket;
  }

  v11 = *(this + 149);
  if (v11)
  {
    v12 = *(this + 10);
    if (v12 == 42)
    {
      LODWORD(v9) = *(v11 + 8);
      a2->mSampleRate = v9;
    }

    else if (v12 == 39 && *(v11 + 28) == 1)
    {
      a2->mFramesPerPacket = FramesPerPacket >> 1;
    }
  }

  v13 = *(this + 20);
  if (v13 == 1)
  {
    result = 0;
LABEL_40:
    a2->mChannelsPerFrame = v13;
    goto LABEL_41;
  }

  v15 = 0;
  result = DecoderConfigDescr::GetChannelLayoutTag(this, &v15);
  if (!result)
  {
    v13 = v15;
    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "ACMP4BitStreams.cpp";
    v18 = 1024;
    v19 = 2648;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::BaseLevelASBD: the DecoderConfigDescriptor channelConfiguration is incorrect", buf, 0x12u);
  }

  result = 4294967090;
LABEL_41:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DecoderConfigDescr::GetChannelLayoutTag(DecoderConfigDescr *this, unsigned int *a2)
{
  result = 560226676;
  v4 = *(this + 12);
  if (v4 <= 4)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v5 = 7471107;
        }

        else
        {
          v5 = 7602180;
        }

        goto LABEL_117;
      }

      goto LABEL_25;
    }

    v5 = 6553601;
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_117;
      }

      return result;
    }

    v6 = *(this + 10);
    if (v6 == 36)
    {
      v10 = *(this + 149);
      if (v10)
      {
        v5 = *(v10 + 24);
        goto LABEL_117;
      }

      return result;
    }

    if (v6 == 35)
    {
      v7 = *(this + 149);
      if (!v7)
      {
        return result;
      }

      v8 = *(v7 + 16);
      if (v8 != 2)
      {
        if (v8 == 6)
        {
          v9 = 8126470;
        }

        else
        {
          if (v8 != 5)
          {
            v5 = v8 | 0xFFFF0000;
            goto LABEL_117;
          }

          v9 = 7864325;
        }

        v5 = v9 - 196608;
LABEL_117:
        result = 0;
        *a2 = v5;
        return result;
      }

LABEL_25:
      v5 = 6619138;
      goto LABEL_117;
    }

    v11 = *(this + 25);
    v12 = *(this + 58);
    v13 = *(this + 91);
    v14 = *(this + 124);
    v15 = v12 + v11 + v13 + v14;
    if (v15 <= 2)
    {
      if (v15 == 1)
      {
        if (v11 != 1)
        {
          return result;
        }

        v17 = *(this + 26) == 0;
        v18 = 6619138;
      }

      else
      {
        if (v15 != 2)
        {
          return result;
        }

        if (v11 == 1 && v13 == 1)
        {
          if (*(this + 26) && *(this + 92))
          {
            v5 = 7077892;
            goto LABEL_117;
          }

          return result;
        }

        if (v11 != 2 || *(this + 26))
        {
          return result;
        }

        v17 = *(this + 27) == 0;
        v18 = 7471107;
        v5 = 6619138;
      }
    }

    else
    {
      switch(v15)
      {
        case 3:
          if (v11 != 2 || v13 != 1 || *(this + 26) || !*(this + 27))
          {
            return result;
          }

          v17 = *(this + 92) == 0;
          v18 = 7864325;
          v5 = 7602180;
          break;
        case 4:
          if (v11 == 2 && v13 == 2)
          {
            if (!*(this + 26) && *(this + 27) && *(this + 92) && !*(this + 93))
            {
              v5 = 9240582;
              goto LABEL_117;
            }

            return result;
          }

          if (v11 != 2)
          {
            return result;
          }

          if (v12 == 1)
          {
            if (v13 != 1)
            {
              return result;
            }

            v19 = *(this + 26);
            if (!v19 && *(this + 27) && *(this + 59))
            {
              if (*(this + 92))
              {
                v5 = 9371655;
              }

              else
              {
                v5 = 9240582;
              }

              goto LABEL_117;
            }

            if (v14 != 1)
            {
              return result;
            }
          }

          else
          {
            if (v13 != 1 || v14 != 1)
            {
              return result;
            }

            v19 = *(this + 26);
          }

          if (v19 || !*(this + 27) || !*(this + 92))
          {
            return result;
          }

LABEL_116:
          v5 = 8126470;
          goto LABEL_117;
        case 5:
          if (v11 == 2 && v13 == 2 && v14 == 1)
          {
            v16 = *(this + 26);
            if (!v16 && *(this + 27) && *(this + 92) && !*(this + 93))
            {
              goto LABEL_109;
            }

            if (v12)
            {
              if (v12 != 1 || v16)
              {
                return result;
              }

LABEL_41:
              if (*(this + 27) && *(this + 59) && *(this + 92) && !*(this + 93))
              {
                v5 = 9437192;
                goto LABEL_117;
              }

              return result;
            }

LABEL_99:
            if (v13 != 2 || v14 != 1 || *(this + 26) || !*(this + 27) || !*(this + 92) || !*(this + 93))
            {
              return result;
            }

            goto LABEL_105;
          }

          if (v11 != 2)
          {
            if (v11 != 3 || v12 || v13 != 1 || v14 != 1 || *(this + 26) || !*(this + 27) || !*(this + 92) || !*(this + 28))
            {
              return result;
            }

LABEL_14:
            v5 = 12058632;
            goto LABEL_117;
          }

          if (!v12)
          {
            goto LABEL_99;
          }

          if (v12 != 1)
          {
            return result;
          }

          if (v13 != 1)
          {
            if (v13 != 2 || *(this + 26))
            {
              return result;
            }

            goto LABEL_41;
          }

          if (v14 != 1 || *(this + 26) || !*(this + 27) || !*(this + 59))
          {
            return result;
          }

          v17 = *(this + 92) == 0;
          v18 = 8323080;
          v5 = 9306119;
          break;
        default:
          return result;
      }
    }

    if (!v17)
    {
      v5 = v18;
    }

    goto LABEL_117;
  }

  if (v4 > 10)
  {
    if (v4 != 11)
    {
      if (v4 != 12)
      {
        if (v4 != 14)
        {
          return result;
        }

        goto LABEL_14;
      }

LABEL_105:
      v5 = 11993096;
      goto LABEL_117;
    }

LABEL_109:
    v5 = 9306119;
    goto LABEL_117;
  }

  switch(v4)
  {
    case 5:
      v5 = 7864325;
      goto LABEL_117;
    case 6:
      goto LABEL_116;
    case 7:
      v5 = 8323080;
      goto LABEL_117;
  }

  return result;
}

uint64_t DecoderConfigDescr::GetASBD(DecoderConfigDescr *this, AudioStreamBasicDescription *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 14))
  {
    if ((*(this + 10) - 5) < 0xFFFFFFFC)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "ACMP4BitStreams.cpp";
        v18 = 1024;
        v19 = 2701;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "%25s:%-5d  DecoderConfigDescr::GetASBD: unsupported or unknown MP4 Audio Object Type / Extended Object Type combination";
LABEL_20:
        _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    v15 = 0;
    if (DecoderConfigDescr::GetChannelLayoutTag(this, &v15))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "ACMP4BitStreams.cpp";
        v18 = 1024;
        v19 = 2666;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::GetASBD: the DecoderConfigDescriptor channelConfiguration is incorrect", buf, 0x12u);
      }

      result = 4294967090;
      goto LABEL_22;
    }

    bzero(a2, 0x28uLL);
    if (*(this + 14) != 5 || *(this + 18) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "ACMP4BitStreams.cpp";
        v18 = 1024;
        v19 = 2687;
        v4 = MEMORY[0x1E69E9C10];
        v5 = "%25s:%-5d  DecoderConfigDescr::GetASBD: unsupported or unknown MP4 Extension Audio Object Type";
        goto LABEL_20;
      }

LABEL_21:
      result = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    v9 = *(this + 10);
    v10 = *(this + 20);
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          if (v10)
          {
            v11 = 1633776752;
          }

          else
          {
            v11 = 1633776755;
          }

LABEL_32:
          a2->mFormatID = v11;
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      v12 = 1633776240;
      v11 = 1633776243;
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v11 = 1633772392;
          v12 = 1633772400;
          goto LABEL_30;
        }

LABEL_33:
        LODWORD(v8) = *(this + 15);
        a2->mSampleRate = v8;
        a2->mFramesPerPacket = DecoderConfigDescr::GetFramesPerPacket(this);
        v14 = v15;
        if (v10 == 1)
        {
          if (v15 != 1)
          {
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 136315394;
              v17 = "ACMP4BitStreams.cpp";
              v18 = 1024;
              v19 = 2695;
              _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::GetASBD: unsupported number of channels", buf, 0x12u);
              result = 0;
            }

            goto LABEL_22;
          }

          result = 0;
          v14 = 2;
        }

        else
        {
          result = 0;
        }

        a2->mChannelsPerFrame = v14;
LABEL_22:
        v13 = *MEMORY[0x1E69E9840];
        return result;
      }

      v12 = 1633774960;
      v11 = 1633774963;
    }

LABEL_30:
    if (v10)
    {
      v11 = v12;
    }

    goto LABEL_32;
  }

  v6 = *MEMORY[0x1E69E9840];

  return DecoderConfigDescr::GetBaseLevelASBD(this, a2);
}

uint64_t DecoderConfigDescr::MakeStreamDescription(DecoderConfigDescr *this, AudioStreamBasicDescription *a2, double a3)
{
  v5 = *(this + 2);
  if ((v5 - 64) <= 0x28 && ((1 << (v5 - 64)) & 0x1C000000001) != 0)
  {
    v7 = *(this + 10);
    v8 = v7 > 0x2C;
    v9 = (1 << v7) & 0x1480609A007ELL;
    if (!v8 && v9 != 0)
    {

      return DecoderConfigDescr::GetBaseLevelASBD(this, a2);
    }

    LODWORD(a3) = *(this + 11);
    a2->mSampleRate = *&a3;
    a2->mBytesPerPacket = 0;
    FramesPerPacket = DecoderConfigDescr::GetFramesPerPacket(this);
    a2->mFormatFlags = 0;
    a2->mFramesPerPacket = FramesPerPacket;
    a2->mBytesPerFrame = 0;
    *&a2->mBitsPerChannel = 0;
    v18 = *(this + 12);
    if (v18 == 7)
    {
      v18 = 8;
    }

    a2->mChannelsPerFrame = v18;
    v19 = *(this + 10);
    if ((v19 - 39) >= 0xFFFFFFFE)
    {
      if (v19 == 37)
      {
        v21 = 1936487267;
      }

      else
      {
        v21 = 1936487278;
      }

      a2->mFormatID = v21;
      v22 = *(this + 149);
      if (v22)
      {
        a2->mFormatFlags = *(v22 + 1116) >> 5;
      }

      goto LABEL_37;
    }

    if (((v19 - 8) & 0xFFFFFFEF) == 0)
    {
      v20 = 1667591280;
      goto LABEL_36;
    }

    if (v19 == 21 || v19 == 7)
    {
      v20 = 1953986161;
LABEL_36:
      a2->mFormatID = v20;
      goto LABEL_37;
    }

    if (((v19 - 9) & 0xFFFFFFEF) == 0)
    {
      v20 = 1752594531;
      goto LABEL_36;
    }

    if (v19 <= 33)
    {
      if (v19 == 32)
      {
        v20 = 778924081;
        goto LABEL_36;
      }

      if (v19 == 33)
      {
        v20 = 778924082;
        goto LABEL_36;
      }
    }

    else
    {
      switch(v19)
      {
        case '""':
          v20 = 1836069684;
          goto LABEL_36;
        case '#':
          v24 = *(this + 149);
          if (!v24)
          {
            goto LABEL_37;
          }

          v25 = 1685283872;
          if (*(v24 + 12))
          {
            v25 = 1685287968;
          }

          else
          {
            a2->mFormatFlags = 2;
          }

          a2->mFormatID = v25;
          v18 = *(v24 + 16);
          goto LABEL_59;
        case '$':
          a2->mFormatID = 1634497332;
          v23 = *(this + 149);
          if (!v23)
          {
            goto LABEL_37;
          }

          LODWORD(v17) = v23[2];
          a2->mSampleRate = v17;
          v18 = v23[4];
          a2->mFormatFlags = v23[5];
LABEL_59:
          a2->mChannelsPerFrame = v18;
LABEL_37:
          if (!v18)
          {
            a2->mChannelsPerFrame = MP4AudioProgramConfig::TotalNumChannels((this + 88));
          }

          return 0;
      }
    }

    a2->mFormatID = 0;
    goto LABEL_37;
  }

  if (((v5 - 105) & 0xFFFFFFFD) != 0)
  {
    if (v5 != 225)
    {
      if ((v5 - 223) >= 0xFFFFFFFE)
      {
        bzero(a2, 0x28uLL);
        a2->mFormatID = 1987015266;
      }

      return 0;
    }

    v12 = *(this + 151);
    if (v12)
    {
      a2->mFormatID = 1365470320;
      LOWORD(a3) = v12[63];
      a2->mSampleRate = *&a3;
      a2->mChannelsPerFrame = 1;
      v13 = v12[61];
      v14 = v12[62];
      a2->mBytesPerPacket = v13;
      a2->mFramesPerPacket = v14;
      return 0;
    }

LABEL_22:
    a2->mFormatID = 0;
    return 0;
  }

  v15 = *(this + 151);
  if (!v15)
  {
    goto LABEL_22;
  }

  return MPEGPacketParser_ASBDFromMPEGPacket((v15 + 8), 4u, a2);
}

uint64_t MP4AudioESDS::Deserialize(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = *a2;
  v10 = *(a2 + 20);
  v57 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  DecoderConfigDescr::cleanup((a1 + 296));
  v11 = *(a2 + 16);
  v12 = HIBYTE(v11);
  v13 = *(a2 + 20) - 8;
  *(a2 + 20) = v13;
  if (v13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v16 = *(a2 + 16);
    v15 = *(a2 + 20);
    v12 |= v16 >> v15;
    v13 = v15 + 32;
    *(a2 + 20) = v15 + 32;
    if (v15 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16 << -v15;
    }
  }

  else
  {
    v14 = v11 << 8;
  }

  *(a2 + 16) = v14;
  *(a1 + 4) = v12;
  if (v12 == 3)
  {
    v17 = 0;
    v18 = v8 - v9;
    v19 = -1;
    do
    {
      v20 = v19;
      v21 = HIBYTE(v14);
      v13 -= 8;
      *(a2 + 20) = v13;
      if (v13 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v23 = *(a2 + 16);
        v22 = *(a2 + 20);
        v21 |= v23 >> v22;
        v13 = v22 + 32;
        *(a2 + 20) = v22 + 32;
        if (v22 == -32)
        {
          v14 = 0;
        }

        else
        {
          v14 = v23 << -v22;
        }
      }

      else
      {
        v14 <<= 8;
      }

      *(a2 + 16) = v14;
      if (v20 == 4)
      {
        *(a1 + 8) = 0;
        goto LABEL_21;
      }

      v24 = v21 & 0x7F | (v17 << 7);
      v19 = v20 + 1;
      v17 = v24;
    }

    while ((v21 & 0x80) != 0);
    *(a1 + 8) = v24;
    if (v20 != 3)
    {
      *a1 = v19 + v24 + 2;
      v25 = HIWORD(v14);
      v26 = v13 - 16;
      *(a2 + 20) = v26;
      if (v26 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v33 = *(a2 + 16);
        v32 = *(a2 + 20);
        v25 |= v33 >> v32;
        *(a2 + 20) = v32 + 32;
        if (v32 == -32)
        {
          v27 = 0;
        }

        else
        {
          v27 = v33 << -v32;
        }
      }

      else
      {
        v27 = v14 << 16;
      }

      *(a2 + 16) = v27;
      *(a1 + 12) = v25;
      *(a1 + 16) = TBitstreamReader<unsigned int>::GetBit(a2);
      *(a1 + 20) = TBitstreamReader<unsigned int>::GetBit(a2);
      TBitstreamReader<unsigned int>::SkipBits(a2, 1);
      v34 = *(a2 + 16);
      v35 = v34 >> 27;
      v36 = *(a2 + 20) - 5;
      *(a2 + 20) = v36;
      if (v36 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v39 = *(a2 + 16);
        v38 = *(a2 + 20);
        v35 |= v39 >> v38;
        v36 = v38 + 32;
        *(a2 + 20) = v38 + 32;
        if (v38 == -32)
        {
          v37 = 0;
        }

        else
        {
          v37 = v39 << -v38;
        }
      }

      else
      {
        v37 = 32 * v34;
      }

      *(a2 + 16) = v37;
      *(a1 + 24) = v35;
      if (*(a1 + 16))
      {
        v40 = HIWORD(v37);
        v36 -= 16;
        *(a2 + 20) = v36;
        if (v36 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v42 = *(a2 + 16);
          v41 = *(a2 + 20);
          v40 |= v42 >> v41;
          v36 = v41 + 32;
          *(a2 + 20) = v41 + 32;
          if (v41 == -32)
          {
            v37 = 0;
          }

          else
          {
            v37 = v42 << -v41;
          }
        }

        else
        {
          v37 <<= 16;
        }

        *(a2 + 16) = v37;
        *(a1 + 28) = v40;
      }

      if (*(a1 + 20))
      {
        v43 = HIBYTE(v37);
        v36 -= 8;
        *(a2 + 20) = v36;
        if (v36 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v46 = *(a2 + 16);
          v45 = *(a2 + 20);
          v43 |= v46 >> v45;
          v36 = v45 + 32;
          *(a2 + 20) = v45 + 32;
          v44 = v45 == -32 ? 0 : v46 << -v45;
        }

        else
        {
          v44 = v37 << 8;
        }

        *(a2 + 16) = v44;
        *(a1 + 32) = v43;
        if (v43)
        {
          v47 = 0;
          do
          {
            v48 = *(a2 + 16);
            v49 = HIBYTE(v48);
            v50 = *(a2 + 20) - 8;
            *(a2 + 20) = v50;
            if (v50 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v53 = *(a2 + 16);
              v52 = *(a2 + 20);
              v49 |= v53 >> v52;
              *(a2 + 20) = v52 + 32;
              if (v52 == -32)
              {
                v51 = 0;
              }

              else
              {
                v51 = v53 << -v52;
              }
            }

            else
            {
              v51 = v48 << 8;
            }

            *(a2 + 16) = v51;
            *(a1 + 36 + v47++) = v49;
          }

          while (v47 < *(a1 + 32));
          v36 = *(a2 + 20);
        }
      }

      v54 = (v10 - v36 + 8 * (*a2 - *(a2 + 8) + v18)) / 8;
      if (a4)
      {
        v55 = &v57;
        v56 = a4;
      }

      else
      {
        v55 = 0;
        if (a3)
        {
          *a3 = v54;
        }

        v56 = 1;
      }

      result = DecoderConfigDescr::Deserialize((a1 + 296), a2, v55, v56);
      if (a3 && a4 && v55)
      {
        *a3 = *v55 + v54;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    v59 = "ACMP4BitStreams.cpp";
    v60 = 1024;
    v61 = 3208;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  MP4AudioESDS::Deserialize: the ES_Descriptor tag size is incorrect";
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v59 = "ACMP4BitStreams.cpp";
    v60 = 1024;
    v61 = 3204;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  MP4AudioESDS::Deserialize: the ES_Descriptor tag is incorrect";
LABEL_23:
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
  }

LABEL_24:
  result = 4294967090;
LABEL_25:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4AudioESDS::Serialize(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v5 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 304) == 64)
  {
    v8 = a3;
    if (!a3)
    {
      v8 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount((a1 + 296));
    }

    v9 = v8 + 32;
  }

  else
  {
    v9 = 14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 3, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v9, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 0x18u);
  if (*(a1 + 304) != 64)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      result = 4294967090;
      goto LABEL_31;
    }

    v23 = 136315394;
    v24 = "ACMP4BitStreams.cpp";
    v25 = 1024;
    v26 = 2368;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  DecoderConfigDescr::Serialize: Unsupported ObjectType";
LABEL_13:
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, &v23, 0x12u);
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 4, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  if (*(a1 + 304) == 64)
  {
    v10 = v5;
    if (!v5)
    {
      v10 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount((a1 + 296));
    }

    v11 = v10 + 18;
  }

  else
  {
    v11 = 0;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v11, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 304), 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 308), 6u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 312), 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 316), 0x18u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 320), 0x20u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 324), 0x20u);
  AT::TBitstreamWriter<unsigned int>::Flush(a2);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 5, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  if (v5)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5, 8u);
    if (!a4)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_31;
    }

    do
    {
      --v5;
      v15 = *a4++;
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, v15, 8u);
    }

    while (v5);
    goto LABEL_19;
  }

  v17 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount((a1 + 296));
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v17, 8u);
  MP4AudioObjectType::Serialize(*(a1 + 336), a2);
  MP4SampleRate::Serialize((a1 + 340), a2);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 344), 4u);
  v18 = *(a1 + 336);
  if (v18 == 5 || v18 == 29)
  {
    MP4SampleRate::Serialize((a1 + 356), a2);
    MP4AudioObjectType::Serialize(2u, a2);
    v18 = *(a1 + 336);
  }

  if ((v18 - 1) >= 4)
  {
    if (v18 == 39)
    {
      v19 = *(a1 + 1488);
      if (!v19)
      {
        result = 4294967290;
        goto LABEL_31;
      }

      *(v19 + 16) = *(a1 + 348);
LABEL_28:
      result = (*(*v19 + 32))(v19, a2);
      if (result)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

    if (v18 != 23)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v23 = 136315394;
      v24 = "ACMP4BitStreams.cpp";
      v25 = 1024;
      v26 = 2301;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  DecoderConfigDescr::MPEG4AudioSpecificPayloadSerialize: Unsupported AudioObjectType";
      goto LABEL_13;
    }
  }

  v19 = *(a1 + 1488);
  v20 = *(a1 + 348);
  if (v19)
  {
    *(v19 + 20) = v20 != 0;
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v20, 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 1u);
  if (!*(a1 + 344))
  {
    MP4AudioProgramConfig::Serialize(a1 + 384, a2);
  }

LABEL_38:
  v22 = *(a1 + 336);
  if ((v22 - 19) < 9 || v22 == 39 || v22 == 17)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 360), 2u);
  }

  if (*(a1 + 368) != -1 && *(a1 + 364) == 695)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 695, 0xBu);
    MP4AudioObjectType::Serialize(*(a1 + 352), a2);
    if (*(a1 + 352) == 5)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 368), 1u);
      if (*(a1 + 368) == 1)
      {
        MP4SampleRate::Serialize((a1 + 356), a2);
        if (*(a1 + 376) != -1 && *(a1 + 372) == 1352)
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a2, 1352, 0xBu);
          AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 376), 1u);
        }
      }
    }
  }

LABEL_19:
  v16 = *(a2 + 28) & 7;
  if (v16)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, v16);
  }

  AT::TBitstreamWriter<unsigned int>::Flush(a2);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 6, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 1, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 2, 8u);
  AT::TBitstreamWriter<unsigned int>::Flush(a2);
  result = 0;
LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ACMP4BitStreams::GetDecoderConfigFromADTSHeaderAndPCE(ACMP4BitStreams *this, unsigned int *a2, DecoderConfigDescr *a3, DecoderConfigDescr *a4, unsigned int *a5)
{
  DecoderConfigDescr::cleanup(a3);
  *(a3 + 18) = -1;
  *(a3 + 20) = -1;
  v28 = 0;
  LOWORD(v29) = 0;
  HIDWORD(v29) = 0;
  v8 = ADTSHeader::Deserialize(&v28, this, 0x10u);
  v9 = 0;
  if (!v8)
  {
    v10 = v28;
    v11 = (v28 >> 10) & 3;
    *(a3 + 10) = v11 + 1;
    v31 = 0;
    MP4SampleRate::SetFromIndex(&v31, (v10 >> 6) & 0xF, 1);
    v12 = v31;
    *(a3 + 11) = v31;
    *(a3 + 12) = (v10 >> 2) & 7;
    *(a3 + 23) = v11;
    *(a3 + 24) = v12;
    if ((v10 & 0x1000) != 0)
    {
      v13 = 7;
    }

    else
    {
      v13 = 9;
    }

    *a2 = v13;
    if ((v10 & 0x1000) != 0)
    {
      v14 = -7;
    }

    else
    {
      v14 = -9;
    }

    v9 = ((HIDWORD(v28) >> 13) & 0x1FFF) + v14;
  }

  if (!*(a3 + 12))
  {
    v15 = 560226676;
    v16 = *a2;
    if (v9 <= v16)
    {
      return v15;
    }

    v17 = (this + v16);
    v18 = (this + v16 + v9 - v16);
    v28 = (this + v16);
    v29 = v18;
    v30 = 0;
    if (((this + v16) & 3) != 0)
    {
      v19 = 0;
      v20 = v17 + 1;
      v21 = -8;
      do
      {
        v22 = *v17;
        v17 = (v17 + 1);
        v19 = v22 | (v19 << 8);
        v21 += 8;
        if ((v20 & 3) == 0)
        {
          break;
        }

        ++v20;
      }

      while (v17 < v18);
      v28 = v17;
      v23 = v19 << (24 - v21);
      v24 = v23 >> 29;
      LODWORD(v30) = v23;
      HIDWORD(v30) = v21 | 5;
      if ((v21 & 0x80000000) == 0)
      {
        v25 = 8 * v23;
LABEL_22:
        LODWORD(v30) = v25;
        if (v24 != 5)
        {
          return v15;
        }

        MP4AudioProgramConfig::Deserialize(a3 + 22, &v28);
        return 0;
      }
    }

    else
    {
      v24 = 0;
      HIDWORD(v30) = -3;
    }

    TBitstreamReader<unsigned int>::FillCacheFrom(&v28, v17);
    ++v28;
    v26 = BYTE4(v30);
    v24 |= v30 >> SBYTE4(v30);
    HIDWORD(v30) += 32;
    if (HIDWORD(v30))
    {
      v25 = v30 << -v26;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t ACMP4BitStreams::GetADTSPacketSize(ACMP4BitStreams *this, unsigned int *a2, unsigned int *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = ADTSHeader::Deserialize(&v8, this, *a2);
  result = 0;
  if (!v4)
  {
    v6 = HIDWORD(v8);
    if ((v8 & 0x1000) != 0)
    {
      v7 = 7;
    }

    else
    {
      v7 = 9;
    }

    *a2 = v7;
    return (v6 >> 13) & 0x1FFF;
  }

  return result;
}

uint64_t ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS(uint64_t a1, int *a2, int *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v48[2] = 0;
  v49 = 0;
  v50 = 0;
  v51[2] = 0;
  MP4AudioProgramConfig::Clear(v51);
  v53 = 0u;
  v52 = 0u;
  DecoderConfigDescr::cleanup(v48);
  if (!a3)
  {
    v10 = 4294967246;
    goto LABEL_28;
  }

  v7 = *(a1 + 8);
  v8 = *a1;
  v9 = *(a1 + 20);
  *a3 = 0;
  v10 = MP4AudioESDS::Deserialize(v47, a1, a3, 0);
  if (v10)
  {
    goto LABEL_28;
  }

  TBitstreamReader<unsigned int>::PutBack(a1, v9 - *(a1 + 20) + 8 * (*a1 - *(a1 + 8) - *a3 + v7 - v8));
  v11 = *(a1 + 16);
  v12 = HIBYTE(v11);
  v13 = *(a1 + 20) - 8;
  *(a1 + 20) = v13;
  if (v13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v16 = *(a1 + 16);
    v15 = *(a1 + 20);
    v12 |= v16 >> v15;
    *(a1 + 20) = v15 + 32;
    if (v15 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16 << -v15;
    }
  }

  else
  {
    v14 = v11 << 8;
  }

  *(a1 + 16) = v14;
  ++*a3;
  if (v12 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = 136315394;
      v44 = "ACMP4BitStreams.cpp";
      v45 = 1024;
      v46 = 3571;
      v28 = MEMORY[0x1E69E9C10];
      v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: the DecoderConfigDescriptor tag is incorrect";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v17 = 0;
  v19 = *(a1 + 16);
  v18 = *(a1 + 20);
  do
  {
    v20 = HIBYTE(v19);
    v18 -= 8;
    *(a1 + 20) = v18;
    if (v18 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
      *a1 += 4;
      v22 = *(a1 + 16);
      v21 = *(a1 + 20);
      v20 |= v22 >> v21;
      v18 = v21 + 32;
      *(a1 + 20) = v21 + 32;
      if (v21 == -32)
      {
        v19 = 0;
      }

      else
      {
        v19 = v22 << -v21;
      }
    }

    else
    {
      v19 <<= 8;
    }

    *(a1 + 16) = v19;
    if (v17 == 5)
    {
      --*a3;
LABEL_24:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v43 = 136315394;
        v44 = "ACMP4BitStreams.cpp";
        v45 = 1024;
        v46 = 3576;
        v28 = MEMORY[0x1E69E9C10];
        v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: the ES_Descriptor tag size is incorrect";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    ++v17;
  }

  while ((v20 & 0x80) != 0);
  v23 = *a3 + v17;
  *a3 = v23;
  if (v17 == 5)
  {
    goto LABEL_24;
  }

  *a3 = v23 + 13;
  TBitstreamReader<unsigned int>::SkipBits(a1, 104);
  v24 = *(a1 + 16);
  v25 = HIBYTE(v24);
  v26 = *(a1 + 20) - 8;
  *(a1 + 20) = v26;
  if (v26 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v33 = *(a1 + 16);
    v32 = *(a1 + 20);
    v25 |= v33 >> v32;
    *(a1 + 20) = v32 + 32;
    if (v32 == -32)
    {
      v27 = 0;
    }

    else
    {
      v27 = v33 << -v32;
    }
  }

  else
  {
    v27 = v24 << 8;
  }

  *(a1 + 16) = v27;
  ++*a3;
  if (v25 == 5)
  {
    v34 = 0;
    v35 = 0;
    v37 = *(a1 + 16);
    v36 = *(a1 + 20);
    while (1)
    {
      v38 = HIBYTE(v37);
      v36 -= 8;
      *(a1 + 20) = v36;
      if (v36 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
        *a1 += 4;
        v40 = *(a1 + 16);
        v39 = *(a1 + 20);
        v38 |= v40 >> v39;
        v36 = v39 + 32;
        *(a1 + 20) = v39 + 32;
        v37 = v39 == -32 ? 0 : v40 << -v39;
      }

      else
      {
        v37 <<= 8;
      }

      *(a1 + 16) = v37;
      if (v34 == 5)
      {
        break;
      }

      ++v34;
      v41 = v38 & 0x7F | (v35 << 7);
      v35 = v41;
      if ((v38 & 0x80) == 0)
      {
        v42 = *a3 + v34;
        *a3 = v42;
        if (v34 != 5)
        {
          if (v42 + v41 <= v6)
          {
            v10 = 0;
            *a2 = v41;
            goto LABEL_28;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          v43 = 136315394;
          v44 = "ACMP4BitStreams.cpp";
          v45 = 1024;
          v46 = 3594;
          v28 = MEMORY[0x1E69E9C10];
          v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: did not get the whole cookie";
LABEL_26:
          _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, &v43, 0x12u);
          goto LABEL_27;
        }

LABEL_52:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v43 = 136315394;
        v44 = "ACMP4BitStreams.cpp";
        v45 = 1024;
        v46 = 3591;
        v28 = MEMORY[0x1E69E9C10];
        v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: the ES_Descriptor tag size is incorrect";
        goto LABEL_26;
      }
    }

    --*a3;
    goto LABEL_52;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = 136315394;
    v44 = "ACMP4BitStreams.cpp";
    v45 = 1024;
    v46 = 3587;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  ACMP4BitStreams:: GetDecoderSpecificBitStreamFromESDS: the DecoderSpecificInfoTag tag is incorrect";
    goto LABEL_26;
  }

LABEL_27:
  v10 = 4294967090;
LABEL_28:
  if (*(&v53 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
  }

  if (*(&v52 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v52 + 1));
  }

  v30 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_18F733738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

void *AAAudioAnalyzer::Cleanup(AAAudioAnalyzer *this)
{
  result = std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  return result;
}

void *std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t AAAudioAnalyzer::PrepareAnalyzers(AAAudioAnalyzer *this)
{
  v25 = *MEMORY[0x1E69E9840];
  std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
  v16 = *(this + 2);
  v17 = *(this + 11);
  v2 = *(this + 31);
  v26.length = CFArrayGetCount(v2);
  v26.location = 0;
  if (CFArrayContainsValue(v2, v26, @"sound check info") || (v3 = *(this + 31), v27.length = CFArrayGetCount(v3), v27.location = 0, CFArrayContainsValue(v3, v27, @"main loudness parameters")) || (v4 = *(this + 31), v28.length = CFArrayGetCount(v4), v28.location = 0, CFArrayContainsValue(v4, v28, @"additional loudness parameters")))
  {
    v5 = *(this + 31);
    v29.length = CFArrayGetCount(v5);
    v29.location = 0;
    CFArrayContainsValue(v5, v29, @"sound check info");
    v6 = *(this + 31);
    v30.length = CFArrayGetCount(v6);
    v30.location = 0;
    CFArrayContainsValue(v6, v30, @"main loudness parameters");
    v7 = *(this + 31);
    v31.length = CFArrayGetCount(v7);
    v31.location = 0;
    CFArrayContainsValue(v7, v31, @"additional loudness parameters");
    operator new();
  }

  v8 = *(this + 31);
  v32.length = CFArrayGetCount(v8);
  v32.location = 0;
  if (CFArrayContainsValue(v8, v32, @"dialogue anchor parameters"))
  {
    operator new();
  }

  v9 = *(this + 33);
  v10 = *(this + 34);
  while (1)
  {
    if (v9 == v10)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v11 = (*(**v9 + 16))();
    if (v11)
    {
      break;
    }

    v9 += 8;
  }

  v12 = v11;
  if (kAASubsystem)
  {
    v15 = *kAASubsystem;
    if (!*kAASubsystem)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315906;
    *&buf[1] = "AAAudioAnalyzer.cpp";
    v19 = 1024;
    v20 = 77;
    v21 = 2048;
    v22 = this;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::PrepareAnalyzers (%p), Prepare analyzer failed (err = %d)", buf, 0x22u);
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_18F733C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<AAAnalysisBase>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t AAAudioAnalyzer::CompleteAnalysis(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v54 = *MEMORY[0x1E69E9840];
  if (*(v1 + 256) != 1)
  {
    result = 4294963436;
    goto LABEL_45;
  }

  v6 = v1;
  v7 = (*(v1 + 272) - *(v1 + 264)) >> 3;
  if (!v7)
  {
    result = 0;
    goto LABEL_45;
  }

  *(v1 + 224) = v2;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  v5.n128_u64[0] = 0;
  result = AAAnalyzer::CallProgressCallback(v1, v5);
  if (!result)
  {
    if (v6[11])
    {
      v10 = clock();
      queue = dispatch_queue_create("Progress", 0);
      for (i = 0; ; i += v14)
      {
        v12 = *(v6 + 24);
        ioNumBytes = 0x8000;
        ioNumPackets = v12;
        v13 = AudioFileReadPacketData(v6[11], 0, &ioNumBytes, v6[13], i, &ioNumPackets, outBuffer);
        if (v13)
        {
          break;
        }

        v14 = ioNumPackets;
        if (!ioNumPackets)
        {
          v26 = queue;
          goto LABEL_24;
        }

        v15 = *(v6 + 11);
        v41[0] = 1;
        v41[2] = v15;
        v41[3] = ioNumBytes;
        v42 = outBuffer;
        v16 = (*(*v6 + 56))(v6, ioNumPackets, v41, v6[13]);
        if (v16)
        {
          v34 = v16;
          if (kAASubsystem)
          {
            v35 = *kAASubsystem;
            v26 = queue;
            if (!*kAASubsystem)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v35 = MEMORY[0x1E69E9C10];
            v26 = queue;
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v46 = "AAAudioAnalyzer.cpp";
            v47 = 1024;
            v48 = 208;
            v49 = 2048;
            v50 = v6;
            v51 = 1024;
            v52 = v34;
            _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::CompleteAnalysis (%p), PushAudio failed (err = %d)", buf, 0x22u);
          }

LABEL_40:
          v36 = v6[11];
          if (v36)
          {
            AudioFileClose(v36);
            v6[11] = 0;
          }

          if (v26)
          {
            dispatch_release(v26);
          }

          result = 0;
          *(v6 + 256) = 0;
          goto LABEL_45;
        }

        v17 = clock();
        if (v17 - v10 >= 0xF4240)
        {
          v18 = v17;
          v19 = v6[33];
          if (v6[34] == v19)
          {
            v25 = 100.0;
          }

          else
          {
            v20 = 0;
            v21 = 0.0;
            v22 = 1;
            do
            {
              v21 = v21 + (*(**(v19 + 8 * v20) + 64))(*(v19 + 8 * v20));
              v20 = v22;
              v19 = v6[33];
              v23 = (v6[34] - v19) >> 3;
            }

            while (v23 > v22++);
            v25 = v21 / v23;
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN15AAAudioAnalyzer16CompleteAnalysisEPFiP19OpaqueAudioAnalyzerfPvES2_U13block_pointerFiS1_fE_block_invoke;
          block[3] = &__block_descriptor_tmp_2987;
          block[4] = v6;
          v40 = v25;
          dispatch_async(queue, block);
          v10 = v18;
        }
      }

      v27 = v13;
      if (kAASubsystem)
      {
        v28 = *kAASubsystem;
        if (!*kAASubsystem)
        {
LABEL_36:
          v26 = queue;
          goto LABEL_40;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v46 = "AAAudioAnalyzer.cpp";
        v47 = 1024;
        v48 = 192;
        v49 = 2048;
        v50 = v6;
        v51 = 1024;
        v52 = v27;
        _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::CompleteAnalysis (%p), AudioFileReadPacketData failed (err = %d)", buf, 0x22u);
      }

      goto LABEL_36;
    }

    v26 = 0;
LABEL_24:
    v29 = v6[33];
    if (v6[34] == v29)
    {
LABEL_28:
      v9.n128_u32[0] = 1120403456;
      result = AAAnalyzer::CallProgressCallback(v6, v9);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0.0;
      v32 = 1;
      v33 = 100.0 / v7;
      while (1)
      {
        result = (*(**(v29 + 8 * v30) + 32))(*(v29 + 8 * v30), v31, v33);
        if (result)
        {
          break;
        }

        v31 = v33 + v31;
        v33 = (100.0 / v7) + v33;
        v30 = v32;
        v29 = v6[33];
        ++v32;
        if (v30 >= (v6[34] - v29) >> 3)
        {
          goto LABEL_28;
        }
      }
    }
  }

LABEL_45:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AAAudioAnalyzer::PushAudio(AAAudioAnalyzer *this, uint64_t a2, const AudioBufferList *a3, const AudioStreamPacketDescription *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 256) == 1)
  {
    CrashIfClientProvidedBogusAudioBufferList();
    if (*(this + 15))
    {
      *(this + 41) = a2;
      memcpy(*(this + 21), a3, *(this + 44));
      *(this + 23) = a4;
      do
      {
        v8 = *(this + 19);
        mNumberBuffers = v8->mNumberBuffers;
        if (mNumberBuffers)
        {
          v10 = *(this + 16);
          p_mData = &v8->mBuffers[0].mData;
          do
          {
            *(p_mData - 1) = 0x200000000001;
            v12 = *v10++;
            *p_mData = v12;
            p_mData += 2;
            --mNumberBuffers;
          }

          while (mNumberBuffers);
        }

        *(this + 40) = 2048;
        v13 = AudioConverterFillComplexBuffer(*(this + 15), AAAnalyzer::ACInputProc, this, this + 40, v8, 0);
        if (*(this + 40))
        {
          v14 = *(this + 33);
          v15 = *(this + 34);
          while (v14 != v15)
          {
            v16 = (*(**v14 + 24))(*v14, *(this + 40), *(this + 19));
            if (v16)
            {
              v18 = v16;
              if (kAASubsystem)
              {
                v21 = *kAASubsystem;
                if (!*kAASubsystem)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                v21 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v26 = 136315906;
                v27 = "AAAudioAnalyzer.cpp";
                v28 = 1024;
                v29 = 134;
                v30 = 2048;
                v31 = this;
                v32 = 1024;
                v33 = v18;
                _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::PushAudio (%p), PushAudio to analyzer failed (err = %d)", &v26, 0x22u);
              }

              goto LABEL_18;
            }

            ++v14;
          }
        }
      }

      while (!v13);
      if (v13 != 5)
      {
        if (kAASubsystem)
        {
          v17 = *kAASubsystem;
          if (!*kAASubsystem)
          {
LABEL_32:
            v18 = v13;
            goto LABEL_18;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315906;
          v27 = "AAAudioAnalyzer.cpp";
          v28 = 1024;
          v29 = 142;
          v30 = 2048;
          v31 = this;
          v32 = 1024;
          v33 = v13;
          _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::PushAudio (%p), AudioConverterFillComplexBuffer failed (err = %d)", &v26, 0x22u);
        }

        goto LABEL_32;
      }

      goto LABEL_25;
    }

    v23 = *(this + 33);
    v22 = *(this + 34);
    if (v23 == v22)
    {
LABEL_25:
      v18 = 0;
      goto LABEL_18;
    }

    do
    {
      v24 = *v23++;
      v25 = (*(*v24 + 24))(v24, a2, a3);
    }

    while (v23 != v22);
    v18 = v25;
  }

  else
  {
    v18 = 4294963436;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void AAAudioAnalyzer::~AAAudioAnalyzer(AAAudioAnalyzer *this)
{
  AAAudioAnalyzer::~AAAudioAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032B648;
  std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  if (*(this + 33))
  {
    std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
    operator delete(*(this + 33));
  }

  AAAnalyzer::~AAAnalyzer(this);
}

uint64_t AAAudioAnalyzer::AAAudioAnalyzer(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *v10 = &unk_1F03369B0;
  *(v10 + 12) = 0;
  CAAudioChannelLayout::CAAudioChannelLayout((v10 + 56));
  *(a1 + 64) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = a3;
  *(a1 + 208) = a4;
  *(a1 + 216) = a5;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  if (AAAnalyzer::AAAnalyzer(__CFArray const*,void (*)(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,void *,AudioAnalyzerResultsFlags *),void *,void({block_pointer})(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,AudioAnalyzerResultsFlags *))::once != -1)
  {
    dispatch_once(&AAAnalyzer::AAAnalyzer(__CFArray const*,void (*)(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,void *,AudioAnalyzerResultsFlags *),void *,void({block_pointer})(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,AudioAnalyzerResultsFlags *))::once, &__block_literal_global_10518);
  }

  *(a1 + 248) = CFArrayCreateMutableCopy(0, 0, a2);
  v11 = *(a1 + 168);
  if (v11)
  {
    free(v11);
    *(a1 + 168) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    free(v12);
    *(a1 + 152) = 0;
  }

  *(a1 + 256) = 0;
  *a1 = &unk_1F032B648;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  return a1;
}

void sub_18F73473C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 21);
  if (v4)
  {
    free(v4);
    *(v1 + 21) = 0;
  }

  v5 = *(v1 + 19);
  if (v5)
  {
    free(v5);
    *(v1 + 19) = 0;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 17) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 9) = v7;
    operator delete(v7);
  }

  MEMORY[0x193ADE5D0](v1 + 56);
  BaseOpaqueObject::~BaseOpaqueObject(v1);
  _Unwind_Resume(a1);
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

    std::vector<float>::__vallocate[abi:ne200100](a1, v9);
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
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_18F9016C0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_18F9016B0)))).i32[1])
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
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_18F9016C0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_18F9016B0)))).i32[1])
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

void std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t HOA::orderFromNumChannels(HOA *this)
{
  v1 = 0x40000000;
  do
  {
    v2 = v1;
    v1 >>= 2;
  }

  while (v2 > this);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  do
  {
    v4 = v3 + v2;
    v5 = 2 * v2;
    if (this < v3 + v2)
    {
      v4 = 0;
      v5 = 0;
    }

    LODWORD(this) = this - v4;
    v3 = (v5 + v3) >> 1;
    v6 = v2 > 3;
    v2 >>= 2;
  }

  while (v6);
  return v3 - 1;
}

uint64_t HOA::normalizationFromTag(HOA *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = this & 0xFFFF0000;
  if ((this & 0xFFFF0000) == 0x6B0000)
  {
    result = 2;
  }

  else if (v1 == 12517376)
  {
    result = 0;
  }

  else if (v1 == 12451840)
  {
    result = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = "HOA.cpp";
      v6 = 1024;
      v7 = 632;
      v8 = 2080;
      v9 = "normalizationFromTag";
      v10 = 1024;
      v11 = 632;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; This is not SN3D/N3D/FuMa: unsupported", &v4, 0x22u);
    }

    result = 0xFFFFFFFFLL;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F734E28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HOA::RotationMatrix::~RotationMatrix(HOA::RotationMatrix *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t HOA::getSphericalGrid(uint64_t result, HOA *this, _DWORD *__dst, float *a4, float *__C)
{
  if (result)
  {
    if (result != 2)
    {
      if (result != 1)
      {
        return result;
      }

      if (__dst)
      {
        v7 = a4 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = !v7;
      if (this <= 4)
      {
        if (this > 1)
        {
          if (this != 2)
          {
            if (this != 3)
            {
              v9 = v8 ^ 1;
              if (!__C)
              {
                v9 = 1;
              }

              if ((v9 & 1) == 0)
              {
                __dst[24] = -1038292098;
                *__dst = xmmword_18F913410;
                *(__dst + 1) = unk_18F913420;
                *(__dst + 4) = xmmword_18F913450;
                *(__dst + 5) = unk_18F913460;
                *(__dst + 2) = xmmword_18F913430;
                *(__dst + 3) = unk_18F913440;
                *a4 = xmmword_18F913474;
                *(a4 + 1) = unk_18F913484;
                *(a4 + 4) = xmmword_18F9134B4;
                *(a4 + 5) = unk_18F9134C4;
                *(a4 + 2) = xmmword_18F913494;
                *(a4 + 3) = unk_18F9134A4;
                a4[24] = -31.512;
                __C[24] = 0.52404;
                v10 = &xmmword_18F9134D8;
LABEL_33:
                v13 = v10[5];
                *(__C + 4) = v10[4];
                *(__C + 5) = v13;
                v14 = v10[3];
                *(__C + 2) = v10[2];
                *(__C + 3) = v14;
                v15 = *v10;
                v16 = v10[1];
                result = 25;
LABEL_100:
                *__C = v15;
                *(__C + 1) = v16;
                return result;
              }

              return 25;
            }

            v50 = v8 ^ 1;
            if (!__C)
            {
              v50 = 1;
            }

            if ((v50 & 1) == 0)
            {
              *__dst = xmmword_18F913350;
              *(__dst + 1) = unk_18F913360;
              *(__dst + 2) = xmmword_18F913370;
              *(__dst + 3) = unk_18F913380;
              *a4 = xmmword_18F913390;
              *(a4 + 1) = unk_18F9133A0;
              *(a4 + 2) = xmmword_18F9133B0;
              *(a4 + 3) = unk_18F9133C0;
              v39 = &xmmword_18F9133D0;
              goto LABEL_112;
            }

            return 16;
          }

          v41 = v8 ^ 1;
          if (!__C)
          {
            v41 = 1;
          }

          if ((v41 & 1) == 0)
          {
            __dst[8] = 1123963561;
            *__dst = xmmword_18F9132E4;
            *(__dst + 1) = unk_18F9132F4;
            a4[8] = -34.134;
            *a4 = xmmword_18F913308;
            *(a4 + 1) = unk_18F913318;
            v31 = 1069089495;
            v32 = &xmmword_18F91332C;
            goto LABEL_99;
          }

          return 9;
        }

        if (this)
        {
          if (this == 1)
          {
            v21 = v8 ^ 1;
            if (!__C)
            {
              v21 = 1;
            }

            if (v21)
            {
              return 4;
            }

            *__dst = xmmword_18F901E80;
            *a4 = xmmword_18F901E60;
            v19 = &xmmword_18F901E70;
            goto LABEL_66;
          }

          goto LABEL_123;
        }

        goto LABEL_74;
      }

      if (this > 6)
      {
        if (this != 7)
        {
          if (this != 8)
          {
            if (this != 9)
            {
LABEL_123:
              v54 = v8 ^ 1;
              if (!__C)
              {
                v54 = 1;
              }

              if (v54)
              {
                return 121;
              }

              memcpy(__dst, &unk_18F9144B4, 0x1E4uLL);
              memcpy(a4, &unk_18F914698, 0x1E4uLL);
              v53 = &unk_18F91487C;
              goto LABEL_127;
            }

            v18 = v8 ^ 1;
            if (!__C)
            {
              v18 = 1;
            }

            if ((v18 & 1) == 0)
            {
              memcpy(__dst, &unk_18F914004, 0x190uLL);
              memcpy(a4, &unk_18F914194, 0x190uLL);
              v17 = &unk_18F914324;
              goto LABEL_51;
            }

            return 100;
          }

          v52 = v8 ^ 1;
          if (!__C)
          {
            v52 = 1;
          }

          if ((v52 & 1) == 0)
          {
            memcpy(__dst, &unk_18F913C38, 0x144uLL);
            memcpy(a4, &unk_18F913D7C, 0x144uLL);
            v40 = &unk_18F913EC0;
            goto LABEL_119;
          }

          return 81;
        }

        v42 = v8 ^ 1;
        if (!__C)
        {
          v42 = 1;
        }

        if ((v42 & 1) == 0)
        {
          *(__dst + 12) = xmmword_18F9139F8;
          *(__dst + 13) = unk_18F913A08;
          *(__dst + 14) = xmmword_18F913A18;
          *(__dst + 15) = unk_18F913A28;
          *(__dst + 8) = xmmword_18F9139B8;
          *(__dst + 9) = unk_18F9139C8;
          *(__dst + 10) = xmmword_18F9139D8;
          *(__dst + 11) = unk_18F9139E8;
          *(__dst + 4) = xmmword_18F913978;
          *(__dst + 5) = unk_18F913988;
          *(__dst + 6) = xmmword_18F913998;
          *(__dst + 7) = unk_18F9139A8;
          *__dst = xmmword_18F913938;
          *(__dst + 1) = unk_18F913948;
          *(__dst + 2) = xmmword_18F913958;
          *(__dst + 3) = unk_18F913968;
          *(a4 + 12) = xmmword_18F913AF8;
          *(a4 + 13) = unk_18F913B08;
          *(a4 + 14) = xmmword_18F913B18;
          *(a4 + 15) = unk_18F913B28;
          *(a4 + 8) = xmmword_18F913AB8;
          *(a4 + 9) = unk_18F913AC8;
          *(a4 + 10) = xmmword_18F913AD8;
          *(a4 + 11) = unk_18F913AE8;
          *(a4 + 4) = xmmword_18F913A78;
          *(a4 + 5) = unk_18F913A88;
          *(a4 + 6) = xmmword_18F913A98;
          *(a4 + 7) = unk_18F913AA8;
          *a4 = xmmword_18F913A38;
          *(a4 + 1) = unk_18F913A48;
          *(a4 + 2) = xmmword_18F913A58;
          *(a4 + 3) = unk_18F913A68;
          v33 = &xmmword_18F913B38;
          goto LABEL_106;
        }

        return 64;
      }

      if (this != 5)
      {
        v22 = v8 ^ 1;
        if (!__C)
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0)
        {
          __dst[48] = -1022566698;
          *(__dst + 8) = xmmword_18F91376C;
          *(__dst + 9) = unk_18F91377C;
          *(__dst + 10) = xmmword_18F91378C;
          *(__dst + 11) = unk_18F91379C;
          *(__dst + 4) = xmmword_18F91372C;
          *(__dst + 5) = unk_18F91373C;
          *(__dst + 6) = xmmword_18F91374C;
          *(__dst + 7) = unk_18F91375C;
          *__dst = xmmword_18F9136EC;
          *(__dst + 1) = unk_18F9136FC;
          *(__dst + 2) = xmmword_18F91370C;
          *(__dst + 3) = unk_18F91371C;
          a4[48] = 22.162;
          *(a4 + 8) = xmmword_18F913830;
          *(a4 + 9) = unk_18F913840;
          *(a4 + 10) = xmmword_18F913850;
          *(a4 + 11) = unk_18F913860;
          *(a4 + 4) = xmmword_18F9137F0;
          *(a4 + 5) = unk_18F913800;
          *(a4 + 6) = xmmword_18F913810;
          *(a4 + 7) = unk_18F913820;
          *a4 = xmmword_18F9137B0;
          *(a4 + 1) = unk_18F9137C0;
          *(a4 + 2) = xmmword_18F9137D0;
          *(a4 + 3) = unk_18F9137E0;
          __C[48] = 0.25211;
          v20 = &xmmword_18F913874;
          goto LABEL_73;
        }

        return 49;
      }

      v34 = v8 ^ 1;
      if (!__C)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        *(__dst + 2) = xmmword_18F91355C;
        *(__dst + 3) = unk_18F91356C;
        *(__dst + 8) = xmmword_18F9135BC;
        *(__dst + 6) = xmmword_18F91359C;
        *(__dst + 7) = unk_18F9135AC;
        *(__dst + 4) = xmmword_18F91357C;
        *(__dst + 5) = unk_18F91358C;
        *__dst = xmmword_18F91353C;
        *(__dst + 1) = unk_18F91354C;
        *(a4 + 2) = xmmword_18F9135EC;
        *(a4 + 3) = unk_18F9135FC;
        *a4 = xmmword_18F9135CC;
        *(a4 + 1) = unk_18F9135DC;
        *(a4 + 8) = xmmword_18F91364C;
        *(a4 + 6) = xmmword_18F91362C;
        *(a4 + 7) = unk_18F91363C;
        *(a4 + 4) = xmmword_18F91360C;
        *(a4 + 5) = unk_18F91361C;
        v30 = &xmmword_18F91365C;
        goto LABEL_88;
      }

      return 36;
    }

    if (__dst)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    v8 = !v11 && __C != 0;
    if (this > 4)
    {
      if (this <= 6)
      {
        if (this != 5)
        {
          if (v8)
          {
            __dst[48] = 1127431944;
            *(__dst + 8) = xmmword_18F914EE8;
            *(__dst + 9) = unk_18F914EF8;
            *(__dst + 10) = xmmword_18F914F08;
            *(__dst + 11) = unk_18F914F18;
            *(__dst + 4) = xmmword_18F914EA8;
            *(__dst + 5) = unk_18F914EB8;
            *(__dst + 6) = xmmword_18F914EC8;
            *(__dst + 7) = unk_18F914ED8;
            *__dst = xmmword_18F914E68;
            *(__dst + 1) = unk_18F914E78;
            *(__dst + 2) = xmmword_18F914E88;
            *(__dst + 3) = unk_18F914E98;
            a4[48] = -71.28;
            *(a4 + 8) = xmmword_18F914FAC;
            *(a4 + 9) = unk_18F914FBC;
            *(a4 + 10) = xmmword_18F914FCC;
            *(a4 + 11) = unk_18F914FDC;
            *(a4 + 4) = xmmword_18F914F6C;
            *(a4 + 5) = unk_18F914F7C;
            *(a4 + 6) = xmmword_18F914F8C;
            *(a4 + 7) = unk_18F914F9C;
            *a4 = xmmword_18F914F2C;
            *(a4 + 1) = unk_18F914F3C;
            *(a4 + 2) = xmmword_18F914F4C;
            *(a4 + 3) = unk_18F914F5C;
            __C[48] = 0.25534;
            v20 = &xmmword_18F914FF0;
LABEL_73:
            v23 = v20[9];
            *(__C + 8) = v20[8];
            *(__C + 9) = v23;
            v24 = v20[11];
            *(__C + 10) = v20[10];
            *(__C + 11) = v24;
            v25 = v20[5];
            *(__C + 4) = v20[4];
            *(__C + 5) = v25;
            v26 = v20[7];
            *(__C + 6) = v20[6];
            *(__C + 7) = v26;
            v27 = v20[1];
            *__C = *v20;
            *(__C + 1) = v27;
            v28 = v20[2];
            v29 = v20[3];
            result = 49;
LABEL_113:
            *(__C + 2) = v28;
            *(__C + 3) = v29;
            return result;
          }

          return 49;
        }

        if (v8)
        {
          *(__dst + 2) = xmmword_18F914CD8;
          *(__dst + 3) = unk_18F914CE8;
          *(__dst + 8) = xmmword_18F914D38;
          *(__dst + 6) = xmmword_18F914D18;
          *(__dst + 7) = unk_18F914D28;
          *(__dst + 4) = xmmword_18F914CF8;
          *(__dst + 5) = unk_18F914D08;
          *__dst = xmmword_18F914CB8;
          *(__dst + 1) = unk_18F914CC8;
          *(a4 + 2) = xmmword_18F914D68;
          *(a4 + 3) = unk_18F914D78;
          *a4 = xmmword_18F914D48;
          *(a4 + 1) = unk_18F914D58;
          *(a4 + 8) = xmmword_18F914DC8;
          *(a4 + 6) = xmmword_18F914DA8;
          *(a4 + 7) = unk_18F914DB8;
          *(a4 + 4) = xmmword_18F914D88;
          *(a4 + 5) = unk_18F914D98;
          v30 = &xmmword_18F914DD8;
LABEL_88:
          v35 = v30[7];
          *(__C + 6) = v30[6];
          *(__C + 7) = v35;
          *(__C + 8) = v30[8];
          v36 = v30[3];
          *(__C + 2) = v30[2];
          *(__C + 3) = v36;
          v37 = v30[5];
          *(__C + 4) = v30[4];
          *(__C + 5) = v37;
          v38 = v30[1];
          result = 36;
          *__C = *v30;
          *(__C + 1) = v38;
          return result;
        }

        return 36;
      }

      switch(this)
      {
        case 7:
          if (v8)
          {
            *(__dst + 12) = xmmword_18F915174;
            *(__dst + 13) = unk_18F915184;
            *(__dst + 14) = xmmword_18F915194;
            *(__dst + 15) = unk_18F9151A4;
            *(__dst + 8) = xmmword_18F915134;
            *(__dst + 9) = unk_18F915144;
            *(__dst + 10) = xmmword_18F915154;
            *(__dst + 11) = unk_18F915164;
            *(__dst + 4) = xmmword_18F9150F4;
            *(__dst + 5) = unk_18F915104;
            *(__dst + 6) = xmmword_18F915114;
            *(__dst + 7) = unk_18F915124;
            *__dst = xmmword_18F9150B4;
            *(__dst + 1) = unk_18F9150C4;
            *(__dst + 2) = xmmword_18F9150D4;
            *(__dst + 3) = unk_18F9150E4;
            *(a4 + 12) = xmmword_18F915274;
            *(a4 + 13) = unk_18F915284;
            *(a4 + 14) = xmmword_18F915294;
            *(a4 + 15) = unk_18F9152A4;
            *(a4 + 8) = xmmword_18F915234;
            *(a4 + 9) = unk_18F915244;
            *(a4 + 10) = xmmword_18F915254;
            *(a4 + 11) = unk_18F915264;
            *(a4 + 4) = xmmword_18F9151F4;
            *(a4 + 5) = unk_18F915204;
            *(a4 + 6) = xmmword_18F915214;
            *(a4 + 7) = unk_18F915224;
            *a4 = xmmword_18F9151B4;
            *(a4 + 1) = unk_18F9151C4;
            *(a4 + 2) = xmmword_18F9151D4;
            *(a4 + 3) = unk_18F9151E4;
            v33 = &xmmword_18F9152B4;
LABEL_106:
            v43 = v33[13];
            *(__C + 12) = v33[12];
            *(__C + 13) = v43;
            v44 = v33[15];
            *(__C + 14) = v33[14];
            *(__C + 15) = v44;
            v45 = v33[9];
            *(__C + 8) = v33[8];
            *(__C + 9) = v45;
            v46 = v33[11];
            *(__C + 10) = v33[10];
            *(__C + 11) = v46;
            v47 = v33[5];
            *(__C + 4) = v33[4];
            *(__C + 5) = v47;
            v48 = v33[7];
            *(__C + 6) = v33[6];
            *(__C + 7) = v48;
            v49 = v33[1];
            *__C = *v33;
            *(__C + 1) = v49;
            v28 = v33[2];
            v29 = v33[3];
            result = 64;
            goto LABEL_113;
          }

          return 64;
        case 8:
          if (v8)
          {
            memcpy(__dst, &unk_18F9153B4, 0x144uLL);
            memcpy(a4, &unk_18F9154F8, 0x144uLL);
            v40 = &unk_18F91563C;
LABEL_119:
            memcpy(__C, v40, 0x144uLL);
          }

          return 81;
        case 9:
          if (v8)
          {
            memcpy(__dst, &unk_18F915780, 0x190uLL);
            memcpy(a4, &unk_18F915910, 0x190uLL);
            v17 = &unk_18F915AA0;
LABEL_51:
            memcpy(__C, v17, 0x190uLL);
          }

          return 100;
      }
    }

    else
    {
      if (this > 1)
      {
        if (this != 2)
        {
          if (this != 3)
          {
            if (v8)
            {
              __dst[24] = 1058111518;
              *__dst = xmmword_18F914B8C;
              *(__dst + 1) = unk_18F914B9C;
              *(__dst + 4) = xmmword_18F914BCC;
              *(__dst + 5) = unk_18F914BDC;
              *(__dst + 2) = xmmword_18F914BAC;
              *(__dst + 3) = unk_18F914BBC;
              *a4 = xmmword_18F914BF0;
              *(a4 + 1) = unk_18F914C00;
              *(a4 + 4) = xmmword_18F914C30;
              *(a4 + 5) = unk_18F914C40;
              *(a4 + 2) = xmmword_18F914C10;
              *(a4 + 3) = unk_18F914C20;
              a4[24] = 43.688;
              __C[24] = 0.50824;
              v10 = &xmmword_18F914C54;
              goto LABEL_33;
            }

            return 25;
          }

          if (v8)
          {
            *__dst = xmmword_18F914ACC;
            *(__dst + 1) = unk_18F914ADC;
            *(__dst + 2) = xmmword_18F914AEC;
            *(__dst + 3) = unk_18F914AFC;
            *a4 = xmmword_18F914B0C;
            *(a4 + 1) = unk_18F914B1C;
            *(a4 + 2) = xmmword_18F914B2C;
            *(a4 + 3) = unk_18F914B3C;
            v39 = &xmmword_18F914B4C;
LABEL_112:
            v51 = v39[1];
            *__C = *v39;
            *(__C + 1) = v51;
            v28 = v39[2];
            v29 = v39[3];
            result = 16;
            goto LABEL_113;
          }

          return 16;
        }

        if (v8)
        {
          __dst[8] = 1116271638;
          *__dst = xmmword_18F914A60;
          *(__dst + 1) = unk_18F914A70;
          a4[8] = -48.587;
          *a4 = xmmword_18F914A84;
          *(a4 + 1) = unk_18F914A94;
          v31 = 1068792731;
          v32 = &xmmword_18F914AA8;
LABEL_99:
          *(__C + 8) = v31;
          v15 = *v32;
          v16 = v32[1];
          result = 9;
          goto LABEL_100;
        }

        return 9;
      }

      if (!this)
      {
LABEL_74:
        if (v8)
        {
          *__dst = 0;
          *a4 = 0.0;
          *__C = 1.0;
        }

        return 1;
      }

      if (this == 1)
      {
        if (!v8)
        {
          return 4;
        }

        *__dst = xmmword_18F901E80;
        *a4 = xmmword_18F901E90;
        v19 = &xmmword_18F901EA0;
LABEL_66:
        *__C = *v19;
        return 4;
      }
    }

    if (!v8)
    {
      return 121;
    }

    memcpy(__dst, &unk_18F915C30, 0x1E4uLL);
    memcpy(a4, &unk_18F915E14, 0x1E4uLL);
    v53 = &unk_18F915FF8;
LABEL_127:
    memcpy(__C, v53, 0x1E4uLL);
    return 121;
  }

  return HOA::getTDesign(this, __dst, a4, __C, __C);
}

unsigned int *HOA::HOA(unsigned int *a1, HOA *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  *(a1 + 28) = 0;
  *(a1 + 50) = 0u;
  *(a1 + 54) = 0u;
  *(a1 + 62) = 0u;
  *(a1 + 37) = 0;
  *(a1 + 46) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 70) = 0u;
  *(a1 + 58) = 0u;
  v4 = (a1 + 58);
  v5 = a2;
  v6 = HOA::orderFromNumChannels(a2);
  v7 = v6;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 6) = 0uLL;
  *(a1 + 7) = 0uLL;
  *(a1 + 8) = 0uLL;
  *(a1 + 9) = 0uLL;
  *(a1 + 10) = 0uLL;
  a1[44] = 0;
  v9 = HOA::normalizationFromTag(a2);
  v10 = 0;
  *(a1 + 78) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 86) = 0u;
  a1[90] = v9;
  *(a1 + 364) = 1;
  if (v8 >= 4 && v9 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v71 = "HOA.cpp";
      v72 = 1024;
      v74 = 2080;
      v73 = 29;
      v75 = "RotationMatrix";
      v76 = 1024;
      v77 = 29;
      v78 = 1024;
      v79 = v8;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Trying to create a HOA rotation matrix of order = %d > 3 with FuMa normalization, capping to order 3", buf, 0x28u);
    }

    v8 = 3;
  }

  v11 = v8 + 1;
  *buf = 0;
  std::vector<float>::assign(a1 + 39, (8 * v11 * v11 - 2) * v11 / 6, buf, v10);
  v68 = v7;
  v69 = v5;
  if (v11 > (*(a1 + 44) - *(a1 + 42)) >> 4)
  {
    v12 = *(a1 + 43);
    std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](v8 + 1);
  }

  v67 = a2;
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 43);
  v16 = 1;
  do
  {
    v17 = (v16 * v16);
    v18 = *(a1 + 39) + 4 * ((v13 * v14 - 2) * v14 / 6uLL);
    v19 = *(a1 + 44);
    if (v15 >= v19)
    {
      v20 = *(a1 + 42);
      v21 = (v15 - v20) >> 4;
      if ((v21 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v22 = v19 - v20;
      v23 = v22 >> 3;
      if (v22 >> 3 <= (v21 + 1))
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](v24);
      }

      v25 = (16 * v21);
      *v25 = v18;
      v25[1] = v17;
      v15 = (16 * v21 + 16);
      v26 = *(a1 + 42);
      v27 = *(a1 + 43) - v26;
      v28 = v25 - v27;
      memcpy(v25 - v27, v26, v27);
      v29 = *(a1 + 42);
      *(a1 + 42) = v28;
      *(a1 + 43) = v15;
      *(a1 + 44) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v15 = v18;
      v15[1] = v17;
      v15 += 2;
    }

    *(a1 + 43) = v15;
    ++v14;
    v16 += 2;
    v13 += 8;
  }

  while (v14 <= v8);
  *(a1 + 46) = 0;
  *(a1 + 47) = 0;
  *(a1 + 48) = 0;
  v30 = v68;
  a1[1] = v68;
  if (v68 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v71 = "HOA.cpp";
      v72 = 1024;
      v73 = 662;
      v74 = 2080;
      v75 = "HOA";
      v76 = 1024;
      v77 = 662;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Incorrect order", buf, 0x22u);
      v30 = a1[1];
    }

    else
    {
      v30 = -1;
    }
  }

  if ((v30 + 1) * (v30 + 1) != v69 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v71 = "HOA.cpp";
    v72 = 1024;
    v73 = 666;
    v74 = 2080;
    v75 = "HOA";
    v76 = 1024;
    v77 = 666;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Incorrect channel count (i.e. not consistent with HOA order definition Channels = (order+1)^2)", buf, 0x22u);
  }

  v31 = HOA::normalizationFromTag(v67);
  a1[76] = v31;
  v32 = a1[1];
  v33 = (v32 + 1) * (v32 + 1);
  a1[3] = v33;
  *a1 = v32;
  if (v31 == 2 && v32 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v71 = "HOA.cpp";
      v72 = 1024;
      v74 = 2080;
      v73 = 684;
      v75 = "initialize";
      v76 = 1024;
      v77 = 684;
      v78 = 1024;
      v79 = v32;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; initializing a HOA instance with order = %d > 3 with FuMa normalization", buf, 0x28u);
    }

    v34 = 3;
LABEL_41:
    *a1 = v34;
    v33 = (v34 + 1) * (v34 + 1);
    goto LABEL_42;
  }

  if (v32 >= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v71 = "HOA.cpp";
      v72 = 1024;
      v74 = 2080;
      v73 = 687;
      v75 = "initialize";
      v76 = 1024;
      v77 = 687;
      v78 = 1024;
      v79 = v32;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Warning; initializing a HOA instance with order = %d > 10", buf, 0x28u);
    }

    v34 = 10;
    goto LABEL_41;
  }

LABEL_42:
  a1[2] = v33;
  std::vector<int>::resize((a1 + 20), v33);
  v35 = 0;
  LODWORD(v36) = 0;
  v37 = *a1;
  v38 = a1[76];
  v39 = 1;
  v40.i32[0] = 1.0;
  v41 = *(a1 + 10);
  do
  {
    v42 = sqrtf((v35 * 2.0) + 1.0);
    v36 = v36;
    v43 = v39;
    do
    {
      if (v38)
      {
        if (v38 == 2)
        {
          v44 = 1.0 / (v42 * flt_18F902CA4[v36]);
        }

        else
        {
          v44 = 1.0 / v42;
        }
      }

      else
      {
        v44 = 1.0;
      }

      *(v41 + 4 * v36++) = v44;
      --v43;
    }

    while (v43);
    v39 += 2;
  }

  while (v35++ != v37);
  if (a1[2] != v36)
  {
    __assert_rtn("initialize", "HOA.cpp", 711, "k == mNumChannels");
  }

  *buf = 0;
  std::vector<float>::assign(a1 + 13, (v36 * v36), buf, v40);
  SphericalGrid = HOA::getSphericalGrid(a1[44], *a1, 0, 0, 0);
  a1[6] = SphericalGrid;
  std::vector<int>::resize((a1 + 52), SphericalGrid);
  std::vector<int>::resize(v4, a1[6]);
  std::vector<int>::resize((a1 + 64), a1[6]);
  HOA::getSphericalGrid(a1[44], *a1, *(a1 + 26), *(a1 + 29), *(a1 + 32));
  MEMORY[0x193AE08B0](*(a1 + 26), 1, &kDeg2Radf, *(a1 + 26), 1, a1[6]);
  MEMORY[0x193AE08B0](*(a1 + 29), 1, &kDeg2Radf, *(a1 + 29), 1, a1[6]);
  std::vector<int>::resize((a1 + 70), 3 * a1[6]);
  v47 = a1[6];
  if (v47)
  {
    v48 = *(a1 + 26);
    begin = v4->__begin_;
    v50 = (*(a1 + 35) + 8);
    do
    {
      v51 = *v48++;
      v52 = v51;
      v53 = *begin++;
      v54 = __sincosf_stret(v53);
      v55 = __sincosf_stret(v52);
      *(v50 - 2) = v55.__cosval * v54.__cosval;
      *(v50 - 1) = v55.__sinval * v54.__cosval;
      *v50 = v54.__sinval;
      v50 += 3;
      --v47;
    }

    while (v47);
  }

  if (a1[76] == 2)
  {
    std::vector<int>::resize((a1 + 92), a1[2] * a1[2]);
    v56 = a1[2];
    if (v56)
    {
      v57 = 0;
      v58 = 0;
      v59 = *(a1 + 46);
      v60 = &dword_18F902CE4;
      do
      {
        v61 = v60;
        v62 = v57;
        v63 = v56;
        do
        {
          v64 = *v61++;
          *(v59 + 4 * v62++) = v64;
          --v63;
        }

        while (v63);
        ++v58;
        v57 += v56;
        v60 += 16;
      }

      while (v58 != v56);
    }
  }

  *(a1 + 2) = 0;
  *(a1 + 28) = 1;
  v65 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F7360FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HOA::RotationMatrix *a10, void **a11, void **a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16)
{
  v18 = v16[42];
  if (v18)
  {
    v16[43] = v18;
    operator delete(v18);
  }

  v19 = *a10;
  if (*a10)
  {
    v16[40] = v19;
    operator delete(v19);
  }

  v20 = *(a16 + 200);
  if (v20)
  {
    v16[36] = v20;
    operator delete(v20);
  }

  v21 = *(a16 + 176);
  if (v21)
  {
    v16[33] = v21;
    operator delete(v21);
  }

  v22 = *a15;
  if (*a15)
  {
    v16[30] = v22;
    operator delete(v22);
  }

  v23 = *(a16 + 128);
  if (v23)
  {
    v16[27] = v23;
    operator delete(v23);
  }

  v24 = *a11;
  if (*a11)
  {
    v16[24] = v24;
    operator delete(v24);
  }

  v25 = v16[19];
  if (v25)
  {
    v16[20] = v25;
    operator delete(v25);
  }

  v26 = v16[16];
  if (v26)
  {
    v16[17] = v26;
    operator delete(v26);
  }

  v27 = *(a16 + 24);
  if (v27)
  {
    v16[14] = v27;
    operator delete(v27);
  }

  v28 = *a16;
  if (*a16)
  {
    v16[11] = v28;
    operator delete(v28);
  }

  v29 = v16[7];
  if (v29)
  {
    v16[8] = v29;
    operator delete(v29);
  }

  v30 = *a12;
  if (*a12)
  {
    v16[5] = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void HOA::~HOA(HOA *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v7 = *(this + 29);
  if (v7)
  {
    *(this + 30) = v7;
    operator delete(v7);
  }

  v8 = *(this + 26);
  if (v8)
  {
    *(this + 27) = v8;
    operator delete(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    *(this + 24) = v9;
    operator delete(v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    *(this + 20) = v10;
    operator delete(v10);
  }

  v11 = *(this + 16);
  if (v11)
  {
    *(this + 17) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    operator delete(v14);
  }

  v15 = *(this + 4);
  if (v15)
  {
    *(this + 5) = v15;
    operator delete(v15);
  }
}

uint64_t HOA::sphericalHarmonics(HOA *this, float *a2, const float *a3, uint64_t a4, float *a5)
{
  v189 = *MEMORY[0x1E69E9840];
  if (a5 >= 0xB)
  {
    __assert_rtn("sphericalHarmonics", "HOA.cpp", 1160, "inOrder<=10u");
  }

  v6 = a3;
  v175 = (a5 + 1);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = (&v172 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v174 = (&v172 - ((v13 + 15) & 0x7FFFFFFF0));
  v182 = v14;
  if (v6 >= 1)
  {
    v15 = v6 & 0x7FFFFFFF;
    v16 = v174;
    v17 = v15;
    do
    {
      v18 = *a2++;
      *v16++ = sinf(v18);
      --v15;
    }

    while (v15);
    v6 = v182;
    v12 = v17;
  }

  v181 = this;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v184 = 4 * v12;
  v187 = 4 * v6;
  v22 = 1;
  v23 = v12;
  v24 = v174;
  v179 = a4;
  v173 = v11;
  v180 = v12;
  do
  {
    v177 = v21;
    v183 = v20;
    v25 = 0;
    v185 = v22;
    v186 = v11;
    v188 = v19;
    do
    {
      if (v6 >= 1)
      {
        v26 = powf(-1.0, v25);
        v19 = v188;
        v27 = v26;
        if (v25 >= v188)
        {
          v28 = v188;
        }

        else
        {
          v28 = v25;
        }

        v29 = v24;
        v30 = v186;
        for (i = v23; i; --i)
        {
          v32 = *v29;
          if (v19 <= 4)
          {
            if (v19 <= 1)
            {
              v42 = 1.0;
              if (v19)
              {
                if (v19 == 1)
                {
                  if (v28)
                  {
                    v43 = 1.0 - (v32 * v32);
                    v44 = -fabsf(sqrtf(v43));
                    if (v43 == -INFINITY)
                    {
                      v42 = -INFINITY;
                    }

                    else
                    {
                      v42 = v44;
                    }
                  }

                  else
                  {
                    v42 = *v29;
                  }

                  goto LABEL_213;
                }

LABEL_73:
                v42 = 0.0;
              }
            }

            else
            {
              if (v19 != 2)
              {
                if (v19 != 3)
                {
                  if (v28 <= 1)
                  {
                    if (!v28)
                    {
                      v103 = powf(*v29, 4.0);
                      v19 = v188;
                      v36 = (((v32 * v32) * -30.0) + (v103 * 35.0)) + 3.0;
                      v51 = 0.125;
                      goto LABEL_156;
                    }

                    if (v28 == 1)
                    {
                      v35 = v32 * v32;
                      v36 = (v32 * 2.5) * (((v32 * v32) * -7.0) + 3.0);
                      goto LABEL_116;
                    }

LABEL_145:
                    v36 = (1.0 - (v32 * v32)) * (1.0 - (v32 * v32));
                    *&v102 = 105.0;
LABEL_155:
                    v51 = *&v102;
                    goto LABEL_156;
                  }

                  if (v28 == 2)
                  {
                    v51 = (((v32 * v32) * 7.0) + -1.0) * 7.5;
                    v36 = 1.0 - (v32 * v32);
                    goto LABEL_156;
                  }

                  if (v28 != 3)
                  {
                    goto LABEL_145;
                  }

                  v59 = v32 * -105.0;
                  v60 = powf(1.0 - (v32 * v32), 1.5);
                  v19 = v188;
                  goto LABEL_152;
                }

                if (v28 == 2)
                {
                  v36 = v32 * 15.0;
                  v51 = 1.0 - (v32 * v32);
                  goto LABEL_156;
                }

                if (v28 != 1)
                {
                  if (v28)
                  {
                    v45 = powf(1.0 - (v32 * v32), 1.5);
                    v46 = -15.0;
                  }

                  else
                  {
                    v45 = (v32 * -3.0) + (powf(*v29, 3.0) * 5.0);
                    v46 = 0.5;
                  }

                  goto LABEL_211;
                }

                v74 = (((v32 * v32) * -5.0) + 1.0) * 1.5;
                v75 = 1.0 - (v32 * v32);
                v76 = fabsf(sqrtf(v75));
                v54 = v75 == -INFINITY;
                v77 = INFINITY;
                if (!v54)
                {
                  v77 = v76;
                }

                goto LABEL_150;
              }

              if (v28 == 2)
              {
                v42 = (1.0 - (v32 * v32)) * 3.0;
              }

              else
              {
                if (v28 == 1)
                {
                  v36 = v32 * -3.0;
                  v35 = v32 * v32;
LABEL_116:
                  v78 = 1.0 - v35;
                  v79 = fabsf(sqrtf(v78));
                  v54 = v78 == -INFINITY;
                  v51 = INFINITY;
                  if (!v54)
                  {
                    v51 = v79;
                  }

                  goto LABEL_156;
                }

                v42 = 0.0;
                if (!v28)
                {
                  v36 = ((v32 * v32) * 3.0) + -1.0;
                  v51 = 0.5;
                  goto LABEL_156;
                }
              }
            }
          }

          else if (v19 > 7)
          {
            if (v19 == 8)
            {
              if (v28 <= 3)
              {
                if (v28 <= 1)
                {
                  if (!v28)
                  {
                    v116 = powf(*v29, 8.0);
                    v117 = (powf(v32, 6.0) * -12012.0) + (v116 * 6435.0);
                    v118 = ((v117 + (powf(v32, 4.0) * 6930.0)) + ((v32 * v32) * -1260.0)) + 35.0;
                    goto LABEL_180;
                  }

                  if (v28 == 1)
                  {
                    v52 = 1.0 - (v32 * v32);
                    v53 = fabsf(sqrtf(v52));
                    v54 = v52 == -INFINITY;
                    v55 = INFINITY;
                    if (!v54)
                    {
                      v55 = v53;
                    }

                    v56 = (v32 * -0.5625) * v55;
                    v57 = powf(*v29, 6.0);
                    v58 = (((powf(v32, 4.0) * -1001.0) + (v57 * 715.0)) + ((v32 * v32) * 385.0)) + -35.0;
                    goto LABEL_131;
                  }

LABEL_178:
                  v45 = powf(1.0 - (v32 * v32), 4.0);
                  v46 = 2027000.0;
                  goto LABEL_211;
                }

                if (v28 == 2)
                {
                  v37 = v32 * v32;
                  v38 = (1.0 - (v32 * v32)) * 19.688;
                  v119 = powf(*v29, 6.0);
                  v40 = (powf(v32, 4.0) * -143.0) + (v119 * 143.0);
                  v41 = 33.0;
LABEL_175:
                  v47 = (v40 + (v37 * v41)) + -1.0;
                  goto LABEL_176;
                }

                v48 = (v32 * -433.12) * powf(1.0 - (v32 * v32), 1.5);
                v80 = (((v32 * v32) * -26.0) + (powf(v32, 4.0) * 39.0)) + 3.0;
LABEL_126:
                v42 = v48 * v80;
                goto LABEL_212;
              }

              if (v28 <= 5)
              {
                if (v28 != 4)
                {
                  v61 = v32 * -67568.0;
                  v62 = v32 * v32;
                  v33 = v61 * powf(1.0 - v62, 2.5);
                  v63 = 5.0;
                  goto LABEL_208;
                }

                v68 = ((1.0 - (v32 * v32)) * (1.0 - (v32 * v32))) * 1299.4;
                v69 = (((v32 * v32) * -26.0) + (powf(*v29, 4.0) * 65.0)) + 1.0;
                goto LABEL_185;
              }

              if (v28 == 6)
              {
                v62 = v32 * v32;
                v33 = powf(1.0 - v62, 3.0) * 67568.0;
                v63 = 15.0;
                goto LABEL_208;
              }

              if (v28 != 7)
              {
                goto LABEL_178;
              }

              v48 = v32 * -2027000.0;
              v49 = 1.0 - (v32 * v32);
              v50 = 3.5;
LABEL_125:
              v80 = powf(v49, v50);
              goto LABEL_126;
            }

            if (v19 == 9)
            {
              if (v28 <= 3)
              {
                if (v28 <= 1)
                {
                  if (v28)
                  {
                    if (v28 != 1)
                    {
                      goto LABEL_190;
                    }

                    v64 = 1.0 - (v32 * v32);
                    v65 = fabsf(sqrtf(v64)) * -0.35156;
                    if (v64 == -INFINITY)
                    {
                      v38 = -INFINITY;
                    }

                    else
                    {
                      v38 = v65;
                    }

                    v66 = powf(*v29, 8.0);
                    v67 = (powf(v32, 6.0) * -4004.0) + (v66 * 2431.0);
                    v47 = ((v67 + (powf(v32, 4.0) * 2002.0)) + ((v32 * v32) * -308.0)) + 7.0;
LABEL_176:
                    v42 = v38 * v47;
                    goto LABEL_212;
                  }

                  v120 = powf(*v29, 9.0);
                  v121 = (powf(v32, 7.0) * -25740.0) + (v120 * 12155.0);
                  v122 = v121 + (powf(v32, 5.0) * 18018.0);
                  v118 = (v122 + (powf(v32, 3.0) * -4620.0)) + (v32 * 315.0);
LABEL_180:
                  v42 = v118 * 0.0078125;
                  goto LABEL_212;
                }

                if (v28 != 2)
                {
                  v81 = v32 * v32;
                  v82 = 1.0 - (v32 * v32);
                  v83 = fabsf(sqrtf(v82)) * 216.56;
                  v54 = v82 == -INFINITY;
                  v84 = INFINITY;
                  if (!v54)
                  {
                    v84 = v83;
                  }

                  v56 = (v81 + -1.0) * v84;
                  v85 = powf(*v29, 6.0);
                  v58 = (((powf(v32, 4.0) * -195.0) + (v85 * 221.0)) + (v81 * 39.0)) + -1.0;
LABEL_131:
                  v42 = v58 * v56;
                  goto LABEL_212;
                }

                v68 = ((v32 * v32) + -1.0) * -30.938;
                v123 = powf(*v29, 7.0);
                v124 = (powf(v32, 5.0) * -273.0) + (v123 * 221.0);
                v97 = v124 + (powf(v32, 3.0) * 91.0);
                v98 = -7.0;
LABEL_182:
                v69 = v97 + (v32 * v98);
                goto LABEL_185;
              }

              if (v28 <= 5)
              {
                if (v28 != 4)
                {
                  v86 = v32 * v32;
                  v87 = 1.0 - (v32 * v32);
                  v88 = fabsf(sqrtf(v87)) * -16892.0;
                  if (v87 == -INFINITY)
                  {
                    v89 = -INFINITY;
                  }

                  else
                  {
                    v89 = v88;
                  }

                  v90 = ((v86 + -1.0) * (v86 + -1.0)) * v89;
                  v91 = ((v86 * -30.0) + (powf(*v29, 4.0) * 85.0)) + 1.0;
                  goto LABEL_206;
                }

                v68 = (((v32 * v32) + -1.0) * ((v32 * v32) + -1.0)) * 16892.0;
                v129 = powf(*v29, 5.0);
                v69 = ((powf(v32, 3.0) * -10.0) + (v129 * 17.0)) + v32;
                goto LABEL_185;
              }

              if (v28 != 6)
              {
                if (v28 == 7)
                {
                  v62 = v32 * v32;
                  v130 = fabsf(sqrtf(1.0 - v62)) * 1013500.0;
                  if ((1.0 - v62) == -INFINITY)
                  {
                    v131 = INFINITY;
                  }

                  else
                  {
                    v131 = v130;
                  }

                  v33 = powf(v62 + -1.0, 3.0) * v131;
                  v63 = 17.0;
                  goto LABEL_208;
                }

                if (v28 == 8)
                {
                  v48 = v32 * 34459000.0;
                  v49 = (v32 * v32) + -1.0;
                  v50 = 4.0;
                  goto LABEL_125;
                }

LABEL_190:
                v45 = powf(1.0 - (v32 * v32), 4.5);
                v46 = -34459000.0;
                goto LABEL_211;
              }

              v125 = powf((v32 * v32) + -1.0, 3.0) * -337840.0;
              v126 = powf(v32, 3.0);
              v19 = v188;
              v127 = v32 * -3.0;
              v128 = 17.0;
              goto LABEL_201;
            }

            if (v19 != 10)
            {
              goto LABEL_73;
            }

            if (v28 > 4)
            {
              if (v28 <= 6)
              {
                if (v28 != 5)
                {
                  v68 = powf((v32 * v32) + -1.0, 3.0) * -84459.0;
                  v99 = powf(v32, 4.0);
                  v100 = (v32 * v32) * -102.0;
                  v101 = 323.0;
                  goto LABEL_166;
                }

                v135 = 1.0 - (v32 * v32);
                v136 = fabsf(sqrtf(v135)) * -16892.0;
                if (v135 == -INFINITY)
                {
                  v137 = -INFINITY;
                }

                else
                {
                  v137 = v136;
                }

                v90 = (((v32 * v32) + -1.0) * ((v32 * v32) + -1.0)) * v137;
                v138 = powf(*v29, 5.0);
                v139 = (powf(v32, 3.0) * -170.0) + (v138 * 323.0);
                v140 = 15.0;
LABEL_205:
                v91 = v139 + (v32 * v140);
                goto LABEL_206;
              }

              if (v28 != 7)
              {
                if (v28 != 8)
                {
                  if (v28 == 9)
                  {
                    v48 = v32 * -654730000.0;
                    v49 = 1.0 - (v32 * v32);
                    v50 = 4.5;
                    goto LABEL_125;
                  }

LABEL_210:
                  v45 = powf((v32 * v32) + -1.0, 5.0);
                  v46 = -654730000.0;
                  goto LABEL_211;
                }

                v62 = v32 * v32;
                v33 = powf(v62 + -1.0, 4.0) * 17230000.0;
                v63 = 19.0;
LABEL_208:
                v34 = (v62 * v63) + -1.0;
LABEL_209:
                v42 = v34 * v33;
                goto LABEL_212;
              }

              v144 = 1.0 - (v32 * v32);
              v145 = fabsf(sqrtf(v144)) * 5743200.0;
              if (v144 == -INFINITY)
              {
                v146 = INFINITY;
              }

              else
              {
                v146 = v145;
              }

              v125 = powf((v32 * v32) + -1.0, 3.0) * v146;
              v126 = powf(v32, 3.0);
              v19 = v188;
              v127 = v32 * -3.0;
              v128 = 19.0;
LABEL_201:
              v42 = (v127 + (v126 * v128)) * v125;
              goto LABEL_213;
            }

            if (v28 <= 1)
            {
              if (!v28)
              {
                v132 = powf(*v29, 10.0);
                v133 = (powf(v32, 8.0) * -109400.0) + (v132 * 46189.0);
                v134 = v133 + (powf(v32, 6.0) * 90090.0);
                v45 = ((v134 + (powf(v32, 4.0) * -30030.0)) + ((v32 * v32) * 3465.0)) + -63.0;
                v46 = 0.0039062;
                goto LABEL_211;
              }

              if (v28 != 1)
              {
                goto LABEL_210;
              }

              v92 = 1.0 - (v32 * v32);
              v93 = fabsf(sqrtf(v92)) * -0.42969;
              if (v92 == -INFINITY)
              {
                v68 = -INFINITY;
              }

              else
              {
                v68 = v93;
              }

              v94 = powf(*v29, 9.0);
              v95 = (powf(v32, 7.0) * -7956.0) + (v94 * 4199.0);
              v96 = v95 + (powf(v32, 5.0) * 4914.0);
              v97 = v96 + (powf(v32, 3.0) * -1092.0);
              v98 = 63.0;
              goto LABEL_182;
            }

            if (v28 != 2)
            {
              if (v28 == 3)
              {
                v147 = 1.0 - (v32 * v32);
                v148 = fabsf(sqrtf(v147)) * 402.19;
                v54 = v147 == -INFINITY;
                v149 = INFINITY;
                if (!v54)
                {
                  v149 = v148;
                }

                v90 = ((v32 * v32) + -1.0) * v149;
                v150 = powf(*v29, 7.0);
                v151 = (powf(v32, 5.0) * -357.0) + (v150 * 323.0);
                v139 = v151 + (powf(v32, 3.0) * 105.0);
                v140 = -7.0;
                goto LABEL_205;
              }

              v37 = v32 * v32;
              v38 = (((v32 * v32) + -1.0) * ((v32 * v32) + -1.0)) * 2815.3;
              v39 = powf(*v29, 6.0);
              v40 = (powf(v32, 4.0) * -255.0) + (v39 * 323.0);
              v41 = 45.0;
              goto LABEL_175;
            }

            v141 = powf(*v29, 8.0);
            v142 = (powf(v32, 6.0) * -6188.0) + (v141 * 4199.0);
            v143 = powf(v32, 4.0);
            v19 = v188;
            v42 = (((v32 * v32) + -1.0) * -3.8672) * (((v142 + (v143 * 2730.0)) + ((v32 * v32) * -364.0)) + 7.0);
          }

          else
          {
            if (v19 == 5)
            {
              if (v28 <= 1)
              {
                if (v28)
                {
                  if (v28 == 1)
                  {
                    v70 = 1.0 - (v32 * v32);
                    v71 = fabsf(sqrtf(v70)) * -1.875;
                    if (v70 == -INFINITY)
                    {
                      v72 = -INFINITY;
                    }

                    else
                    {
                      v72 = v71;
                    }

                    v73 = powf(*v29, 4.0);
                    v19 = v188;
                    v42 = ((((v32 * v32) * -14.0) + (v73 * 21.0)) + 1.0) * v72;
                    goto LABEL_213;
                  }

LABEL_153:
                  v36 = powf(1.0 - (v32 * v32), 2.5);
                  v19 = v188;
                  v51 = -945.0;
LABEL_156:
                  v42 = v36 * v51;
                  goto LABEL_213;
                }

                v59 = v32 * 0.125;
                v106 = powf(*v29, 4.0);
                v19 = v188;
                v60 = (((v32 * v32) * -70.0) + (v106 * 63.0)) + 15.0;
LABEL_152:
                v42 = v59 * v60;
                goto LABEL_213;
              }

              switch(v28)
              {
                case 2:
                  v77 = (v32 * 52.5) * (1.0 - (v32 * v32));
                  v74 = ((v32 * v32) * 3.0) + -1.0;
                  break;
                case 3:
                  v104 = v32 * v32;
                  v105 = powf(1.0 - v104, 1.5);
                  v19 = v188;
                  v77 = v105 * -52.5;
                  v74 = (v104 * 9.0) + -1.0;
                  break;
                case 4:
                  v36 = v32 * 945.0;
                  v51 = (1.0 - (v32 * v32)) * (1.0 - (v32 * v32));
                  goto LABEL_156;
                default:
                  goto LABEL_153;
              }

LABEL_150:
              v42 = v74 * v77;
              goto LABEL_213;
            }

            if (v19 == 6)
            {
              if (v28 > 2)
              {
                switch(v28)
                {
                  case 3:
                    v42 = powf(1.0 - (v32 * v32), 1.5) * (((((v32 * v32) * 11.0) + -3.0) * -157.5) * v32);
                    goto LABEL_212;
                  case 4:
                    v46 = ((1.0 - (v32 * v32)) * (1.0 - (v32 * v32))) * 472.5;
                    v45 = ((v32 * v32) * 11.0) + -1.0;
                    goto LABEL_211;
                  case 5:
                    v48 = v32 * -10395.0;
                    v49 = 1.0 - (v32 * v32);
                    v50 = 2.5;
                    goto LABEL_125;
                }

                goto LABEL_158;
              }

              if (v28)
              {
                if (v28 == 1)
                {
                  v45 = (v32 * -2.625) * ((((v32 * v32) * -30.0) + (powf(*v29, 4.0) * 33.0)) + 5.0);
                  v109 = 1.0 - (v32 * v32);
                  v110 = fabsf(sqrtf(v109));
                  v54 = v109 == -INFINITY;
                  v46 = INFINITY;
                  if (!v54)
                  {
                    v46 = v110;
                  }

                  goto LABEL_211;
                }

                if (v28 == 2)
                {
                  v38 = (1.0 - (v32 * v32)) * 13.125;
                  v47 = (((v32 * v32) * -18.0) + (powf(*v29, 4.0) * 33.0)) + 1.0;
                  goto LABEL_176;
                }

LABEL_158:
                v45 = powf(1.0 - (v32 * v32), 3.0);
                v46 = 10395.0;
                goto LABEL_211;
              }

              v107 = powf(*v29, 6.0);
              v108 = powf(v32, 4.0);
              v19 = v188;
              v36 = (((v108 * -315.0) + (v107 * 231.0)) + ((v32 * v32) * 105.0)) + -5.0;
              *&v102 = 0.0625;
              goto LABEL_155;
            }

            if (v28 > 2)
            {
              if (v28 <= 4)
              {
                if (v28 != 3)
                {
                  v33 = (v32 * 1732.5) * ((1.0 - (v32 * v32)) * (1.0 - (v32 * v32)));
                  v34 = ((v32 * v32) * 13.0) + -3.0;
                  goto LABEL_209;
                }

                v68 = powf(1.0 - (v32 * v32), 1.5) * -39.375;
                v99 = powf(v32, 4.0);
                v100 = (v32 * v32) * -66.0;
                v101 = 143.0;
LABEL_166:
                v69 = (v100 + (v99 * v101)) + 3.0;
LABEL_185:
                v42 = v68 * v69;
                goto LABEL_212;
              }

              if (v28 == 5)
              {
                v62 = v32 * v32;
                v33 = powf(1.0 - v62, 2.5) * -5197.5;
                v63 = 13.0;
                goto LABEL_208;
              }

              if (v28 != 6)
              {
                goto LABEL_164;
              }

              v48 = v32 * 135140.0;
              v49 = 1.0 - (v32 * v32);
              v50 = 3.0;
              goto LABEL_125;
            }

            if (v28)
            {
              if (v28 != 1)
              {
                if (v28 == 2)
                {
                  v68 = (v32 * 7.875) * (1.0 - (v32 * v32));
                  v69 = (((v32 * v32) * -110.0) + (powf(*v29, 4.0) * 143.0)) + 15.0;
                  goto LABEL_185;
                }

LABEL_164:
                v45 = powf(1.0 - (v32 * v32), 3.5);
                v46 = -135140.0;
LABEL_211:
                v42 = v45 * v46;
LABEL_212:
                v19 = v188;
                goto LABEL_213;
              }

              v113 = 1.0 - (v32 * v32);
              v114 = fabsf(sqrtf(v113)) * -0.4375;
              if (v113 == -INFINITY)
              {
                v90 = -INFINITY;
              }

              else
              {
                v90 = v114;
              }

              v115 = powf(*v29, 6.0);
              v91 = (((powf(v32, 4.0) * -495.0) + (v115 * 429.0)) + ((v32 * v32) * 135.0)) + -5.0;
LABEL_206:
              v42 = v91 * v90;
              goto LABEL_212;
            }

            v111 = (powf(*v29, 6.0) * 429.0);
            v112 = powf(v32, 4.0);
            v19 = v188;
            v42 = (v111 + v112 * -693.0 + ((v32 * v32) * 315.0) + -35.0) * (v32 * 0.0625);
          }

LABEL_213:
          *v30++ = v27 * v42;
          ++v29;
        }
      }

      v152 = v185;
      v186 = (v186 + v184);
      ++v25;
    }

    while (v25 != v185);
    result = v177;
    v154 = v177 + v19;
    v155 = v183;
    v156 = v183;
    do
    {
      while (1)
      {
        v157 = v156 >= 0 ? v156 : -v156;
        if (v6 >= 1)
        {
          break;
        }

        if (v152 == ++v156)
        {
          v161 = v19 + 1;
          goto LABEL_231;
        }
      }

      v158 = 0;
      v159 = sqrtf((((v19 * 2.0) + 1.0) * flt_18F9030E4[v19 - v157]) * flt_18F903138[(v157 + v19)]);
      v160 = &v11[(v157 * v6)];
      do
      {
        *(a4 + 4 * (v154 + v156) * v6 + 4 * v158) = v159 * *&v160[4 * v158];
        ++v158;
      }

      while (v23 != v158);
      ++v156;
    }

    while (v152 != v156);
    v162 = 0;
    v176 = v19 + 1;
    v186 = (a4 + v187 * (v19 + 1 + result));
    v178 = v6 * result;
    do
    {
      v163 = v181;
      v164 = v182;
      v165 = v183;
      if (v19)
      {
        v166 = 0;
        v167 = v178;
        v168 = v186;
        v169 = v188;
        v170 = v179 + 4 * v162;
        do
        {
          *v168 = *v168 * (cosf(*(v163 + v162) * ++v166) * 1.4142);
          *(v170 + 4 * v167) = *(v170 + 4 * v167) * (sinf(-(*(v163 + v162) * v169--)) * 1.4142);
          v168 = (v168 + v187);
          v167 += v164;
        }

        while (v165 + v166);
      }

      ++v162;
      ++v186;
      v23 = v180;
      v19 = v188;
    }

    while (v162 != v180);
    a4 = v179;
    v6 = v182;
    v155 = v183;
    v11 = v173;
    v24 = v174;
    result = v177;
    v152 = v185;
    v161 = v176;
LABEL_231:
    v21 = result + 2 * v19 + 1;
    v22 = v152 + 1;
    v20 = v155 - 1;
    v19 = v161;
  }

  while (v161 != v175);
  v171 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F737A58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HOA::createDecoder(unsigned int *a1, uint64_t *a2, uint64_t *a3)
{
  v399 = *MEMORY[0x1E69E9840];
  if ((a1[7] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *v374 = 136315906;
    *__N = "HOA.cpp";
    *&__N[8] = 1024;
    *&__N[10] = 948;
    *&__N[14] = 2080;
    *&__N[16] = "createDecoder";
    *&__N[24] = 1024;
    *&__N[26] = 948;
    v44 = MEMORY[0x1E69E9C10];
    v45 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_40:
    _os_log_impl(&dword_18F5DF000, v44, OS_LOG_TYPE_ERROR, v45, v374, 0x22u);
    goto LABEL_41;
  }

  v4 = a2[1] - *a2;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *v374 = 136315906;
    *__N = "HOA.cpp";
    *&__N[8] = 1024;
    *&__N[10] = 953;
    *&__N[14] = 2080;
    *&__N[16] = "createDecoder";
    *&__N[24] = 1024;
    *&__N[26] = 953;
    v44 = MEMORY[0x1E69E9C10];
    v45 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Empty azimuth/elevation";
    goto LABEL_40;
  }

  if (v4 != a3[1] - *a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v374 = 136315906;
      *__N = "HOA.cpp";
      *&__N[8] = 1024;
      *&__N[10] = 958;
      *&__N[14] = 2080;
      *&__N[16] = "createDecoder";
      *&__N[24] = 1024;
      *&__N[26] = 958;
      v44 = MEMORY[0x1E69E9C10];
      v45 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent azimuth/elevation size";
      goto LABEL_40;
    }

LABEL_41:
    v46 = 4294967246;
    goto LABEL_42;
  }

  v7 = v4 >> 2;
  a1[5] = v7;
  std::vector<int>::resize((a1 + 32), v7);
  std::vector<int>::resize((a1 + 38), a1[5]);
  MEMORY[0x193AE08B0](*a2, 1, &kDeg2Radf, *(a1 + 16), 1, a1[5]);
  *&v8 = MEMORY[0x193AE08B0](*a3, 1, &kDeg2Radf, *(a1 + 19), 1, a1[5]);
  v9 = a1[2] * a1[5];
  *v374 = 0;
  std::vector<float>::assign(a1 + 7, v9, v374, v8);
  if (!*a1)
  {
    v51 = a1[5];
    if (v51)
    {
      *v10.i32 = 1.0 / sqrtf(v51);
      v52 = (v51 + 3) & 0x1FFFFFFFCLL;
      v53 = vdupq_n_s64(v51 - 1);
      v54 = (*(a1 + 7) + 8);
      v55 = 1;
      do
      {
        v56 = vdupq_n_s64(v55 - 1);
        v57 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_18F9016C0)));
        if (vuzp1_s16(v57, v10).u8[0])
        {
          *(v54 - 2) = v10.i32[0];
        }

        if (vuzp1_s16(v57, v10).i8[2])
        {
          *(v54 - 1) = v10.i32[0];
        }

        if (vuzp1_s16(v10, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_18F9016B0)))).i32[1])
        {
          *v54 = v10.i32[0];
          v54[1] = v10.i32[0];
        }

        v55 += 4;
        v54 += 4;
        v52 -= 4;
      }

      while (v52);
    }

    else
    {
      LODWORD(v52) = 0;
    }

    v46 = 0;
    goto LABEL_351;
  }

  v343 = 0;
  v344 = 0;
  v342 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v342, *a2, a2[1], (a2[1] - *a2) >> 2);
  v339 = 0;
  v340 = 0;
  v341 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v339, *a3, a3[1], (a3[1] - *a3) >> 2);
  v336 = 0;
  v337 = 0;
  v338 = 0;
  v333 = 0;
  v334 = 0;
  v335 = 0;
  v11 = v339;
  *v374 = 1;
  *__N = (v340 - v339) >> 2;
  memset(&__N[4], 0, 32);
  v376 = 0u;
  std::vector<float>::vector[abi:ne200100](&__A, (3 * *__N));
  std::vector<float>::vector[abi:ne200100](&v379, 6uLL);
  __src = 0u;
  v382 = 0u;
  v381 = 0u;
  v380 = 0u;
  v384 = 0;
  v385[0] = v385;
  v385[1] = v385;
  v385[2] = 0;
  v386[0] = v386;
  v386[1] = v386;
  v386[2] = 0;
  std::__list_imp<ID3FrameInfo>::clear(v385);
  std::__list_imp<ID3FrameInfo>::clear(v386);
  v395 = 0;
  v387 = 0u;
  v388 = 0u;
  v389 = 0u;
  v390 = 0u;
  v391 = 0;
  if (*__N)
  {
    v12 = v342;
    if (*__N == (v343 - v342) >> 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = *&__N[4];
      *&__N[12] = *&__N[4];
      do
      {
        v16 = v12[v14];
        v17 = v11[v14];
        if (v15 >= *&__N[20])
        {
          v18 = *&__N[4];
          v19 = v15 - *&__N[4];
          v20 = (v15 - *&__N[4]) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v22 = *&__N[20] - *&__N[4];
          if ((*&__N[20] - *&__N[4]) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v20;
          v25 = (8 * v20);
          *v25 = v16;
          v25[1] = v17;
          v15 = (8 * v20 + 8);
          v26 = &v25[-2 * v24];
          memcpy(v26, v18, v19);
          *&__N[4] = v26;
          *&__N[12] = v15;
          *&__N[20] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v15 = v16;
          v15[1] = v17;
          v15 += 2;
          v12 = v342;
          v11 = v339;
        }

        *&__N[12] = v15;
        v27 = __A;
        v28 = &__A[v13];
        v29 = *&v12[v14] * 0.0174532925;
        v30 = __sincos_stret(*&v11[v14] * 0.0174532925);
        v31 = __sincos_stret(v29);
        v32 = v31.__cosval * v30.__cosval;
        v33 = v31.__sinval * v30.__cosval;
        *v28 = v32;
        v28[1] = v33;
        sinval = v30.__sinval;
        v28[2] = sinval;
        ++v14;
        v13 += 3;
      }

      while (v14 < *__N);
      v35 = (v378 - v27) >> 2;
      std::vector<float>::vector[abi:ne200100](buf, v35 / 3);
      std::vector<float>::vector[abi:ne200100](&__C, v35 / 3);
      std::vector<float>::vector[abi:ne200100](&__p, v35 / 3);
      v36 = *buf;
      v37 = *&__C.f64[0];
      v38 = __p;
      if (v35 >= 3)
      {
        v39 = 0;
        v40 = 2;
        v41 = __A;
        do
        {
          *(v36 + v39) = v41[v40 - 2];
          v37[v39] = v41[v40 - 1];
          v38[v39++] = v41[v40];
          v40 += 3;
        }

        while (v35 / 3 > v39);
      }

      duplicate_vertex = VBAP::find_duplicate_vertex(v36, v37, v38, (v35 / 3));
      if (__p)
      {
        v373 = __p;
        operator delete(__p);
      }

      if (*&__C.f64[0])
      {
        __C.f64[1] = __C.f64[0];
        operator delete(*&__C.f64[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (duplicate_vertex)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "VBAP.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 121;
          *&buf[18] = 2080;
          *&buf[20] = "initialize";
          *&buf[28] = 1024;
          *&buf[30] = 121;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Duplicate vertices were found", buf, 0x22u);
        }

        goto LABEL_228;
      }

      if (*&__N[12] - *&__N[4] == 16)
      {
        LODWORD(__C.f64[0]) = 0;
        vDSP_distancesq(__A, 1, __A + 3, 1, &__C, 3uLL);
        *v43.i32 = fabsf(*__C.f64 + -4.0);
        if (*v43.i32 < 0.00001)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "VBAP.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 130;
            *&buf[18] = 2080;
            *&buf[20] = "initialize";
            *&buf[28] = 1024;
            *&buf[30] = 130;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d CADSPUtility:%s:%d: Diametrically opposed speakers; No need to generate convex hull", buf, 0x22u);
          }

          LOBYTE(v395) = 1;
          goto LABEL_227;
        }

        LOBYTE(v395) = 0;
      }

      if (*__N == 1)
      {
        v394 = 1;
        *buf = 0;
        std::vector<float>::resize(&v379, 0, buf, v43);
        goto LABEL_227;
      }

      v58 = v378 - __A;
      v59 = ((v378 - __A) >> 2) / 3uLL;
      std::vector<double>::vector[abi:ne200100](buf, v59);
      std::vector<double>::vector[abi:ne200100](&__C, v59);
      std::vector<double>::vector[abi:ne200100](&__p, v59);
      v67 = *buf;
      v68 = *&__C.f64[0];
      v69 = __p;
      if ((v58 >> 2) >= 3)
      {
        v71 = 0;
        if (v59 <= 1)
        {
          v72 = 1;
        }

        else
        {
          v72 = v59;
        }

        v73 = __A + 2;
        v74 = 8 * v72;
        do
        {
          v67[v71 / 8] = *(v73 - 2);
          v68[v71 / 8] = *(v73 - 1);
          v75 = *v73;
          v73 += 3;
          v76 = v75;
          v69[v71 / 8] = v75;
          v71 += 8;
        }

        while (v74 != v71);
        v70 = CDelaunayTriangles3D::check_coplanar(v67, v68, v69, v59, v76, v61, v62, v63, v64, v65, v66);
      }

      else
      {
        v70 = CDelaunayTriangles3D::check_coplanar(*buf, *&__C.f64[0], __p, v59, v60, v61, v62, v63, v64, v65, v66);
        if (!v69)
        {
LABEL_75:
          if (v68)
          {
            *&__C.f64[1] = v68;
            operator delete(v68);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          v394 = v70;
          v351 = 0;
          v352 = 0;
          v353 = 0;
          if (v70)
          {
            *v374 = 0;
            __dst = 0;
            v349 = 0;
            v350 = 0;
            v345 = 0;
            v346 = 0;
            v347 = 0;
          }

          else
          {
            vDSP_meanv(__A, 3, &v345, *__N);
            vDSP_meanv(__A + 1, 3, &v345 + 1, *__N);
            vDSP_meanv(__A + 2, 3, &v346, *__N);
            std::vector<float>::vector[abi:ne200100](&__dst, (3 * *__N));
            if (*__N)
            {
              v96 = 0;
              v97 = 0;
              do
              {
                MEMORY[0x193AE08D0](&v345, 1, &__A[v96], 1, __dst + 4 * v96, 1, 3);
                ++v97;
                v96 += 3;
              }

              while (v97 < *__N);
            }

            v98 = VBAP::delaunayTriangulation(v374, &__dst, &v336, &v333);
            if (v98)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "VBAP.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 162;
                *&buf[18] = 2080;
                *&buf[20] = "initialize";
                *&buf[28] = 1024;
                *&buf[30] = 162;
                _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP error, Delaunay triangulation issue", buf, 0x22u);
              }

              is_origin_inside_hull = 0;
            }

            else
            {
              v115 = v378 - __A;
              v116 = ((v378 - __A) >> 2) / 3uLL;
              std::vector<double>::vector[abi:ne200100](buf, v116);
              std::vector<double>::vector[abi:ne200100](&__C, v116);
              std::vector<double>::vector[abi:ne200100](&__p, v116);
              v118 = *buf;
              v119 = *&__C.f64[0];
              v120 = __p;
              if ((v115 >> 2) >= 3)
              {
                if (v116 <= 1)
                {
                  v121 = 1;
                }

                else
                {
                  v121 = v116;
                }

                v122 = __A + 2;
                v123 = *buf;
                v124 = *&__C.f64[0];
                v125 = __p;
                do
                {
                  *v123++ = *(v122 - 2);
                  *v124++ = *(v122 - 1);
                  v126 = *v122;
                  v122 += 3;
                  v117 = v126;
                  *v125++ = v126;
                  --v121;
                }

                while (v121);
              }

              is_origin_inside_hull = CDelaunayTriangles3D::is_origin_inside_hull(v118, v119, v120, &v387, &v351, *&v117);
              if (__p)
              {
                v373 = __p;
                operator delete(__p);
              }

              if (*&__C.f64[0])
              {
                __C.f64[1] = __C.f64[0];
                operator delete(*&__C.f64[0]);
              }

              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }
            }

            if (__dst)
            {
              v349 = __dst;
              operator delete(__dst);
            }

            if (v98)
            {
              v127 = 0;
              goto LABEL_224;
            }

            __dst = 0;
            v349 = 0;
            v350 = 0;
            v345 = 0;
            v346 = 0;
            v347 = 0;
            if (*v374 == 1)
            {
              VBAP::calculateVirtualLoudspeakersPolygon(v374, &v351, &__dst, &v345);
              if (*(&__src + 1) == __src)
              {
                *v374 = 0;
                *buf = 0;
                std::vector<float>::assign(&v379, 6uLL, buf, v128);
              }
            }

            if (*v374)
            {
              goto LABEL_166;
            }

            if (is_origin_inside_hull)
            {
              std::vector<int>::resize(&v379, 0);
              goto LABEL_166;
            }

            v70 = v394;
          }

          v370 = 0.0;
          v371 = 0.0;
          v368 = 0.0;
          v369 = 0;
          v366 = 0;
          v367 = 0.0;
          v364 = 0;
          v365 = 0.0;
          v362 = 0;
          v363 = 0;
          v360 = 0;
          v361 = 0;
          v358 = 0;
          v359 = 0.0;
          v77 = *__N;
          if (v70)
          {
            v356 = 0.0;
            __B = 0.0;
            v355 = 0.0;
            __C.f64[0] = 0.0;
            std::vector<double>::vector[abi:ne200100](buf, (*__N + 1));
            __p = 0;
            std::vector<double>::vector[abi:ne200100](&__C, (*__N + 1));
            v354 = 0;
            std::vector<double>::vector[abi:ne200100](&__p, (*__N + 1));
            v78 = *__N;
            v79 = *buf;
            if (*__N)
            {
              v80 = 0;
              v81 = __A;
              v82 = *&__C.f64[0];
              v83 = 3 * *__N;
              v84 = *buf;
              v85 = __p;
              do
              {
                *v84++ = v81[v80];
                *v82++ = v81[(v80 + 1)];
                *v85++ = v81[(v80 + 2)];
                v80 += 3;
              }

              while (v83 != v80);
            }

            vDSP_meanvD(v79, 1, &__B, (v78 + 1));
            vDSP_meanvD(*&__C.f64[0], 1, &v356, (*__N + 1));
            vDSP_meanvD(__p, 1, &v355, (*__N + 1));
            v356 = -v356;
            __B = -__B;
            v355 = -v355;
            vDSP_vsaddD(*buf, 1, &__B, *buf, 1, (*__N + 1));
            vDSP_vsaddD(*&__C.f64[0], 1, &v356, *&__C.f64[0], 1, (*__N + 1));
            vDSP_vsaddD(__p, 1, &v355, __p, 1, (*__N + 1));
            v86 = __C.f64[0];
            v87 = __p;
            v95 = CDelaunayTriangles3D::check_coplanar(*buf, *&__C.f64[0], __p, (*__N + 1), v88, v89, v90, v91, v92, v93, v94);
            if (v87)
            {
              v373 = v87;
              operator delete(v87);
              v86 = __C.f64[0];
            }

            if (v86 != 0.0)
            {
              __C.f64[1] = v86;
              operator delete(*&v86);
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            v77 = *__N;
            if (v95)
            {
              if (*__N >= 3u)
              {
                std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](*__N);
              }

              vDSP_meanv(__A, 3, &v370, *__N);
              vDSP_meanv(__A + 1, 3, &v370 + 1, *__N);
              vDSP_meanv(__A + 2, 3, &v371, *__N);
              for (i = 0; i != 12; i += 4)
              {
                *(&v368 + i) = -*(&v370 + i);
              }

              v133 = *__N;
              if (*__N > 1u)
              {
                v134 = 1;
                v135 = 3;
                v136 = __A;
                v137 = vdup_n_s32(0x3727C5ACu);
                do
                {
                  v138 = 0;
                  v139 = v135;
                  do
                  {
                    v140 = *(&v370 + v138 * 4);
                    v366.f32[v138] = v140 + v136[v138];
                    v364.f32[v138++] = v140 + v136[v139++];
                  }

                  while (v138 != 3);
                  v141 = vcvtq_f64_f32(v366);
                  v130.f64[0] = v367;
                  v142 = vcvtq_f64_f32(v364);
                  v131.f64[0] = v365;
                  v143 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v130), v142, 1), v131, v141, 1);
                  v131.f64[1] = v142.f64[0];
                  v130.f64[1] = v141.f64[0];
                  v131 = vmlaq_f64(vmulq_f64(v131, vnegq_f64(v141)), v142, v130);
                  v144 = vcvt_f32_f64(vzip1q_s64(v143, v131));
                  *&v142.f64[0] = vcgt_f32(v137, vabs_f32(v144));
                  if ((LODWORD(v142.f64[0]) & HIDWORD(v142.f64[0]) & 1) == 0)
                  {
                    break;
                  }

                  ++v134;
                  v135 += 3;
                  v145 = v131.f64[1];
                }

                while (fabsf(v145) < 0.00001 && v134 != v133);
                v358 = v144;
                v359 = v131.f64[1];
              }

              for (j = 0; j != 3; ++j)
              {
                v148 = *(&v368 + j * 4);
                v149 = v358.f32[j];
                *(&v362 + j * 4) = v148 + v149;
                *(&v360 + j * 4) = v148 - v149;
              }

              VBAP::lineUnitSphereIntersection(&v362, &v360, v379.__begin_, v129);
              goto LABEL_166;
            }
          }

          vDSP_meanv(__A, 3, &v370, v77);
          vDSP_meanv(__A + 1, 3, &v370 + 1, *__N);
          vDSP_meanv(__A + 2, 3, &v371, *__N);
          if (((fabsf(*&v370) + fabsf(*(&v370 + 1))) + fabsf(v371)) >= 0.00003)
          {
            for (k = 0; k != 12; k += 4)
            {
              *(&v368 + k) = -*(&v370 + k);
            }

            VBAP::lineUnitSphereIntersection(&v370, &v368, v379.__begin_, v100);
            if (v394)
            {
LABEL_108:
              v103 = v379.__end_ - v379.__begin_;
              if (v103 >= 3)
              {
                v104 = 0;
                LODWORD(v105) = 0;
                v106 = v103 / 3;
                do
                {
                  if (*__N)
                  {
                    v107 = 0;
                    while (((vabds_f32(*&v379.__begin_[(3 * v105)], __A[v107]) + vabds_f32(*&v379.__begin_[(3 * v105 + 1)], __A[(v107 + 1)])) + vabds_f32(*&v379.__begin_[(3 * v105 + 2)], __A[(v107 + 2)])) >= 0.00000035763)
                    {
                      v107 += 3;
                      if (3 * *__N == v107)
                      {
                        goto LABEL_119;
                      }
                    }

                    v108 = v104;
                    v109 = v104 >> 2;
                    if (((v104 >> 2) + 1) >> 62)
                    {
                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    if (v104 >> 2 != -1)
                    {
                      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100]((v104 >> 2) + 1);
                    }

                    *(4 * v109) = v105;
                    v104 = 4 * v109 + 4;
                    memcpy(0, 0, v108);
                  }

LABEL_119:
                  v105 = (v105 + 1);
                }

                while (v106 > v105);
                if (v104)
                {
                  v110 = 0;
                  v111 = 1;
                  end = v379.__end_;
                  do
                  {
                    v113 = &v379.__begin_[3 * *(4 * v110)];
                    v114 = end - (v113 + 3);
                    if (end != v113 + 3)
                    {
                      memmove(&v379.__begin_[3 * *(4 * v110)], v113 + 3, end - (v113 + 3));
                    }

                    end = (v113 + v114);
                    v379.__end_ = (v113 + v114);
                    v110 = v111++;
                  }

                  while (v110 < v104 >> 2);
                }
              }

LABEL_166:
              v393 = (v379.__end_ - v379.__begin_) / 3uLL;
              std::vector<int>::resize((&v381 + 8), v393);
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&__N[28], __A, v378, (v378 - __A) >> 2);
              std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(v379.__begin_, v379.__end_, &__N[28]);
              if (*v374 != 1)
              {
                goto LABEL_220;
              }

              v150 = __dst;
              v151 = v349;
              if (v349 == __dst)
              {
                goto LABEL_220;
              }

              v152 = 0;
              v153 = 0;
              while (1)
              {
                v154 = &v345[6 * v152];
                if (*(v154 + 1) - *v154 <= 0xCuLL)
                {
                  v155 = 0;
                  *&buf[8] = 0;
                  *buf = 0;
                  v156 = *v154;
                  v157 = 0.0;
                  v158 = 0.0;
                  v159 = 0.0;
                  do
                  {
                    v160 = 3 * *(v156 + v155);
                    v157 = *(*&__N[28] + 4 * v160) + v157;
                    *buf = v157;
                    v158 = *(*&__N[28] + 4 * (v160 + 1)) + v158;
                    *&buf[4] = v158;
                    v159 = *(*&__N[28] + 4 * (v160 + 2)) + v159;
                    *&buf[8] = v159;
                    v155 += 4;
                  }

                  while (v155 != 12);
                  LODWORD(__C.f64[0]) = 0;
                  vDSP_dotpr(buf, 1, v150[3 * v152], 1, &__C, 3uLL);
                  if (*__C.f64 <= 0.0)
                  {
                    for (m = 0; m != 12; m += 4)
                    {
                      vDSP_meanv((*&__N[28] + m), 3, (&__p + m), ((v376 - *&__N[28]) >> 2) / 3uLL);
                    }

                    v366.i32[0] = 0;
                    vDSP_sve(&__p, 1, &v366, 3uLL);
                    v366.f32[0] = 1.0 / sqrtf(v366.f32[0]);
                    MEMORY[0x193AE08B0](&__p, 1, &v366, &__C, 1, 3);
                    v364.f32[0] = -v366.f32[0];
                    MEMORY[0x193AE08B0](&__p, 1, &v364, &__C.f64[1] + 4, 1, 3);
                    vDSP_distancesq(&__p, 1, &__C, 1, &v368, 3uLL);
                    vDSP_distancesq(&__p, 1, &__C.f64[1] + 1, 1, &v368 + 1, 3uLL);
                    v162 = v345;
                    if (v346 == v345)
                    {
                      v176 = 0;
                    }

                    else
                    {
                      v163 = 0;
                      v164 = 0;
                      v165 = 0;
                      if (*&v368 <= *(&v368 + 1))
                      {
                        p_C = &__C.f64[1] + 1;
                      }

                      else
                      {
                        p_C = &__C;
                      }

                      v167 = 3.4028e38;
                      do
                      {
                        v168 = 0;
                        *&buf[8] = 0;
                        *buf = 0;
                        v169 = &v162[6 * v163];
                        v170 = *v169;
                        v171 = ((*(v169 + 1) - *v169) >> 2);
                        v172 = 0.0;
                        v173 = 0.0;
                        v174 = 0.0;
                        do
                        {
                          v175 = 3 * *(v170 + v168);
                          v172 = v172 + (*(*&__N[28] + 4 * v175) / v171);
                          *buf = v172;
                          v173 = v173 + (*(*&__N[28] + 4 * (v175 + 1)) / v171);
                          *&buf[4] = v173;
                          v174 = v174 + (*(*&__N[28] + 4 * (v175 + 2)) / v171);
                          *&buf[8] = v174;
                          v168 += 4;
                        }

                        while (v168 != 12);
                        vDSP_distancesq(p_C, 1, buf, 1, &v368, 3uLL);
                        if (*&v368 < v167)
                        {
                          v370 = *buf;
                          v371 = *&buf[8];
                          v164 = v165;
                          v167 = *&v368;
                        }

                        v162 = v345;
                        v163 = ++v165;
                      }

                      while (0xAAAAAAAAAAAAAAABLL * ((v346 - v345) >> 3) > v165);
                      v176 = v164;
                    }

                    v177 = &v162[6 * v176];
                    if ((v177[1] - *v177) <= 0xC)
                    {
                      v178 = *(&__src + 1);
                      if (*(&__src + 1) >= v384)
                      {
                        v180 = 0xAAAAAAAAAAAAAAABLL * ((*(&__src + 1) - __src) >> 3);
                        if (v180 + 1 > 0xAAAAAAAAAAAAAAALL)
                        {
                          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                        }

                        v181 = 0x5555555555555556 * ((v384 - __src) >> 3);
                        if (v181 <= v180 + 1)
                        {
                          v181 = v180 + 1;
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((v384 - __src) >> 3) >= 0x555555555555555)
                        {
                          v182 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v182 = v181;
                        }

                        *&buf[32] = &__src;
                        if (v182)
                        {
                          std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](v182);
                        }

                        v183 = (8 * ((*(&__src + 1) - __src) >> 3));
                        *buf = 0;
                        *&buf[8] = v183;
                        *&buf[16] = v183;
                        *&buf[24] = 0;
                        *v183 = 0;
                        v183[1] = 0;
                        v183[2] = 0;
                        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(24 * v180, *v177, v177[1], (v177[1] - *v177) >> 2);
                        v179 = *&buf[16] + 24;
                        v184 = (*&buf[8] - (*(&__src + 1) - __src));
                        memcpy(v184, __src, *(&__src + 1) - __src);
                        v185 = __src;
                        v186 = v384;
                        *&__src = v184;
                        *(&__src + 1) = v179;
                        v384 = *&buf[24];
                        *&buf[16] = v185;
                        *&buf[24] = v186;
                        *buf = v185;
                        *&buf[8] = v185;
                        std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(buf);
                      }

                      else
                      {
                        **(&__src + 1) = 0;
                        *(v178 + 8) = 0;
                        *(v178 + 16) = 0;
                        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v178, *v177, v177[1], (v177[1] - *v177) >> 2);
                        v179 = v178 + 24;
                      }

                      *(&__src + 1) = v179;
                      MEMORY[0x193AE07B0](*(__dst + 3 * v176), 1, &v370, 1, buf, 1, 3);
                      MEMORY[0x193AE08D0](*(__dst + 3 * v176), 1, &v370, 1, &buf[12], 1, 3);
                      VBAP::lineUnitSphereIntersection(buf, &buf[12], &__C, v187);
                      vDSP_distancesq(&__p, 1, &__C, 1, &v368, 3uLL);
                      vDSP_distancesq(&__p, 1, &__C.f64[1] + 1, 1, &v368 + 1, 3uLL);
                      std::vector<int>::resize(&v379, v379.__end_ - v379.__begin_ + 3);
                      if (*(&v368 + 1) > *&v368)
                      {
                        v188 = (&__C.f64[1] + 4);
                      }

                      else
                      {
                        v188 = &__C;
                      }

                      v189 = &v399;
                      if (*(&v368 + 1) <= *&v368)
                      {
                        v189 = &__C.f64[1] + 4;
                      }

                      memmove(v379.__end_ - 3, v188, v189 - v188);
                      v190 = *(&v380 + 1);
                      if (*(&v380 + 1) >= v381)
                      {
                        v192 = v380;
                        v193 = *(&v380 + 1) - v380;
                        v194 = (*(&v380 + 1) - v380) >> 2;
                        v195 = v194 + 1;
                        if ((v194 + 1) >> 62)
                        {
                          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                        }

                        v196 = v381 - v380;
                        if ((v381 - v380) >> 1 > v195)
                        {
                          v195 = v196 >> 1;
                        }

                        if (v196 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v197 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v197 = v195;
                        }

                        if (v197)
                        {
                          std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v197);
                        }

                        v198 = (4 * v194);
                        v199 = &v198[-((*(&v380 + 1) - v380) >> 2)];
                        *v198 = 1065353216;
                        v191 = v198 + 1;
                        memcpy(v199, v192, v193);
                        v200 = v380;
                        *&v380 = v199;
                        *(&v380 + 1) = v191;
                        *&v381 = 0;
                        if (v200)
                        {
                          operator delete(v200);
                        }
                      }

                      else
                      {
                        **(&v380 + 1) = 1065353216;
                        v191 = (v190 + 4);
                      }

                      *(&v380 + 1) = v191;
                      ++v393;
                      std::vector<int>::resize((&v381 + 8), ((v382 - *(&v381 + 1)) >> 2) + 1);
                      std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(v379.__end_ - 3, v379.__end_, &__N[28]);
                    }

LABEL_220:
                    v201 = VBAP::delaunayTriangulation(v374, &__N[28], &v336, &v333);
                    v127 = v201 == 0;
                    if (v201 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "VBAP.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 203;
                      *&buf[18] = 2080;
                      *&buf[20] = "initialize";
                      *&buf[28] = 1024;
                      *&buf[30] = 203;
                      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP error; Delaunay triangulation issue", buf, 0x22u);
                    }

                    *buf = &v345;
                    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
                    *buf = &__dst;
                    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_224:
                    if (v351)
                    {
                      operator delete(v351);
                    }

                    if (v127)
                    {
LABEL_227:
                      HIBYTE(v395) = 1;
                      goto LABEL_231;
                    }

LABEL_228:
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "VBAP.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 35;
                      *&buf[18] = 2080;
                      *&buf[20] = "VBAP";
                      *&buf[28] = 1024;
                      *&buf[30] = 35;
                      v49 = MEMORY[0x1E69E9C10];
                      v50 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Initialization Error; Check for duplicate vertices";
                      goto LABEL_230;
                    }

                    goto LABEL_231;
                  }

                  v150 = __dst;
                  v151 = v349;
                }

                v152 = ++v153;
                if (0xAAAAAAAAAAAAAAABLL * ((v151 - v150) >> 3) <= v153)
                {
                  goto LABEL_220;
                }
              }
            }

            v101 = 3;
          }

          else
          {
            v101 = 0;
          }

          std::vector<int>::resize(&v379, v101);
          goto LABEL_108;
        }
      }

      v373 = v69;
      operator delete(v69);
      v68 = *&__C.f64[0];
      goto LABEL_75;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_231;
  }

  *buf = 136315906;
  *&buf[4] = "VBAP.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 40;
  *&buf[18] = 2080;
  *&buf[20] = "VBAP";
  *&buf[28] = 1024;
  *&buf[30] = 40;
  v49 = MEMORY[0x1E69E9C10];
  v50 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Initialization Error; Empty or inconsistent vertex set";
LABEL_230:
  _os_log_impl(&dword_18F5DF000, v49, OS_LOG_TYPE_ERROR, v50, buf, 0x22u);
LABEL_231:
  *buf = &v333;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v336)
  {
    v337 = v336;
    operator delete(v336);
  }

  if (v339)
  {
    v340 = v339;
    operator delete(v339);
  }

  if (v342)
  {
    v343 = v342;
    operator delete(v342);
  }

  if ((v395 & 0x100) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HOA.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1029;
      *&buf[18] = 2080;
      *&buf[20] = "createDecoder";
      *&buf[28] = 1024;
      *&buf[30] = 1029;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; VBAP object was not initialized", buf, 0x22u);
    }

    VBAP::~VBAP(v374);
    goto LABEL_41;
  }

  v202 = 216 * a1[2];
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&v351, v202);
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&__dst, 0xD8uLL);
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&v345, 0xD8uLL);
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&v336, 0x288uLL);
  v203 = __dst;
  if (__dst)
  {
    v204 = v345;
    if (v345)
    {
      memcpy(__dst, &unk_18F9049E4, 0x360uLL);
      memcpy(v204, &unk_18F904D44, 0x360uLL);
    }
  }

  MEMORY[0x193AE08B0](v203, 1, &kDeg2Radf, v203, 1, 216);
  MEMORY[0x193AE08B0](v345, 1, &kDeg2Radf, v345, 1, 216);
  HOA::sphericalHarmonics(__dst, v345, 0xD8, v351, *a1);
  v205 = 0;
  v206 = __dst;
  v207 = v345;
  v208 = (v336 + 8);
  do
  {
    v209 = *&v206[v205 * 4];
    v210 = __sincosf_stret(v207[v205]);
    v211 = __sincosf_stret(v209);
    *(v208 - 2) = v211.__cosval * v210.__cosval;
    *(v208 - 1) = v211.__sinval * v210.__cosval;
    *v208 = v210.__sinval;
    v208 += 3;
    ++v205;
  }

  while (v205 != 216);
  if (a1[76] == 2)
  {
    std::vector<float>::vector[abi:ne200100](buf, 216 * a1[2]);
    vDSP_mmul(*(a1 + 46), 1, v351, 1, *buf, 1, a1[2], 0xD8uLL, a1[2]);
    v212 = *buf;
    if (*&buf[8] != *buf)
    {
      memmove(v351, *buf, *&buf[8] - *buf);
      v212 = *buf;
    }

    if (v212)
    {
      *&buf[8] = v212;
      operator delete(v212);
    }
  }

  v364.i32[0] = 999797798;
  std::vector<float>::vector[abi:ne200100](&v333, (*(a1 + 11) - *(a1 + 10)) >> 2);
  vDSP_svdiv(&v364, *(a1 + 10), 1, v333, 1, a1[2]);
  for (n = 0; n != 216; ++n)
  {
    MEMORY[0x193AE0840](v333, 1, &v351[n], 216, &v351[n], 216, a1[2]);
  }

  v322 = v351;
  v214 = v336;
  vDSP_vclr(*(a1 + 7), 1, a1[2] * a1[5]);
  std::vector<float>::vector[abi:ne200100](&__p, a1[5]);
  v215 = 0;
  __asm
  {
    FMOV            V1.2D, #1.0
    FMOV            V0.2D, #0.5
  }

  v323 = _Q0;
  v324 = _Q1;
  while (1)
  {
    if ((v395 & 0x100) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 568;
        *&buf[18] = 2080;
        *&buf[20] = "calculateVBAPGains";
        *&buf[28] = 1024;
        *&buf[30] = 568;
        v315 = MEMORY[0x1E69E9C10];
        v316 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain if the VBAP object is not initialized";
LABEL_359:
        _os_log_impl(&dword_18F5DF000, v315, OS_LOG_TYPE_ERROR, v316, buf, 0x22u);
        v46 = 4294967246;
        goto LABEL_336;
      }

      goto LABEL_360;
    }

    v221 = &v214[12 * v215];
    v222 = __p;
    if (v221->f32[0] == 0.0 && v221->f32[1] == 0.0 && v221[1].f32[0] == 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 574;
        *&buf[18] = 2080;
        *&buf[20] = "calculateVBAPGains";
        *&buf[28] = 1024;
        *&buf[30] = 574;
        v315 = MEMORY[0x1E69E9C10];
        v316 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain for a source location [0, 0, 0]";
        goto LABEL_359;
      }

LABEL_360:
      v46 = 4294967246;
      goto LABEL_336;
    }

    vDSP_vclr(__p, 1, *__N);
    vDSP_vclr(*(&v381 + 1), 1, (v382 - *(&v381 + 1)) >> 2);
    v223 = vcvtq_f64_f32(*v221);
    v224.f64[0] = v221[1].f32[0];
    v225 = vmulq_f64(v224, v224);
    v225.f64[0] = 1.0 / sqrt(v225.f64[0] + vaddvq_f64(vmulq_f64(v223, v223)));
    v226 = vmulq_f64(v224, v225);
    v227 = vmulq_n_f64(v223, v225.f64[0]);
    v228 = vextq_s8(v227, v227, 8uLL).u64[0];
    if (v395 != 1)
    {
      break;
    }

    v223.f64[0] = __A[2];
    v225.f64[0] = __A[5];
    *&v227.f64[1] = v228;
    *v222 = vcvt_f32_f64(vsqrtq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v226, v223), vmulq_f64(v226, v225)), vpaddq_f64(vmulq_f64(v227, vcvtq_f64_f32(*__A)), vmulq_f64(v227, vcvtq_f64_f32(*(__A + 3))))), v324), v323)));
LABEL_268:
    v237 = a1[5];
    if (v237)
    {
      v238 = 0;
      for (ii = 0; ii < v237; ++ii)
      {
        MEMORY[0x193AE0890](&v322[v215], 216, __p + v238, *(a1 + 7) + v238, v237, *(a1 + 7) + v238, v237, a1[2]);
        v237 = a1[5];
        v238 += 4;
      }
    }

    if (++v215 == 216)
    {
      v46 = 0;
      goto LABEL_338;
    }
  }

  if (*__N < 2u)
  {
    *v222 = 1.0;
    goto LABEL_268;
  }

  if ((v395 & 0x100) != 0)
  {
    v319 = v228;
    v320 = v227.f64[0];
    v321 = v226;
    subtriangle_containment = CDelaunayTriangles3D::find_subtriangle_containment(v392, COERCE_FLOAT(*v221), COERCE_FLOAT(HIDWORD(*v221)), v224.f64[0]);
    if ((subtriangle_containment & 0x80000000) == 0 && 0xAAAAAAAAAAAAAAABLL * ((*(&v390 + 1) - v390) >> 3) > subtriangle_containment)
    {
      __C = vcvtq_f64_f32(*v221);
      v398 = v221[1].f32[0];
      v230 = v390 + 24 * subtriangle_containment;
      for (jj = *(v230 + 8); jj != v230; jj = *(jj + 8))
      {
        v232 = *(jj + 16);
        *buf = 0;
        v233 = 9 * v232;
        vDSP_dotprD((*(&v388 + 1) + 72 * v232), 1, __C.f64, 1, buf, 3uLL);
        if (*buf > -0.00000011920929)
        {
          v370 = 0.0;
          vDSP_dotprD((*(&v388 + 1) + 8 * v233 + 24), 1, __C.f64, 1, &v370, 3uLL);
          if (v370 > -0.00000011920929)
          {
            v368 = 0.0;
            vDSP_dotprD((*(&v388 + 1) + 8 * v233 + 48), 1, __C.f64, 1, &v368, 3uLL);
            if (v368 > -0.00000011920929)
            {
              v240 = 0;
              v241 = (v387 + 12 * v232);
              v242 = *&__N[28] + 12 * *v241;
              v243 = *v242;
              LODWORD(v234.f64[0]) = *(v242 + 8);
              v244 = *&__N[28] + 12 * v241[1];
              v245 = *v244;
              LODWORD(v235.f64[0]) = *(v244 + 8);
              v246 = (*&__N[28] + 12 * v241[2]);
              v247 = vcvtq_f64_f32(v243);
              v234.f64[0] = *v234.f64;
              v251 = vcvtq_f64_f32(v245);
              v235.f64[0] = *v235.f64;
              v254 = vcvtq_f64_f32(*v246);
              v236.f64[0] = v246[1].f32[0];
              v248 = vmulq_f64(v234, v235).f64[0] + vaddvq_f64(vmulq_f64(v247, v251));
              v249 = vaddq_f64(vzip1q_s64(vmulq_f64(v235, v236), vmulq_f64(v234, v236)), vpaddq_f64(vmulq_f64(v251, v254), vmulq_f64(v247, v254)));
              v250 = vdivq_f64(vmlaq_n_f64(vnegq_f64(vextq_s8(v249, v249, 8uLL)), v249, v248), vdupq_lane_s64(COERCE__INT64(1.0 - v248 * v248), 0));
              *&v251.f64[1] = vextq_s8(v251, v251, 8uLL).u64[0];
              *&v252 = v247.f64[0];
              *(&v252 + 1) = vextq_s8(v247, v247, 8uLL).u64[0];
              v253 = 0uLL;
              *&v254.f64[1] = vextq_s8(v254, v254, 8uLL).u64[0];
              v255 = 0uLL;
              v256 = 0uLL;
              v257 = 0uLL;
              do
              {
                v332[0] = v251;
                v332[1] = v235;
                v258 = *(v332 + (v240 & 3));
                v331[0] = v252;
                v331[1] = v234;
                v259 = *(v331 + (v240 & 3));
                v329 = v256;
                v330 = v257;
                v329.f64[v240 & 3] = v258 - v259 * v248;
                v256 = v329;
                v257.f64[0] = v330.f64[0];
                v260 = v255;
                v261 = v250.f64[1] * v258;
                v328[0] = v254;
                v328[1] = v236;
                v262 = *(v328 + (v240 & 3));
                v326 = v253;
                v327 = v260;
                v326.f64[v240 & 3] = v262 + v261 + v250.f64[0] * v259;
                v253 = v326;
                v255.f64[0] = v327.f64[0];
                v255.f64[1] = v260.f64[1];
                ++v240;
              }

              while (v240 != 3);
              v263.f64[0] = v320;
              *&v263.f64[1] = v319;
              v264 = vmulq_f64(v257, v257).f64[0] + vaddvq_f64(vmulq_f64(v256, v256));
              v265 = 0.0;
              if (v264 >= 0.00000999999975)
              {
                v265 = (vmulq_f64(v321, v257).f64[0] + vaddvq_f64(vmulq_f64(v263, v256))) / v264;
              }

              v266 = vmulq_f64(v321, v234).f64[0] + vaddvq_f64(vmulq_f64(v263, v247));
              v267 = vmulq_f64(v255, v255);
              v267.f64[0] = v267.f64[0] + vaddvq_f64(vmulq_f64(v326, v326));
              _NF = v267.f64[0] < 0.00000999999975;
              v267.f64[0] = (vmulq_f64(v321, v255).f64[0] + vaddvq_f64(vmulq_f64(v263, v326))) / v267.f64[0];
              if (_NF)
              {
                v267.f64[0] = 0.0;
              }

              v268.f64[0] = v266 - v265 * v248;
              v268.f64[1] = v265;
              v269 = vmlaq_n_f64(v268, v250, v267.f64[0]);
              v270 = vmulq_f64(v267, v267).f64[0] + vaddvq_f64(vmulq_f64(v269, v269));
              v271 = 0uLL;
              v272 = 0uLL;
              if (v270 > 0.00000999999975)
              {
                v273 = 1.0 / sqrt(v270);
                v271 = vmulq_n_f64(v269, v273);
                *&v272 = v267.f64[0] * v273;
              }

              v274 = 0;
              v275 = *__N;
              v276 = *(&v381 + 1);
              v271.i64[1] = vextq_s8(v271, v271, 8uLL).u64[0];
              do
              {
                v277 = v241[v274];
                v325[0] = v271;
                v325[1] = v272;
                v278 = *(v325 + (v274 & 3));
                if (v277 >= v275)
                {
                  v280 = v277 - v275;
                  v281 = v278 + *(v276 + 4 * v280);
                  *(v276 + 4 * v280) = v281;
                }

                else
                {
                  v279 = v278;
                  v222[v277] = v279;
                }

                ++v274;
              }

              while (v274 != 3);
              *&buf[8] = 0;
              *buf = 0;
              v282 = 0;
              if (v275)
              {
                v283 = v222;
                v284 = v275;
                do
                {
                  if (*v283 >= 0.00001)
                  {
                    *&buf[4 * v282++] = *v283;
                  }

                  else
                  {
                    *v283 = 0.0;
                  }

                  ++v283;
                  --v284;
                }

                while (v284);
              }

              LODWORD(__C.f64[1]) = 0;
              __C.f64[0] = 0.0;
              v285 = v393;
              if (v393)
              {
                v286 = 0;
                v287 = 1;
                v288 = *(&v381 + 1);
                do
                {
                  if (*v288 >= 0.00001)
                  {
                    *(__C.f64 + v286++) = *v288;
                  }

                  else
                  {
                    *v288 = 0;
                  }

                  ++v288;
                  v289 = v285 > v287++;
                }

                while (v289);
                v370 = 0.0;
                if (!v282 && v286 == 1)
                {
                  v290 = COERCE_DOUBLE(vcvt_f32_f64(vdivq_f64(xmmword_18F901800, vdupq_lane_s64(COERCE__INT64(sqrt(v275) * *__C.f64), 0))));
                  goto LABEL_310;
                }

                if (v282 || v286 != 2)
                {
                  if (v282 == 1 && v286 == 1)
                  {
                    v293 = sqrtf((v275 + (-(*buf * v275) * *buf)) + (*buf * *buf));
                    v294.f32[0] = *buf - v293;
                    v294.f32[1] = *buf + v293;
                    *v271.i32 = *__C.f64 * v275;
                    v292 = COERCE_DOUBLE(vneg_f32(v294));
                  }

                  else
                  {
                    if (v282 == 1 && v286 == 2)
                    {
                      v307 = *buf;
                      v308 = *__C.f64 * v275;
                      v309 = *(__C.f64 + 1) * v275;
                      v310 = sqrtf(((((((*__C.f64 * v308) + ((*__C.f64 + *__C.f64) * *(__C.f64 + 1))) + (v309 * *(__C.f64 + 1))) + (((v307 * v307) * *__C.f64) * *__C.f64)) + (((v307 * v307) * *(__C.f64 + 1)) * *(__C.f64 + 1))) + ((*__C.f64 * (v307 * -(v307 * v275))) * *__C.f64)) + ((*(__C.f64 + 1) * (v307 * -(v307 * v275))) * *(__C.f64 + 1)));
                      v311 = (((*__C.f64 + *__C.f64) * *(__C.f64 + 1)) + (v308 * *__C.f64)) + (v309 * *(__C.f64 + 1));
                      *&v370 = -((v310 + (v307 * *__C.f64)) + (v307 * *(__C.f64 + 1))) / v311;
                      *(&v370 + 1) = -((*buf * *(__C.f64 + 1)) - (v310 - (*buf * *__C.f64))) / v311;
                      goto LABEL_311;
                    }

                    if (v282 != 2 || v286 != 1)
                    {
                      goto LABEL_311;
                    }

                    v312 = sqrtf(((((v275 + ((*buf + *buf) * *&buf[4])) + (-(*buf * v275) * *buf)) + (-(*&buf[4] * v275) * *&buf[4])) + (*buf * *buf)) + (*&buf[4] * *&buf[4]));
                    v313.f32[0] = (*buf + *&buf[4]) - v312;
                    v313.f32[1] = (*buf + *&buf[4]) + v312;
                    *v271.i32 = *__C.f64 * v275;
                    v292 = COERCE_DOUBLE(vneg_f32(v313));
                  }

                  *v271.i8 = vdup_lane_s32(*v271.i8, 0);
                  goto LABEL_309;
                }

                *v271.i32 = sqrtf(((((*__C.f64 * (*__C.f64 * v275)) + ((*__C.f64 + *__C.f64) * *(__C.f64 + 1))) + ((*(__C.f64 + 1) * v275) * *(__C.f64 + 1))) + (*__C.f64 * *__C.f64)) + (*(__C.f64 + 1) * *(__C.f64 + 1)));
                *v271.i8 = vdup_lane_s32(*v271.i8, 0);
                __asm { FMOV            V1.2S, #1.0 }

                v292 = -_D1;
LABEL_309:
                v290 = COERCE_DOUBLE(vdiv_f32(*&v292, *v271.i8));
LABEL_310:
                v370 = v290;
              }

              else
              {
                v370 = 0.0;
              }

LABEL_311:
              LODWORD(v368) = 0;
              vDSP_maxv(&v370, 1, &v368, 2uLL);
              if (*v374)
              {
                v295 = 0;
                v296 = *__N;
                v297 = __src;
                v298 = *(&v381 + 1);
                v299 = v380;
                do
                {
                  v300 = v241[v295];
                  _CF = v300 >= v296;
                  v301 = v300 - v296;
                  if (_CF)
                  {
                    v302 = *(v297 + 24 * v301);
                    v303 = *(v297 + 24 * v301 + 8) - v302;
                    if (v303)
                    {
                      v304 = v303 >> 2;
                      v305 = 1;
                      do
                      {
                        v306 = *v302++;
                        v222[v306] = v222[v306] + ((*(v298 + 4 * v301) / v304) / *(v299 + 4 * v301));
                        v289 = v304 > v305++;
                      }

                      while (v289);
                    }
                  }

                  ++v295;
                }

                while (v295 != 3);
              }

              else
              {
                v366.i32[0] = 0;
                vDSP_sve(*(&v381 + 1), 1, &v366, v393);
                v366.f32[0] = *&v368 * v366.f32[0];
                MEMORY[0x193AE0870](v222, 1, &v366, v222, 1, *__N);
                v296 = *__N;
              }

              v366.i32[0] = 0;
              vDSP_svesq(v222, 1, &v366, v296);
              v366.f32[0] = 1.0 / sqrtf(v366.f32[0]);
              MEMORY[0x193AE08B0](v222, 1, &v366, v222, 1, *__N);
              goto LABEL_268;
            }
          }
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 355;
        *&buf[18] = 2080;
        *&buf[20] = "triangleLookup";
        *&buf[28] = 1024;
        *&buf[30] = 355;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error", buf, 0x22u);
      }

      v46 = 4294964151;
      goto LABEL_334;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 328;
      *&buf[18] = 2080;
      *&buf[20] = "triangleLookup";
      *&buf[28] = 1024;
      *&buf[30] = 328;
      v317 = MEMORY[0x1E69E9C10];
      v318 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error";
      goto LABEL_363;
    }

LABEL_364:
    v46 = 4294967246;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_364;
    }

    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 322;
    *&buf[18] = 2080;
    *&buf[20] = "triangleLookup";
    *&buf[28] = 1024;
    *&buf[30] = 322;
    v317 = MEMORY[0x1E69E9C10];
    v318 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; VBAP object not initialized";
LABEL_363:
    _os_log_impl(&dword_18F5DF000, v317, OS_LOG_TYPE_ERROR, v318, buf, 0x22u);
    v46 = 4294967246;
  }

LABEL_334:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 608;
    *&buf[18] = 2080;
    *&buf[20] = "calculateVBAPGains";
    *&buf[28] = 1024;
    *&buf[30] = 608;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup failed", buf, 0x22u);
  }

LABEL_336:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "HOA.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 863;
    *&buf[18] = 2080;
    *&buf[20] = "createALLRAD";
    *&buf[28] = 1024;
    *&buf[30] = 863;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; VBAP calculation error", buf, 0x22u);
  }

LABEL_338:
  if (__p)
  {
    v373 = __p;
    operator delete(__p);
  }

  if (v333)
  {
    v334 = v333;
    operator delete(v333);
  }

  if (v336)
  {
    v337 = v336;
    operator delete(v336);
  }

  if (v345)
  {
    v346 = v345;
    operator delete(v345);
  }

  if (__dst)
  {
    v349 = __dst;
    operator delete(__dst);
  }

  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  VBAP::~VBAP(v374);
  LODWORD(v52) = *a1;
LABEL_351:
  if (a1[1] != v52)
  {
    v314 = a1[5] * a1[3];
    *v374 = 0;
    std::vector<float>::resize(a1 + 7, v314, v374, v10);
  }

LABEL_42:
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}