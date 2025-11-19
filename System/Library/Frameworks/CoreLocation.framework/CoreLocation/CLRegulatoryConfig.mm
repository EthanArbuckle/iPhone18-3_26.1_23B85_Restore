@interface CLRegulatoryConfig
- (BOOL)addConfigForIsoList:(id)a3 config:(id)a4 error:(id *)a5;
- (BOOL)addConfigForRegionList:(id)a3 config:(id)a4 error:(id *)a5;
- (BOOL)setExtendedBorderDetection:(BOOL)a3 withExtendedDistance:(int)a4;
- (CLRegulatoryConfig)initWithQueue:(id)a3 defaultConfig:(id)a4;
- (void)fetchConfigForLocation:(id)a3 withReply:(id)a4;
- (void)fetchInfoForLocation:(id)a3 withReply:(id)a4;
@end

@implementation CLRegulatoryConfig

- (CLRegulatoryConfig)initWithQueue:(id)a3 defaultConfig:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLRegulatoryConfig;
  if ([(CLRegulatoryConfig *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addConfigForIsoList:(id)a3 config:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  if (!a3 || (v9 = [a3 count], !a4) || !v9)
  {
    v35 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kCLErrorDomainPrivate" code:7 userInfo:0];
    result = 0;
    *a5 = v35;
    goto LABEL_81;
  }

  ptr = self->_config.__ptr_;
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], a4, 1uLL);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = [a3 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v39)
  {
    goto LABEL_79;
  }

  v38 = *v45;
  do
  {
    v11 = 0;
    do
    {
      if (*v45 != v38)
      {
        objc_enumerationMutation(a3);
      }

      v12 = *(*(&v44 + 1) + 8 * v11);
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        sub_19B8759E8(__src, [v12 UTF8String]);
        if (SHIBYTE(v43) < 0)
        {
          if (__src[1])
          {
            sub_19B874C9C(__p, __src[0], __src[1]);
LABEL_28:
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
            }

            v16 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v17 = __p;
              if (v41 < 0)
              {
                v17 = __p[0];
              }

              *buf = 136315138;
              v52 = v17;
              _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#clreg,addConfigForIso,%s", buf, 0xCu);
            }

            v18 = sub_19B87DD40();
            if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED519088 != -1)
              {
                dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
              }

              v19 = __p;
              if (v41 < 0)
              {
                v19 = __p[0];
              }

              v49 = 136315138;
              v50 = v19;
              v20 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForIso(std::string, NSDictionary *)", "CoreLocation: %s\n", v20);
              if (v20 != buf)
              {
                free(v20);
              }
            }

            v21 = DeepCopy;
            v22 = sub_19B90E7DC(__p);
            v23 = v22;
            v24 = *(ptr + 8);
            if (!*&v24)
            {
              goto LABEL_72;
            }

            v25 = vcnt_s8(v24);
            v25.i16[0] = vaddlv_u8(v25);
            v26 = v25.u32[0];
            if (v25.u32[0] > 1uLL)
            {
              v27 = v22;
              if (v22 >= *&v24)
              {
                v27 = v22 % *&v24;
              }
            }

            else
            {
              v27 = (*&v24 - 1) & v22;
            }

            v31 = *(*ptr + 8 * v27);
            if (!v31 || (v32 = *v31) == 0)
            {
LABEL_72:
              operator new();
            }

            while (1)
            {
              v33 = v32[1];
              if (v33 == v23)
              {
                if (sub_19B90EC2C(v32 + 2, __p))
                {
                  v32[5] = v21;
                  if (SHIBYTE(v41) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  goto LABEL_75;
                }
              }

              else
              {
                if (v26 > 1)
                {
                  if (v33 >= *&v24)
                  {
                    v33 %= *&v24;
                  }
                }

                else
                {
                  v33 &= *&v24 - 1;
                }

                if (v33 != v27)
                {
                  goto LABEL_72;
                }
              }

              v32 = *v32;
              if (!v32)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (HIBYTE(v43))
        {
          *__p = *__src;
          v41 = v43;
          goto LABEL_28;
        }

        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v28 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForIsoList,emptyIso,ignoring", buf, 2u);
        }

        v29 = sub_19B87DD40();
        if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          LOWORD(v49) = 0;
          v30 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForIsoList(CLRegulatoryIsoList, NSDictionary *)", "CoreLocation: %s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

LABEL_75:
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__src[0]);
        }
      }

      else
      {
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v13 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForIsoList,invalidArgs,ignoring", buf, 2u);
        }

        v14 = sub_19B87DD40();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          LOWORD(__src[0]) = 0;
          v15 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForIsoList(CLRegulatoryIsoList, NSDictionary *)", "CoreLocation: %s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }

      ++v11;
    }

    while (v11 != v39);
    v39 = [a3 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v39);
LABEL_79:
  result = 1;
LABEL_81:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)addConfigForRegionList:(id)a3 config:(id)a4 error:(id *)a5
{
  v76 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  if (!a3 || (v9 = [a3 count], !a4) || !v9)
  {
    v55 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kCLErrorDomainPrivate" code:7 userInfo:0];
    result = 0;
    *a5 = v55;
    goto LABEL_66;
  }

  ptr = self->_config.__ptr_;
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], a4, 1uLL);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = a3;
  v11 = [a3 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v11)
  {
    goto LABEL_64;
  }

  v12 = *v60;
  do
  {
    v13 = 0;
    do
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v59 + 1) + 8 * v13);
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v14 radius];
        if (v15 > 0.0)
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
          }

          v16 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            [v14 center];
            v18 = v17;
            [v14 center];
            v20 = v19;
            [v14 radius];
            *buf = 134218496;
            v71 = v18;
            v72 = 2048;
            v73 = v20;
            v74 = 2048;
            v75 = v21;
            _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#clreg,addConfigForCircularRegion,%.6f,%.6f,%.2f", buf, 0x20u);
          }

          v22 = sub_19B87DD40();
          if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
            }

            [v14 center];
            v24 = v23;
            [v14 center];
            v26 = v25;
            [v14 radius];
            v64 = 134218496;
            v65 = v24;
            v66 = 2048;
            v67 = v26;
            v68 = 2048;
            v69 = v27;
            v28 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForCircularRegion(CLCircularRegion *, NSDictionary *)", "CoreLocation: %s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          [v14 center];
          v30 = v29;
          [v14 center];
          v32 = v31;
          [v14 radius];
          v34 = v33;
          v35 = DeepCopy;
          v36 = *(ptr + 6);
          v37 = *(ptr + 7);
          if (v36 >= v37)
          {
            v44 = *(ptr + 5);
            v45 = v36 - v44;
            v46 = (v36 - v44) >> 5;
            v47 = v46 + 1;
            if ((v46 + 1) >> 59)
            {
              sub_19B8B8A40();
            }

            v48 = v37 - v44;
            if (v48 >> 4 > v47)
            {
              v47 = v48 >> 4;
            }

            if (v48 >= 0x7FFFFFFFFFFFFFE0)
            {
              v49 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              if (!(v49 >> 59))
              {
                operator new();
              }

              sub_19B8B8AB0();
            }

            v50 = v46;
            v51 = (32 * v46);
            *v51 = v30;
            v51[1] = v32;
            v51[2] = v34;
            v51[3] = v35;
            v38 = 32 * v46 + 32;
            v52 = &v51[-4 * v50];
            memcpy(v52, v44, v45);
            *(ptr + 5) = v52;
            *(ptr + 6) = v38;
            *(ptr + 7) = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *v36 = v30;
            *(v36 + 1) = v32;
            *(v36 + 2) = v34;
            v38 = (v36 + 32);
            *(v36 + 3) = v35;
          }

          *(ptr + 6) = v38;
          goto LABEL_59;
        }

        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v42 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForCircularRegionList,invalidRadius,ignoring", buf, 2u);
        }

        v43 = sub_19B87DD40();
        if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 == -1)
          {
LABEL_35:
            LOWORD(v64) = 0;
            v41 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::addConfigForCircularRegionList(CLRegulatoryCircularRegionList, NSDictionary *)", "CoreLocation: %s\n", v41);
            if (v41 != buf)
            {
              free(v41);
            }

            goto LABEL_59;
          }

LABEL_61:
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          goto LABEL_35;
        }
      }

      else
      {
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v39 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,addConfigForCircularRegionList,invalidArgs,ignoring", buf, 2u);
        }

        v40 = sub_19B87DD40();
        if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 == -1)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }
      }

LABEL_59:
      ++v13;
    }

    while (v11 != v13);
    v53 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    v11 = v53;
  }

  while (v53);
LABEL_64:
  result = 1;
LABEL_66:
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchConfigForLocation:(id)a3 withReply:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  ptr = self->_config.__ptr_;
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v26 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEFAULT, "#clreg,fetchConfigForLocation,#warning,location is nil", buf, 2u);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      *v68 = 0;
      v28 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchConfigForLocation(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v24 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    v25 = sub_19B909F68;
    goto LABEL_41;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    [a3 coordinate];
    v9 = v8;
    [a3 coordinate];
    v11 = v10;
    [a3 horizontalAccuracy];
    *buf = 134546177;
    *&buf[4] = v9;
    *&buf[12] = 2053;
    *&buf[14] = v11;
    *&buf[22] = 2053;
    v73 = v12;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#clreg,fetchConfigForLocation,%{sensitive}.6f,%{sensitive}.6f,%{sensitive}.2f", buf, 0x20u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    [a3 coordinate];
    v15 = v14;
    [a3 coordinate];
    v17 = v16;
    [a3 horizontalAccuracy];
    *v68 = 134546177;
    *&v68[4] = v15;
    *&v68[12] = 2053;
    *&v68[14] = v17;
    *&v68[22] = 2053;
    v69 = v18;
    v19 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchConfigForLocation(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  [a3 horizontalAccuracy];
  if (v20 < 0.0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v21 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "#clreg,fetchConfigForLocation,#warning,invalidAccuracy", buf, 2u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      *v68 = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchConfigForLocation(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v24 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    v25 = sub_19B909F7C;
LABEL_41:
    *&buf[16] = v25;
    v73 = &unk_1E753D9F0;
    *&v74 = a4;
    *(&v74 + 1) = ptr;
LABEL_42:
    v29 = buf;
LABEL_43:
    dispatch_async(v24, v29);
    goto LABEL_44;
  }

  v32 = *(ptr + 5);
  v31 = *(ptr + 6);
  if (v32 != v31)
  {
    while (1)
    {
      [a3 coordinate];
      v34 = v33;
      [a3 coordinate];
      v36 = sub_19B87E164(v34, v35, *v32, v32[1]);
      v37 = v32[2];
      [a3 horizontalAccuracy];
      if (v36 < v37 + v38)
      {
        break;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v39 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        v40 = *v32;
        v41 = *(v32 + 1);
        v42 = *(v32 + 2);
        *buf = 134546433;
        *&buf[4] = v40;
        *&buf[12] = 2053;
        *&buf[14] = v41;
        *&buf[22] = 2049;
        v73 = v42;
        LOWORD(v74) = 2053;
        *(&v74 + 2) = v36;
        _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEBUG, "#clreg,fetchRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,notFound", buf, 0x2Au);
      }

      v43 = sub_19B87DD40();
      if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
        }

        v62 = *v32;
        v64 = *(v32 + 1);
        v66 = *(v32 + 2);
        v44 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      v32 += 4;
      if (v32 == v31)
      {
        goto LABEL_60;
      }
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v53 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v54 = *v32;
      v55 = *(v32 + 1);
      v56 = *(v32 + 2);
      *buf = 134546433;
      *&buf[4] = v54;
      *&buf[12] = 2053;
      *&buf[14] = v55;
      *&buf[22] = 2049;
      v73 = v56;
      LOWORD(v74) = 2053;
      *(&v74 + 2) = v36;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "#clreg,fetchRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,found", buf, 0x2Au);
    }

    v57 = sub_19B87DD40();
    if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v63 = *v32;
      v65 = *(v32 + 1);
      v67 = *(v32 + 2);
      v58 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    v24 = *(ptr + 8);
    *v68 = MEMORY[0x1E69E9820];
    *&v68[8] = 3221225472;
    *&v68[16] = sub_19B907F1C;
    v69 = &unk_1E753D9F0;
    v70 = a4;
    v71 = v32;
    v29 = v68;
    goto LABEL_43;
  }

LABEL_60:
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v45 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "#clreg,fetchRAEConfig,no RAEs matched", buf, 2u);
  }

  v46 = sub_19B87DD40();
  if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v47 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v47);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  v48 = sub_19B90810C(a3);
  if (!v48)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v59 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,fetchIsoOrDefaultConfig,geoLocationAllocFailed", buf, 2u);
    }

    v60 = sub_19B87DD40();
    if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      *v68 = 0;
      v61 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v24 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_19B90973C;
    v73 = &unk_1E753D9F0;
    *&v74 = a4;
    *(&v74 + 1) = ptr;
    goto LABEL_42;
  }

  v49 = v48;
  [v48 horizontalAccuracy];
  *v68 = MEMORY[0x1E69E9820];
  *&v68[8] = 3221225472;
  *&v68[16] = sub_19B909750;
  v69 = &unk_1E753DA40;
  v70 = a4;
  v71 = ptr;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B909988;
  v73 = &unk_1E753DA90;
  *(&v74 + 1) = a4;
  v75 = ptr;
  *&v74 = v49;
  v76 = v50;
  v51 = *(ptr + 20);
  if (v51 <= v50)
  {
    v52 = v68;
  }

  else
  {
    [v49 setHorizontalAccuracy:v51];
    v52 = buf;
  }

  sub_19B9088CC(ptr, v49, v52);
LABEL_44:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)fetchInfoForLocation:(id)a3 withReply:(id)a4
{
  v74 = *MEMORY[0x1E69E9840];
  ptr = self->_config.__ptr_;
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v23 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "#clreg,fetchInfoForLocation,#warning,location is nil", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    *v66 = 0;
    goto LABEL_37;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    [a3 coordinate];
    v9 = v8;
    [a3 coordinate];
    v11 = v10;
    [a3 horizontalAccuracy];
    *buf = 134546177;
    *&buf[4] = v9;
    *&buf[12] = 2053;
    *&buf[14] = v11;
    *&buf[22] = 2053;
    v70 = v12;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#clreg,fetchInfoForLocation,%{sensitive}.6f,%{sensitive}.6f,%{sensitive}.2f", buf, 0x20u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    [a3 coordinate];
    v15 = v14;
    [a3 coordinate];
    v17 = v16;
    [a3 horizontalAccuracy];
    *v66 = 134546177;
    *&v66[4] = v15;
    *&v66[12] = 2053;
    *&v66[14] = v17;
    *&v66[22] = 2053;
    v67 = v18;
    v19 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchInfoForLocation(CLLocation *, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  [a3 horizontalAccuracy];
  if (v20 < 0.0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v21 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "#clreg,fetchInfoForLocation,#warning,invalidAccuracy", buf, 2u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
    {
      goto LABEL_39;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    *v66 = 0;
LABEL_37:
    v25 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchInfoForLocation(CLLocation *, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }

LABEL_39:
    v26 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_19B909F90;
    v70 = &unk_1E753D9F0;
    *&v71 = a4;
    *(&v71 + 1) = ptr;
LABEL_40:
    dispatch_async(v26, buf);
    goto LABEL_41;
  }

  v29 = *(ptr + 5);
  v28 = *(ptr + 6);
  if (v29 != v28)
  {
    while (1)
    {
      [a3 coordinate];
      v31 = v30;
      [a3 coordinate];
      v33 = sub_19B87E164(v31, v32, *v29, *(v29 + 8));
      v34 = *(v29 + 16);
      [a3 horizontalAccuracy];
      if (v33 < v34 + v35)
      {
        break;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v36 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        v37 = *v29;
        v38 = *(v29 + 8);
        v39 = *(v29 + 16);
        *buf = 134546433;
        *&buf[4] = v37;
        *&buf[12] = 2053;
        *&buf[14] = v38;
        *&buf[22] = 2049;
        v70 = v39;
        LOWORD(v71) = 2053;
        *(&v71 + 2) = v33;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "#clreg,findRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,notFound", buf, 0x2Au);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
        }

        v41 = *v29;
        v42 = *(v29 + 8);
        v43 = *(v29 + 16);
        *v66 = 134546433;
        *&v66[4] = v41;
        *&v66[12] = 2053;
        *&v66[14] = v42;
        *&v66[22] = 2049;
        v67 = v43;
        LOWORD(v68) = 2053;
        *(&v68 + 2) = v33;
        v44 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "const CLRegulatoryConfigInternal::CircularZoneConfig *CLRegulatoryConfigInternal::findRAEConfig(CLLocation *)", "CoreLocation: %s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      v29 += 32;
      if (v29 == v28)
      {
        goto LABEL_57;
      }
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    v53 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v54 = *v29;
      v55 = *(v29 + 8);
      v56 = *(v29 + 16);
      *buf = 134546433;
      *&buf[4] = v54;
      *&buf[12] = 2053;
      *&buf[14] = v55;
      *&buf[22] = 2049;
      v70 = v56;
      LOWORD(v71) = 2053;
      *(&v71 + 2) = v33;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "#clreg,findRAEConfig,%{sensitive}.6f,%{sensitive}.6f,%{private}.2f,distToLocation,%{sensitive}2.f,result,found", buf, 0x2Au);
    }

    v57 = sub_19B87DD40();
    if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
      }

      v58 = *v29;
      v59 = *(v29 + 8);
      v60 = *(v29 + 16);
      *v66 = 134546433;
      *&v66[4] = v58;
      *&v66[12] = 2053;
      *&v66[14] = v59;
      *&v66[22] = 2049;
      v67 = v60;
      LOWORD(v68) = 2053;
      *(&v68 + 2) = v33;
      v61 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "const CLRegulatoryConfigInternal::CircularZoneConfig *CLRegulatoryConfigInternal::findRAEConfig(CLLocation *)", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v62 = *(v29 + 24);
    v26 = *(ptr + 8);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_19B909FB0;
    v70 = &unk_1E753D688;
    *&v71 = v62;
    *(&v71 + 1) = a4;
    goto LABEL_40;
  }

LABEL_57:
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
  }

  v45 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "#clreg,findRAEConfig,no RAEs matched", buf, 2u);
  }

  v46 = sub_19B87DD40();
  if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6BB10);
    }

    *v66 = 0;
    v47 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "const CLRegulatoryConfigInternal::CircularZoneConfig *CLRegulatoryConfigInternal::findRAEConfig(CLLocation *)", "CoreLocation: %s\n", v47);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  v48 = sub_19B90810C(a3);
  if (!v48)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v63 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEFAULT, "#clreg,#warning,fetchIsoOrDefaultConfig,geoLocationAllocFailed", buf, 2u);
    }

    v64 = sub_19B87DD40();
    if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      *v66 = 0;
      v65 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoOrDefaultInfo(CLLocation *, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    goto LABEL_39;
  }

  v49 = v48;
  [v48 horizontalAccuracy];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B90B658;
  v70 = &unk_1E753DB30;
  *(&v71 + 1) = a4;
  v72 = ptr;
  *&v71 = v49;
  v73 = v50;
  v51 = *(ptr + 20);
  if (v51 <= v50)
  {
    *v66 = MEMORY[0x1E69E9820];
    *&v66[8] = 3221225472;
    *&v66[16] = sub_19B90B87C;
    v67 = &unk_1E753DB58;
    *&v68 = a4;
    *(&v68 + 1) = ptr;
    v52 = v66;
  }

  else
  {
    [v49 setHorizontalAccuracy:v51];
    v52 = buf;
  }

  sub_19B90A7CC(ptr, v49, v52);
LABEL_41:
  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)setExtendedBorderDetection:(BOOL)a3 withExtendedDistance:(int)a4
{
  if (!a3)
  {
    a4 = 0;
  }

  *(self->_config.__ptr_ + 20) = a4;
  return 1;
}

@end