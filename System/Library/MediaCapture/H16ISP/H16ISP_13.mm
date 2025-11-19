uint64_t MatrixNxPts<1u,double>::DotDiv@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::DotDiv(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283812C88;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t Interp1SortedWithExtrap<double,LinearInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>();
  }

  v5 = *(a3 + 20);
  if (v5 <= 1)
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>();
  }

  Matrix<double>::Resize(a4, 1, v5);
  v9 = *(a3 + 20);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 20);
    v13 = *(*(a1 + 8) + 8 * (v12 - 1));
    do
    {
      v14 = *(*(a3 + 8) + 8 * v10);
      v18 = 0;
      if (v14 >= v13)
      {
        v15 = v12 - 2;
        v11 = v12 - 2;
      }

      else
      {
        Algo::BinSearchNearestLowest<double>(a1, v11, &v18, v14);
        v12 = *(a1 + 20);
        v11 = v18;
        v9 = *(a3 + 20);
        v15 = v12 - 2;
      }

      if (v12 - 1 > v11)
      {
        v15 = v11;
      }

      v16 = *(a2 + 8);
      *(*(a4 + 8) + 8 * v10++) = *(v16 + 8 * v15) + (*(v16 + 8 * (v15 + 1)) - *(v16 + 8 * v15)) * ((v14 - *(*(a1 + 8) + 8 * v15)) / (*(*(a1 + 8) + 8 * (v15 + 1)) - *(*(a1 + 8) + 8 * v15)));
    }

    while (v10 < v9);
  }

  return 0;
}

uint64_t Algo::BinSearchNearestLowest<double>(uint64_t a1, int a2, int *a3, double a4)
{
  v4 = *(a1 + 20);
  v5 = v4 - 1;
  if (v4 - 1 >= 100)
  {
    if (v5 >= a2)
    {
      while (1)
      {
        v9 = (v5 + a2) >> 1;
        v10 = *(*(a1 + 8) + 8 * v9);
        if (v10 == a4)
        {
          break;
        }

        if (v10 > a4)
        {
          v5 = v9 - 1;
        }

        else
        {
          a2 = v9 + 1;
        }

        if (a2 > v5)
        {
          goto LABEL_18;
        }
      }

      a2 = (v5 + a2) >> 1;
    }

LABEL_18:
    if (v5 >= a2)
    {
      v5 = a2;
    }

    v8 = v5 & ~(v5 >> 31);
  }

  else
  {
    *a3 = 0;
    if (v4 < 1)
    {
LABEL_6:
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      while (*(*(a1 + 8) + 8 * v6) <= a4)
      {
        if (v4 == ++v6)
        {
          goto LABEL_6;
        }
      }
    }

    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return 0;
}

double CubicInterpolator<double>::operator()(double a1, uint64_t a2, double *a3, double *a4, unsigned int a5, unsigned int a6)
{
  if (a5 >= 4)
  {
    v6 = a5 - 2;
    if (a5 - 2 <= a6)
    {
      v7 = a4[a5 - 3];
      v8 = a4[v6];
      v9 = a4[a5 - 1];
      v11 = a3[v6];
      v10 = -(v8 - v9 * 2.0);
      v12 = a1 - v11;
      v13 = a3[a5 - 1];
      goto LABEL_13;
    }

    if (a6)
    {
      v7 = a4[a6 - 1];
      v8 = a4[a6];
      v9 = a4[a6 + 1];
      v10 = a4[a6 + 2];
      v11 = a3[a6];
      v12 = a1 - v11;
      v13 = a3[a6 + 1];
LABEL_13:
      v14 = v12 / (v13 - v11);
      return v8 + v14 * ((v7 + v8 * -2.5 + v9 * 2.0 + v10 * -0.5) * v14) + v14 * (v14 * ((v8 - v9) * 1.5 + (v10 - v7) * 0.5)) * v14 + (v9 - v7) * 0.5 * v14;
    }

    v8 = *a4;
    v9 = a4[1];
    goto LABEL_11;
  }

  if (a5 != 3)
  {
    v8 = *a4;
    v9 = a4[1];
    v7 = -(v9 - *a4 * 2.0);
    v10 = -(*a4 - v9 * 2.0);
LABEL_12:
    v11 = *a3;
    v13 = a3[1];
    v12 = a1 - *a3;
    goto LABEL_13;
  }

  v8 = *a4;
  v9 = a4[1];
  if (!a6)
  {
LABEL_11:
    v7 = -(v9 - v8 * 2.0);
    v10 = a4[2];
    goto LABEL_12;
  }

  v10 = -(v9 - a4[2] * 2.0);
  v14 = (a1 - a3[1]) / (a3[1] - *a3);
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  return v8 + v14 * ((v7 + v8 * -2.5 + v9 * 2.0 + v10 * -0.5) * v14) + v14 * (v14 * ((v8 - v9) * 1.5 + (v10 - v7) * 0.5)) * v14 + (v9 - v7) * 0.5 * v14;
}

uint64_t Interp1WithExtrap<double,LinearInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    Interp1WithExtrap<double,LinearInterpolator<double>>();
  }

  v10 = *(a3 + 20);
  Matrix<double>::Resize(a4, 1, *(a3 + 20));
  v11 = *(a1 + 20);
  v26 = 0;
  v12 = *(a3 + 8);
  v13 = *(a4 + 8);
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v15[v11 - 1];
  if (a5)
  {
    if (v10 >= 1)
    {
      v17 = *v15;
      v18 = v15[1] - *v15;
      do
      {
        v19 = *v12;
        v20 = v11 - 2;
        if (*v12 < v16)
        {
          v20 = ((v19 - v17) / v18);
          if (v20 + 1 < v11 && *(*(a1 + 8) + 8 * (v20 + 1)) <= v19)
          {
            ++v20;
          }
        }

        if (v11 - 1 <= v20)
        {
          v20 = v11 - 2;
        }

        *v13++ = *(v14 + 8 * v20) + (*(v14 + 8 * (v20 + 1)) - *(v14 + 8 * v20)) * ((v19 - v15[v20]) / (v15[v20 + 1] - v15[v20]));
        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v21 = v11 - 2;
    v22 = v11 - 1;
    do
    {
      v23 = *v12;
      if (*v12 >= v16)
      {
        v26 = v21;
        v24 = v21;
      }

      else
      {
        Algo::BinSearchNearestLowest<double>(a1, 0, &v26, *v12);
        v24 = v26;
      }

      if (v22 <= v24)
      {
        v24 = v21;
      }

      *v13++ = *(v14 + 8 * v24) + (*(v14 + 8 * (v24 + 1)) - *(v14 + 8 * v24)) * ((v23 - v15[v24]) / (v15[v24 + 1] - v15[v24]));
      ++v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t Interp1WithExtrap<double,CubicInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    Interp1WithExtrap<double,LinearInterpolator<double>>();
  }

  v10 = *(a3 + 20);
  Matrix<double>::Resize(a4, 1, *(a3 + 20));
  v11 = *(a1 + 20);
  v24 = 0;
  v12 = *(a3 + 8);
  v13 = *(a4 + 8);
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v15[v11 - 1];
  if (a5)
  {
    if (v10 >= 1)
    {
      v17 = *v15;
      v18 = v15[1] - *v15;
      do
      {
        v19 = *v12;
        v20 = v11 - 2;
        if (*v12 < v16)
        {
          v20 = ((v19 - v17) / v18);
          if (v20 + 1 < *(a1 + 20) && *(*(a1 + 8) + 8 * (v20 + 1)) <= v19)
          {
            ++v20;
          }
        }

        *v13++ = CubicInterpolator<double>::operator()(v19, &v25, v15, v14, v11, v20);
        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    do
    {
      v21 = *v12;
      if (*v12 >= v16)
      {
        v24 = v11 - 2;
        v22 = v11 - 2;
      }

      else
      {
        Algo::BinSearchNearestLowest<double>(a1, 0, &v24, *v12);
        v22 = v24;
      }

      *v13++ = CubicInterpolator<double>::operator()(v21, &v25, v15, v14, v11, v22);
      ++v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t Interp1WithExtrap<double,NearestInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    Interp1WithExtrap<double,LinearInterpolator<double>>();
  }

  v10 = *(a3 + 20);
  Matrix<double>::Resize(a4, 1, *(a3 + 20));
  v11 = *(a1 + 20);
  v28 = 0;
  v12 = *(a3 + 8);
  v13 = *(a4 + 8);
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v15[v11 - 1];
  if (a5)
  {
    if (v10 >= 1)
    {
      v17 = *v15;
      v18 = v15[1] - *v15;
      do
      {
        v19 = *v12;
        v20 = v11 - 2;
        if (*v12 < v16)
        {
          v20 = ((v19 - v17) / v18);
          if (v20 + 1 < v11 && *(*(a1 + 8) + 8 * (v20 + 1)) <= v19)
          {
            ++v20;
          }
        }

        v21 = (v11 - 1);
        if (v11 - 1 > v20)
        {
          v21 = v20 + 1;
          if (v19 - v15[v20] < v15[v21] - v19)
          {
            v21 = v20;
          }
        }

        *v13++ = *(v14 + 8 * v21);
        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v22 = v11 - 2;
    v23 = (v11 - 1);
    do
    {
      v24 = *v12;
      if (*v12 >= v16)
      {
        v28 = v22;
        v25 = v22;
      }

      else
      {
        Algo::BinSearchNearestLowest<double>(a1, 0, &v28, *v12);
        v25 = v28;
      }

      v26 = v23;
      if (v23 > v25)
      {
        v26 = v25 + 1;
        if (v24 - v15[v25] < v15[v26] - v24)
        {
          v26 = v25;
        }
      }

      *v13++ = *(v14 + 8 * v26);
      ++v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

void Matrix<double>::DotDiv(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v7 = *(a2 + 16), v7 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  Matrix<double>::Matrix(a3, v7, v4);
  vDSPVdiv<double>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

void H16ISP::H16ISPGraphExclaveISPManagerNode::H16ISPGraphExclaveISPManagerNode(H16ISP::H16ISPGraphExclaveISPManagerNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 18);
  *v5 = &unk_283813D30;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 18);
  *v5 = &unk_283813D30;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

void H16ISP::H16ISPGraphExclaveISPManagerNode::~H16ISPGraphExclaveISPManagerNode(H16ISP::H16ISPGraphExclaveISPManagerNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveISPManagerNode::onActivate(H16ISP::H16ISPGraphExclaveISPManagerNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves]: H16ISPGraphExclaveISPManagerNode::onActivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveISPManagerNode::onDeactivate(H16ISP::H16ISPGraphExclaveISPManagerNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves]: H16ISPGraphExclaveISPManagerNode::onDeactivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveISPManagerNode::onMessageProcessing(H16ISP::H16ISPGraphExclaveISPManagerNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  *(this + 80) = v4 != 0;
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveISPManagerNode::onMessageProcessing(this, v16, v17, v18, v19, v20, v21, v22);
      }

      return 0;
    }

    v6 = Mutable;
    pthread_mutex_lock((a2 + 8));
    v7 = *(a2 + 90);
    *(a2 + 46) = v6;
    pthread_mutex_unlock((a2 + 8));
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11)))
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *v40 = "onMessageProcessing";
        *&v40[8] = 1024;
        v41 = v7;
        v42 = 1024;
        v43 = v7;
        _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "[Exclaves]: H16ISPGraphExclaveISPManagerNode::%s RunKit ISP Mgr reqID 0x%08X frameID=%U\n", buf, 0x18u);
      }
    }

    bzero(&v31, 0x214uLL);
    v32 = *(this + 24);
    v33 = v7;
    kdebug_trace();
    v9 = ispExclaveKitCommand();
    kdebug_trace();
    if (v9)
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
      }

      v11 = 3758097130;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveISPManagerNode::onMessageProcessing();
      }

      return v11;
    }

    v24 = v34;
    v25 = H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11));
    if (v24)
    {
      if (v25)
      {
        v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v26 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v26;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v40 = v32;
          *&v40[4] = 1024;
          *&v40[6] = v33;
          _os_log_impl(&dword_2247DB000, v26, OS_LOG_TYPE_DEFAULT, "[Exclaves]: ISP Manager IDL Success: channel=%u, requestid=0x%08X\n", buf, 0xEu);
        }
      }

      if (H16ISP::H16ISPDevice::isSensorType(*(this + 11), *(this + 24), 1718775412) || H16ISP::H16ISPDevice::isSensorType(*(this + 11), *(this + 24), 1718776695))
      {
        bzero(v40, 0x314uLL);
        v27 = *(this + 24);
        *buf = 131076;
        v44 = v27;
        if (ispExclaveKitCommand())
        {
          v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v28 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v28;
          }

          v11 = 3758097130;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPGraphExclaveISPManagerNode::onMessageProcessing();
          }

          return v11;
        }

        if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11)))
        {
          v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v30 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v30;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v35 = 67109376;
            v36 = v32;
            v37 = 1024;
            v38 = v33;
            _os_log_impl(&dword_2247DB000, v30, OS_LOG_TYPE_DEFAULT, "[Exclaves]: ISP POST PROCESS IDL Success: channel=%u, requestid=0x%08X\n", v35, 0xEu);
          }
        }
      }

      return 0;
    }

    v11 = 3758097130;
    if (v25)
    {
      v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v29 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v29;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v40 = "onMessageProcessing";
        *&v40[8] = 1024;
        v41 = v33;
        v14 = "[Exclaves]: H16ISPGraphExclaveISPManagerNode::%s EK ISP Manager RunKit skipped reqid=0x%08x\n";
        v15 = v29;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v11 = 3758097130;
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 11)))
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(this + 80);
        *buf = 136315394;
        *v40 = "onMessageProcessing";
        *&v40[8] = 1024;
        v41 = v13;
        v14 = "[Exclaves]: H16ISPGraphExclaveISPManagerNode::%s Skipped processing ISPManager algoProcessing %d\n";
        v15 = v12;
LABEL_18:
        _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
      }
    }
  }

  return v11;
}

void BlurM::print2dRoiDBL(BlurM *this, const __int16 *a2, int a3, int a4, int a5, int a6)
{
  v53 = *MEMORY[0x277D85DE8];
  v33 = a4;
  v34 = a2;
  v7 = a6;
  v8 = 2 * a4 - 8;
  v9 = (this + 2 * a2 + 2 * a6 * a3 + 6);
  v10 = 2 * a6;
  v11 = 4;
  v12 = MEMORY[0x277D86220];
  do
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v9 - 3);
      v14 = *(v9 - 2);
      v15 = *(v9 - 1);
      v16 = *v9;
      v17 = *(v9 + v8 - 6);
      v18 = *(v9 + v8 - 4);
      v19 = *(v9 + v8 - 2);
      v20 = *(v9 + v8);
      *buf = 67110912;
      v38 = v13;
      v39 = 1024;
      v40 = v14;
      v41 = 1024;
      v42 = v15;
      v43 = 1024;
      v44 = v16;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = v18;
      v49 = 1024;
      v50 = v19;
      v51 = 1024;
      v52 = v20;
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "BlurM: [%6d %6d %6d %6d ... %6d %6d %6d %6d]\n", buf, 0x32u);
    }

    v9 = (v9 + v10);
    --v11;
  }

  while (v11);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: [...... ...... ...... ...... ... ...... ...... ...... ......]\n", buf, 2u);
  }

  v21 = 2 * v33 - 8;
  v22 = (this + 2 * (a3 + a5 - 4) * v7 + 2 * v34 + 6);
  v23 = MEMORY[0x277D86220];
  v24 = 4;
  do
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v22 - 3);
      v26 = *(v22 - 2);
      v27 = *(v22 - 1);
      v28 = *v22;
      v29 = *(v22 + v21 - 6);
      v30 = *(v22 + v21 - 4);
      v31 = *(v22 + v21 - 2);
      v32 = *(v22 + v21);
      *buf = 67110912;
      v38 = v25;
      v39 = 1024;
      v40 = v26;
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v28;
      v45 = 1024;
      v46 = v29;
      v47 = 1024;
      v48 = v30;
      v49 = 1024;
      v50 = v31;
      v51 = 1024;
      v52 = v32;
      _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "BlurM: [%6d %6d %6d %6d ... %6d %6d %6d %6d]\n", buf, 0x32u);
    }

    v22 += v7;
    --v24;
  }

  while (v24);
}

void BlurM::printPyrRoiU8(BlurM *this, const unsigned __int8 *a2, int a3, int a4, int a5, int a6)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a6;
  v9 = a4 - 4;
  v10 = this + a2 + (a6 * a3) + 3;
  v11 = 4;
  v12 = MEMORY[0x277D86220];
  do
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v10 - 3);
      v14 = *(v10 - 2);
      v15 = *(v10 - 1);
      v16 = *v10;
      v17 = v10[v9 - 3];
      v18 = v10[v9 - 2];
      v19 = v10[v9 - 1];
      v20 = v10[v9];
      *buf = 67110912;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      v44 = 1024;
      v45 = v18;
      v46 = 1024;
      v47 = v19;
      v48 = 1024;
      v49 = v20;
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "BlurM: [%3d %3d %3d %3d ... %3d %3d %3d %3d]\n", buf, 0x32u);
    }

    v10 += v8;
    --v11;
  }

  while (v11);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: [... ... ... ... ... ... ... ... ...]\n", buf, 2u);
  }

  v21 = this + v7 + (a3 + a5 - 4) * v8 + 3;
  v22 = MEMORY[0x277D86220];
  v23 = 4;
  do
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v21 - 3);
      v25 = *(v21 - 2);
      v26 = *(v21 - 1);
      v27 = *v21;
      v28 = v21[v9 - 3];
      v29 = v21[v9 - 2];
      v30 = v21[v9 - 1];
      v31 = v21[v9];
      *buf = 67110912;
      v35 = v24;
      v36 = 1024;
      v37 = v25;
      v38 = 1024;
      v39 = v26;
      v40 = 1024;
      v41 = v27;
      v42 = 1024;
      v43 = v28;
      v44 = 1024;
      v45 = v29;
      v46 = 1024;
      v47 = v30;
      v48 = 1024;
      v49 = v31;
      _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "BlurM: [%3d %3d %3d %3d ... %3d %3d %3d %3d]\n", buf, 0x32u);
    }

    v21 += v8;
    --v23;
  }

  while (v23);
}

uint64_t BlurM::shellSortDBL(uint64_t this, __int16 *a2)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = BlurM::shellSortDBL(short *,unsigned long)::increments[i];
    if (v3 < a2)
    {
      v4 = this + 2 * v3;
      v5 = this;
      v6 = BlurM::shellSortDBL(short *,unsigned long)::increments[i];
      do
      {
        v7 = *(this + 2 * v6);
        v8 = v6;
        if (v6 >= v3)
        {
          v9 = 0;
          while (1)
          {
            v10 = *(v5 + 2 * v9);
            if (v10 <= v7)
            {
              break;
            }

            *(v4 + 2 * v9) = v10;
            v9 -= v3;
            v8 = v6 + v9;
            if (v6 + v9 < v3)
            {
              goto LABEL_10;
            }
          }

          v8 = v6 + v9;
        }

LABEL_10:
        *(this + 2 * v8) = v7;
        ++v6;
        v4 += 2;
        v5 += 2;
      }

      while (v6 != a2);
    }
  }

  return this;
}

uint64_t BlurM::selectKth(BlurM *this, __int16 *a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = a2 - 1;
    do
    {
      v5 = (v3 + v4) / 2;
      v6 = *(this + v5);
      v7 = v4;
      *(this + v5) = *(this + v4);
      *(this + v4) = v6;
      v8 = v3;
      v9 = v3;
      do
      {
        v10 = *(this + v8);
        if (v10 < v6)
        {
          v11 = *(this + v9);
          *(this + v9) = v10;
          *(this + v8) = v11;
          ++v9;
        }

        ++v8;
      }

      while (v8 < v7);
      *(this + v7) = *(this + v9);
      *(this + v9) = v6;
      if (v9 >= a3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v7;
      }

      if (v9 < a3)
      {
        v3 = v9 + 1;
      }
    }

    while (v3 < v4);
  }

  return *(this + a3);
}

void BlurM::calcMean(BlurM *this, __int16 *a2, int a3, _WORD *a4, __int16 *a5)
{
  v6 = this;
  v31 = *MEMORY[0x277D85DE8];
  v7 = (a3 * a2);
  if (a5)
  {
    v14 = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v29 = 67109120;
      v30 = v7;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", &v29, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", &v29, 2u);
    }

    BlurM::print2dRoiDBL(v6, 0, 0, v14, a3, v14);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v29, 2u);
    }

    v15 = v7 & 0xFFFFFFF8;
    if (v15 < 1)
    {
      v17 = 0uLL;
    }

    else
    {
      v16 = 0;
      v17 = 0uLL;
      v18 = v6;
      do
      {
        v19 = *v18++;
        v17 = vaddw_high_s16(vaddw_s16(v17, *v19.i8), v19);
        v16 += 8;
      }

      while (v16 < v15);
    }

    v24 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v25 = (v24.f32[1] + v24.f32[0]);
    if (v7 >= 1)
    {
      v26 = v7;
      do
      {
        v27 = *v6;
        v6 = (v6 + 2);
        v25 += v27;
        --v26;
      }

      while (v26);
    }

    v28 = v25 / v7;
    *a4 = v25 / v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v29 = 67109120;
      v30 = v28;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: mean(x) = %d\n", &v29, 8u);
    }
  }

  else
  {
    v8 = v7 & 0xFFFFFFF8;
    if (v8 < 1)
    {
      v10 = 0uLL;
    }

    else
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = this;
      do
      {
        v12 = *v11;
        v11 = (v11 + 16);
        v10 = vaddw_high_s16(vaddw_s16(v10, *v12.i8), v12);
        v9 += 8;
      }

      while (v9 < v8);
    }

    v20 = vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
    v21 = (v20.f32[1] + v20.f32[0]);
    if (v7 >= 1)
    {
      v22 = (a3 * a2);
      do
      {
        v23 = *v6;
        v6 = (v6 + 2);
        v21 += v23;
        --v22;
      }

      while (v22);
    }

    *a4 = v21 / v7;
  }
}

void BlurM::calcMedian(BlurM *this, __int16 *a2, int a3, __int16 *a4, __int16 *__dst, __int16 *a6, __int16 *a7)
{
  v7 = a7;
  v11 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v13 = (a3 * a2);
  memcpy(__dst, this, 2 * v13);
  memcpy(a6, this, 2 * v13);
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v24 = v13;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(this, 0, 0, v11, a3, v11);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  v21 = this;
  v14 = v11;
  v15 = a3;
  v16 = (v13 + (v13 >> 31)) >> 1;
  v17 = BlurM::selectKth(__dst, v13, v13 / 2 - 1);
  *a4 = (BlurM::selectKth(a6, v13, v13 / 2) + v17) >> 1;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = __dst[v16 - 1];
      *buf = 67109120;
      v24 = v18;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_sorted[length/2 -1] = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = __dst[v16];
      *buf = 67109120;
      v24 = v19;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_sorted[(length/2)+1 -1] = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a4;
      *buf = 67109120;
      v24 = v20;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: median(x) = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v24 = v13;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(v21, 0, 0, v14, v15, v14);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }
}

void BlurM::calcNoiseMAD_Mean(BlurM *this, __int16 *a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6, int16x8_t *__dst, __int16 *a8, unsigned __int8 a9)
{
  v41 = *MEMORY[0x277D85DE8];
  v17 = (a3 * a2);
  memcpy(__dst, this, 2 * v17);
  if (a8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v40 = v17;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *a4;
      *buf = 67109120;
      v40 = v23;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_mean = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(this, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    v24 = *a4;
    v25 = v17 & 0xFFFFFFF8;
    if (v25 < 1)
    {
      LODWORD(v26) = 0;
    }

    else
    {
      v26 = 0;
      v27 = vdupq_n_s16(v24);
      v28 = __dst;
      do
      {
        *v28 = vabdq_s16(*v28, v27);
        ++v28;
        v26 += 8;
      }

      while (v26 < v25);
    }

    if (v26 < v17)
    {
      v32 = v17 - v26;
      v33 = &__dst->i16[v26];
      do
      {
        v34 = *v33 - v24;
        if (v34 < 0)
        {
          LOWORD(v34) = v24 - *v33;
        }

        *v33++ = v34;
        --v32;
      }

      while (v32);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v40 = v17;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: abs(x-mean(x)) = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(__dst, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    v18 = *a4;
    v19 = v17 & 0xFFFFFFF8;
    if (v19 < 1)
    {
      LODWORD(v20) = 0;
    }

    else
    {
      v20 = 0;
      v21 = vdupq_n_s16(v18);
      v22 = __dst;
      do
      {
        *v22 = vabdq_s16(*v22, v21);
        ++v22;
        v20 += 8;
      }

      while (v20 < v19);
    }

    if (v20 < v17)
    {
      v29 = v17 - v20;
      v30 = &__dst->i16[v20];
      do
      {
        v31 = *v30 - v18;
        if (v31 < 0)
        {
          LOWORD(v31) = v18 - *v30;
        }

        *v30++ = v31;
        --v29;
      }

      while (v29);
    }
  }

  v38 = 0;
  BlurM::calcMean(__dst, a2, a3, &v38, a8);
  v35 = v38;
  *a5 = v38;
  *a6 = (5 * v35) >> 2;
  if (a8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v40 = v35;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_tmp_mean = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v36 = *a5;
      *buf = 67109120;
      v40 = v36;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_mad_mean = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v37 = *a6;
      *buf = 67109120;
      v40 = v37;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_mad_sigma = %d\n", buf, 8u);
    }
  }
}

void BlurM::calcNoiseFilter(BlurM *this, __int16 *a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7, BlurM *a8, __int16 *a9, unsigned __int8 a10)
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = (a3 * a2);
  v13 = *a4 + (*a7 >> *a5);
  *a6 = v13;
  if (a9)
  {
    v25 = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v47 = 67109120;
      v48 = v12;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", &v47, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = *a4;
      v47 = 67109120;
      v48 = v26;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_median = %d\n", &v47, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = *a5;
      v47 = 67109120;
      v48 = v27;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: noise_factor = %d\n", &v47, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v28 = *a7;
      v47 = 67109120;
      v48 = v28;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_sigma = %d\n", &v47, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *a6;
      v47 = 67109120;
      v48 = v29;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: sft_thr = %d\n", &v47, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", &v47, 2u);
    }

    BlurM::print2dRoiDBL(this, 0, 0, v25, a3, v25);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v47, 2u);
    }

    v30 = *a6;
    v31 = v12 & 0xFFFFFFF8;
    if (v31 < 1)
    {
      LODWORD(v32) = 0;
    }

    else
    {
      v32 = 0;
      v33 = vdupq_n_s16(v30);
      v34 = this;
      v35 = a8;
      do
      {
        v36 = *v34;
        v34 = (v34 + 16);
        *v35++ = vandq_s8(vsubq_s16(v36, v33), vcgtq_s16(v36, v33));
        v32 += 8;
      }

      while (v32 < v31);
    }

    if (v32 < v12)
    {
      v42 = v12 - v32;
      v43 = (a8 + 2 * v32);
      v44 = (this + 2 * v32);
      do
      {
        v45 = *v44++;
        v46 = v45 - v30;
        if (v45 <= v30)
        {
          v46 = 0;
        }

        *v43++ = v46;
        --v42;
      }

      while (v42);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v47 = 67109120;
      v48 = v12;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", &v47, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: x_th = [\n", &v47, 2u);
    }

    BlurM::print2dRoiDBL(a8, 0, 0, v25, a3, v25);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v47, 2u);
    }
  }

  else
  {
    v14 = v12 & 0xFFFFFFF8;
    if (v14 < 1)
    {
      LODWORD(v15) = 0;
    }

    else
    {
      v15 = 0;
      v16 = vdupq_n_s16(v13);
      v17 = this;
      v18 = a8;
      do
      {
        v19 = *v17;
        v17 = (v17 + 16);
        *v18++ = vandq_s8(vsubq_s16(v19, v16), vcgtq_s16(v19, v16));
        v15 += 8;
      }

      while (v15 < v14);
    }

    if (v15 < v12)
    {
      v37 = v12 - v15;
      v38 = (a8 + 2 * v15);
      v39 = (this + 2 * v15);
      do
      {
        v40 = *v39++;
        v41 = v40 - v13;
        if (v40 <= v13)
        {
          v41 = 0;
        }

        *v38++ = v41;
        --v37;
      }

      while (v37);
    }
  }
}

void BlurM::calcEmax(BlurM *this, __int16 *a2, int a3, int *a4, int *a5, __int16 *a6, const __int16 *a7, __int16 *a8, unsigned __int8 a9)
{
  v10 = a2;
  v11 = *a4;
  if (a3 - v11 + 1 >= 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = (v11 * v11);
    v15 = v14 & 0x7FFFFFF8;
    v16 = a2 - v11 + 1;
    v17 = a6;
    do
    {
      v18 = v13 + v11;
      if ((v16 & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        v21 = this;
        do
        {
          if (v11 >= 1)
          {
            v22 = v21;
            v23 = a7;
            v24 = v13;
            do
            {
              v25 = 0;
              do
              {
                v23[v25] = *(v22 + v25);
                ++v25;
              }

              while (v20 + v25 < v20 + v11);
              ++v24;
              v23 += v11;
              v22 = (v22 + 2 * a2);
            }

            while (v24 < v18);
          }

          v26 = vld1q_dup_s16(a7);
          if (v15)
          {
            v27 = 0;
            v28 = a7;
            do
            {
              v29 = *v28++;
              v26 = vmaxq_s16(v29, v26);
              v27 += 8;
            }

            while (v27 < v15);
            v30 = ((v15 - 1) & 0xFFFFFFF8) + 8;
          }

          else
          {
            v30 = 0;
          }

          v31 = vmaxv_s16(vmax_s16(*v26.i8, *&vextq_s8(v26, v26, 8uLL)));
          if (v30 < v14)
          {
            v32 = v14 - v30;
            v33 = &a7[v30];
            do
            {
              v35 = *v33++;
              v34 = v35;
              if (v31 <= v35)
              {
                v31 = v34;
              }

              --v32;
            }

            while (v32);
          }

          *(a5 + v12 * v17 + v19++) = v31;
          v20 += v11;
          v21 = (v21 + 2 * v11);
        }

        while (v20 <= v16);
      }

      ++v12;
      this = (this + 2 * v11 * a2);
      v13 += v11;
    }

    while (v18 <= (a3 - v11 + 1));
  }

  if (a8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: xmax = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a5, 0, 0, v10 / 2, a3 / 2, v10 / 2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", v37, 2u);
    }
  }
}

void BlurM::calcSharpness(BlurM *this, __int16 *a2, int a3, float *a4, float *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = (a3 * a2);
  v6 = v5 & 0xFFFFFFF8;
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v7 = 0;
    v8.i64[0] = 0x1000100010001;
    v8.i64[1] = 0x1000100010001;
    v9 = this;
    v10 = 0uLL;
    v11 = 0uLL;
    do
    {
      v12 = *v9;
      v9 = (v9 + 16);
      v13 = vandq_s8(vcgtzq_s16(v12), v8);
      v14 = vmaxq_s16(v12, 0);
      v10 = vaddw_high_u16(vaddw_u16(v10, *v14.i8), v14);
      v11 = vaddw_high_u16(vaddw_u16(v11, *v13.i8), v13);
      v7 += 8;
    }

    while (v7 < v6);
  }

  v15 = vadd_s32(vzip1_s32(*v11.i8, *v10.i8), vzip2_s32(*v11.i8, *v10.i8));
  v16 = vextq_s8(v10, v10, 8uLL).u64[0];
  v17 = vextq_s8(v11, v11, 8uLL).u64[0];
  v18 = vadd_s32(vadd_s32(v15, vzip1_s32(v17, v16)), vzip2_s32(v17, v16));
  if (v7 < v5)
  {
    v19 = v5 - v7;
    v20 = (this + 2 * v7);
    do
    {
      v21 = *v20++;
      v18 = vadd_s32(v18, __PAIR64__(v21 & ~(v21 >> 31), v21 > 0));
      --v19;
    }

    while (v19);
  }

  v22 = vcvts_n_f32_s32(v18.u32[1], 4uLL) / v18.i32[0];
  *a4 = v22;
  if ((a5 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v22;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: sharpness = %f\n", &v23, 0xCu);
  }
}

float32x2_t BlurM::detectBlur(BlurM *this, __int16 *a2, __int16 *a3, int a4, float *a5, float *a6, float *a7, float *a8, unsigned __int8 a9)
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = (a4 * a3);
  v12 = *a5;
  v13 = v11 & 0xFFFFFFF8;
  if (v13 < 1)
  {
    LODWORD(v14) = 0;
    v22 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    v14 = 0;
    v15 = vdupq_n_s16(v12);
    v16 = 0uLL;
    v17.i64[0] = 0x2000200020002;
    v17.i64[1] = 0x2000200020002;
    v18 = this;
    v19 = a2;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    do
    {
      v23 = *v18;
      v18 = (v18 + 16);
      v24 = v23;
      v25 = *v19;
      v19 += 8;
      v26 = vshrq_n_s16(v24, 4uLL);
      v27 = vshrq_n_s16(v25, 4uLL);
      v28 = vcgtq_s16(vmaxq_s16(v26, v27), v15);
      v16 = vsubq_s16(v16, v28);
      v20 = vsubq_s16(v20, vandq_s8(v28, vcgtq_s16(v26, v27)));
      v29 = vandq_s8(v28, vandq_s8(vcgtq_s16(v27, v26), v17));
      v21 = vaddq_s16(v29, v21);
      v22 = vaddq_s16(vandq_s8(v29, vcgtq_s16(v15, v26)), v22);
      v14 += 8;
    }

    while (v14 < v13);
  }

  v30 = vmovl_u16(vadd_s16(*v16.i8, *&vextq_s8(v16, v16, 8uLL)));
  v31 = vmovl_u16(vadd_s16(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
  v32 = vand_s8(vzip1_s32(*v31.i8, *v30.i8), 0xFFFF0000FFFFLL);
  v33 = vand_s8(vzip2_s32(*v31.i8, *v30.i8), 0xFFFF0000FFFFLL);
  v30.i64[0] = vextq_s8(v30, v30, 8uLL).u64[0];
  v31.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
  v34 = vadd_s32(vadd_s32(vadd_s32(v33, v32), vand_s8(vzip1_s32(*v31.i8, *v30.i8), 0xFFFF0000FFFFLL)), vand_s8(vzip2_s32(*v31.i8, *v30.i8), 0xFFFF0000FFFFLL));
  v35 = vmovl_u16(vadd_s16(*v22.i8, *&vextq_s8(v22, v22, 8uLL)));
  v36 = vmovl_u16(vadd_s16(*v21.i8, *&vextq_s8(v21, v21, 8uLL)));
  *v30.i8 = vand_s8(vzip1_s32(*v36.i8, *v35.i8), 0xFFFF0000FFFFLL);
  *v31.i8 = vand_s8(vzip2_s32(*v36.i8, *v35.i8), 0xFFFF0000FFFFLL);
  v35.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  v36.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
  v37 = vadd_s32(vadd_s32(vadd_s32(*v31.i8, *v30.i8), vand_s8(vzip1_s32(*v36.i8, *v35.i8), 0xFFFF0000FFFFLL)), vand_s8(vzip2_s32(*v36.i8, *v35.i8), 0xFFFF0000FFFFLL));
  if (v14 < v11)
  {
    v38 = v12;
    v39 = v11 - v14;
    v40 = &a2[v14];
    v41 = (this + 2 * v14);
    do
    {
      v42 = *v41++;
      v43 = (v42 >> 4);
      v44 = *v40++;
      v45 = v44 >> 4;
      v46 = (v44 >> 4);
      if (v46 <= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      if (v47 > v38)
      {
        v34 = vadd_s32(v34, ((v43 > v46) | 0x100000000));
        if (v46 > v43)
        {
          v48.i32[1] = v37.i32[1];
          if (v43 < v38)
          {
            v48.i32[1] = v37.i32[1] + 2;
          }

          v48.i32[0] = v37.i32[0] + 2;
          v37 = v48;
        }
      }

      --v39;
    }

    while (v39);
  }

  v49 = v34.i32[1];
  if (v34.i32[1])
  {
    v50 = vcvt_f32_s32(v34);
    result = vdiv_f32(v50, vdup_lane_s32(v50, 1));
  }

  else
  {
    result = 0;
  }

  *a6 = result.f32[0];
  v52 = v37.i32[0];
  if (v37.i32[0])
  {
    v53 = vcvt_f32_s32(v37);
    result = vdiv_f32(vdup_lane_s32(v53, 1), v53);
  }

  else
  {
    result.i32[0] = 1.0;
  }

  *a7 = result.f32[0];
  if (a8)
  {
    v58 = v34.i32[0];
    v59 = v37.i32[1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v49;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Nedge      = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v54) = 67109120;
      HIDWORD(v54) = v58;
      *buf = v54;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Nda        = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v52;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Nrg        = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v55) = 67109120;
      HIDWORD(v55) = v59;
      *buf = v55;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Nbrg       = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v56 = *a6;
      *buf = 134217984;
      *&buf[4] = v56;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: blurConf   = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v57 = *a7;
      *buf = 134217984;
      *&buf[4] = v57;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: blurExtent = %f\n", buf, 0xCu);
    }
  }

  return result;
}

void BlurM::calcEmap(BlurM *this, __int16 *a2, __int16 *a3, __int16 *a4, int a5, BlurM *a6, __int16 *a7)
{
  v9 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v10 = (a5 * a4);
  v11 = v10 & 0xFFFFFFF8;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = 0;
    v13 = this;
    v14 = a2;
    v15 = a3;
    v16 = a6;
    do
    {
      v17 = *v13;
      v13 = (v13 + 16);
      v18 = v17;
      v19 = *v14;
      v14 += 8;
      v20 = v19;
      v21 = *v15;
      v15 += 8;
      v22 = v21;
      v23 = vmull_s16(*v20.i8, *v20.i8);
      v24 = vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v20, v20), v18, v18), v22, v22);
      v25 = vcvtq_f32_s32(vmlal_s16(vmlal_s16(v23, *v18.i8, *v18.i8), *v22.i8, *v22.i8));
      v26 = vrsqrteq_f32(v25);
      v27 = vcvtq_f32_s32(v24);
      v28 = vmulq_f32(vmulq_f32(v26, vrsqrtsq_f32(vmulq_f32(v26, v25), v26)), v25);
      v29 = vrsqrteq_f32(v27);
      *v16++ = vuzp1q_s16(vcvtq_s32_f32(v28), vcvtq_s32_f32(vmulq_f32(vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v29, v27), v29)), v27)));
      v12 += 8;
    }

    while (v12 < v11);
  }

  if (v12 < v10)
  {
    v30 = v10 - v12;
    v31 = (a6 + 2 * v12);
    v32 = &a3[v12];
    v33 = &a2[v12];
    v34 = (this + 2 * v12);
    do
    {
      v35 = *v34++;
      v36 = v35 * v35;
      v37 = *v33++;
      v38 = v36 + v37 * v37;
      v39 = *v32++;
      *v31++ = sqrt((v38 + v39 * v39));
      --v30;
    }

    while (v30);
  }

  if (a7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: calcEmap\n", &v40, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v40 = 67109120;
      v41 = a5;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: height=%d\n", &v40, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v40 = 67109120;
      v41 = v9;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: width=%d\n", &v40, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: emap = [\n", &v40, 2u);
    }

    BlurM::print2dRoiDBL(a6, 0, 0, v9, a5, v9);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v40, 2u);
    }
  }
}

void BlurM::hlwt2(BlurM *this, __int16 *a2, int a3, BlurM *a4, BlurM *a5, BlurM *a6, BlurM *a7, BlurM *__src, int16x8_t *a9, __int16 *a10, unsigned __int8 a11)
{
  v11 = __src;
  v14 = a2;
  v16 = a9;
  v126 = *MEMORY[0x277D85DE8];
  v17 = a2 + (a2 >> 31);
  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: hlwt2\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = a3;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: height=%d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v14;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: width=%d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: img_data = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(this, 0, 0, v14, a3, v14);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (a3 >= 1)
    {
      v26 = 0;
      v27 = (v14 & 0xFFFFFFF8);
      v28 = 2 * (v14 >> 1);
      v29 = v11;
      v30 = a9;
      do
      {
        if (v27 < 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = this;
          do
          {
            v128 = vld2_s16(v32);
            v32 += 8;
            *(v29 + v31) = v128.val[0];
            *(v30 + v31) = v128.val[1];
            v31 += 8;
          }

          while (v31 < v27);
          v31 = v31;
        }

        if (v31 < v14)
        {
          do
          {
            if (v31)
            {
              v33 = a9;
            }

            else
            {
              v33 = v11;
            }

            v33[v26 * v14 / 2 + (v31 >> 1)] = *(this + v31);
            ++v31;
          }

          while (v14 != v31);
        }

        ++v26;
        v30 = (v30 + v28);
        v29 = (v29 + v28);
        this = (this + 2 * v14);
      }

      while (v26 != a3);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Splitting\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: L = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(v11, 0, 0, v17 >> 1, a3, v17 >> 1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (a3 < 1)
    {
      goto LABEL_54;
    }

    v18 = 0;
    v19 = (a2 & 0xFFFFFFF8);
    v20 = 2 * (a2 >> 1);
    v21 = __src;
    v22 = a9;
    do
    {
      if (v19 < 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v24 = this;
        do
        {
          v127 = vld2_s16(v24);
          v24 += 8;
          *(v21 + v23) = v127.val[0];
          *(v22 + v23) = v127.val[1];
          v23 += 8;
        }

        while (v23 < v19);
        v23 = v23;
      }

      if (v23 < a2)
      {
        do
        {
          if (v23)
          {
            v25 = a9;
          }

          else
          {
            v25 = __src;
          }

          v25[v18 * a2 / 2 + (v23 >> 1)] = *(this + v23);
          ++v23;
        }

        while (a2 != v23);
      }

      ++v18;
      v22 = (v22 + v20);
      v21 = (v21 + v20);
      this = (this + 2 * a2);
    }

    while (v18 != a3);
  }

  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: H = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a9, 0, 0, v17 >> 1, a3, v17 >> 1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

LABEL_54:
  v34 = v17 >> 1;
  v35 = ((v17 >> 1) * a3);
  v36 = v35 & 0xFFFFFFF8;
  if (v36 < 1)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = 0;
    v38 = a9;
    v39 = v11;
    do
    {
      v40 = *v39++;
      *v38 = vsubq_s16(*v38, v40);
      ++v38;
      v37 += 8;
    }

    while (v37 < v36);
  }

  if (v37 < v35)
  {
    v41 = v35 - v37;
    v42 = (v11 + 2 * v37);
    v43 = &a9->i16[v37];
    do
    {
      v44 = *v42++;
      *v43++ -= v44;
      --v41;
    }

    while (v41);
  }

  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Lifting\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: H = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a9, 0, 0, v34, a3, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (v36 < 1)
    {
      LODWORD(v49) = 0;
    }

    else
    {
      v49 = 0;
      v50 = a9;
      v51 = v11;
      do
      {
        v52 = vshrq_n_s16(*v50, 1uLL);
        *v51 = vsraq_n_s16(*v51, *v50, 1uLL);
        ++v51;
        *v50++ = v52;
        v49 += 8;
      }

      while (v49 < v36);
    }

    if (v49 < v35)
    {
      v57 = v35 - v49;
      v58 = (v11 + 2 * v49);
      v59 = &a9->i16[v49];
      do
      {
        v60 = *v59;
        *v59++ >>= 1;
        *v58++ += v60 >> 1;
        --v57;
      }

      while (v57);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: L = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(v11, 0, 0, v34, a3, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (v36 < 1)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      v45 = 0;
      v46 = a9;
      v47 = v11;
      do
      {
        v48 = vshrq_n_s16(*v46, 1uLL);
        *v47 = vsraq_n_s16(*v47, *v46, 1uLL);
        ++v47;
        *v46++ = v48;
        v45 += 8;
      }

      while (v45 < v36);
    }

    if (v45 < v35)
    {
      v53 = v35 - v45;
      v54 = (v11 + 2 * v45);
      v55 = &a9->i16[v45];
      do
      {
        v56 = *v55;
        *v55++ >>= 1;
        *v54++ += v56 >> 1;
        --v53;
      }

      while (v53);
    }
  }

  if (a3 < 1)
  {
    v64 = a3;
    v63 = 0;
    v62 = 0;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = a3;
    do
    {
      if (v61)
      {
        memcpy(a5 + 2 * v63 * v34, v11, 2 * v34);
        ++v63;
      }

      else
      {
        memcpy(a4 + 2 * v62 * v34, v11, 2 * v34);
        ++v62;
      }

      ++v61;
      v11 = (v11 + 2 * v34);
    }

    while (a3 != v61);
  }

  if (a10)
  {
    v65 = v64;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Splitting\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v62;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: a = [\n", buf, 2u);
    }

    v66 = v64 / 2;
    BlurM::print2dRoiDBL(a4, 0, 0, v34, v64 / 2, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a5, 0, 0, v34, v64 / 2, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    v63 = 0;
    v65 = v64;
    v66 = v64 / 2;
  }

  v67 = (v66 * v34);
  v68 = v67 & 0xFFFFFFF8;
  if (v68 < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = 0;
    v70 = a5;
    v71 = a4;
    do
    {
      v72 = *v71++;
      *v70 = vsubq_s16(*v70, v72);
      ++v70;
      v69 += 8;
    }

    while (v69 < v68);
  }

  if (v69 < v67)
  {
    v73 = v67 - v69;
    v74 = (a4 + 2 * v69);
    v75 = (a5 + 2 * v69);
    do
    {
      v76 = *v74++;
      *v75++ -= v76;
      --v73;
    }

    while (v73);
  }

  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Lifting\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a5, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (v68 < 1)
    {
      LODWORD(v81) = 0;
    }

    else
    {
      v81 = 0;
      v82 = a4;
      v83 = a5;
      do
      {
        v84 = *v83;
        v83 = (v83 + 16);
        *v82 = vaddq_s16(vaddq_s16(*v82, *v82), v84);
        ++v82;
        v81 += 8;
      }

      while (v81 < v68);
    }

    if (v81 < v67)
    {
      v89 = v67 - v81;
      v90 = (a5 + 2 * v81);
      v91 = (a4 + 2 * v81);
      do
      {
        v92 = *v90++;
        *v91 = v92 + 2 * *v91;
        ++v91;
        --v89;
      }

      while (v89);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: a = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a4, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (v68 < 1)
    {
      LODWORD(v77) = 0;
    }

    else
    {
      v77 = 0;
      v78 = a4;
      v79 = a5;
      do
      {
        v80 = *v79;
        v79 = (v79 + 16);
        *v78 = vaddq_s16(vaddq_s16(*v78, *v78), v80);
        ++v78;
        v77 += 8;
      }

      while (v77 < v68);
    }

    if (v77 < v67)
    {
      v85 = v67 - v77;
      v86 = (a5 + 2 * v77);
      v87 = (a4 + 2 * v77);
      do
      {
        v88 = *v86++;
        *v87 = v88 + 2 * *v87;
        ++v87;
        --v85;
      }

      while (v85);
    }
  }

  v121 = (v66 * v34);
  if (v65 < 1)
  {
    v95 = 0;
    v94 = 0;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
    do
    {
      if (v93)
      {
        memcpy(a7 + 2 * v95 * v34, v16, 2 * v34);
        ++v95;
      }

      else
      {
        memcpy(a6 + 2 * v94 * v34, v16, 2 * v34);
        ++v94;
      }

      ++v93;
      v16 += v34;
    }

    while (v65 != v93);
  }

  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Splitting\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v94;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a6, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v95;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: d = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a7, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    v63 = v95;
  }

  if (v68 < 1)
  {
    LODWORD(v96) = 0;
  }

  else
  {
    v96 = 0;
    v98 = a6;
    v97 = a7;
    do
    {
      v99 = *v98;
      v98 = (v98 + 16);
      *v97 = vsubq_s16(*v97, v99);
      ++v97;
      v96 += 8;
    }

    while (v96 < v68);
  }

  if (v96 < v121)
  {
    v100 = v121 - v96;
    v101 = (a6 + 2 * v96);
    v102 = (a7 + 2 * v96);
    do
    {
      v103 = *v101++;
      *v102++ -= v103;
      --v100;
    }

    while (v100);
  }

  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: Lifting\n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: d = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a7, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (v68 < 1)
    {
      LODWORD(v108) = 0;
    }

    else
    {
      v108 = 0;
      v110 = a6;
      v109 = a7;
      do
      {
        v111 = vshrq_n_s16(*v109, 1uLL);
        *v110 = vsraq_n_s16(*v110, *v109, 1uLL);
        ++v110;
        *v109++ = v111;
        v108 += 8;
      }

      while (v108 < v68);
    }

    if (v108 < v121)
    {
      v116 = v121 - v108;
      v117 = (a6 + 2 * v108);
      v118 = (a7 + 2 * v108);
      do
      {
        v119 = *v118;
        *v118++ >>= 1;
        *v117++ += v119 >> 1;
        --v116;
      }

      while (v116);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a6, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (v68 < 1)
    {
      LODWORD(v104) = 0;
    }

    else
    {
      v104 = 0;
      v106 = a6;
      v105 = a7;
      do
      {
        v107 = vshrq_n_s16(*v105, 1uLL);
        *v106 = vsraq_n_s16(*v106, *v105, 1uLL);
        ++v106;
        *v105++ = v107;
        v104 += 8;
      }

      while (v104 < v68);
    }

    if (v104 < v121)
    {
      v112 = v121 - v104;
      v113 = (a6 + 2 * v104);
      v114 = (a7 + 2 * v104);
      do
      {
        v115 = *v114;
        *v114++ >>= 1;
        *v113++ += v115 >> 1;
        --v112;
      }

      while (v112);
    }
  }

  if (a10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v125 = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: d = [\n", buf, 2u);
    }

    BlurM::print2dRoiDBL(a7, 0, 0, v34, v66, v34);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }
}

void BlurM::createROI(BlurM *this, int8x16_t a2, int8x16_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double *a10, double *a11, int *a12, double *a13, double *a14, double *a15, double *a16, double a17, double a18, double *a19, unsigned __int8 a20)
{
  v29 = *a3.i64;
  v30 = *a2.i64;
  v72 = *MEMORY[0x277D85DE8];
  a2.i64[0] = *this;
  *a3.i64 = *this - trunc(*this * 0.5) * 2.0;
  v31.f64[0] = NAN;
  v31.f64[1] = NAN;
  v32 = vnegq_f64(v31);
  v33 = vbslq_s8(v32, a3, a2);
  *this = *this - *v33.i64;
  a2.i64[0] = *a10;
  *v33.i64 = *a10 - trunc(*a10 * 0.5) * 2.0;
  v34 = *a10 - *vbslq_s8(v32, v33, a2).i64;
  *a10 = v34;
  v35 = *this;
  v36 = log(*this);
  v37 = exp2(ceil(v36 / 0.693147181));
  v38 = log(v34);
  v39 = exp2(ceil(v38 / 0.693147181));
  if (v37 > 256.0)
  {
    v37 = 256.0;
  }

  if (v39 <= 256.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 256.0;
  }

  v41 = (v37 - v35) * 0.5;
  v42 = (v40 - v34) * 0.5;
  *a13 = v37;
  *a14 = v40;
  *a11 = 0;
  v43 = (a4 - v41);
  if (v41 + a8 >= v43)
  {
    v44 = 1;
    v45 = a15;
    do
    {
      v46 = v44;
      *v45 = v43;
      if (v44 == a17)
      {
        break;
      }

      v43 = (v43 + *this);
      ++v45;
      ++v44;
    }

    while (v41 + a8 >= v43);
    *a11 = v46;
  }

  v47 = 0;
  *a12 = 0;
  v48 = (a5 - v42);
  if (v42 + a9 >= v48)
  {
    v49 = 1;
    v50 = a16;
    do
    {
      v47 = v49;
      *v50 = v48;
      if (v49 == a18)
      {
        break;
      }

      v48 = (v48 + *a10);
      ++v50;
      ++v49;
    }

    while (v42 + a9 >= v48);
    *a12 = v47;
  }

  v51 = *a11;
  if (*a11 >= 1)
  {
    v52 = *a11;
    v53 = a15;
    do
    {
      v54 = *v53;
      if (*v53 < 0.0)
      {
        *v53 = 0.0;
        v54 = 0.0;
      }

      if (v54 + *a13 > v30)
      {
        *v53 = v30 - *a13;
      }

      ++v53;
      --v52;
    }

    while (v52);
  }

  if (v47 >= 1)
  {
    v55 = v47;
    v56 = a16;
    do
    {
      v57 = *v56;
      if (*v56 < 0.0)
      {
        *v56 = 0.0;
        v57 = 0.0;
      }

      if (v57 + *a14 > v29)
      {
        *v56 = v29 - *a14;
      }

      ++v56;
      --v55;
    }

    while (v55);
  }

  if (a19)
  {
    v58 = v40;
    v59 = a15[v51 - 1];
    v60 = *a13;
    v61 = *a15;
    v67 = *a14;
    v69 = a16[v47 - 1];
    v62 = *a16;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v63 = *this;
      *buf = 134217984;
      v71 = v63;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_subWinWidth = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v64 = *a10;
      *buf = 134217984;
      v71 = v64;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_subWinHeight = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v71 = v37;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_subWinWidthNearestPow2 = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v71 = v58;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_subWinHeightNearestPow2 = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v71 = v41;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_superWidthPow2Adjust = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v71 = v42;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_superHeightPow2Adjust = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v71 = v59 + v60 - v61 + 1.0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_superWidthAdjust = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v71 = v69 + v67 - v62 + 1.0;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_superHeightAdjust = %f\n", buf, 0xCu);
    }
  }
}

uint64_t BlurM::Prepare(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v163 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    BlurM::Prepare();
  }

  v110 = result + 4096;
  v131 = *(result + 4608);
  *result = 0x100000001;
  *(result + 8) = -1;
  v7 = *(result + 12);
  *(result + 4588) = v7;
  *(result + 4592) = *(result + 16);
  *(result + 4596) = *(result + 20);
  *(result + 4598) = *(result + 22);
  *(result + 4602) = *(result + 154);
  *(result + 4604) = *(result + 156);
  if (((*(result + 4624) * *(result + 4620)) / 562900.0) >= 0.2)
  {
    v9 = (result + 4644);
    v8 = -1;
    while (v8 != 1)
    {
      v10 = (*v9 * *(v9 - 1)) / 562900.0;
      ++v8;
      v9 += 5;
      if (v10 < 0.2)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(v8) = 2;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

LABEL_9:
  v11 = 0;
  v106 = result + 4616;
  v107 = result + 160;
  *(result + 4576) = v8;
  v12 = result + 576;
  v13 = result + 704;
  *(result + 4580) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v7 == 1), 0x1FuLL)), 0xBFF7C1363F75160ALL, 0x40AA70333F86ADB4);
  __asm { FMOV            V0.4S, #30.0 }

  v105 = _Q0;
  v19 = MEMORY[0x277D86220];
  v130 = result;
  do
  {
    v20 = v107 + 1472 * v11;
    *(v20 + 1440) = 0u;
    v24.i64[1] = *(&v105 + 1);
    *(v20 + 1456) = v105;
    v21 = v106 + 20 * v11;
    v22 = *(v21 + 4);
    v23 = *(v21 + 8);
    *(v20 + 256) = xmmword_2249BC370;
    v28.i64[1] = 0x4010000000000000;
    *(v20 + 288) = xmmword_2249BC380;
    *(v20 + 272) = 0x4010000000000000;
    *(v20 + 304) = 0x4010000000000000;
    *(v20 + 1440) = 1;
    *v24.i64 = (((v22 * 0.45) * 0.5) + 0.0);
    v25 = (((v23 * 0.56) * 0.5) + 0.0);
    *(v20 + 32) = v25;
    v128 = v20 + 32;
    v26 = 1054951342;
    LODWORD(a7) = 1057803469;
    *v28.i64 = (v22 * 0.55) + *v24.i64;
    *(v20 + 64) = v28.i64[0];
    v127 = v20 + 64;
    v27 = (v23 * 0.44) + v25;
    *(v20 + 96) = v27;
    v126 = v20 + 96;
    *v28.i64 = *v28.i64 - *v24.i64;
    *(v20 + 128) = v28.i64[0];
    v125 = v20 + 128;
    v29 = v27 - v25;
    *(v20 + 160) = v29;
    v124 = v20 + 160;
    *(v20 + 192) = *v28.i64 / 5.0;
    v120 = v20 + 192;
    *v20 = v24.i64[0];
    *(v20 + 224) = v29 / 3.0;
    v119 = v20 + 224;
    if (!*(result + 156))
    {
      *(v20 + 1444) = 0;
      *(v20 + 8) = 0;
      *(v20 + 40) = 0;
      *(v20 + 72) = 0;
      *(v20 + 104) = 0;
      *(v20 + 136) = 0;
      *(v20 + 168) = 0;
      v35 = (v20 + 232);
      goto LABEL_14;
    }

    v30 = *(result + 58);
    v31 = v23 * v30 / 0x3E8;
    v32 = (*(result + 122) + v30) * v23 / 0x3E8;
    v33 = v32 - v31;
    v34 = vcvtd_n_f64_s32(v32 - v31, 2uLL);
    *(v20 + 232) = v34;
    v35 = (v20 + 232);
    v36 = *(result + 26);
    v37 = v22 * v36 / 0x3E8;
    *(v20 + 8) = v37;
    *(v20 + 40) = v31;
    v38 = (*(result + 90) + v36) * v22 / 0x3E8;
    *(v20 + 1444) = 1;
    *(v20 + 72) = v38;
    *(v20 + 104) = v32;
    v39 = v38 - v37;
    *(v20 + 136) = v39;
    *(v20 + 168) = v33;
    v40 = vcvtd_n_f64_s32(v39, 2uLL);
    *(v20 + 200) = v40;
    if (v40 * v34 > 65536.0)
    {
      *(v20 + 1444) = 0;
      *(v20 + 8) = 0;
      *(v20 + 40) = 0;
      *(v20 + 72) = 0;
      *(v20 + 104) = 0;
      *(v20 + 136) = 0;
      *(v20 + 168) = 0;
LABEL_14:
      *(v20 + 200) = 0;
      *v35 = 0;
    }

    v113 = v11;
    if (*(result + 158))
    {
      *(v20 + 1448) = 1;
      v41 = v22 * *(result + 26) / 0x3E8;
      v42 = v23 * *(result + 58) / 0x3E8;
      *(v20 + 16) = v41;
      *(v20 + 48) = v42;
      v43 = (*(result + 120) + *(result + 56)) * v22 / 0x3E8;
      v44 = (*(result + 152) + *(result + 88)) * v23 / 0x3E8;
      *(v20 + 80) = v43;
      *(v20 + 112) = v44;
      v45 = v43 - v41;
      v46 = v45;
      v47 = v44 - v42;
      v48 = v47;
      v49 = vcvtd_n_f64_s32(v45, 2uLL);
      v50 = vcvtd_n_f64_s32(v47, 2uLL);
    }

    else
    {
      *(v20 + 1448) = 0;
      *(v20 + 16) = 0;
      *(v20 + 48) = 0;
      v46 = 0.0;
      v48 = 0.0;
      *(v20 + 80) = 0;
      v49 = 0.0;
      v50 = 0.0;
      *(v20 + 112) = 0;
    }

    v51 = 0;
    v132 = (v20 + 1440);
    v122 = v20 + 256;
    v123 = v20 + 1456;
    *(v20 + 144) = v46;
    *(v20 + 176) = v48;
    v121 = v20 + 288;
    *(v20 + 208) = v49;
    v117 = v20 + 336;
    v118 = v20 + 320;
    *(v20 + 240) = v50;
    v111 = v23;
    v112 = v22;
    v52 = v22;
    v115 = v20 + 384;
    v116 = v20 + 352;
    v53 = v23;
    v129 = v107 + 1472 * v11;
    v114 = v20 + 416;
    v108 = v13;
    v109 = v12;
    v134 = v13;
    do
    {
      if (*(v132 + v51) != 1)
      {
        goto LABEL_92;
      }

      *v28.i32 = *(v129 + 8 * v51);
      v54 = roundf(*v28.i32);
      *(v129 + 8 * v51) = v54;
      *v28.i32 = *(v128 + 8 * v51);
      v55 = roundf(*v28.i32);
      *(v128 + 8 * v51) = v55;
      *v28.i32 = *(v125 + 8 * v51);
      *(v125 + 8 * v51) = roundf(*v28.i32);
      *v28.i32 = *(v124 + 8 * v51);
      *(v124 + 8 * v51) = roundf(*v28.i32);
      *v28.i32 = *(v127 + 8 * v51);
      v56 = roundf(*v28.i32);
      *(v127 + 8 * v51) = v56;
      *v28.i32 = *(v126 + 8 * v51);
      v57 = roundf(*v28.i32);
      *(v126 + 8 * v51) = v57;
      v58 = (v120 + 8 * v51);
      *v28.i32 = *v58;
      *v58 = roundf(*v28.i32);
      v59 = (v119 + 8 * v51);
      v24.i64[0] = *(v122 + 8 * v51);
      *v28.i32 = *v59;
      *v59 = roundf(*v28.i32);
      v60 = (v118 + 4 * v51);
      v61 = (v116 + 8 * v51);
      v62 = (v115 + 8 * v51);
      v63 = (v114 + (v51 << 8));
      v64 = v63 + 16;
      LOBYTE(v103) = v131;
      v102 = *v24.i64;
      *v28.i64 = v52;
      *v24.i64 = v53;
      v135 = (v117 + 4 * v51);
      v133 = v51;
      BlurM::createROI(v58, v28, v24, v54, v55, *&v26, a7, v56, v57, v59, v60, v135, v61, v62, v63, v63 + 16, v102, *(v121 + 8 * v51), v103, v104);
      v51 = v133;
      v65 = *(v130 + 24);
      *v28.i32 = *(v130 + 4584) + (*(v130 + 4580) * v65);
      *(v123 + 4 * v133) = v28.i32[0];
      v66 = *v58;
      v67 = *v59;
      *v24.i64 = *v58 * *v59;
      v68 = *(v129 + 128) * *(v129 + 160);
      if (*v24.i64 < v68)
      {
        *v28.i32 = *v24.i64 / v68 * *v28.i32;
        *(v123 + 4 * v133) = v28.i32[0];
      }

      if (*v28.i32 > 30.0)
      {
        *(v123 + 4 * v133) = 1106247680;
        v28.i32[0] = 30.0;
      }

      v69 = *(v130 + 12);
      if (v69 > 1)
      {
        if (v69 == 2 || v69 == 4)
        {
LABEL_30:
          if (v65 < 6 || (v133 - 1) < 2u || *v28.i32 < 4.0)
          {
            if (((v133 - 1) & 0xFFFE) != 0)
            {
              v70 = 4.0;
            }

            else
            {
              v70 = 0.5;
            }

            if (v65 < 6)
            {
              v70 = 0.1;
            }

            *(v123 + 4 * v133) = v70;
          }
        }
      }

      else
      {
        if (!*(v130 + 12))
        {
          goto LABEL_30;
        }

        if (v69 == 1 && (v65 < 0x1F || (v133 - 1) < 2u || *v28.i32 < 1.0))
        {
          v71 = flt_2249BC340[(v133 - 1) < 2u];
          if (v65 < 0x1F)
          {
            v71 = 0.1;
          }

          *(v123 + 4 * v133) = v71;
        }
      }

      if (v131)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v72 = "OTHER";
          if (v133 <= 2)
          {
            v72 = off_278531708[v133];
          }

          v73 = *(v130 + 16);
          v74 = *(v110 + 480);
          v75 = *(v129 + 8 * v133);
          v76 = *(v128 + 8 * v133);
          v77 = *(v127 + 8 * v133);
          v78 = *(v126 + 8 * v133);
          v79 = *(v125 + 8 * v133);
          v80 = *(v124 + 8 * v133);
          v81 = *(v122 + 8 * v133);
          v82 = *(v121 + 8 * v133);
          *buf = 67113218;
          *v137 = v69;
          *&v137[4] = 1024;
          *&v137[6] = v73;
          *v138 = 2048;
          *&v138[2] = v113;
          LOWORD(v139) = 1024;
          *(&v139 + 2) = v74;
          HIWORD(v139) = 1024;
          *v140 = v112;
          *&v140[4] = 1024;
          *&v140[6] = v111;
          v141 = 2048;
          v142 = v75;
          v143 = 2048;
          v144 = v76;
          v145 = 2048;
          v146 = v77;
          v147 = 2048;
          v148 = v78;
          v149 = 2048;
          v150 = v79;
          v151 = 2048;
          v152 = v80;
          v153 = 2048;
          v154 = v66;
          v155 = 2048;
          v156 = v67;
          v157 = 2080;
          v158 = v72;
          v159 = 2048;
          v160 = v81;
          v161 = 2048;
          v162 = v82;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: CH%d #%08d PyrLvl[%zu]UseLvl[%d]:%dx%d [%.2f %.2f %.2f %.2f %.2f %.2f %.2f %.2f] - %s:%.2fx%.2f\n", buf, 0x98u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v83 = *(v123 + 4 * v133);
          v84 = *(v130 + 24);
          *buf = 134218240;
          *v137 = v83;
          *&v137[8] = 1024;
          *v138 = v84;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: blurTh = %f (lux = %d)\n", buf, 0x12u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v85 = *v60;
          *buf = 67109120;
          *v137 = v85;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_TileNumX = %d\n", buf, 8u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_TileStartX = [\n", buf, 2u);
        }

        v86 = *v60;
        if (*v60 >= 1)
        {
          v87 = 0;
          do
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v88 = *(v12 + 8 * v87);
              *buf = 134217984;
              *v137 = v88;
              _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: %.2f\n", buf, 0xCu);
              v86 = *v60;
            }

            ++v87;
          }

          while (v87 < v86);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: \n ", buf, 2u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v89 = *v135;
          *buf = 67109120;
          *v137 = v89;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_TileNumY = %d\n", buf, 8u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: AFTile_TileStartY = [\n", buf, 2u);
        }

        v90 = *v135;
        if (*v135 >= 1)
        {
          v91 = 0;
          do
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v92 = *(v134 + 8 * v91);
              *buf = 134217984;
              *v137 = v92;
              _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: %.2f\n", buf, 0xCu);
              v90 = *v135;
            }

            ++v91;
          }

          while (v91 < v90);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: \n ", buf, 2u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: AFTile = [\n", buf, 2u);
        }

        v93 = *v135;
        if (*v135 >= 1)
        {
          v94 = 0;
          v95 = *v60;
          do
          {
            if (v95 >= 1)
            {
              for (i = 0; i < v95; ++i)
              {
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v97 = *(v12 + 8 * i);
                  v98 = v64[v94];
                  v99 = *v61;
                  v100 = *v62;
                  *buf = 134218752;
                  *v137 = v97;
                  *&v137[8] = 2048;
                  *v138 = v98;
                  *&v138[8] = 2048;
                  v139 = v99;
                  *v140 = 2048;
                  *&v140[2] = v100;
                  _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: [%.2f, %.2f, %.2f, %.2f];\n", buf, 0x2Au);
                  v95 = *v60;
                }
              }

              v93 = *v135;
            }

            ++v94;
          }

          while (v94 < v93);
        }

        v101 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        v51 = v133;
        if (v101)
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          v51 = v133;
        }
      }

LABEL_92:
      ++v51;
      v12 += 256;
      v134 += 256;
    }

    while (v51 != 4);
    v11 = v113 + 1;
    v12 = v109 + 1472;
    v13 = v108 + 1472;
    result = v130;
  }

  while (v113 != 2);
  return result;
}

void BlurM::Process(int *a1, uint64_t a2)
{
  v151 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BlurM::Process();
  }

  v2 = a1;
  v3 = (a1 + 1144);
  v4 = *a1;
  if (*a1 == 1)
  {
    v5 = a2;
    v109 = *(a1 + 4608);
    if (a1[1152])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = v2[4];
        v7 = v2[1169];
        v8 = v2[1170];
        v9 = v2[1153];
        *buf = 67109888;
        *v144 = v6;
        *&v144[4] = 1024;
        *&v144[6] = v7;
        LOWORD(v145) = 1024;
        *(&v145 + 2) = v8;
        HIWORD(v145) = 1024;
        *v146 = v9;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: #%08d (%4d x %4d) inputCount = %d\n", buf, 0x1Au);
      }

      if (v2[1153])
      {
        v10 = 0;
        v11 = MEMORY[0x277D86220];
        do
        {
          v12 = &v2[5 * v10 + 1154];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(v5 + 8 * v10);
            v14 = *v12;
            v15 = v12[1];
            v16 = v12[2];
            v18 = v12[3];
            v17 = v12[4];
            *buf = 134219520;
            *v144 = v10;
            *&v144[8] = 2048;
            v145 = v13;
            *v146 = 1024;
            *&v146[2] = v14;
            *v147 = 1024;
            *&v147[2] = v15;
            *v148 = 1024;
            *&v148[2] = v16;
            *v149 = 1024;
            *&v149[2] = v17;
            LOWORD(v150[0]) = 1024;
            *(v150 + 2) = v18;
            _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "BlurM: input[%zu] = %p (level = %d) %d x %d, stride = %d, size = %d\n", buf, 0x34u);
          }

          v19 = *(v5 + 8 * v10);
          if (v19)
          {
            v20 = v12[1];
            if (v20)
            {
              if (v12[2])
              {
                v21 = &v19[v20 - 1];
                v22 = 4;
                do
                {
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = *v19;
                    v24 = v19[1];
                    v25 = v19[2];
                    v26 = v19[3];
                    v27 = *(v21 - 3);
                    v28 = *(v21 - 2);
                    v29 = *(v21 - 1);
                    v30 = *v21;
                    *buf = 67110912;
                    *v144 = v23;
                    *&v144[4] = 1024;
                    *&v144[6] = v24;
                    LOWORD(v145) = 1024;
                    *(&v145 + 2) = v25;
                    HIWORD(v145) = 1024;
                    *v146 = v26;
                    *&v146[4] = 1024;
                    *v147 = v27;
                    *&v147[4] = 1024;
                    *v148 = v28;
                    *&v148[4] = 1024;
                    *v149 = v29;
                    *&v149[4] = 1024;
                    v150[0] = v30;
                    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "BlurM: %3d %3d %3d %3d ... %3d %3d %3d %3d\n", buf, 0x32u);
                  }

                  v31 = v12[4];
                  v19 += v31;
                  v21 += v31;
                  --v22;
                }

                while (v22);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "BlurM: ... ... ... ... ... ... ... ... ...\n", buf, 2u);
                  v31 = v12[4];
                }

                v32 = (*(a2 + 8 * v10) + (v12[2] - 4) * v31);
                v33 = &v32[v12[1] - 1];
                v34 = 4;
                do
                {
                  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                  {
                    v35 = *v32;
                    v36 = v32[1];
                    v37 = v32[2];
                    v38 = v32[3];
                    v39 = *(v33 - 3);
                    v40 = *(v33 - 2);
                    v41 = *(v33 - 1);
                    v42 = *v33;
                    *buf = 67110912;
                    *v144 = v35;
                    *&v144[4] = 1024;
                    *&v144[6] = v36;
                    LOWORD(v145) = 1024;
                    *(&v145 + 2) = v37;
                    HIWORD(v145) = 1024;
                    *v146 = v38;
                    *&v146[4] = 1024;
                    *v147 = v39;
                    *&v147[4] = 1024;
                    *v148 = v40;
                    *&v148[4] = 1024;
                    *v149 = v41;
                    *&v149[4] = 1024;
                    v150[0] = v42;
                    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "BlurM: %3d %3d %3d %3d ... %3d %3d %3d %3d\n", buf, 0x32u);
                    v31 = v12[4];
                  }

                  v32 += v31;
                  v33 += v31;
                  --v34;
                }

                while (v34);
              }
            }
          }

          ++v10;
          v5 = a2;
        }

        while (v10 < v2[1153]);
      }
    }

    v43 = v2 + 40;
    v115 = &v2[5 * *v3];
    v113 = (v2 + 1171);
    bzero(v2 + 1171, 0x400uLL);
    *v105 = v2 + 1427;
    memcpy(v2 + 1427, v2 + 40, 0x1160uLL);
    v44 = 0;
    __dst = (v2 + 35309);
    v45 = (v2 + 51693);
    v123 = (v2 + 27117);
    v46 = v109;
    v108 = v2;
    v110 = v3;
    v111 = v2 + 40;
    v119 = (v2 + 51693);
    do
    {
      v47 = &v43[368 * *v3];
      v48 = &v47[v44];
      if (v48[360] == 1)
      {
        v107 = v48[84];
        if (v107 >= 1)
        {
          v118 = 0;
          v49 = 0;
          v50 = &v47[2 * v44];
          v51 = *(v50 + 44);
          v52 = *(v50 + 48);
          v114 = v48[80];
          v128 = v52 / 2;
          v124 = v51 / 2;
          v112 = v51 / 4;
          v53 = v52 + 3;
          *v120 = v52;
          v121 = v44;
          if (v52 >= 0)
          {
            v53 = v52;
          }

          v129 = v53 >> 2;
          do
          {
            if (v114 >= 1)
            {
              v54 = 0;
              v55 = v49;
              do
              {
                v122 = v55;
                v56 = &v43[368 * *v3 + 104 + 64 * v44];
                v126 = *(v56 + 8 * v118 + 128);
                v127 = v54;
                v125 = *(v56 + 8 * v54);
                v57 = v120[0];
                if (v120[0] >= 1)
                {
                  v58 = *v120;
                  v59 = __dst;
                  v60 = *(v56 + 8 * v118 + 128);
                  do
                  {
                    memcpy(v59, (*(a2 + 8 * *v3) + v125 + (v115[1158] * v60++)), v51);
                    v59 += v51;
                    --v58;
                  }

                  while (v58);
                  v61 = 0;
                  v62 = __dst;
                  v45 = v119;
                  v57 = v120[0];
                  v63 = v119;
                  v46 = v109;
                  v2 = v108;
                  LODWORD(v44) = v121;
                  do
                  {
                    if (v51 >= 1)
                    {
                      v64 = v51;
                      v65 = v62;
                      v66 = v63;
                      do
                      {
                        v67 = *v65++;
                        *v66 = 16 * v67;
                        v66 = (v66 + 2);
                        v64 = (v64 - 1);
                      }

                      while (v64);
                    }

                    ++v61;
                    v63 = (v63 + 2 * v51);
                    v62 = v51 + v62;
                  }

                  while (v61 != *v120);
                }

                if (v46)
                {
                  v68 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67110144;
                    *v144 = v51;
                    *&v144[4] = 1024;
                    *&v144[6] = v57;
                    LOWORD(v145) = 1024;
                    *(&v145 + 2) = v44;
                    HIWORD(v145) = 1024;
                    *v146 = v118;
                    *&v146[4] = 1024;
                    *v147 = v127;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: PYRYU8[%dx%df][OBJ=%d][Y=%d][X=%d]=[\n", buf, 0x20u);
                  }

                  BlurM::printPyrRoiU8(*(a2 + 8 * *v3), v125, v126, v51, v57, v115[1158]);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67110144;
                    *v144 = v51;
                    *&v144[4] = 1024;
                    *&v144[6] = v57;
                    LOWORD(v145) = 1024;
                    *(&v145 + 2) = v44;
                    HIWORD(v145) = 1024;
                    *v146 = v118;
                    *&v146[4] = 1024;
                    *v147 = v127;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: ROIS16[%dx%df][OBJ=%d][Y=%d][X=%d]=[\n", buf, 0x20u);
                  }

                  BlurM::print2dRoiDBL(v45, 0, 0, v51, v57, v51);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  LOBYTE(v101) = v46;
                  BlurM::hlwt2(v45, v51, v57, (v2 + 84461), (v2 + 92653), (v2 + 100845), (v2 + 109037), (v2 + 18925), v123, v101, v105[0]);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v128;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: height_l1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v51 / 2;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: width_l1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v68, OS_LOG_TYPE_DEFAULT, "BlurM: a1 = [\n", buf, 2u);
                  }

                  BlurM::print2dRoiDBL((v2 + 84461), 0, 0, v124, v128, v124);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }
                }

                else
                {
                  LOBYTE(v101) = v46;
                  BlurM::hlwt2(v45, v51, v57, (v2 + 84461), (v2 + 92653), (v2 + 100845), (v2 + 109037), (v2 + 18925), v123, v101, v105[0]);
                }

                v69 = v124;
                v70 = v128;
                BlurM::calcEmap((v2 + 92653), v2 + 201690, v2 + 218074, v124, v128, (v2 + 117229), v46);
                v142 = 0;
                BlurM::calcMean((v2 + 109037), v124, v128, &v142, v46);
                if (v46)
                {
                  v71 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v142;
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: d1_median = %d\n", buf, 8u);
                  }

                  v69 = v124;
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v128;
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: height_d1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v51 / 2;
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: width_d1 = %d\n", buf, 8u);
                  }

                  v70 = v128;
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: d1 = [\n", buf, 2u);
                  }

                  BlurM::print2dRoiDBL((v2 + 109037), 0, 0, v124, v128, v124);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  *v141 = 0;
                  BlurM::calcNoiseMAD_Mean((v2 + 109037), v124, v128, &v142, &v141[1], v141, (v2 + 10731), v46, v95);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v141[1];
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: d1_mad_median = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v141[0];
                    _os_log_impl(&dword_2247DB000, v71, OS_LOG_TYPE_DEFAULT, "BlurM: d1_mad_sigma = %d\n", buf, 8u);
                  }

                  v140 = 0;
                  BlurM::calcMean((v2 + 117229), v124, v128, &v140, v46);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v140;
                    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: emap1_median = %d\n", buf, 8u);
                  }
                }

                else
                {
                  *v141 = 0;
                  BlurM::calcNoiseMAD_Mean((v2 + 109037), v124, v128, &v142, &v141[1], v141, (v2 + 10731), v46, v95);
                  v140 = 0;
                  BlurM::calcMean((v2 + 117229), v124, v128, &v140, v46);
                }

                v139 = 1;
                v138 = 0;
                LOBYTE(v96) = v46;
                BlurM::calcNoiseFilter((v2 + 117229), v69, v70, &v140, &v139, &v138, v141, (v2 + 125421), v96, v102);
                v137 = 2;
                BlurM::calcEmax((v2 + 125421), v69, v70, &v137, v2 + 133613, v112, v2 + 37846, v46, v97);
                v136 = 0;
                v72 = v129;
                BlurM::calcSharpness((v2 + 133613), v112, v129, &v136, v46);
                LOBYTE(v103) = v46;
                BlurM::hlwt2((v2 + 84461), v69, v70, (v2 + 135661), (v2 + 137709), (v2 + 139757), (v2 + 141805), (v2 + 18925), v123, v103, v106);
                if (v46)
                {
                  v73 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v129;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: height_l2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v51 / 4;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: width_l2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: a2 = [\n", buf, 2u);
                  }

                  BlurM::print2dRoiDBL((v2 + 135661), 0, 0, v112, v129, v112);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  BlurM::calcEmap((v2 + 137709), v2 + 279514, v2 + 283610, v112, v129, (v2 + 143853), v46);
                  v135 = 0;
                  BlurM::calcMean((v2 + 141805), v112, v129, &v135, v46);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v135;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: d2_median = %d\n", buf, 8u);
                  }

                  v3 = v110;
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v129;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: height_d2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v51 / 4;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: width_d2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: d2 = [\n", buf, 2u);
                  }

                  BlurM::print2dRoiDBL((v2 + 141805), 0, 0, v112, v129, v112);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  *v134 = 0;
                  BlurM::calcNoiseMAD_Mean((v2 + 141805), v112, v129, &v135, &v134[1], v134, (v2 + 10731), v46, v98);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v134[1];
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: d2_mad_median = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v134[0];
                    _os_log_impl(&dword_2247DB000, v73, OS_LOG_TYPE_DEFAULT, "BlurM: d2_mad_sigma = %d\n", buf, 8u);
                  }

                  v133 = 0;
                  v72 = v129;
                  BlurM::calcMean((v2 + 143853), v112, v129, &v133, v46);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v144 = v133;
                    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: emap2_median = %d\n", buf, 8u);
                  }
                }

                else
                {
                  BlurM::calcEmap((v2 + 137709), v2 + 279514, v2 + 283610, v112, v129, (v2 + 143853), v46);
                  v135 = 0;
                  BlurM::calcMean((v2 + 141805), v112, v129, &v135, v46);
                  *v134 = 0;
                  BlurM::calcNoiseMAD_Mean((v2 + 141805), v112, v129, &v135, &v134[1], v134, (v2 + 10731), v46, v98);
                  v133 = 0;
                  BlurM::calcMean((v2 + 143853), v112, v129, &v133, v46);
                  v3 = v110;
                }

                v132 = 0;
                LOBYTE(v99) = v46;
                BlurM::calcNoiseFilter((v2 + 143853), v112, v72, &v133, &v139, &v132, v134, (v2 + 145901), v99, v104);
                *buf = 0;
                BlurM::calcSharpness((v2 + 145901), v112, v72, buf, v46);
                v43 = v111;
                v131 = v111[368 * *v3 + 364 + v121];
                v130 = 0;
                v44 = v121;
                BlurM::detectBlur((v2 + 133613), v2 + 291802, v112, v72, &v131, &v130 + 1, &v130, v46, v100);
                v74 = &v113[32 * v122 + 2 * v121];
                *v74 = v136;
                *(v74 + 4) = *buf;
                v75 = v130;
                *(v74 + 8) = HIDWORD(v130);
                *(v74 + 12) = v75;
                v55 = v122 + 1;
                v54 = v127 + 1;
                v45 = v119;
              }

              while (v127 + 1 != v114);
              v49 = v122 + 1;
            }

            ++v118;
          }

          while (v118 != v107);
        }
      }

      ++v44;
    }

    while (v44 != 4);
    if (v3[32])
    {
      v76 = 0;
      v77 = (v2 + 1175);
      v78 = (v2 + 1179);
      v79 = (v2 + 1183);
      v80 = MEMORY[0x277D86220];
      do
      {
        if (*(*v105 + 1472 * *(v2 + 10124) + 4 * v76 + 1440) == 1)
        {
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = off_278531720[v76];
            *buf = 136315138;
            *v144 = v81;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: Output[OBJ=%s]:\n", buf, 0xCu);
          }

          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: sharpnessL1 = [\n", buf, 2u);
          }

          v82 = 0;
          v83 = v113;
          do
          {
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v84 = *v83;
              *buf = 134218240;
              *v144 = v82;
              *&v144[8] = 2048;
              v145 = v84;
              _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v82;
            v83 += 16;
          }

          while (v82 != 16);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: sharpnessL2 = [\n", buf, 2u);
          }

          v85 = 0;
          v86 = v77;
          do
          {
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v87 = *v86;
              *buf = 134218240;
              *v144 = v85;
              *&v144[8] = 2048;
              v145 = v87;
              _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v85;
            v86 += 16;
          }

          while (v85 != 16);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: blurConf = [\n", buf, 2u);
          }

          v88 = 0;
          v89 = v78;
          do
          {
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v90 = *v89;
              *buf = 134218240;
              *v144 = v88;
              *&v144[8] = 2048;
              v145 = v90;
              _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v88;
            v89 += 16;
          }

          while (v88 != 16);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: blurExtent = [\n", buf, 2u);
          }

          v91 = 0;
          v92 = v79;
          do
          {
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v93 = *v92;
              *buf = 134218240;
              *v144 = v91;
              *&v144[8] = 2048;
              v145 = v93;
              _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v91;
            v92 += 16;
          }

          while (v91 != 16);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2247DB000, v80, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }
        }

        ++v76;
        v113 += 2;
        ++v77;
        ++v78;
        ++v79;
      }

      while (v76 != 4);
    }

    v94 = 0;
  }

  else if (a1[1152])
  {
    v94 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v144 = 1;
      *&v144[4] = 1024;
      *&v144[6] = v4;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "BlurM: incompatible context version (expected %d, got %d)\n", buf, 0xEu);
    }
  }

  else
  {
    v94 = 1;
  }

  v2[2] = v94;
}

uint64_t H16ISP::DestroyH16ISPDeviceController(H16ISP *this, H16ISP::H16ISPDeviceController *a2)
{
  v3 = CFRetain(*(this + 6));
  CFRunLoopStop(v3);
  v5 = 0;
  pthread_join(*(this + 8), &v5);
  H16ISP::H16ISPDeviceController::~H16ISPDeviceController(this);
  MEMORY[0x22AA55B60]();
  CFRelease(v3);
  return 0;
}

char *H16ISP::GetOutputPresetForOutputSize(int a1, int a2, uint64_t a3, int a4, int a5)
{
  v8 = 0;
  result = H16ISP::getOutputPresets(a1, &v8, a3, a4, a5);
  if (!result)
  {
    return result;
  }

  v7 = v8;
  if (a2 == 255)
  {
    if (v8)
    {
      while ((result[113] & 1) == 0)
      {
        result += 120;
        if (!--v7)
        {
          return 0;
        }
      }

      return result;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  while (*result != a2)
  {
    result += 120;
    if (!--v7)
    {
      return 0;
    }
  }

  return result;
}

BOOL H16ISP::isContextSwitchSupported(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  result = 0;
  if (*a1 != *a2)
  {
    v4 = a2[4];
    if (((a3 >> v4) & 1) != 0 || a1[4] == v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPGetYUVSBufferParamsForDataBufferSize(uint64_t this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    *a2 = this >> 4;
    if ((this & 0xF) != 0)
    {
      *a2 = (this >> 4) + 1;
    }
  }

  if (a3)
  {
    *a3 = 16;
  }

  return this;
}

CFMutableDictionaryRef H16ISP::H16ISPCreateCVBuffer(unsigned int a1, unsigned int a2, int a3, int a4, int a5, int a6, float a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12, int a13, int a14)
{
  v18 = a13;
  v17 = a14;
  v44 = a2;
  valuePtr = a1;
  v42 = a4;
  v43 = a3;
  v41 = a7;
  pixelBufferOut = 0;
  switch(a5)
  {
    case 0:
      v21 = 875704422;
      if (!a6)
      {
        v21 = 875704438;
      }

      goto LABEL_82;
    case 2:
      pixelFormatType = 1650943796;
      if ((a12 & 4) != 0)
      {
        v21 = 1735549492;
      }

      else if ((a12 & 8) != 0)
      {
        v21 = 1919379252;
      }

      else
      {
        if ((a12 & 0x20) == 0)
        {
          goto LABEL_83;
        }

        v21 = 1734505012;
      }

      goto LABEL_82;
    case 3:
      v21 = 825437747;
      goto LABEL_82;
    case 4:
      v21 = 825306677;
      goto LABEL_82;
    case 5:
      v21 = 1932996149;
      goto LABEL_82;
    case 6:
    case 7:
    case 10:
    case 19:
    case 43:
      v21 = 1278226488;
      goto LABEL_82;
    case 8:
    case 47:
      v21 = 1278226742;
      goto LABEL_82;
    case 11:
      v21 = 1751411059;
      goto LABEL_82;
    case 12:
      v21 = 1278226736;
      goto LABEL_82;
    case 13:
      v21 = 1530422832;
      if (a6)
      {
        goto LABEL_82;
      }

      goto LABEL_49;
    case 14:
      v21 = 2100848176;
      if (!a6)
      {
        goto LABEL_49;
      }

      goto LABEL_82;
    case 15:
      v21 = 2016686640;
      if (!a6)
      {
        goto LABEL_82;
      }

      goto LABEL_64;
    case 16:
      v23 = 1530422832;
      if (a6)
      {
        goto LABEL_28;
      }

      goto LABEL_56;
    case 17:
      if (a6)
      {
        v21 = 2105042480;
      }

      else
      {
        v21 = 2105046576;
      }

      goto LABEL_82;
    case 18:
      v21 = 1882468912;
      if (a6)
      {
LABEL_64:
        v21 += 3276800;
      }

      goto LABEL_82;
    case 20:
      if ((a12 & 2) == 0)
      {
        goto LABEL_43;
      }

      v21 = 1651847472;
      goto LABEL_82;
    case 21:
LABEL_43:
      v21 = 1650943796;
      goto LABEL_82;
    case 22:
      v21 = 641230384;
      if (!a6)
      {
LABEL_49:
        v21 += 4096;
      }

      goto LABEL_82;
    case 23:
      v23 = 641230384;
      if (a6)
      {
LABEL_28:
        v21 = v23 + 0x400000;
      }

      else
      {
LABEL_56:
        v21 = v23 + 4198400;
      }

      goto LABEL_82;
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
      v19 = &byte_27D6F1F08;
      v20 = 65;
      break;
    case 30:
      v21 = 1751410032;
      goto LABEL_82;
    case 37:
      v21 = 1651519798;
      goto LABEL_82;
    case 38:
      if ((a12 & 2) != 0)
      {
        v21 = 1651587122;
      }

      else
      {
        pixelFormatType = 1650946096;
        if ((a12 & 4) != 0)
        {
          v21 = 1735553072;
        }

        else
        {
          if ((a12 & 8) != 0)
          {
            v22 = 1919378232;
          }

          else
          {
            if ((a12 & 0x20) == 0)
            {
              goto LABEL_83;
            }

            v22 = 1734501176;
          }

          v21 = v22 + 3320;
        }
      }

      goto LABEL_82;
    case 39:
      v21 = 1650946100;
      goto LABEL_82;
    case 40:
      if ((a12 & 2) != 0)
      {
        v21 = 1651925816;
      }

      else
      {
        pixelFormatType = 1650942776;
        if ((a12 & 4) != 0)
        {
          v21 = 1735549752;
        }

        else if ((a12 & 8) != 0)
        {
          v21 = 1919378232;
        }

        else
        {
          if ((a12 & 0x20) == 0)
          {
            goto LABEL_83;
          }

          v21 = 1734501176;
        }
      }

      goto LABEL_82;
    case 41:
      v21 = 1652056888;
      goto LABEL_82;
    case 42:
      if ((a12 & 2) != 0)
      {
        v21 = 1651519537;
      }

      else
      {
        v21 = 1278226481;
      }

      goto LABEL_82;
    case 44:
      if ((a12 & 2) != 0)
      {
        v21 = 1651798066;
      }

      else
      {
        v21 = 1650946098;
      }

      goto LABEL_82;
    case 45:
      v21 = 893595958;
      goto LABEL_82;
    case 46:
      v21 = 1111970369;
      goto LABEL_82;
    case 48:
      v21 = 843264310;
      goto LABEL_82;
    case 49:
      v21 = 860041526;
      goto LABEL_82;
    case 50:
      v21 = 876818742;
      goto LABEL_82;
    case 51:
      v21 = 910373174;
      goto LABEL_82;
    case 52:
      v21 = 927150390;
      goto LABEL_82;
    case 53:
      v21 = 943927606;
      goto LABEL_82;
    case 54:
      v21 = 1278226738;
      goto LABEL_82;
    default:
      if (a6)
      {
        v21 = 2037741158;
      }

      else
      {
        v21 = 2037741171;
      }

      goto LABEL_82;
  }

  while (*(v19 - 1) != a5 || *v19 != a6)
  {
    v19 += 20;
    if (!--v20)
    {
      v21 = 0;
      goto LABEL_82;
    }
  }

  v21 = *(v19 - 2);
LABEL_82:
  pixelFormatType = v21;
LABEL_83:
  v24 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v26 = result;
    v27 = CFNumberCreate(v24, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v26, *MEMORY[0x277CC4EC8], v27);
    CFRelease(v27);
    v28 = CFNumberCreate(v24, kCFNumberIntType, &v44);
    CFDictionarySetValue(v26, *MEMORY[0x277CC4DD8], v28);
    CFRelease(v28);
    if (a3)
    {
      v29 = CFNumberCreate(v24, kCFNumberIntType, &v43);
      CFDictionarySetValue(v26, *MEMORY[0x277CC4DA0], v29);
      CFRelease(v29);
    }

    if (a4)
    {
      v30 = CFNumberCreate(v24, kCFNumberIntType, &v42);
      CFDictionarySetValue(v26, *MEMORY[0x277CC4DB8], v30);
      CFRelease(v30);
    }

    if (a12 < 0)
    {
      CFDictionarySetValue(v26, *MEMORY[0x277CC4DA8], *MEMORY[0x277CBED28]);
    }

    if (v18)
    {
      v31 = CFNumberCreate(v24, kCFNumberIntType, &a13);
      CFDictionarySetValue(v26, *MEMORY[0x277CC4EB8], v31);
      CFRelease(v31);
    }

    if (a7 != 0.0)
    {
      v32 = CFNumberCreate(v24, kCFNumberFloatType, &v41);
      CFDictionarySetValue(v26, *MEMORY[0x277CC4DD0], v32);
      CFRelease(v32);
    }

    if (v17 != -1)
    {
      v33 = CFNumberCreate(v24, kCFNumberIntType, &a14);
      CFDictionarySetValue(v26, *MEMORY[0x277CC4DC8], v33);
      CFRelease(v33);
    }

    v34 = CFNumberCreate(v24, kCFNumberIntType, &pixelFormatType);
    CFDictionarySetValue(v26, *MEMORY[0x277CC4E30], v34);
    CFRelease(v34);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v36 = Mutable;
      if ((a12 & 0x40) != 0)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B80], *MEMORY[0x277CBED28]);
      }

      v38 = a10;
      v37 = CFNumberCreate(0, kCFNumberIntType, &v38);
      CFDictionarySetValue(v36, *MEMORY[0x277CD2970], v37);
      CFRelease(v37);
      CFDictionaryAddValue(v26, *MEMORY[0x277CC4DE8], v36);
      CFRelease(v36);
      CVPixelBufferCreate(v24, valuePtr, v44, pixelFormatType, v26, &pixelBufferOut);
      CFRelease(v26);
      return pixelBufferOut;
    }

    else
    {
      CFRelease(v26);
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::CalculateTotalCrop(H16ISP *this, int a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, _DWORD *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17)
{
  v17 = 1.0;
  v18 = 1.0;
  if (a7)
  {
    v18 = a5 / a7;
  }

  if (a8)
  {
    v17 = a6 / a8;
  }

  *a13 = (round(v18 * a9) + (a3 + this));
  *a14 = (round(v17 * a10) + (a4 + a2));
  *a15 = vcvtad_u64_f64(v18 * a11);
  *a16 = vcvtad_u64_f64(v17 * a12);
  return 0;
}

unsigned int *H16ISP::FindCommandInSetfile(H16ISP *this, unsigned __int8 *a2, int a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (this + 20);
    do
    {
      v5 = *v4;
      if ((v4 + v5) > &a2[this])
      {
        break;
      }

      if (*(v4 + 4) == a3)
      {
        return v4 + 1;
      }

      v4 = (v4 + (v5 + 4));
      --v3;
    }

    while (v3);
  }

  return 0;
}

H16ISP::H16ISPCFLocalMessagePort *H16ISP::H16ISPCFLocalMessagePort::H16ISPCFLocalMessagePort(H16ISP::H16ISPCFLocalMessagePort *this, const __CFString *a2, CFDataRef (__cdecl *a3)(CFMessagePortRef, SInt32, CFDataRef, void *), void (__cdecl *a4)(CFMessagePortRef, void *), void *a5)
{
  *this = &unk_283813DA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  context.version = 0;
  context.info = a5;
  memset(&context.retain, 0, 24);
  v7 = CFMessagePortCreateLocal(0, a2, a3, &context, 0);
  *(this + 1) = v7;
  if (a4 && v7)
  {
    CFMessagePortSetInvalidationCallBack(v7, a4);
  }

  return this;
}

void H16ISP::H16ISPCFLocalMessagePort::~H16ISPCFLocalMessagePort(H16ISP::H16ISPCFLocalMessagePort *this)
{
  *this = &unk_283813DA8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFMessagePortInvalidate(v3);
    CFRelease(*(this + 1));
  }
}

{
  H16ISP::H16ISPCFLocalMessagePort::~H16ISPCFLocalMessagePort(this);

  JUMPOUT(0x22AA55B60);
}

CFRunLoopSourceRef H16ISP::H16ISPCFLocalMessagePort::GetRunLoopSource(H16ISP::H16ISPCFLocalMessagePort *this)
{
  result = *(this + 2);
  if (!result)
  {
    result = CFMessagePortCreateRunLoopSource(0, *(this + 1), 0);
    *(this + 2) = result;
  }

  return result;
}

H16ISP::H16ISPCFRemoteMessagePort *H16ISP::H16ISPCFRemoteMessagePort::H16ISPCFRemoteMessagePort(H16ISP::H16ISPCFRemoteMessagePort *this, const __CFString *a2, void (__cdecl *a3)(CFMessagePortRef, void *))
{
  *this = &unk_283813DC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  Remote = CFMessagePortCreateRemote(0, a2);
  *(this + 1) = Remote;
  if (a3 && Remote)
  {
    CFMessagePortSetInvalidationCallBack(Remote, a3);
  }

  return this;
}

void H16ISP::H16ISPCFRemoteMessagePort::~H16ISPCFRemoteMessagePort(H16ISP::H16ISPCFRemoteMessagePort *this)
{
  *this = &unk_283813DC8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  H16ISP::H16ISPCFRemoteMessagePort::~H16ISPCFRemoteMessagePort(this);

  JUMPOUT(0x22AA55B60);
}

CFRunLoopSourceRef H16ISP::H16ISPCFRemoteMessagePort::GetRunLoopSource(H16ISP::H16ISPCFRemoteMessagePort *this)
{
  result = *(this + 2);
  if (!result)
  {
    result = CFMessagePortCreateRunLoopSource(0, *(this + 1), 0);
    *(this + 2) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPGetMachThreadPriority(H16ISP *this, integer_t *a2, int *a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  v4 = this;
  thread_info_outCnt = 10;
  v5 = thread_info(this, 3u, thread_info_out, &thread_info_outCnt);
  if (!v5)
  {
    switch(v17)
    {
      case 4:
        thread_info_outCnt = 4;
        v6 = thread_info(v4, 0xCu, v14, &thread_info_outCnt);
        if (v6)
        {
          v7 = *MEMORY[0x277D85DF8];
          v8 = "thread_info() for THREAD_SCHED_FIFO_INFO failed";
          v9 = 47;
          goto LABEL_4;
        }

        v11 = v14[1];
        break;
      case 2:
        thread_info_outCnt = 5;
        v6 = thread_info(v4, 0xBu, v13, &thread_info_outCnt);
        if (v6)
        {
          v7 = *MEMORY[0x277D85DF8];
          v8 = "thread_info() for THREAD_SCHED_RR_INFO failed\n";
          v9 = 46;
          goto LABEL_4;
        }

        v11 = v13[1];
        break;
      case 1:
        thread_info_outCnt = 5;
        v6 = thread_info(v4, 0xAu, v12, &thread_info_outCnt);
        if (v6)
        {
          v7 = *MEMORY[0x277D85DF8];
          v8 = "thread_info() for THREAD_SCHED_TIMESHARE_INFO failed\n";
          v9 = 53;
          goto LABEL_4;
        }

        v11 = v12[1];
        break;
      default:
        fwrite("Unknown mach thread policy\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
        return 0;
    }

    *a2 = v11;
    return v6;
  }

  v6 = v5;
  v7 = *MEMORY[0x277D85DF8];
  v8 = "thread_info() for THREAD_BASIC_INFO failed\n";
  v9 = 43;
LABEL_4:
  fwrite(v8, v9, 1uLL, v7);
  return v6;
}

uint64_t H16ISP::H16ISPVerifyFirmwareDigest(H16ISP *this, unint64_t a2, void *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (a2 >> 25)
  {
    fprintf(*MEMORY[0x277D85DF8], "Computing signature for buffer %p whose size 0x%08zx is too large.  Failing. \n", this, a2);
    return 3758097090;
  }

  else
  {
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, this, v4);
    CC_SHA256_Final(md, &c);
    return *a3 != *md || a3[1] != v13 || a3[2] != v14 || a3[3] != v15;
  }
}

uint64_t H16ISP::H16ISPInflateFirmwareBuffer(H16ISP *this, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t *a5)
{
  memset(&strm.zalloc, 0, 24);
  strm.avail_in = a2;
  strm.next_in = 0;
  if (HIDWORD(a2))
  {
    fprintf(*MEMORY[0x277D85DF8], "Cannot initialize decompression.  Compressed buffer size %zd too large. \n", a2);
    return 4294967292;
  }

  else
  {
    v8 = inflateInit2_(&strm, 47, "1.2.12", 112);
    if (v8)
    {
      v9 = v8;
      fwrite("Cannot initialize decompression.  Invalid input. \n", 0x32uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    else
    {
      v11 = *(this + a2 - 4);
      *a4 = v11;
      if (!(v11 >> 25))
      {
        operator new[]();
      }

      fprintf(*MEMORY[0x277D85DF8], "Expected size for decompressed firmware 0x%08x is larger than 0x%08x.  Failing. \n", v11, 0x2000000);
      return 4294967293;
    }
  }

  return v9;
}

uint64_t H16ISP::getCameraStrobeMaxLoad(H16ISP *this)
{
  valuePtr = 0x10000;
  v1 = *MEMORY[0x277CD2898];
  v2 = IOServiceNameMatching("AppleDieTempController");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService)
  {
    fwrite("could not find AppleDieTempController", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0x10000;
  }

  v4 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CameraStrobeMaxLoad", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = "could not find CameraStrobeMaxLoad of die temperature controller";
    v10 = 64;
    goto LABEL_7;
  }

  v6 = CFProperty;
  Value = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
  CFRelease(v6);
  if (!Value)
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = "could not get CameraStrobeMaxLoad of die temperature controller";
    v10 = 63;
LABEL_7:
    fwrite(v9, v10, 1uLL, v8);
  }

  IOObjectRelease(v4);
  return valuePtr;
}

BOOL H16ISP::getExternalStrobeAttached(H16ISP *this)
{
  *existing = 0;
  v1 = IOServiceMatching("IOAccessoryManager");
  IOServiceGetMatchingServices(*MEMORY[0x277CD2898], v1, existing);
  if (existing[0])
  {
    v2 = IOIteratorNext(existing[0]);
    v3 = v2 != 0;
    if (v2)
    {
      v4 = v2;
      v5 = *MEMORY[0x277CBECE8];
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOAccessoryDigitalID", v5, 0);
        if (CFProperty)
        {
          v7 = CFProperty;
          v8 = CFGetTypeID(CFProperty);
          if (v8 == CFDataGetTypeID() && CFDataGetLength(v7) >= 4)
          {
            v16.location = 0;
            v16.length = 4;
            CFDataGetBytes(v7, v16, &existing[1]);
            v9 = 0;
            v10 = &H16ISP::accessoryStrobeIDTable;
            do
            {
              v11 = *v10++;
              v12 = existing[1] != v11;
            }

            while (existing[1] != v11 && v9++ <= 1);
            IOObjectRelease(v4);
            CFRelease(v7);
            if (!v12)
            {
              break;
            }
          }

          else
          {
            IOObjectRelease(v4);
            CFRelease(v7);
          }
        }

        else
        {
          IOObjectRelease(v4);
        }

        v4 = IOIteratorNext(existing[0]);
        v3 = v4 != 0;
      }

      while (v4);
    }

    IOObjectRelease(existing[0]);
  }

  else
  {
    fwrite("could not find IOAccessoryManager", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  return v3;
}

uint64_t H16ISP::PortTypeToModuleDescription(H16ISP *this, const __CFString *a2)
{
  v2 = 1919246706;
  if (this)
  {
    PortTypeMap = H16ISP::GetPortTypeMap(this, 0);
    if (PortTypeMap)
    {
      v2 = PortTypeMap[2];
      free(PortTypeMap);
    }
  }

  return v2;
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void H16ISP::dictionaryValueEnumerator(const __CFString *this, H16ISP *a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
  if (CStringPtr || (CStringPtr = buffer, CFStringGetCString(this, buffer, 100, 0x8000100u)))
  {
    if (a2)
    {
      XpcFromType = H16ISP::createXpcFromType(a2, v7);
      if (XpcFromType)
      {
        v10 = XpcFromType;
        xpc_dictionary_set_value(a3, CStringPtr, XpcFromType);
        xpc_release(v10);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::dictionaryValueEnumerator(CStringPtr);
    }
  }
}

void H16ISP::arrayValueEnumerator(H16ISP *this, void *a2, void *a3)
{
  XpcFromType = H16ISP::createXpcFromType(this, a2);
  xpc_array_append_value(a2, XpcFromType);

  xpc_release(XpcFromType);
}

uint64_t ___ZN6H16ISPL23createDictionaryFromXpcEPv_block_invoke(uint64_t a1, void *a2, H16ISP *this)
{
  TypeFromXpc = H16ISP::createTypeFromXpc(this, a2);
  if (TypeFromXpc)
  {
    v6 = TypeFromXpc;
    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    CFDictionarySetValue(*(a1 + 32), v7, v6);
    CFRelease(v7);
    CFRelease(v6);
  }

  return 1;
}

uint64_t ___ZN6H16ISPL18createArrayFromXpcEPv_block_invoke(uint64_t a1, void *a2, H16ISP *this)
{
  TypeFromXpc = H16ISP::createTypeFromXpc(this, a2);
  CFArraySetValueAtIndex(*(a1 + 32), a2, TypeFromXpc);
  CFRelease(TypeFromXpc);
  return 1;
}

void normalizeCoords(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  Matrix<double>::Matrix(a3, 3, *(a1 + 20));
  *a3 = &unk_283812E40;
  if (*(a1 + 20))
  {
    v6 = 0;
    v7 = a2->f64[0];
    v8 = a2[1];
    v8.f64[1] = a2[2].f64[1];
    v9 = v8;
    do
    {
      MatrixNxPts<3u,double>::CloneColumn(a1, v6, &v12);
      v10 = vmulq_n_f64(vsubq_f64(v12, v9), 1.0 / (v7 * v13));
      v11 = 0x3FF0000000000000;
      MatrixNxPts<3u,double>::SetColumn(a3, v6++, &v10);
    }

    while (v6 < *(a1 + 20));
  }
}

double MatrixNxPts<3u,double>::SetColumn(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1 + 16) || (v3 = *(a1 + 20), v3 <= a2))
  {
    GMC_Homography();
  }

  v4 = 0;
  v5 = (*(a1 + 8) + 8 * a2);
  v6 = 8 * v3;
  do
  {
    result = *(a3 + v4);
    *v5 = result;
    v4 += 8;
    v5 = (v5 + v6);
  }

  while (v4 != 24);
  return result;
}

uint64_t GMC_WorldFromPoints@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X3>, const double *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v43 = Matrix<double>::Matrix(a8, 3, *(a1 + 20));
  *v43 = &unk_283812E40;
  v66 = 3;
  v67 = 0;
  v64 = &unk_283812E40;
  v65 = 0;
  v62 = 3;
  v63 = 0;
  v60 = &unk_283812E40;
  v61 = 0;
  if (a7)
  {
    normalizeCoords(a1, a3, &v57);
    if (v67 == 1 && v65)
    {
      MEMORY[0x22AA55B40](v65, 0x1000C8000313F17);
    }

    v66 = v58;
    v65 = *(&v57 + 1);
    v67 = v59;
    v59 = 0;
    Matrix<double>::~Matrix(&v57);
    normalizeCoords(a2, a4, &v55);
    MatrixMxN<3u,3u,double>::operator*<3u>(a5, &v55, &v57);
    if (v63 == 1 && v61)
    {
      MEMORY[0x22AA55B40](v61, 0x1000C8000313F17);
    }

    v62 = v58;
    v61 = *(&v57 + 1);
    v63 = v59;
    v59 = 0;
    Matrix<double>::~Matrix(&v57);
    v15 = &v55;
  }

  else
  {
    v66 = *(a1 + 16);
    v65 = *(a1 + 8);
    v67 = 0;
    MatrixMxN<3u,3u,double>::operator*<3u>(a5, a2, &v57);
    if (v63 == 1 && v61)
    {
      MEMORY[0x22AA55B40](v61, 0x1000C8000313F17);
    }

    v62 = v58;
    v61 = *(&v57 + 1);
    v63 = v59;
    v59 = 0;
    v15 = &v57;
  }

  Matrix<double>::~Matrix(v15);
  if (HIDWORD(v66))
  {
    v16 = 0;
    do
    {
      MatrixNxPts<3u,double>::CloneColumn(&v64, v16, v52);
      v44 = v16;
      MatrixNxPts<3u,double>::CloneColumn(&v60, v16, v51);
      v17 = 0;
      v49 = 0uLL;
      v50 = 0;
      do
      {
        *(&v49 + v17 * 8) = -*&v51[v17];
        v18 = v17++ >= 2;
      }

      while (!v18);
      v19 = 0;
      v55 = v49;
      v56 = v50;
      v57 = v49;
      v58 = v50;
      v20 = 0.0;
      do
      {
        v20 = v20 + *(&v57 + v19) * *(&v57 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      v21 = 0;
      v22 = sqrt(v20);
      do
      {
        *(&v57 + v21) = *(&v57 + v21) / v22;
        v21 += 8;
      }

      while (v21 != 24);
      v23 = 0;
      v24 = 0.0;
      do
      {
        v24 = v24 + *(&v57 + v23 * 8) * *&v52[v23];
        ++v23;
      }

      while (v23 != 3);
      v25 = 0;
      v49 = 0uLL;
      v50 = 0;
      do
      {
        *(&v49 + v25) = *(&v57 + v25) * -v24;
        v18 = v25 >= 0x10;
        v25 += 8;
      }

      while (!v18);
      v26 = 0;
      v53 = v49;
      v54 = v50;
      do
      {
        *(&v53 + v26 * 8) = *&v52[v26] + *(&v53 + v26 * 8);
        ++v26;
      }

      while (v26 != 3);
      v27 = 0;
      v28 = 0.0;
      do
      {
        v28 = v28 + *(&v53 + v27) * *(a6 + v27);
        v27 += 8;
      }

      while (v27 != 24);
      v29 = 0;
      v30 = 0.0;
      do
      {
        v30 = v30 + *(&v53 + v29 * 8) * *&v52[v29];
        ++v29;
      }

      while (v29 != 3);
      v31 = 0;
      v32 = 0.0;
      do
      {
        v32 = v32 + *(&v57 + v31) * *(a6 + v31);
        v31 += 8;
      }

      while (v31 != 24);
      v33 = 0;
      v34 = 0.0;
      do
      {
        v34 = v34 + *(&v57 + v33) * *(&v55 + v33);
        v33 += 8;
      }

      while (v33 != 24);
      v35 = 0;
      memset(v46, 0, sizeof(v46));
      v36 = v28 / v30;
      do
      {
        *&v46[v35] = v36 * *&v52[v35];
        v18 = v35++ >= 2;
      }

      while (!v18);
      v37 = 0;
      v38 = (v32 - v36 * v24) / v34;
      memset(v45, 0, sizeof(v45));
      do
      {
        *&v45[v37] = v38 * *&v51[v37];
        v18 = v37++ >= 2;
      }

      while (!v18);
      v39 = 0;
      memset(v47, 0, sizeof(v47));
      do
      {
        *&v47[v39] = *&v46[v39] + *&v45[v39];
        ++v39;
      }

      while (v39 != 3);
      v40 = 0;
      memset(v48, 0, sizeof(v48));
      do
      {
        *&v48[v40] = *&v47[v40] + *(a6 + v40 * 8);
        ++v40;
      }

      while (v40 != 3);
      v41 = 0;
      v49 = 0uLL;
      v50 = 0;
      do
      {
        *(&v49 + v41 * 8) = *&v48[v41] * 0.5;
        v18 = v41++ >= 2;
      }

      while (!v18);
      MatrixNxPts<3u,double>::SetColumn(v43, v16++, &v49);
    }

    while (v44 + 1 < HIDWORD(v66));
  }

  Matrix<double>::~Matrix(&v60);
  return Matrix<double>::~Matrix(&v64);
}

void sub_2248EA660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  Matrix<double>::~Matrix(&a37);
  Matrix<double>::~Matrix(v37 - 176);
  Matrix<double>::~Matrix(v37 - 144);
  Matrix<double>::~Matrix(a10);
  _Unwind_Resume(a1);
}

double H16ISP::DCSAudioAccelManager::DCSAudioAccelManager(H16ISP::DCSAudioAccelManager *this, H16ISP::H16ISPDevice *a2)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  return result;
}

void H16ISP::DCSAudioAccelManager::~DCSAudioAccelManager(H16ISP::H16ISPDevice **this)
{
  if (*this == 1)
  {
    H16ISP::DCSAudioAccelManager::StopStreaming(this);
  }

  if (this[8])
  {
    H16ISP::DCSAudioAccelManager::DestroyStreamSession(this);
  }
}

uint64_t H16ISP::DCSAudioAccelManager::StopStreaming(H16ISP::H16ISPDevice **this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v2 = H16ISP::H16ISPDevice::ISP_DCS_EnableAudio(this[9], 0, this[1] != 0);
    if (v2)
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *this;
        v5 = this[1];
        v15 = 136315906;
        v16 = "StopStreaming";
        v17 = 2048;
        v18 = v4;
        v19 = 2048;
        v20 = v5;
        v21 = 1024;
        v22 = v2;
        _os_log_error_impl(&dword_2247DB000, v3, OS_LOG_TYPE_ERROR, "%s - Send CISP_CMD_DCS_AUDIO_ACCEL_ENABLE failure: isEnable=%llu isEnableTestMode=%llu result=0x%08X\n", &v15, 0x26u);
      }
    }

    else
    {
      *this = 0;
    }
  }

  else
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      H16ISP::DCSAudioAccelManager::StopStreaming(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  return v2;
}

uint64_t H16ISP::DCSAudioAccelManager::DestroyStreamSession(H16ISP::DCSAudioAccelManager *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      H16ISP::DCSAudioAccelManager::DestroyStreamSession(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v3 = H16ISP::H16ISPBufferReceiver::stopReceive(v2);
  if (v3)
  {
    v4 = v3;
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::DCSAudioAccelManager::DestroyStreamSession();
    }

    return v4;
  }

  v14 = H16ISP::H16ISPBufferReceiver::removeBufferPoolFromBufferReceiver(*(this + 8), *(this + 25));
  if (v14)
  {
    v4 = v14;
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      H16ISP::DCSAudioAccelManager::DestroyStreamSession();
    }

    return v4;
  }

  v17 = H16ISP::DestroyH16ISPBufferReceiver(*(this + 8), v15);
  if (!v17)
  {
    *(this + 8) = 0;
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v20 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      H16ISP::DCSAudioAccelManager::DestroyStreamSession(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    return 0;
  }

  v4 = v17;
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    H16ISP::DCSAudioAccelManager::DestroyStreamSession();
  }

  return v4;
}

void *H16ISP::DCSAudioAccelManager::SetTestMode(void *this, uint64_t a2)
{
  if (this[1] != a2)
  {
    v3 = this;
    if (*this == 1)
    {
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      v5 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v4 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        H16ISP::DCSAudioAccelManager::SetTestMode(v4, v6, v7, v8, v9, v10, v11, v12);
      }

      this = H16ISP::DCSAudioAccelManager::StopStreaming(v3);
      v13 = *v3;
      *(v3 + 8) = a2;
      if (v13 == 1)
      {
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v14 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          H16ISP::DCSAudioAccelManager::SetTestMode(v14, v15, v16, v17, v18, v19, v20, v21);
        }

        return H16ISP::DCSAudioAccelManager::StartStreaming(v3);
      }
    }

    else
    {
      this[1] = a2;
    }
  }

  return this;
}

uint64_t H16ISP::DCSAudioAccelManager::StartStreaming(H16ISP::H16ISPDevice **this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v1 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      H16ISP::DCSAudioAccelManager::StartStreaming(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    return 0;
  }

  else
  {
    v9 = H16ISP::H16ISPDevice::ISP_DCS_EnableAudio(this[9], 1, this[1] != 0);
    if (v9)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *this;
        v13 = this[1];
        v15 = 136315906;
        v16 = "StartStreaming";
        v17 = 2048;
        v18 = v12;
        v19 = 2048;
        v20 = v13;
        v21 = 1024;
        v22 = v9;
        _os_log_error_impl(&dword_2247DB000, v11, OS_LOG_TYPE_ERROR, "%s - Send CISP_CMD_DCS_AUDIO_ACCEL_ENABLE failure: isEnable=%llu isEnableTestMode=%llu result=0x%08X\n", &v15, 0x26u);
      }
    }

    else
    {
      *this = 1;
    }
  }

  return v9;
}

uint64_t H16ISP::DCSAudioAccelManager::SetCallbackBlock(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  H16ISP::MyAudioAccelCallbackBlock = a2;
  return result;
}

uint64_t H16ISP::DCSAudioAccelManager::SetCallbackPtr(uint64_t this, void (*a2)(__CVBuffer *, CMTime *__struct_ptr))
{
  *(this + 24) = a2;
  H16ISP::MyAudioAccelCallbackPtr = a2;
  return this;
}

uint64_t H16ISP::DCSAudioAccelManager::SetMessageCallbackBlock(uint64_t result, uint64_t a2)
{
  *(result + 32) = a2;
  H16ISP::MyAudioAccelMessageCallbackBlock = a2;
  return result;
}

uint64_t H16ISP::DCSAudioAccelManager::SetMessageCallbackPtr(uint64_t this, void (*a2)(unsigned int, unsigned int, unsigned int))
{
  *(this + 40) = a2;
  H16ISP::MyAudioAccelMessageCallbackPtr = a2;
  return this;
}

uint64_t H16ISP::DCSAudioAccelManager::CreateStreamSession(H16ISP::DCSAudioAccelManager *this)
{
  v46 = *MEMORY[0x277D85DE8];
  AudioConfig = H16ISP::H16ISPDevice::ISP_DCS_GetAudioConfig(*(this + 9), v40);
  if (AudioConfig)
  {
LABEL_23:
    v20 = *(this + 8);
    if (v20)
    {
      H16ISP::DestroyH16ISPBufferReceiver(v20, v2);
      *(this + 8) = 0;
    }

    return AudioConfig;
  }

  v4 = v41;
  v5 = v42;
  *(this + 6) = v41;
  *(this + 7) = v5;
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v7 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    v8 = *(this + 24);
  }

  else
  {
    v8 = v4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(this + 25);
    v28 = *(this + 26);
    v29 = *(this + 27);
    v30 = *(this + 14);
    v31 = *(this + 15);
    *buf = 136316674;
    *&buf[4] = "CreateStreamSession";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = v27;
    LOWORD(v44) = 1024;
    *(&v44 + 2) = v28;
    HIWORD(v44) = 1024;
    LODWORD(v45) = v29;
    WORD2(v45) = 1024;
    *(&v45 + 6) = v30;
    WORD5(v45) = 1024;
    HIDWORD(v45) = v31;
    _os_log_debug_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEBUG, "%s - sCIspCmdAudioAccelInfoGet: type=0x%08X poolId=0x%08X alignment=%hu strideDivider=%hu size=%d audioAccelSerial=0x%08X\n", buf, 0x30u);
    v8 = *(this + 24);
  }

  if (v8 != 43)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
    {
      v19 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      H16ISP::DCSAudioAccelManager::CreateStreamSession(this + 24, v19);
    }

    AudioConfig = 3758096385;
    goto LABEL_23;
  }

  if (*(this + 8))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
    {
      v9 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      H16ISP::DCSAudioAccelManager::CreateStreamSession(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    v22 = *(this + 9);
    *buf = this + 64;
    *&buf[8] = v22;
    *&buf[16] = H16ISP::DCSISPAudioBufferReceivedProc;
    v44 = 0;
    *&v45 = H16ISP::DCSISPAudioBufferReceivedMessageProc;
    *(&v45 + 1) = 0;
    H16ISPBufferReceiver = H16ISP::CreateH16ISPBufferReceiver(buf);
    if (H16ISPBufferReceiver)
    {
      AudioConfig = H16ISPBufferReceiver;
      v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
      {
        v24 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        H16ISP::DCSAudioAccelManager::CreateStreamSession();
      }

      goto LABEL_23;
    }
  }

  started = H16ISP::H16ISPBufferReceiver::startReceive(*(this + 8));
  if (started)
  {
    AudioConfig = started;
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
    {
      v18 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      H16ISP::DCSAudioAccelManager::CreateStreamSession();
    }

    goto LABEL_23;
  }

  HIDWORD(v39) = 64;
  LOBYTE(v39) = 0;
  v25 = H16ISP::H16ISPBufferReceiver::addBufferPoolToBufferReceiver(*(this + 8), 43, *(this + 25), (*(this + 14) >> 4) + 1, 8, 0, 0, 19, v39, 128, 16, 0, 4, 0);
  v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (v25)
  {
    AudioConfig = v25;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
    {
      v26 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v26;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      H16ISP::DCSAudioAccelManager::CreateStreamSession();
    }

    goto LABEL_23;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
  {
    v26 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v26;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    H16ISP::DCSAudioAccelManager::CreateStreamSession(v26, v32, v33, v34, v35, v36, v37, v38);
  }

  return 0;
}

uint64_t H16ISP::DCSISPAudioBufferReceivedProc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = a3;
    v6 = (a4 + 12);
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277CC0898];
    do
    {
      if (*(v6 - 1) == 43)
      {
        if (*v6 == 43)
        {
          v4 = *(v6 - 3);
          if (v4)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }

        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
        {
          v13 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_14:
          if (v4)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }

        v14 = *v6;
        *buf = 136315394;
        *&buf[4] = "DCSISPAudioBufferReceivedProc";
        *&buf[12] = 1024;
        *&buf[14] = v14;
        v11 = v13;
        v12 = "%s - Invalid poolID=%d\n";
      }

      else
      {
        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v7)
        {
          v9 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
        }

        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v10 = *(v6 - 1);
        *buf = 136315394;
        *&buf[4] = "DCSISPAudioBufferReceivedProc";
        *&buf[12] = 1024;
        *&buf[14] = v10;
        v11 = v9;
        v12 = "%s - Invalid poolType=%d\n";
      }

      _os_log_error_impl(&dword_2247DB000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
      if (v4)
      {
LABEL_15:
        if (H16ISP::MyAudioAccelCallbackBlock)
        {
          *&buf[16] = *(v8 + 16);
          *buf = *v8;
          (*(H16ISP::MyAudioAccelCallbackBlock + 16))(H16ISP::MyAudioAccelCallbackBlock, v4, buf);
        }

        if (H16ISP::MyAudioAccelCallbackPtr)
        {
          *buf = *v8;
          *&buf[16] = *(v8 + 16);
          (H16ISP::MyAudioAccelCallbackPtr)(v4, buf);
        }
      }

LABEL_19:
      CVPixelBufferRelease(*(v6 - 3));
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t H16ISP::DCSISPAudioBufferReceivedMessageProc(H16ISP *this, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6, void *a7)
{
  result = H16ISP::MyAudioAccelMessageCallbackBlock;
  if (H16ISP::MyAudioAccelMessageCallbackBlock)
  {
    result = (*(H16ISP::MyAudioAccelMessageCallbackBlock + 16))();
  }

  v11 = H16ISP::MyAudioAccelMessageCallbackPtr;
  if (H16ISP::MyAudioAccelMessageCallbackPtr)
  {

    return v11(this, a2, a3);
  }

  return result;
}

uint64_t H16ISP::DCSAudioAccelManager::GetStreamingStatus(H16ISP::DCSAudioAccelManager *this, BOOL *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  *a2 = *this == 1;
  return result;
}

uint64_t H16ISP::DestroyAudioAccelManager(H16ISP::H16ISPDevice ***this, H16ISP::DCSAudioAccelManager **a2)
{
  v3 = *this;
  if (v3)
  {
    H16ISP::DCSAudioAccelManager::~DCSAudioAccelManager(v3);
    MEMORY[0x22AA55B60]();
    *this = 0;
  }

  return 0;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t GMC_ExtractTestSamples(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a1 + 20);
  v16 = v15 / a3;
  if (v16 <= 1.0)
  {
    Matrix<double>::Resize(a6, *(a1 + 16), v15);
    memcpy(*(a6 + 8), *(a1 + 8), 8 * *(a6 + 16) * *(a6 + 20));
    Matrix<double>::Resize(a7, *(a2 + 16), *(a2 + 20));
    memcpy(*(a7 + 8), *(a2 + 8), 8 * *(a7 + 16) * *(a7 + 20));
    puts("Bad configuration");
  }

  else
  {
    MatrixNxPts<3u,double>::CloneColumn(a1, 0, v30);
    MatrixNxPts<3u,double>::SetColumn(a8, 0, v30);
    MatrixNxPts<3u,double>::CloneColumn(a2, 0, v30);
    MatrixNxPts<3u,double>::SetColumn(a9, 0, v30);
    if (a3)
    {
      v26 = a8;
      v20 = 0;
      v28 = 0;
      v21 = 1;
      v27 = a3;
      do
      {
        v29 = v21;
        v22 = llround(v16 * v21);
        v23 = llround(v16 * (v21 - 1)) + 1;
        if (v23 < v22)
        {
          do
          {
            MatrixNxPts<3u,double>::CloneColumn(a1, v23, v30);
            MatrixNxPts<3u,double>::SetColumn(a6, v20, v30);
            MatrixNxPts<3u,double>::CloneColumn(a2, v23, v30);
            MatrixNxPts<3u,double>::SetColumn(a7, v20, v30);
            if (a4)
            {
              if (*(a5 + 20) * *(a5 + 16) <= v23)
              {
                GMC_ExtractTestSamples();
              }

              if (*(a10 + 20) * *(a10 + 16) <= v20)
              {
                GMC_ExtractTestSamples();
              }

              *(*(a10 + 8) + v20) = *(*(a5 + 8) + v23);
            }

            ++v20;
            ++v23;
          }

          while (v22 != v23);
        }

        a3 = v27;
        if (v29 == v27)
        {
          break;
        }

        MatrixNxPts<3u,double>::CloneColumn(a1, v22, v30);
        MatrixNxPts<3u,double>::SetColumn(v26, v28 + 1, v30);
        MatrixNxPts<3u,double>::CloneColumn(a2, v22, v30);
        ++v28;
        a3 = v27;
        MatrixNxPts<3u,double>::SetColumn(a9, v28, v30);
        v21 = v29 + 1;
      }

      while (v29 + 1 <= v27);
      v24 = v28 + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v24 != a3)
    {
      GMC_ExtractTestSamples();
    }

    if (*(a1 + 20) - a3 != *(a6 + 20))
    {
      GMC_ExtractTestSamples();
    }
  }

  return 0;
}

void DisjointSet::DisjointSet(DisjointSet *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void DisjointSet::~DisjointSet(DisjointSet *this)
{
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA55B40](v2, 0x1000C80BDFB0063);
    }
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x22AA55B60](v3, 0x1000C40BDFB0063);
  }

  *this = 0;
}

uint64_t DisjointSet::SetCapacity(uint64_t this, unsigned int a2)
{
  if (*this < a2)
  {
    if (*this)
    {
      v2 = *(this + 8);
      if (v2)
      {
        MEMORY[0x22AA55B40](v2, 0x1000C80BDFB0063);
      }
    }

    operator new[]();
  }

  return this;
}

uint64_t DisjointSet::Compact(DisjointSet *this, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = *(this + 2);
    if (!v4)
    {
      operator new[]();
    }

    if (!a2)
    {
      goto LABEL_15;
    }

    v5 = *(this + 1);
    v6 = a2;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --v6;
    }

    while (v6);
  }

  if (!a2)
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v8 = 0;
  result = 0;
  v10 = *(this + 1);
  do
  {
    v11 = *(v10 + 2 * v8);
    if (v8 <= v11)
    {
      v12 = result;
      result = (result + 1);
    }

    else
    {
      v12 = *(v10 + 2 * v11);
    }

    *(v10 + 2 * v8++) = v12;
  }

  while (a2 != v8);
LABEL_16:
  *(this + 12) = a2;
  return result;
}

uint64_t DisjointSet::UnCompact(uint64_t this)
{
  v1 = *(this + 16);
  if (!v1)
  {
    DisjointSet::UnCompact();
  }

  if (*(this + 24))
  {
    v2 = 0;
    v3 = *(this + 8);
    do
    {
      *(v3 + 2 * v2) = *(v1 + 2 * v2);
      ++v2;
    }

    while (v2 < *(this + 24));
  }

  return this;
}

uint64_t DisjointSet::GetCompactedMap(uint64_t a1, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int> *this)
{
  v4 = __sz;
  v6 = __sz;
  std::vector<unsigned int>::resize(this, __sz);
  begin = this->__begin_;
  *this->__begin_ = 0;
  if (v4 < 2)
  {
    return 1;
  }

  v8 = *(a1 + 8);
  v9 = 1;
  result = 1;
  do
  {
    v11 = *(v8 + 2 * v9);
    v12 = v9 == v11;
    if (v9 <= v11)
    {
      if (v9 == v11)
      {
        v13 = result;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }
    }

    else
    {
      v13 = begin[v11];
    }

    begin[v9++] = v13;
  }

  while (v6 != v9);
  return result;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__n128 SPD::Init(uint64_t a1)
{
  if (!a1)
  {
    SPD::Init();
  }

  *a1 = 0x100000001;
  *(a1 + 8) = -1;
  *(a1 + 140) = 0;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 76) = result;
  *(a1 + 92) = result;
  *(a1 + 108) = result;
  *(a1 + 124) = result;
  return result;
}

uint64_t SPD::Prepare(uint64_t result)
{
  if (!result)
  {
    SPD::Prepare();
  }

  *(result + 8) = -1;
  *(result + 44) = 2;
  return result;
}

void SPD::Process(int *a1, uint64_t a2)
{
  v127 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    SPD::Process();
  }

  if (!a2)
  {
    SPD::Process();
  }

  v4 = *a1;
  if (*a1 == 1)
  {
    if (a1[12])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[3];
        v6 = a1[5];
        v7 = a1[6];
        v8 = a1[7];
        v9 = a1[8];
        v11 = a1[9];
        v10 = a1[10];
        *buf = 67110656;
        LODWORD(v120) = v5;
        WORD2(v120) = 1024;
        *(&v120 + 6) = v6;
        WORD5(v120) = 1024;
        HIDWORD(v120) = v7;
        LOWORD(v121) = 1024;
        *(&v121 + 2) = v10;
        HIWORD(v121) = 1024;
        *v122 = v8;
        *&v122[4] = 1024;
        *&v122[6] = v9;
        v123 = 1024;
        LODWORD(v124) = v11;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPD:#%08d inp: (%4d x %4d) stride = %d, scale = %d x %d, total = %d\n", buf, 0x2Cu);
      }

      v12 = 0;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = a1[v12 + 19];
        if (v14 != -1 && (a1[12] & 1) != 0 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&v120 = v12;
          WORD4(v120) = 1024;
          *(&v120 + 10) = v14;
          _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "SPD:tuning[%2zu] = %d\n", buf, 0x12u);
        }

        ++v12;
      }

      while (v12 != 16);
    }

    v15 = a1[5];
    if (v15)
    {
      a1[2] = 2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPD:ERR: CSPD::SPD pContext->meta.geom.sizeX is not expected as an odd number!!!\n", buf, 2u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v111 = a1[3];
        v112 = a1[5];
        v113 = a1[6];
        v114 = a1[7];
        v115 = a1[8];
        v117 = a1[9];
        v116 = a1[10];
        *buf = 67110656;
        LODWORD(v120) = v111;
        WORD2(v120) = 1024;
        *(&v120 + 6) = v112;
        WORD5(v120) = 1024;
        HIDWORD(v120) = v113;
        LOWORD(v121) = 1024;
        *(&v121 + 2) = v116;
        HIWORD(v121) = 1024;
        *v122 = v114;
        *&v122[4] = 1024;
        *&v122[6] = v115;
        v123 = 1024;
        LODWORD(v124) = v117;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPD:ERR: #%d SPD(%d,%d) stride=%d scaleXY(%d,%d) totSize=%d\n", buf, 0x2Cu);
      }
    }

    else
    {
      v16 = a1[6];
      v17 = (32 * v16);
      v18 = a1[10];
      v19 = a1[11];
      if ((a1[12] & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        LODWORD(v120) = (2 * v19) | 1;
        WORD2(v120) = 2048;
        *(&v120 + 6) = 0;
        HIWORD(v120) = 2048;
        v121 = 0;
        *v122 = 2048;
        *&v122[2] = v15;
        v123 = 2048;
        v124 = v16;
        v125 = 2048;
        v126 = v18;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPD:SPD: k=%d, (x y)=(%zu %zu), (w h)=(%zu %zu), strideIn=%zu\n", buf, 0x3Au);
      }

      v20 = 2 * v18;
      v21 = &a1[v17];
      v118 = v16;
      v22 = 0;
      if (v15 >= 0x11)
      {
        v23 = (v19 + 1);
        v24 = (v19 + v23) << 6;
        v25 = v16 - 1;
        v26 = ~v19 + v16;
        v27 = v16 - 2;
        v28 = (v23 << 6) - (v19 << 6) + 128;
        v29 = v24 + 4 * v17 + 144;
        v30 = 16;
        v31 = (v23 << 6) + 4 * v17 - (v19 << 6);
        do
        {
          v32 = v22 + (v22 >> 1);
          v33 = (a2 + v32);
          v128 = vld3_s8(v33);
          v34 = (a2 + v18 + v32);
          v129 = vld3_s8(v34);
          v22 = v30;
          v35 = vmovl_u8(v128.val[1]);
          *v128.val[1].i8 = vmovl_u8(v128.val[2]);
          v36 = vshrq_n_u16(*v128.val[1].i8, 4uLL);
          *v128.val[1].i8 = vsliq_n_s16(*v128.val[1].i8, vmovl_u8(v128.val[0]), 4uLL);
          v37 = vsliq_n_s16(v36, v35, 4uLL);
          v38 = vmovl_u16(v128.val[1]);
          v39 = vmovl_high_u16(*v128.val[1].i8);
          v40 = vmovl_u16(*v37.i8);
          v41 = vmovl_high_u16(v37);
          *(a1 + 9) = v38;
          *(a1 + 10) = v39;
          *(a1 + 11) = v40;
          *(a1 + 12) = v41;
          v42 = vmovl_u8(v129.val[1]);
          *v129.val[1].i8 = vmovl_u8(v129.val[2]);
          v43 = vshrq_n_u16(*v129.val[1].i8, 4uLL);
          *v129.val[1].i8 = vsliq_n_s16(*v129.val[1].i8, vmovl_u8(v129.val[0]), 4uLL);
          v44 = vsliq_n_s16(v43, v42, 4uLL);
          v45 = vmovl_u16(v129.val[1]);
          v46 = vmovl_high_u16(*v129.val[1].i8);
          v47 = vmovl_u16(*v44.i8);
          v48 = vmovl_high_u16(v44);
          v21[9] = v45;
          v21[10] = v46;
          v49 = &a1[v17 + 64];
          v21[11] = v47;
          v21[12] = v48;
          v50 = (a1 + 64);
          v51 = v33;
          v52 = v27;
          if (v25 >= 2)
          {
            do
            {
              v53 = &v51[v20];
              v131 = vld3_s8(v53);
              v54 = &v51[3 * v18];
              v132 = vld3_s8(v54);
              v55 = vmovl_u8(v131.val[0]);
              v56 = vmovl_u8(v131.val[1]);
              *v131.val[0].i8 = vmovl_u8(v131.val[2]);
              *v131.val[1].i8 = vshrq_n_u16(*v131.val[0].i8, 4uLL);
              *v131.val[0].i8 = vsliq_n_s16(*v131.val[0].i8, v55, 4uLL);
              *v131.val[1].i8 = vsliq_n_s16(*v131.val[1].i8, v56, 4uLL);
              v38 = vaddw_u16(v38, v131.val[0]);
              v39 = vaddw_high_u16(v39, *v131.val[0].i8);
              v40 = vaddw_u16(v40, v131.val[1]);
              v41 = vaddw_high_u16(v41, *v131.val[1].i8);
              v50[-3] = v38;
              v50[-2] = v39;
              v50[-1] = v40;
              *v50 = v41;
              *v131.val[0].i8 = vmovl_u8(v132.val[0]);
              *v131.val[2].i8 = vmovl_u8(v132.val[2]);
              *v132.val[0].i8 = vshrq_n_u16(*v131.val[2].i8, 4uLL);
              *v131.val[2].i8 = vsliq_n_s16(*v131.val[2].i8, *v131.val[0].i8, 4uLL);
              *v132.val[0].i8 = vsliq_n_s16(*v132.val[0].i8, vmovl_u8(v132.val[1]), 4uLL);
              v45 = vaddw_u16(v45, v131.val[2]);
              v46 = vaddw_high_u16(v46, *v131.val[2].i8);
              v47 = vaddw_u16(v47, v132.val[0]);
              v48 = vaddw_high_u16(v48, *v132.val[0].i8);
              v49[-3] = v45;
              v49[-2] = v46;
              v49[-1] = v47;
              *v49 = v48;
              v50 += 4;
              v49 += 4;
              v51 = v53;
              --v52;
            }

            while (v52);
          }

          v57 = a1;
          v58 = (v19 + 1);
          if (v26 > v23)
          {
            do
            {
              v59 = vmovn_s32(vsubq_s32(*(v57 + v24 + 160), *(v57 + v28 - 32)));
              v60 = vmovn_s32(vsubq_s32(*(v57 + v24 + 144), *(v57 + v28 - 48)));
              v130.val[0] = vuzp1_s8(vshr_n_u16(v60, 7uLL), vshr_n_u16(v59, 7uLL));
              v61 = vmovn_s32(vsubq_s32(*(v57 + v24 + 192), *(v57 + v28)));
              v62 = vmovn_s32(vsubq_s32(*(v57 + v24 + 176), *(v57 + v28 - 16)));
              v130.val[1] = vuzp1_s8(vshr_n_u16(v62, 7uLL), vshr_n_u16(v61, 7uLL));
              v130.val[2] = vsli_n_s8(vuzp1_s8(vshr_n_u16(v60, 3uLL), vshr_n_u16(v59, 3uLL)), vuzp1_s8(vshr_n_u16(v62, 3uLL), vshr_n_u16(v61, 3uLL)), 4uLL);
              v63 = &v33[2 * v18 * v23];
              vst3_s8(v63, v130);
              v64 = vmovn_s32(vsubq_s32(*(v57 + v29 + 16), *(v57 + v31 + 96)));
              v65 = vmovn_s32(vsubq_s32(*(v57 + v29), *(v57 + v31 + 80)));
              v130.val[0] = vuzp1_s8(vshr_n_u16(v65, 7uLL), vshr_n_u16(v64, 7uLL));
              v66 = vmovn_s32(vsubq_s32(*(v57 + v29 + 48), *(v57 + v31 + 128)));
              v67 = vmovn_s32(vsubq_s32(*(v57 + v29 + 32), *(v57 + v31 + 112)));
              v130.val[1] = vuzp1_s8(vshr_n_u16(v67, 7uLL), vshr_n_u16(v66, 7uLL));
              v130.val[2] = vsli_n_s8(vuzp1_s8(vshr_n_u16(v65, 3uLL), vshr_n_u16(v64, 3uLL)), vuzp1_s8(vshr_n_u16(v67, 3uLL), vshr_n_u16(v66, 3uLL)), 4uLL);
              v68 = &v33[((2 * v23) | 1) * v18];
              vst3_s8(v68, v130);
              ++v58;
              v33 += v20;
              v57 += 16;
            }

            while (v58 < v26);
          }

          v30 = v22 + 16;
        }

        while (v22 + 16 < v15);
      }

      if (v22 < v15)
      {
        v69 = (a2 + v22 + (v22 >> 1));
        v70 = (v19 + 1);
        v71 = &a1[v17 + 39];
        v72 = ~v19 + v118;
        v73 = 4 * v17 + 8 * v70 - 8 * v19 + 140;
        v74 = 8 * (v19 + v70) + 148;
        v75 = 8 * v70 - 8 * v19 + 136;
        v76 = v74 + 4 * v17;
        do
        {
          v77 = v69[2];
          v78 = v69[1];
          a1[36] = v77 & 0xF | (16 * *v69);
          a1[37] = (v77 >> 4) | (16 * v78);
          v79 = v69[v18 + 2];
          v80 = v79 & 0xF | (16 * v69[v18]);
          v81 = (v79 >> 4) | (16 * v69[v18 + 1]);
          v82 = a1 + 39;
          v21[9].i32[0] = v80;
          v21[9].i32[1] = v81;
          v83 = v71;
          v84 = 2 * v18;
          v85 = v118 - 2;
          if ((v118 - 1) >= 2)
          {
            do
            {
              v86 = v69[v84 + 2];
              v87 = v86 & 0xF | (16 * v69[v84]);
              v88 = ((v86 >> 4) | (16 * v69[v84 + 1])) + *(v82 - 2);
              *(v82 - 1) = v87 + *(v82 - 3);
              *v82 = v88;
              v89 = &v69[v84 + v18];
              v90 = v89[2];
              v91 = v90 & 0xF | (16 * *v89);
              LODWORD(v89) = ((v90 >> 4) | (16 * v89[1])) + *(v83 - 2);
              *(v83 - 1) = v91 + *(v83 - 3);
              *v83 = v89;
              v84 += v20;
              v83 += 2;
              v82 += 2;
              --v85;
            }

            while (v85);
          }

          v92 = v76;
          v93 = v75;
          v94 = v74;
          v95 = v73;
          v96 = v18 * (2 * v70);
          for (i = v70; i < v72; v92 += 8)
          {
            v98 = &v69[v96];
            v99 = *(a1 + v94 - 4) - *(a1 + v93);
            v100 = *(a1 + v94) - *(a1 + v93 + 4);
            *v98 = v99 >> 7;
            v98[1] = v100 >> 7;
            v98[2] = (2 * v100) & 0xF0 | (v99 >> 3) & 0xF;
            v101 = *(a1 + v92 - 4) - *(a1 + v95 - 4);
            v102 = *(a1 + v92) - *(a1 + v95);
            v103 = &v69[v96 + v18];
            *v103 = v101 >> 7;
            ++i;
            v96 += v20;
            v95 += 8;
            v103[1] = v102 >> 7;
            v103[2] = (2 * v102) & 0xF0 | (v101 >> 3) & 0xF;
            v94 += 8;
            v93 += 8;
          }

          v69 += 3;
          v22 += 2;
        }

        while (v22 < v15);
      }

      *(a1 + 13) = *(a1 + 5);
      *(a1 + 17) = *(a1 + 9);
      if ((a1[12] & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v104 = a1[3];
        v105 = a1[13];
        v106 = a1[14];
        v107 = a1[15];
        v108 = a1[16];
        v110 = a1[17];
        v109 = a1[18];
        *buf = 67110656;
        LODWORD(v120) = v104;
        WORD2(v120) = 1024;
        *(&v120 + 6) = v105;
        WORD5(v120) = 1024;
        HIDWORD(v120) = v106;
        LOWORD(v121) = 1024;
        *(&v121 + 2) = v109;
        HIWORD(v121) = 1024;
        *v122 = v107;
        *&v122[4] = 1024;
        *&v122[6] = v108;
        v123 = 1024;
        LODWORD(v124) = v110;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPD:#%08d out: (%4d x %4d) stride = %d, scale = %d x %d, total = %d\n", buf, 0x2Cu);
      }

      a1[2] = 0;
    }
  }

  else
  {
    if ((a1[12] & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v120) = 1;
      WORD2(v120) = 1024;
      *(&v120 + 6) = v4;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPD:incompatible context version (expected %d, got %d)\n", buf, 0xEu);
    }

    a1[2] = 1;
  }
}

uint64_t H16ISP::MOVReader::MOVReader(uint64_t this, const __CFString *a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  H16ISP::reader = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  H16ISP::reader = 0;
  return this;
}

void H16ISP::MOVReader::~MOVReader(CFTypeRef *this)
{
  if (H16ISP::reader)
  {
    [H16ISP::reader dealloc];
  }

  H16ISP::reader = 0;
  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t H16ISP::MOVReader::openStream(H16ISP::MOVReader *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 3758097084;
  v9 = 0;
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:*this];
  H16ISP::MOVReader::fileAccessCheck(this, 0);
  v4 = [[BasicMOVReader alloc] initWithFileURL:v3 error:&v9];
  H16ISP::reader = v4;
  if (v9)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      CStringPtr = CFStringGetCStringPtr([v3 absoluteString], 0x8000100u);
      v7 = [v9 description];
      *buf = 136315650;
      v11 = "openStream";
      v12 = 2080;
      v13 = CStringPtr;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - Failed to open stream [%s] with error: %@\n", buf, 0x20u);
    }
  }

  else if ([(BasicMOVReader *)v4 hasReachedEndOfStream])
  {
    return 3758097124;
  }

  else
  {
    *(this + 2) = mach_absolute_time();
    if (H16ISP::MOVReader::openStream(void)::onceToken != -1)
    {
      H16ISP::MOVReader::openStream();
    }

    v2 = 0;
    *(this + 108) = 0;
  }

  return v2;
}

uint64_t H16ISP::MOVReader::fileAccessCheck(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:*a1];
  v4 = [MEMORY[0x277CE6650] URLAssetWithURL:v3 options:0];
  v13 = 0;
  [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v4 error:&v13];
  if (!v13)
  {
    return 0;
  }

  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    H16ISP::MOVReader::fileAccessCheck(&v13);
  }

  v6 = 3758097084;
  if (a2)
  {
    v7 = [objc_msgSend(v13 "description")];
    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = v8;
    if (v8)
    {
      memmove(&v11, v7, v8);
    }

    *(&v11 + v9) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 16) = v12;
  }

  return v6;
}

uint64_t H16ISP::MOVReader::getNextFrame(H16ISP::MOVReader *this, __CVBuffer *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0;
  if (![H16ISP::reader hasReachedEndOfStream])
  {
    v5 = 3758097084;
    v6 = [H16ISP::reader getNextFrameTimestamp:buf error:&v34];
    v7 = v6;
    if (v34)
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
      }

      v5 = 3758097120;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISP::MOVReader::getNextFrame(&v34);
      }
    }

    else
    {
      if (!v6)
      {
        return 3758097120;
      }

      if ((*(this + 8) & 1) == 0)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v18 = CVPixelBufferGetPixelFormatType(v7);
        if (PixelFormatType != 875704422)
        {
          v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v31 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v31;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            H16ISP::MOVReader::getNextFrame();
          }

          goto LABEL_12;
        }

        if (v18 != 875704422)
        {
          v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v32 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v32;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            H16ISP::MOVReader::getNextFrame();
          }

          goto LABEL_12;
        }

        Height = CVPixelBufferGetHeight(a2);
        if (Height != CVPixelBufferGetHeight(v7) || (Width = CVPixelBufferGetWidth(a2), Width != CVPixelBufferGetWidth(v7)))
        {
          v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v33 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v33;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            H16ISP::MOVReader::getNextFrame(a2, v7);
          }

          goto LABEL_12;
        }

        *(this + 8) = 1;
      }

      CVPixelBufferLockBaseAddress(v7, 0);
      CVPixelBufferLockBaseAddress(a2, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
      if (BytesPerRowOfPlane == CVPixelBufferGetBytesPerRowOfPlane(v7, 0))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v7, 0);
        v12 = CVPixelBufferGetBytesPerRowOfPlane(v7, 0) * HeightOfPlane;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
        v14 = CVPixelBufferGetBaseAddressOfPlane(v7, 0);
        memcpy(BaseAddressOfPlane, v14, v12);
        v15 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
        v16 = CVPixelBufferGetBaseAddressOfPlane(v7, 1uLL);
        memcpy(v15, v16, v12 >> 1);
      }

      else if (CVPixelBufferGetPlaneCount(a2))
      {
        v21 = 0;
        do
        {
          v22 = CVPixelBufferGetBytesPerRowOfPlane(a2, v21);
          v23 = CVPixelBufferGetBytesPerRowOfPlane(v7, v21);
          if (CVPixelBufferGetHeightOfPlane(a2, v21))
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            do
            {
              v27 = CVPixelBufferGetBaseAddressOfPlane(a2, v21);
              v28 = CVPixelBufferGetBaseAddressOfPlane(v7, v21);
              memcpy(&v27[v24], &v28[v25], v22);
              ++v26;
              v25 += v23;
              v24 += v22;
            }

            while (v26 < CVPixelBufferGetHeightOfPlane(a2, v21));
          }

          ++v21;
        }

        while (v21 < CVPixelBufferGetPlaneCount(a2));
      }

      CVPixelBufferUnlockBaseAddress(v7, 0);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      v5 = 0;
      v29 = *(this + 216);
      *(this + v29 + 11) = 1000000000 * *buf * *algn_27D6F2744 / (H16ISP::s_timebase_info * *&buf[8]) + *(this + 2);
      if (((v29 + 1) & 0xF0) != 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29 + 1;
      }

      *(this + 216) = v30;
    }

    if (!v7)
    {
      return v5;
    }

LABEL_12:
    CVPixelBufferRelease(v7);
    return v5;
  }

  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  v5 = 3758097120;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getNextFrame";
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - End of stream\n", buf, 0xCu);
  }

  return v5;
}

uint64_t H16ISP::MOVReader::getFrameTimestamp(H16ISP::MOVReader *this, CVPixelBufferRef pixelBuffer)
{
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  ID = IOSurfaceGetID(IOSurface);
  v5 = 0;
  while (*(this + v5 + 6) != ID)
  {
    if (++v5 == 16)
    {
      return 0;
    }
  }

  result = *(this + v5 + 11);
  *(this + v5 + 6) = 0;
  *(this + v5 + 11) = 0;
  return result;
}

uint64_t H16ISP::MOVReader::storeFrameTimestampSurfaceId(H16ISP::MOVReader *this, CVPixelBufferRef pixelBuffer)
{
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  ID = IOSurfaceGetID(IOSurface);
  v5 = *(this + 217);
  *(this + v5 + 6) = ID;
  if (((v5 + 1) & 0xF0) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + 1;
  }

  *(this + 217) = v6;
  return 0;
}

void sub_2248ED1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  Matrix<double>::~Matrix(&a11);
  Matrix<double>::~Matrix(&a15);
  CGMC_BundleAdjustment::~CGMC_BundleAdjustment(&a32);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::CalcBA(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a5 != a1)
  {
    v7 = *a5;
    *(a1 + 16) = *(a5 + 2);
    *a1 = v7;
  }

  CGMC_BundleAdjustment::rotationMatrixToAngleAxis(a4, &v10);
  v8 = a3[3];
  v14 = a3[2];
  v15 = v8;
  v16 = *(a3 + 8);
  v9 = a3[1];
  v12 = *a3;
  v13 = v9;
  Matrix<double>::Matrix(&v11, a2, 0, -1);
}

void sub_2248EDF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a46);
  Matrix<double>::~Matrix(&a50);
  Matrix<double>::~Matrix(&a54);
  Matrix<double>::~Matrix(&a58);
  Matrix<double>::~Matrix(&a62);
  Matrix<double>::~Matrix(&STACK[0x200]);
  SparseMatrix::~SparseMatrix(&a66);
  Matrix<double>::~Matrix(a16);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::rotationMatrixToAngleAxis(uint64_t a1@<X0>, double *a2@<X8>)
{
  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  v4 = (*a1 + 0.0 + *(a1 + 32) + *(a1 + 64) + -1.0) * 0.5;
  v5 = 1.0;
  if (v4 <= 1.0)
  {
    v5 = (*a1 + 0.0 + *(a1 + 32) + *(a1 + 64) + -1.0) * 0.5;
    if (v4 < -1.0)
    {
      v5 = -1.0;
    }
  }

  v6 = acos(v5);
  v7 = sin(v6);
  v8 = v7 + v7;
  v9 = 0;
  if (v8 <= 0.0000001)
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = 0.0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v14 = v27 + 1;
    v15 = vdupq_n_s64(2uLL);
    memset(v27, 0, sizeof(v27));
    v16 = vdupq_n_s64(3uLL);
    do
    {
      v17 = v14;
      v18 = 4;
      v19 = xmmword_2249B9820;
      do
      {
        if (vmovn_s64(vcgtq_u64(v16, v19)).u8[0])
        {
          if (v9 + v18 == 4)
          {
            v20 = 1.0;
          }

          else
          {
            v20 = 0.0;
          }

          *(v17 - 1) = v20;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v19)).i32[1])
        {
          if (v9 + v18 == 5)
          {
            v21 = 1.0;
          }

          else
          {
            v21 = 0.0;
          }

          *v17 = v21;
        }

        v19 = vaddq_s64(v19, v15);
        v17 += 2;
        v18 -= 2;
      }

      while (v18);
      ++v9;
      v14 += 3;
    }

    while (v9 != 3);
    v22 = 0;
    v23 = 0;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    do
    {
      v24 = v22;
      v25 = 3;
      do
      {
        *(v29 + v24) = *(a1 + v24) - *(v27 + v24);
        v24 += 8;
        --v25;
      }

      while (v25);
      ++v23;
      v22 += 24;
    }

    while (v23 != 3);
    MatrixMxN<3u,3u,double>::SVDMxN<3u,void>(v29, v39);
    v26 = v6 * *(&v36 + 1);
    *a2 = v6 * *&v35;
    a2[1] = v26;
    a2[2] = v6 * v38;
  }

  else
  {
    v10 = *(a1 + 56);
    v10.f64[1] = *(a1 + 16);
    *a2 = vdivq_f64(vsubq_f64(v10, *(a1 + 40)), vdupq_lane_s64(*&v8, 0));
    a2[2] = (*(a1 + 24) - *(a1 + 8)) / v8;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(a2 + v9) * *(a2 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v12 = 0;
    v13 = v6 / sqrt(v11);
    do
    {
      a2[v12] = v13 * a2[v12];
      ++v12;
    }

    while (v12 != 3);
  }
}

double CGMC_BundleAdjustment::OptimizationParams::OptimizationParams(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a1 + 88) = *(a3 + 64);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = *a3;
  *(a1 + 104) = *(a4 + 8);
  result = *(a4 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = *(a4 + 24);
  *(a4 + 8) = 0;
  *(a4 + 24) = 0;
  *(a1 + 96) = &unk_283812E40;
  *(a1 + 128) = a5;
  return result;
}

{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a1 + 88) = *(a3 + 64);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = *a3;
  *(a1 + 104) = *(a4 + 8);
  result = *(a4 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = *(a4 + 24);
  *(a4 + 8) = 0;
  *(a4 + 24) = 0;
  *(a1 + 96) = &unk_283812E40;
  *(a1 + 128) = a5;
  return result;
}

uint64_t CGMC_BundleAdjustment::calculateCostFunctionResiduals@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = 1;
  Matrix<double>::Matrix(a3, 1, 4 * *(a2 + 29));
  *a3 = &unk_283812C88;
  v61 = *a2;
  v62 = *(a2 + 2);
  CGMC_BundleAdjustment::angleAxisToRotationMatrix(&v61, &v63);
  v7 = &v63 + 8;
  v8 = v64 + 8;
  do
  {
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = *&v8[8 * v9];
      *&v8[8 * v9] = *v10;
      *v10 = v11;
      v10 += 3;
      ++v9;
    }

    while (v6 != v9);
    ++v6;
    v7 += 8;
    v8 += 24;
  }

  while (v6 != 3);
  v66[2] = v64[1];
  v66[3] = v64[2];
  v67 = v65;
  v66[0] = v63;
  v66[1] = v64[0];
  MatrixMxN<3u,3u,double>::operator*<3u>(a2 + 3, (a2 + 6), &v61);
  if (HIDWORD(v62))
  {
    v12 = 0;
    do
    {
      MatrixNxPts<3u,double>::CloneColumn(&v61, v12, &v63);
      v13 = 0;
      v14 = *v64;
      do
      {
        *(&v64[-1] + v13) = *(&v64[-1] + v13) / v14;
        v13 += 8;
      }

      while (v13 != 24);
      MatrixNxPts<3u,double>::SetColumn(&v61, v12++, &v63);
    }

    while (v12 < HIDWORD(v62));
  }

  MatrixMxN<3u,3u,double>::operator*<3u>(v66, (a2 + 6), v58);
  v15 = 0;
  v55 = 0.0;
  v56 = 0.0;
  v16 = v66;
  v57 = 0.0;
  do
  {
    v17 = 0;
    v18 = 0.0;
    do
    {
      v18 = v18 + *(v16 + v17) * *(a1 + v17);
      v17 += 8;
    }

    while (v17 != 24);
    *(&v55 + v15++) = v18;
    v16 = (v16 + 24);
  }

  while (v15 != 3);
  v19 = v55;
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = v60;
  v52 = 1;
  v53 = v60;
  v54 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v50 = &unk_283812C88;
  v51 = v59;
  Matrix<double>::~Matrix(&v63);
  *&v63 = -v19;
  vDSPVsadd<double>(v51, 1, &v63, v51, 1, v53);
  Matrix<double>::~Matrix(&v50);
  v20 = v56;
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = v60;
  v52 = 1;
  v53 = v60;
  v54 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v50 = &unk_283812C88;
  v51 = &v59[v60];
  Matrix<double>::~Matrix(&v63);
  *&v63 = -v20;
  vDSPVsadd<double>(v51, 1, &v63, v51, 1, v53 * v52);
  Matrix<double>::~Matrix(&v50);
  v21 = v57;
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = v60;
  v52 = 1;
  v53 = v60;
  v54 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v50 = &unk_283812C88;
  v51 = &v59[2 * v60];
  Matrix<double>::~Matrix(&v63);
  *&v63 = -v21;
  vDSPVsadd<double>(v51, 1, &v63, v51, 1, v53 * v52);
  Matrix<double>::~Matrix(&v50);
  if (v60)
  {
    for (i = 0; i < v60; ++i)
    {
      MatrixNxPts<3u,double>::CloneColumn(v58, i, &v63);
      v23 = 0;
      v24 = *v64;
      do
      {
        *(&v64[-1] + v23) = *(&v64[-1] + v23) / v24;
        v23 += 8;
      }

      while (v23 != 24);
      MatrixNxPts<3u,double>::SetColumn(v58, i, &v63);
    }
  }

  Matrix<double>::Row(a1 + 88, 0, v48);
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = HIDWORD(v62);
  v45 = 1;
  v46 = HIDWORD(v62);
  v47 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v43 = &unk_283812C88;
  v44 = *(&v61 + 1);
  Matrix<double>::~Matrix(&v63);
  MatrixNxPts<1u,double>::operator-(v48, &v43, &v50);
  Matrix<double>::~Matrix(&v43);
  Matrix<double>::~Matrix(v48);
  Matrix<double>::Row(a1 + 88, 1, &v43);
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = HIDWORD(v62);
  v40 = 1;
  v41 = HIDWORD(v62);
  v42 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v38 = &unk_283812C88;
  v39 = *(&v61 + 1) + 8 * HIDWORD(v62);
  Matrix<double>::~Matrix(&v63);
  MatrixNxPts<1u,double>::operator-(&v43, &v38, v48);
  Matrix<double>::~Matrix(&v38);
  Matrix<double>::~Matrix(&v43);
  Matrix<double>::Row(a1 + 120, 0, &v38);
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = v60;
  v35 = 1;
  v36 = v60;
  v37 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v34[0] = &unk_283812C88;
  v34[1] = v59;
  Matrix<double>::~Matrix(&v63);
  MatrixNxPts<1u,double>::operator-(&v38, v34, &v43);
  Matrix<double>::~Matrix(v34);
  Matrix<double>::~Matrix(&v38);
  Matrix<double>::Row(a1 + 120, 1, v34);
  LODWORD(v64[0]) = 1;
  DWORD1(v64[0]) = v60;
  v31 = 1;
  v32 = v60;
  v33 = 0;
  *&v63 = &unk_283812C58;
  *(&v63 + 1) = 0;
  BYTE8(v64[0]) = 0;
  v30[0] = &unk_283812C88;
  v30[1] = &v59[v60];
  Matrix<double>::~Matrix(&v63);
  MatrixNxPts<1u,double>::operator-(v34, v30, &v38);
  Matrix<double>::~Matrix(v30);
  Matrix<double>::~Matrix(v34);
  v25 = *(a2 + 29);
  if (v25)
  {
    v26 = 0;
    v27 = 8 * v25;
    v28 = 1;
    do
    {
      *(a3[1] + 8 * (v28 - 1)) = v51[v26 / 8];
      *(a3[1] + 8 * v28) = *(v49 + v26);
      *(a3[1] + 8 * (v28 + 1)) = *(v44 + v26);
      *(a3[1] + 8 * (v28 + 2)) = *(v39 + v26);
      v26 += 8;
      v28 += 4;
    }

    while (v27 != v26);
  }

  Matrix<double>::~Matrix(&v38);
  Matrix<double>::~Matrix(&v43);
  Matrix<double>::~Matrix(v48);
  Matrix<double>::~Matrix(&v50);
  Matrix<double>::~Matrix(v58);
  return Matrix<double>::~Matrix(&v61);
}

void sub_2248EEA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  Matrix<double>::~Matrix(&a10);
  Matrix<double>::~Matrix(&a14);
  Matrix<double>::~Matrix(&a22);
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(&a37);
  Matrix<double>::~Matrix(&a41);
  Matrix<double>::~Matrix(v41);
  _Unwind_Resume(a1);
}

uint64_t CGMC_BundleAdjustment::calcJacobian(double *a1, __int128 *a2, void **a3, uint64_t a4)
{
  v197[3] = *MEMORY[0x277D85DE8];
  v184 = *a2;
  v185 = *(a2 + 2);
  CGMC_BundleAdjustment::angleAxisToRotationMatrix(&v184, &v175);
  v8 = *a2;
  v120 = *(a2 + 1);
  v122 = *(a2 + 2);
  v118 = *(a2 + 3);
  Matrix<double>::Row((a2 + 6), 0, v173);
  Matrix<double>::Row((a2 + 6), 1, v171);
  Matrix<double>::Row((a2 + 6), 2, v169);
  Matrix<double>::Row((a1 + 11), 0, v168);
  Matrix<double>::Row((a1 + 11), 1, v167);
  Matrix<double>::Row((a1 + 15), 0, v166);
  Matrix<double>::Row((a1 + 15), 1, v165);
  v9 = v175;
  Matrix<double>::operator*(v173, &v140, v175);
  v10 = v178;
  Matrix<double>::operator*(v171, v136, v178);
  Matrix<double>::operator+(&v140, v136, &v144);
  v11 = v181;
  Matrix<double>::operator*(v169, &v132, v181);
  Matrix<double>::operator+(&v144, &v132, v148);
  Matrix<double>::operator-(v148, &v150, v9 * *a1);
  Matrix<double>::operator-(&v150, &v155, v10 * a1[1]);
  Matrix<double>::operator-(&v155, &v184, v11 * a1[2]);
  v12 = *(&v184 + 1);
  v163 = HIDWORD(v185);
  v164 = v186;
  *(&v184 + 1) = 0;
  v186 = 0;
  v160 = &unk_283812C88;
  v161 = v12;
  v162 = 1;
  Matrix<double>::~Matrix(&v184);
  Matrix<double>::~Matrix(&v155);
  Matrix<double>::~Matrix(&v150);
  Matrix<double>::~Matrix(v148);
  Matrix<double>::~Matrix(&v132);
  Matrix<double>::~Matrix(&v144);
  Matrix<double>::~Matrix(v136);
  Matrix<double>::~Matrix(&v140);
  v13 = v176;
  Matrix<double>::operator*(v173, v136, v176);
  v14 = v179;
  Matrix<double>::operator*(v171, &v132, v179);
  Matrix<double>::operator+(v136, &v132, &v140);
  v15 = v182;
  Matrix<double>::operator*(v169, v130, v182);
  Matrix<double>::operator+(&v140, v130, &v144);
  Matrix<double>::operator-(&v144, v148, v13 * *a1);
  Matrix<double>::operator-(v148, &v150, v14 * a1[1]);
  Matrix<double>::operator-(&v150, &v184, v15 * a1[2]);
  v16 = *(&v184 + 1);
  v158 = HIDWORD(v185);
  v159 = v186;
  *(&v184 + 1) = 0;
  v186 = 0;
  v155 = &unk_283812C88;
  v156 = v16;
  v157 = 1;
  Matrix<double>::~Matrix(&v184);
  Matrix<double>::~Matrix(&v150);
  Matrix<double>::~Matrix(v148);
  Matrix<double>::~Matrix(&v144);
  Matrix<double>::~Matrix(v130);
  Matrix<double>::~Matrix(&v140);
  Matrix<double>::~Matrix(&v132);
  Matrix<double>::~Matrix(v136);
  v17 = v177;
  Matrix<double>::operator*(v173, &v132, v177);
  v18 = v180;
  Matrix<double>::operator*(v171, v130, v180);
  Matrix<double>::operator+(&v132, v130, v136);
  v19 = v183;
  Matrix<double>::operator*(v169, v128, v183);
  Matrix<double>::operator+(v136, v128, &v140);
  Matrix<double>::operator-(&v140, &v144, v17 * *a1);
  Matrix<double>::operator-(&v144, v148, v18 * a1[1]);
  Matrix<double>::operator-(v148, &v184, v19 * a1[2]);
  v20 = *(&v184 + 1);
  v153 = HIDWORD(v185);
  v154 = v186;
  *(&v184 + 1) = 0;
  v186 = 0;
  v150 = &unk_283812C88;
  v151 = v20;
  v152 = 1;
  Matrix<double>::~Matrix(&v184);
  Matrix<double>::~Matrix(v148);
  Matrix<double>::~Matrix(&v144);
  Matrix<double>::~Matrix(&v140);
  Matrix<double>::~Matrix(v128);
  Matrix<double>::~Matrix(v136);
  Matrix<double>::~Matrix(v130);
  Matrix<double>::~Matrix(&v132);
  MatrixNxPts<1u,double>::DotMult(&v150, &v150, v148);
  v21 = 0;
  v22 = 0.0;
  do
  {
    v22 = v22 + *(a2 + v21) * *(a2 + v21);
    v21 += 8;
  }

  while (v21 != 24);
  v23 = sqrt(v22);
  if (v23 == 0.0)
  {
    v24 = 1.0;
    v26 = 0.5;
  }

  else
  {
    v24 = sin(v23) / v23;
    v25 = sin(v23 * 0.5);
    v26 = v25 / v23 * (v25 / v23 + v25 / v23);
  }

  v27 = *(a2 + 29);
  v146 = 1;
  v147 = 0;
  v144 = &unk_283812C88;
  v145 = 0;
  v142 = 1;
  v143 = 0;
  v140 = &unk_283812C88;
  v141 = 0;
  Matrix<double>::Matrix(v136, 2, v27);
  v28 = 8 * v27;
  if (*(a2 + 128) == 1)
  {
    LODWORD(v185) = 1;
    HIDWORD(v185) = v139;
    LODWORD(v134) = 1;
    HIDWORD(v134) = v139;
    v135 = 0;
    *&v184 = &unk_283812C58;
    *(&v184 + 1) = 0;
    v186 = 0;
    v132 = &unk_283812C88;
    v133 = v137;
    Matrix<double>::~Matrix(&v184);
    if (v147 == 1 && v145)
    {
      MEMORY[0x22AA55B40](v145, 0x1000C8000313F17);
    }

    v146 = v134;
    v145 = v133;
    v147 = v135;
    v135 = 0;
    Matrix<double>::~Matrix(&v132);
    LODWORD(v185) = 1;
    HIDWORD(v185) = v139;
    LODWORD(v134) = 1;
    HIDWORD(v134) = v139;
    v135 = 0;
    *&v184 = &unk_283812C58;
    *(&v184 + 1) = 0;
    v186 = 0;
    v132 = &unk_283812C88;
    v133 = v137 + 8 * v139;
    Matrix<double>::~Matrix(&v184);
    if (v143 == 1 && v141)
    {
      MEMORY[0x22AA55B40](v141, 0x1000C8000313F17);
    }

    v142 = v134;
    v141 = v133;
    v143 = v135;
    v135 = 0;
    Matrix<double>::~Matrix(&v132);
    if (v27)
    {
      v29 = 0;
      do
      {
        *(v145 + v29) = -*(v174 + v29) / *(v170 + v29);
        *(v141 + v29) = -*(v172 + v29) / *(v170 + v29);
        v29 += 8;
      }

      while (v28 != v29);
    }
  }

  if (v23 == 0.0)
  {
    v34 = v8;
    v33 = 0.0;
    v37 = 1.0;
    v36 = 1.0;
    v35 = 1.0;
    v31 = 0.0;
  }

  else
  {
    v30 = __sincos_stret(v23);
    v31 = -(v30.__sinval - v23 * v30.__cosval) / (v23 * v23);
    v32 = sin(v23 * 0.5);
    v33 = (v23 * -4.0 * (v32 * v32) + v23 * v23 * v30.__sinval) / pow(v23, 4.0);
    v34 = v8;
    v35 = v8 / v23;
    v36 = v120 / v23;
    v37 = v122 / v23;
  }

  MatrixNxPts<1u,double>::operator-(v173, &v132, *a1);
  MatrixNxPts<1u,double>::operator-(v171, v130, a1[1]);
  MatrixNxPts<1u,double>::operator-(v169, v128, a1[2]);
  v39 = v120;
  v38 = v122;
  v40 = v38 * v38 + v39 * v39;
  v41 = v38 * v38 + v34 * v34;
  v42 = v24 + v34 * (v35 * v31);
  v43 = v39 * v39 + v34 * v34;
  v197[0] = -(v40 * (v35 * v33));
  v197[1] = -(v40 * (v36 * v33) + (v39 + v39) * v26);
  v196[0] = v120 * v26 + v122 * (v35 * v31) + v34 * v120 * (v35 * v33);
  v196[1] = v34 * v26 + v122 * (v36 * v31) + v34 * v120 * (v36 * v33);
  v44 = v24 + v120 * (v36 * v31);
  v195[0] = v122 * v26 - v120 * (v35 * v31) + v34 * v122 * (v35 * v33);
  v195[1] = -(v44 - v34 * v122 * (v36 * v33));
  v194[0] = v120 * v26 - v122 * (v35 * v31) + v34 * v120 * (v35 * v33);
  v194[1] = v34 * v26 - v122 * (v36 * v31) + v34 * v120 * (v36 * v33);
  v193[0] = -(v41 * (v35 * v33) + (v34 + v34) * v26);
  v193[1] = -(v41 * (v36 * v33));
  v192[0] = v42 + v120 * v122 * (v35 * v33);
  v192[1] = v122 * v26 + v34 * (v36 * v31) + v120 * v122 * (v36 * v33);
  v191[0] = v122 * v26 + v120 * (v35 * v31) + v34 * v122 * (v35 * v33);
  v191[1] = v44 + v34 * v122 * (v36 * v33);
  v190[0] = -(v42 - v120 * v122 * (v35 * v33));
  v190[1] = v122 * v26 - v34 * (v36 * v31) + v120 * v122 * (v36 * v33);
  v189[0] = -(v43 * (v35 * v33) + (v34 + v34) * v26);
  v189[1] = -(v43 * (v36 * v33) + (v39 + v39) * v26);
  v197[2] = -(v40 * (v37 * v33) + (v38 + v38) * v26);
  v45 = v24 + v122 * (v37 * v31);
  v196[2] = v45 + v34 * v120 * (v37 * v33);
  v195[2] = v34 * v26 - v120 * (v37 * v31) + v34 * v122 * (v37 * v33);
  v194[2] = -(v45 - v34 * v120 * (v37 * v33));
  v193[2] = -(v41 * (v37 * v33) + (v38 + v38) * v26);
  v192[2] = v120 * v26 + v34 * (v37 * v31) + v120 * v122 * (v37 * v33);
  v191[2] = v34 * v26 + v120 * (v37 * v31) + v34 * v122 * (v37 * v33);
  v190[2] = v120 * v26 - v34 * (v37 * v31) + v120 * v122 * (v37 * v33);
  v189[2] = -(v43 * (v37 * v33));
  Matrix<double>::Matrix(&v184, 2, v27);
  v115 = a2;
  Matrix<double>::Matrix(&v187, 2, v27);
  Matrix<double>::Matrix(&v188, 2, v27);
  v46 = v27;
  for (i = 0; i != 3; ++i)
  {
    Matrix<double>::Row((&v184 + 2 * i), 0, &v124);
    if (v147 == 1 && v145)
    {
      MEMORY[0x22AA55B40](v145, 0x1000C8000313F17);
    }

    v146 = v126;
    v145 = v125;
    v147 = v127;
    v127 = 0;
    Matrix<double>::~Matrix(&v124);
    Matrix<double>::Row((&v184 + 2 * i), 1, &v124);
    if (v143 == 1 && v141)
    {
      MEMORY[0x22AA55B40](v141, 0x1000C8000313F17);
    }

    v142 = v126;
    v141 = v125;
    v143 = v127;
    v127 = 0;
    Matrix<double>::~Matrix(&v124);
    if (v46)
    {
      v48 = 0;
      v49 = v197[i];
      v50 = v196[i];
      v51 = v195[i];
      v52 = v194[i];
      v53 = v193[i];
      v54 = v192[i];
      v55 = v191[i];
      v56 = v190[i];
      v57 = v189[i];
      do
      {
        v58 = *(v133 + v48);
        v59 = *(v131 + v48);
        v60 = *(v129 + v48);
        v61 = v59 * v50 + v58 * v49 + v60 * v51;
        v62 = v59 * v53 + v58 * v52;
        v63 = v59 * v56 + v58 * v55 + v60 * v57;
        *(v145 + v48) = -(v61 * *(v151 + v48) - v63 * *(v161 + v48)) / *(v149 + v48);
        *(v141 + v48) = -((v62 + v60 * v54) * *(v151 + v48) - v63 * *(v156 + v48)) / *(v149 + v48);
        v48 += 8;
      }

      while (v28 != v48);
    }
  }

  SparseMatrix::Zero(a3);
  MatrixWidth = SparseMatrix::GetMatrixWidth(a3);
  v65 = v46;
  Matrix<double>::Matrix(&v124, 1, MatrixWidth);
  v124 = &unk_283812C88;
  if (*(a4 + 24) == 1)
  {
    v66 = *(a4 + 8);
    if (v66)
    {
      MEMORY[0x22AA55B40](v66, 0x1000C8000313F17);
    }
  }

  *(a4 + 16) = v126;
  *(a4 + 8) = v125;
  *(a4 + 24) = v127;
  v127 = 0;
  Matrix<double>::~Matrix(&v124);
  bzero(*(a4 + 8), 8 * (*(a4 + 20) * *(a4 + 16)));
  if (v46)
  {
    v67 = 0;
    do
    {
      v68 = 4 * v67;
      if (*(v115 + 128) == 1)
      {
        if (!v138 || v67 >= v139)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        if (v138 == 1)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        v69 = (v137 + 8 * v67);
        v70 = *v69;
        v71 = v69[v139];
        SparseMatrix::AddValue(a3, 4 * v67, 3, *v69);
        SparseMatrix::AddValue(a3, v68 | 1, 3, v71);
        *(*(a4 + 8) + 24) = *(*(a4 + 8) + 24) + v70 * v70;
        *(*(a4 + 8) + 24) = *(*(a4 + 8) + 24) + v71 * v71;
      }

      v72 = 0;
      v73 = &v185 + 1;
      do
      {
        v74 = *(v73 - 1);
        if (!v74 || (v75 = *v73, v67 >= v75))
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        if (v74 == 1)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        v76 = (*(v73 - 3) + 8 * v67);
        v77 = *v76;
        v78 = v76[v75];
        SparseMatrix::AddValue(a3, v68 | 2, v72, *v76);
        SparseMatrix::AddValue(a3, v68 | 3, v72, v78);
        *(*(a4 + 8) + 8 * v72) = *(*(a4 + 8) + 8 * v72) + v77 * v77;
        *(*(a4 + 8) + 8 * v72) = *(*(a4 + 8) + 8 * v72) + v78 * v78;
        ++v72;
        v73 += 8;
      }

      while (v72 != 3);
      ++v67;
    }

    while (v67 != v65);
    v79 = 0;
    v123 = -v177;
    v117 = v175;
    v116 = v176;
    v80 = 3;
    v81 = 1;
    do
    {
      v82 = *(v115 + 128);
      v83 = -v118 / *(v170 + v79);
      v84 = *(v151 + v79);
      v85 = *(v161 + v79);
      v86 = *(v149 + v79);
      v87 = *(v156 + v79);
      SparseMatrix::AddValue(a3, v81 - 1, v80 + v82, v83);
      v88 = -(v85 * v123 + v117 * v84) / v86;
      SparseMatrix::AddValue(a3, v81 + 1, v80 + v82, v88);
      v89 = -(v87 * v123 + v116 * v84) / v86;
      SparseMatrix::AddValue(a3, v81 + 2, v80 + v82, v89);
      *(*(a4 + 8) + 8 * (v80 + v82)) = v88 * v88 + v83 * v83 + v89 * v89;
      v90 = *(v151 + v79);
      v91 = *(v161 + v79);
      v92 = *(v149 + v79);
      v93 = v180;
      v94 = v178;
      v95 = v179;
      v96 = *(v156 + v79);
      SparseMatrix::AddValue(a3, v81, v80 + v82 + 1, v83);
      v97 = -(v94 * v90 - v93 * v91) / v92;
      SparseMatrix::AddValue(a3, v81 + 1, v80 + v82 + 1, v97);
      v98 = -(v95 * v90 - v93 * v96) / v92;
      SparseMatrix::AddValue(a3, v81 + 2, v80 + v82 + 1, v98);
      *(*(a4 + 8) + 8 * (v80 + v82 + 1)) = v97 * v97 + v83 * v83 + v98 * v98;
      v99 = v118 / (*(v170 + v79) * *(v170 + v79));
      v100 = *(v172 + v79);
      v101 = *(v151 + v79);
      v102 = *(v161 + v79);
      v103 = *(v149 + v79);
      v104 = v183;
      v105 = v181;
      v119 = v99 * *(v174 + v79);
      v121 = v182;
      v106 = *(v156 + v79);
      SparseMatrix::AddValue(a3, v81 - 1, v80 + v82 + 2, v119);
      v107 = v99 * v100;
      SparseMatrix::AddValue(a3, v81, v80 + v82 + 2, v107);
      v108 = -(v105 * v101 - v104 * v102) / v103;
      SparseMatrix::AddValue(a3, v81 + 1, v80 + v82 + 2, v108);
      v109 = -(v121 * v101 - v104 * v106) / v103;
      SparseMatrix::AddValue(a3, v81 + 2, v80 + v82 + 2, v109);
      *(*(a4 + 8) + 8 * (v80 + v82 + 2)) = v107 * v107 + v119 * v119 + v108 * v108 + v109 * v109;
      v80 += 3;
      v81 += 4;
      v79 += 8;
    }

    while (v28 != v79);
  }

  v110 = *(a4 + 20);
  if (v110)
  {
    v111 = 0;
    v112 = 8 * v110;
    do
    {
      *(*(a4 + 8) + v111) = sqrt(*(*(a4 + 8) + v111));
      v111 += 8;
    }

    while (v112 != v111);
  }

  for (j = 64; j != -32; j -= 32)
  {
    Matrix<double>::~Matrix(&v184 + j);
  }

  Matrix<double>::~Matrix(v128);
  Matrix<double>::~Matrix(v130);
  Matrix<double>::~Matrix(&v132);
  Matrix<double>::~Matrix(v136);
  Matrix<double>::~Matrix(&v140);
  Matrix<double>::~Matrix(&v144);
  Matrix<double>::~Matrix(v148);
  Matrix<double>::~Matrix(&v150);
  Matrix<double>::~Matrix(&v155);
  Matrix<double>::~Matrix(&v160);
  Matrix<double>::~Matrix(v165);
  Matrix<double>::~Matrix(v166);
  Matrix<double>::~Matrix(v167);
  Matrix<double>::~Matrix(v168);
  Matrix<double>::~Matrix(v169);
  Matrix<double>::~Matrix(v171);
  return Matrix<double>::~Matrix(v173);
}

void sub_2248EFC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  v71 = &STACK[0x310];
  v72 = -96;
  do
  {
    v71 = (Matrix<double>::~Matrix(v71) - 32);
    v72 += 32;
  }

  while (v72);
  Matrix<double>::~Matrix(&a22);
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a38);
  Matrix<double>::~Matrix(&a42);
  Matrix<double>::~Matrix(&a46);
  Matrix<double>::~Matrix(&a50);
  Matrix<double>::~Matrix(&a54);
  Matrix<double>::~Matrix(&a58);
  Matrix<double>::~Matrix(&a62);
  Matrix<double>::~Matrix(&a66);
  Matrix<double>::~Matrix(&a70);
  Matrix<double>::~Matrix(&STACK[0x208]);
  Matrix<double>::~Matrix(&STACK[0x228]);
  Matrix<double>::~Matrix(&STACK[0x248]);
  Matrix<double>::~Matrix(&STACK[0x268]);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::solveLinearEq(int a1, SparseMatrix *this, double a3, uint64_t a4, uint64_t a5, int a6)
{
  MatrixHeight = SparseMatrix::GetMatrixHeight(this);
  SparseMatrix::Expand(this, a6, 1uLL);
  if (a6 >= 1)
  {
    v12 = 0;
    v13 = sqrt(a3);
    do
    {
      SparseMatrix::AddValue(this, MatrixHeight + v12, v12, v13 * *(*(a5 + 8) + 8 * v12));
      ++v12;
    }

    while (a6 != v12);
  }

  Matrix<double>::Matrix(&v15, 1, *(a4 + 20) + a6);
  v15 = &unk_283812C88;
  bzero(__dst, 8 * (v18 * v17));
  memcpy(__dst, *(a4 + 8), 8 * *(a4 + 20));
  JacobianMatrix::Solve(this, v14);
}

void sub_2248F0074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  Matrix<double>::~Matrix(v9);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<1u,double>::operator/@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator/(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283812C88;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<1u,double>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator*(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283812C88;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<1u,double>::MultAxBTag<1u>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  *a3 = 0.0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 20) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  if (!*(result + 16) || (v5 = *(result + 20)) == 0)
  {
    MatrixNxPts<3u,double>::CloneColumn();
  }

  if (v4)
  {
    MatrixNxPts<3u,double>::CloneColumn();
  }

  v6 = *(a2 + 8);
  v7 = *(result + 8);
  v8 = 0.0;
  do
  {
    v9 = *v7++;
    v10 = v9;
    v11 = *v6++;
    v8 = v8 + v10 * v11;
    --v5;
  }

  while (v5);
  *a3 = v8;
  return result;
}

void Matrix<double>::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v7 = *(a2 + 16), v7 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  Matrix<double>::Matrix(a3, v7, v4);
  vDSPVadd<double>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

uint64_t MatrixNxPts<1u,double>::operator+@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::operator+(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283812C88;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

void CGMC_BundleAdjustment::OptimizationParams::OptimizationParams(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 11);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 24) = *(a2 + 24);
  Matrix<double>::Matrix(a1 + 96, (a2 + 6), 0, -1);
}

{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 11);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 24) = *(a2 + 24);
  Matrix<double>::Matrix(a1 + 96, (a2 + 6), 0, -1);
}

double CGMC_BundleAdjustment::OptimizationParams::ShiftBy(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = **(a2 + 8) + *a1;
  *(a1 + 8) = *(*(a2 + 8) + 8) + v4;
  *(a1 + 16) = *(*(a2 + 8) + 16) + *(a1 + 16);
  if (*(a1 + 128) == 1)
  {
    *(a1 + 24) = *(*(a2 + 8) + 24) + *(a1 + 24);
    *(a1 + 56) = *(*(a2 + 8) + 24) + *(a1 + 56);
  }

  Matrix<double>::Row(a1 + 96, 0, &v11);
  v5 = v12;
  Matrix<double>::~Matrix(&v11);
  Matrix<double>::Row(a1 + 96, 1, &v11);
  v6 = v12;
  Matrix<double>::~Matrix(&v11);
  Matrix<double>::Row(a1 + 96, 2, &v11);
  v7 = v12;
  Matrix<double>::~Matrix(&v11);
  v9 = *(a1 + 128) + 3;
  for (i = *(a2 + 20); v9 < i; v9 += 3)
  {
    *v5 = *(*(a2 + 8) + 8 * v9) + *v5;
    ++v5;
    *v6 = *(*(a2 + 8) + 8 * (v9 + 1)) + *v6;
    ++v6;
    result = *(*(a2 + 8) + 8 * (v9 + 2)) + *v7;
    *v7++ = result;
  }

  return result;
}

BOOL CGMC_BundleAdjustment::isStalled(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v5 = sqrt(v4[1] * v4[1] + *v4 * *v4 + v4[2] * v4[2]);
  if (v5 < *(a4 + 600))
  {
    v5 = fabs(v4[3]);
    if (v5 < *(a4 + 608))
    {
      return 1;
    }
  }

  LODWORD(v5) = *(a4 + 524);
  return fabs(a1) / *&v5 < *(a4 + 592);
}

void CGMC_BundleAdjustment::angleAxisToRotationMatrix(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = 0.0;
  do
  {
    v4 = v4 + *(a1 + v3) * *(a1 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  v5 = sqrt(v4);
  if (v5 != 0.0)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(a1 + i) = *(a1 + i) / v5;
    }
  }

  v7 = 0;
  v50[0] = 0;
  v8 = *(a1 + 16);
  *&v50[1] = -v8;
  *&v50[3] = v8;
  v50[4] = 0;
  v9 = *a1;
  v50[2] = *(a1 + 8);
  v51 = vnegq_f64(v9);
  v52 = v9.f64[0];
  v53 = 0;
  v47 = 0;
  v10 = v46 + 1;
  v11 = vdupq_n_s64(2uLL);
  memset(v46, 0, sizeof(v46));
  v12 = vdupq_n_s64(3uLL);
  do
  {
    v13 = v10;
    v14 = 4;
    v15 = xmmword_2249B9820;
    do
    {
      if (vmovn_s64(vcgtq_u64(v12, v15)).u8[0])
      {
        if (v7 + v14 == 4)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.0;
        }

        *(v13 - 1) = v16;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v15)).i32[1])
      {
        if (v7 + v14 == 5)
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.0;
        }

        *v13 = v17;
      }

      v15 = vaddq_s64(v15, v11);
      v13 += 2;
      v14 -= 2;
    }

    while (v14);
    ++v7;
    v10 += 3;
  }

  while (v7 != 3);
  v18 = sin(v5);
  v19 = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  do
  {
    *(v44 + v19 * 8) = v18 * *&v50[v19];
    v20 = v19++ >= 8;
  }

  while (!v20);
  v21 = 0;
  v22 = 0;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  do
  {
    v23 = v21;
    v24 = 3;
    do
    {
      *(v48 + v23) = *(v46 + v23) + *(v44 + v23);
      v23 += 8;
      --v24;
    }

    while (v24);
    ++v22;
    v21 += 24;
  }

  while (v22 != 3);
  v25 = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v26 = v50;
  do
  {
    v27 = 0;
    v28 = v50;
    do
    {
      v29 = 0;
      v30 = 0.0;
      v31 = v28;
      do
      {
        v32 = *v31;
        v31 += 3;
        v30 = v30 + *&v26[v29++] * v32;
      }

      while (v29 != 3);
      *(v40 + 3 * v25 + v27++) = v30;
      ++v28;
    }

    while (v27 != 3);
    ++v25;
    v26 += 3;
  }

  while (v25 != 3);
  v33 = cos(v5);
  v34 = 0;
  v35 = 1.0 - v33;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  do
  {
    *(v42 + v34) = v35 * *(v40 + v34);
    v20 = v34 >= 0x40;
    v34 += 8;
  }

  while (!v20);
  v36 = 0;
  v37 = 0;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    v38 = v36;
    v39 = 3;
    do
    {
      *(a2 + v38) = *(v48 + v38) + *(v42 + v38);
      v38 += 8;
      --v39;
    }

    while (v39);
    ++v37;
    v36 += 24;
  }

  while (v37 != 3);
}

void Matrix<double>::operator-(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::Matrix(a2, *(a1 + 16), *(a1 + 20));
  v6 = -a3;
  vDSPVsadd<double>(*(a1 + 8), 1, &v6, *(a2 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

uint64_t MatrixNxPts<1u,double>::DotMult@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::DotMult<double>(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283812C88;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<1u,double>::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator-(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283812C88;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<1u,double>::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::operator-(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283812C88;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t CGMC_BundleAdjustment::getResidualsStats(uint64_t a1, uint64_t a2, void *a3, double *a4, double *a5)
{
  MatrixNxPts<1u,double>::DotMult(a2, a2, v20);
  Matrix<double>::Matrix(&v16, 1, v22 >> 1);
  v16 = &unk_283812C88;
  if (v19)
  {
    v8 = 0;
    v9 = 0;
    v10 = 8 * v19;
    do
    {
      v17[v8 / 8] = sqrt(*(v21 + 8 * v9) + *(v21 + 8 * (v9 + 1)));
      v9 += 2;
      v8 += 8;
    }

    while (v10 != v8);
  }

  MatrixNxPts<1u,double>::SortInplace<1u,void>(&v16);
  v23 = 0;
  vDSPMeanv<double>(v17, 1, &v23, v19 * v18);
  *a3 = v23;
  v11 = v19;
  v12 = v19 >> 1;
  v13 = v17;
  if (v19)
  {
    v14 = v17[v12];
  }

  else
  {
    v14 = (v17[(v12 - 1)] + v17[v12]) * 0.5;
  }

  *a4 = sqrt(v14);
  *a5 = sqrt(v13[vcvtad_u64_f64(v11 * 0.95) - 1]);
  Matrix<double>::~Matrix(&v16);
  return Matrix<double>::~Matrix(v20);
}

void sub_2248F0B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t MatrixMxN<3u,3u,double>::SVDMxN<3u,void>(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v19[1] = a1[2];
  v19[2] = v3;
  v20 = *(a1 + 8);
  v4 = a1[1];
  v18 = *a1;
  v19[0] = v4;
  v5 = &v18 + 8;
  v6 = v19 + 8;
  for (i = 1; i != 3; ++i)
  {
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = *&v6[8 * v8];
      *&v6[8 * v8] = *v9;
      *v9 = v10;
      v9 += 3;
      ++v8;
    }

    while (i != v8);
    v5 += 8;
    v6 += 24;
  }

  MatrixMxN<3u,3u,double>::svdLapack();
  v11 = (a2 + 8);
  v12 = a2 + 24;
  for (j = 1; j != 3; ++j)
  {
    v14 = 0;
    v15 = v11;
    do
    {
      v16 = *(v12 + 8 * v14);
      *(v12 + 8 * v14) = *v15;
      *v15 = v16;
      v15 += 3;
      ++v14;
    }

    while (j != v14);
    ++v11;
    v12 += 24;
  }

  return 0;
}

void CGMC_BundleAdjustment::CGMC_BundleAdjustment(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_283812E40;
  *(a1 + 72) = 3;
  *(a1 + 80) = 0;
  *(a1 + 56) = &unk_283812E40;
  *(a1 + 64) = 0;
  *(a1 + 104) = 2;
  *(a1 + 112) = 0;
  *(a1 + 88) = &unk_283813CF8;
  *(a1 + 96) = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  *(a1 + 120) = &unk_283813CF8;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  Matrix<double>::Matrix(&v2, a2, 0, -1);
}

void sub_2248F1078(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(v4);
  Matrix<double>::~Matrix(v3);
  Matrix<double>::~Matrix(v2);
  Matrix<double>::~Matrix(v1);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::~CGMC_BundleAdjustment(CGMC_BundleAdjustment *this)
{
  Matrix<double>::~Matrix(this + 120);
  Matrix<double>::~Matrix(this + 88);
  Matrix<double>::~Matrix(this + 56);
  Matrix<double>::~Matrix(this + 24);
}

void Matrix<double>::Matrix(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_283812C58;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + 8 * (v4 * a3);
  v7 = &unk_283812C58;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

double Matrix<double>::DotDivInPlace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 != *(a1 + 20) || (v3 = *(a2 + 16), v3 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = &v5[v4];
    v7 = *(a2 + 8);
    do
    {
      v8 = *v7++;
      result = *v5 / v8;
      *v5++ = result;
    }

    while (v5 < v6);
  }

  return result;
}

void Matrix<double>::operator/(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a3;
  Matrix<double>::Matrix(a2, *(a1 + 16), *(a1 + 20));
  vDSPVsdiv<double>(*(a1 + 8), 1, &v5, *(a2 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

void Matrix<double>::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a3;
  Matrix<double>::Matrix(a2, *(a1 + 16), *(a1 + 20));
  vDSPVsmul<double>(*(a1 + 8), 1, &v5, *(a2 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

double Matrix<double>::DotProductInPlace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 != *(a1 + 20) || (v3 = *(a2 + 16), v3 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = &v5[v4];
    v7 = *(a2 + 8);
    do
    {
      v8 = *v7++;
      result = v8 * *v5;
      *v5++ = result;
    }

    while (v5 < v6);
  }

  return result;
}

void Matrix<double>::operator-(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v7 = *(a2 + 16), v7 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  Matrix<double>::Matrix(a3, v7, v4);
  vDSPVsub<double>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

uint64_t MatrixMxN<3u,3u,double>::svdLapack()
{
  dgesvd_NEWLAPACK();
  v0 = malloc_type_malloc(8 * 0.0, 0x100004000313F17uLL);
  dgesvd_NEWLAPACK();
  free(v0);
  return 0;
}

uint64_t H16ISP::H16ISPGraphFrameSyncNode::onActivate(H16ISP::H16ISPGraphFrameSyncNode *this)
{
  v2 = *(this + 1);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN6H16ISP24H16ISPGraphFrameSyncNode10onActivateEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_7;
  handler[4] = this;
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v4 = v3;
  if (v3)
  {
    dispatch_source_set_event_handler(v3, handler);
    dispatch_activate(v4);
  }

  *(this + 38) = v4;
  *(this + 40) = 0;
  *(this + 328) = 0;
  return 0;
}

void ___ZN6H16ISP24H16ISPGraphFrameSyncNode10onActivateEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  H16ISP::H16ISPGraphFrameSyncNode::CheckForSynchronization(v1, 0);

  H16ISP::H16ISPGraphFrameSyncNode::CheckForSynchronization(v1, 1);
}

void H16ISP::H16ISPGraphFrameSyncNode::CheckForSynchronization(uint64_t a1, int a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v4 = mach_absolute_time();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 324;
  if (!a2)
  {
    v9 = 320;
  }

  memset(v33, 0, 24);
  v10 = *(a1 + v9);
  do
  {
    if (*(a1 + v5 + 80) != 1)
    {
      goto LABEL_13;
    }

    if (a2)
    {
      if (a2 != 1 || !*(a1 + v5 + 144))
      {
        goto LABEL_13;
      }

      v11 = a1 + v5 + 120;
    }

    else
    {
      if (!*(a1 + v5 + 112))
      {
        goto LABEL_13;
      }

      v11 = a1 + 80 + 72 * v6 + 8;
    }

    if (*(v11 + 8) == v10)
    {
      v33[v7++] = v11;
      v8 = *(v11 + 12);
    }

LABEL_13:
    ++v6;
    v5 += 72;
  }

  while (v5 != 216);
  if (v7 && v8 == v7)
  {
    H16ISP::H16ISPGraphFrameSyncNode::AllocateAndSendGraphMessage(a1);
  }

  v12 = 0;
  if (a2)
  {
    v13 = 75;
  }

  else
  {
    v13 = 50;
  }

  v14 = v13;
  while (2)
  {
    if (*(a1 + v12 + 80) != 1)
    {
      goto LABEL_41;
    }

    if (!a2)
    {
      if (!*(a1 + v12 + 112))
      {
        goto LABEL_41;
      }

      v15 = 8;
LABEL_28:
      if (((v4 - *(a1 + v12 + v15 + 80)) * *(a1 + 296) / *(a1 + 300)) / 1000000.0 <= v14)
      {
        v20 = a1 + v15 + v12;
        if (*(v20 + 88) >= v10)
        {
          goto LABEL_41;
        }

        if (*(v20 + 92) >= 2u)
        {
          v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v21 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(*(a1 + v15 + v12 + 104) + 16);
            *buf = 67109376;
            v30 = v22;
            v31 = 1024;
            v32 = a2;
            v18 = v21;
            v19 = "H16ISPGraphFrameSyncNode::CheckForSynchronization - Newer frame on another channel detected, ejecting without synchronization (channel=%d, frameCategory = %d)\n\n";
            goto LABEL_33;
          }
        }
      }

      else
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(a1 + v15 + v12 + 104) + 16);
          *buf = 67109376;
          v30 = v17;
          v31 = 1024;
          v32 = a2;
          v18 = v16;
          v19 = "H16ISPGraphFrameSyncNode::CheckForSynchronization - Ejecting expired frame without synchronization (channel=%d, frameCategory=%d)\n\n";
LABEL_33:
          _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xEu);
        }
      }

      H16ISP::H16ISPGraphFrameSyncNode::AllocateAndSendGraphMessage(a1);
    }

    if (a2 == 1 && *(a1 + v12 + 144))
    {
      v15 = 40;
      goto LABEL_28;
    }

LABEL_41:
    v12 += 72;
    if (v12 != 216)
    {
      continue;
    }

    break;
  }

  v23 = 0;
  v24 = (a1 + 144);
  v25 = 3;
  do
  {
    if (*(v24 - 64) == 1)
    {
      if (*(v24 - 4))
      {
        ++v23;
      }

      if (*v24)
      {
        ++v23;
      }
    }

    v24 += 9;
    --v25;
  }

  while (v25);
  if (v23)
  {
    if ((*(a1 + 328) & 1) == 0)
    {
      *(a1 + 328) = 1;
      v26 = *(a1 + 304);
      if (v26)
      {
        v27 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 5000000);
        dispatch_source_set_timer(v26, v27, 0x4C4B40uLL, 0xF4240uLL);
      }
    }
  }

  else if (*(a1 + 328))
  {
    v28 = *(a1 + 304);
    if (v28)
    {
      dispatch_source_set_timer(v28, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    *(a1 + 328) = 0;
  }
}

uint64_t H16ISP::H16ISPGraphFrameSyncNode::onDeactivate(H16ISP::H16ISPGraphFrameSyncNode *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 38) = 0;
  }

  v3 = 0;
  v4 = this + 80;
  v5 = MEMORY[0x277D86220];
  do
  {
    v6 = &v4[72 * v3];
    v7 = *(v6 + 4);
    if (v7)
    {
      if (*(v7 + 20))
      {
        v8 = 0;
        v9 = (v7 + 24);
        do
        {
          v10 = *v9;
          v9 += 2;
          CVPixelBufferRelease(v10);
          ++v8;
        }

        while (v8 < *(v7 + 20));
      }

      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
      {
        v11 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "H16ISPGraphFrameSyncNode::AllocateAndSendGraphMessage - System tearing down, discard the cached frame.\n\n", buf, 2u);
      }

      v12 = *(v6 + 4);
      if (v12)
      {
        MEMORY[0x22AA55B60](v12, 0x10A0C408ADDF976);
      }
    }

    *(v6 + 4) = 0;
    v13 = *(v6 + 8);
    if (v13)
    {
      if (*(v13 + 20))
      {
        v14 = 0;
        v15 = (v13 + 24);
        do
        {
          v16 = *v15;
          v15 += 2;
          CVPixelBufferRelease(v16);
          ++v14;
        }

        while (v14 < *(v13 + 20));
      }

      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
      {
        v17 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "H16ISPGraphFrameSyncNode::AllocateAndSendGraphMessage - System tearing down, discard the cached frame.\n\n", v20, 2u);
      }

      v18 = *(v6 + 8);
      if (v18)
      {
        MEMORY[0x22AA55B60](v18, 0x10A0C408ADDF976);
      }
    }

    *(v6 + 8) = 0;
    ++v3;
  }

  while (v3 != 3);
  return 0;
}

uint64_t H16ISP::H16ISPGraphFrameSyncNode::onMessageProcessing(H16ISP::H16ISPGraphFrameSyncNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  pthread_mutex_lock((a2 + 8));
  v4 = 0;
  v5 = 0;
  v6 = (a2 + 100);
  v7 = 3;
  do
  {
    if (*v6)
    {
      isSensorType = H16ISP::H16ISPDevice::isSensorType(*(this + 39), *(v6 - 1), 1785950322);
      v5 |= !isSensorType;
      v4 |= isSensorType;
    }

    v6 += 86;
    --v7;
  }

  while (v7);
  if (v5 & 1 | ((v4 & 1) == 0))
  {
    v9 = 0;
    for (i = a2 + 112; ; i += 344)
    {
      v11 = a2 + 344 * v9 + 80;
      v12 = *(v11 + 5);
      if (v12)
      {
        break;
      }

LABEL_21:
      if (++v9 == 3)
      {
        pthread_mutex_unlock((a2 + 8));
        return 3758097130;
      }
    }

    v13 = 0;
    while (*(this + v13 + 80) != 1 || *(this + v13 + 84) != *(v11 + 4))
    {
      v13 += 72;
      if (v13 == 216)
      {
        goto LABEL_21;
      }
    }

    v14 = i;
    do
    {
      if (*v14 == 8 || *v14 == 2)
      {
        operator new();
      }

      v14 += 4;
      --v12;
    }

    while (v12);
  }

  pthread_mutex_unlock((a2 + 8));
  return 0;
}

mach_timebase_info *H16ISP::H16ISPGraphFrameSyncNode::H16ISPGraphFrameSyncNode(mach_timebase_info *this, H16ISP::H16ISPDevice *a2)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 3);
  *v4 = &unk_283813E58;
  v4[39] = a2;
  for (i = 10; i != 37; i += 9)
  {
    bzero(&this[i], 0x48uLL);
  }

  mach_timebase_info(this + 37);
  this[38] = 0;
  return this;
}

void H16ISP::H16ISPGraphFrameSyncNode::~H16ISPGraphFrameSyncNode(H16ISP::H16ISPGraphFrameSyncNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphFrameSyncNode::EnableChannel(H16ISP::H16ISPGraphFrameSyncNode *this, unsigned int a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -536870210;
  if (H16ISP::H16ISPDevice::isSensorType(*(this + 39), a2, 1785950322))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(this + 1);
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP24H16ISPGraphFrameSyncNode13EnableChannelEj_block_invoke;
      block[3] = &unk_2785317A8;
      v9 = a2;
      block[4] = &v10;
      block[5] = this;
      dispatch_sync(v5, block);
    }

    if (*(v11 + 6))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphFrameSyncNode::EnableChannel(v6);
      }
    }

    v4 = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t ___ZN6H16ISP24H16ISPGraphFrameSyncNode13EnableChannelEj_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1 + 80;
  v3 = (v1 + 84);
  v4 = 3;
  do
  {
    if (*(v3 - 4) == 1 && *v3 == *(result + 48))
    {
      *(*(*(result + 32) + 8) + 24) = 0;
    }

    v3 += 18;
    --v4;
  }

  while (v4);
  if (*(*(*(result + 32) + 8) + 24))
  {
    if (*v2)
    {
      v2 = v1 + 152;
      if (*(v1 + 152) == 1)
      {
        v6 = *(v1 + 224);
        v5 = v1 + 224;
        if (v6)
        {
          return result;
        }

        v2 = v5;
      }
    }

    *v2 = 1;
    *(v2 + 4) = *(result + 48);
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPGraphFrameSyncNode::DisableChannel(H16ISP::H16ISPGraphFrameSyncNode *this, unsigned int a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -536870160;
  if (H16ISP::H16ISPDevice::isSensorType(*(this + 39), a2, 1785950322))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(this + 1);
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP24H16ISPGraphFrameSyncNode14DisableChannelEj_block_invoke;
      block[3] = &unk_2785317D0;
      v9 = a2;
      block[4] = &v10;
      block[5] = this;
      dispatch_sync(v5, block);
    }

    if (*(v11 + 6))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphFrameSyncNode::DisableChannel(a2, v6);
      }
    }

    v4 = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_2248F28BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6H16ISP24H16ISPGraphFrameSyncNode14DisableChannelEj_block_invoke(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 40);
  while (*(v2 + v1 + 80) != 1 || *(v2 + v1 + 84) != *(result + 48))
  {
    v1 += 72;
    if (v1 == 216)
    {
      return result;
    }
  }

  *(v2 + v1 + 80) = 0;
  if (*(v2 + v1 + 112))
  {
    H16ISP::H16ISPGraphFrameSyncNode::AllocateAndSendGraphMessage(v2);
  }

  if (*(v2 + v1 + 144))
  {
    H16ISP::H16ISPGraphFrameSyncNode::AllocateAndSendGraphMessage(v2);
  }

  *(*(*(result + 32) + 8) + 24) = 0;
  return result;
}