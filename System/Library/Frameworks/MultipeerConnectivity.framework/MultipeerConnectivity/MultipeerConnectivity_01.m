BOOL gckIsNewInformationAvailableForParticipant(int a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v4 = (a2 + 280);
    v5 = 1;
    v6 = 1;
    while (!*(v4 - 1) || *v4 == a3)
    {
      v6 = v5 < a1;
      v4 += 104;
      if (++v5 - a1 == 1)
      {
        goto LABEL_6;
      }
    }

    v9 = gcks_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a3;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "New information is available for participant [%08X].", v10, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void gckSessionSendDD(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  pthread_mutex_lock((a1 + 7080));
  HIDWORD(v24) = *(a1 + 420);
  *&v25 = a1 + 424;
  v8 = *(a1 + 7184);
  if (!v8)
  {
LABEL_5:
    v9 = gcks_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = a2;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Couldn't find cList with iPriority == 0 for participant [%08X].", buf, 8u);
    }

    pthread_mutex_unlock((a1 + 7080));
    goto LABEL_8;
  }

  while (*(v8 + 88) != a2 || *(v8 + 80))
  {
    v8 = *(v8 + 832);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  if (!*(v8 + 60))
  {
    gckSessionRequestLSAUpdateForNode((a1 + 424));
  }

  v11 = OSPFMakeDD(&v23, &v24, 0, *(a1 + 416), a2, *(v8 + 32));
  *(v8 + 60) = 1;
  pthread_mutex_unlock((a1 + 7080));
  if (v11 < 0)
  {
    v14 = gcks_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      gckSessionSendDD_cold_1();
    }

    goto LABEL_8;
  }

  if (!a4)
  {
    v15 = gcks_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = " back";
      v28 = 1024;
      v29 = v11;
      v30 = 1024;
      v31 = a2;
      _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Sending DD%s with %d bytes to participant %08X.", buf, 0x18u);
    }

    pthread_mutex_lock((a1 + 7080));
    TracePrintNodes(a1, *(a1 + 420), a1 + 424, 1, *(a1 + 416));
    pthread_mutex_unlock((a1 + 7080));
    SendUDPPacketToParticipantChannelID(a1, v23, v11, a2, 0, a3, 0);
    goto LABEL_24;
  }

  v12 = *(a1 + 7184);
  if (!v12)
  {
LABEL_17:
    v13 = gcks_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = a2;
      _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Couldn't find cList with iPriority == 0 for participant [%08X].", buf, 8u);
    }

LABEL_24:
    free(v23);
    goto LABEL_8;
  }

  while (*(v12 + 88) != a2 || *(v12 + 80))
  {
    v12 = *(v12 + 832);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  pthread_mutex_lock((v12 + 768));
  v16 = *(v12 + 600);
  if (v16)
  {
    while (1)
    {
      v17 = v16;
      if (*v16 == 2)
      {
        break;
      }

      v16 = *(v16 + 64);
      if (!v16)
      {
        v18 = (v17 + 64);
        goto LABEL_30;
      }
    }

    *(v16 + 8) = xmmword_239FEC310;
    *(v16 + 32) = 0x4082BFEB851EB852;
    v21 = *(v16 + 40);
    if (v21)
    {
      free(v21);
    }

    *(v17 + 40) = v23;
    *(v17 + 48) = v11;
    *(v17 + 52) = a2;
  }

  else
  {
    v18 = (v12 + 600);
LABEL_30:
    v19 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v19 = 2;
    *(v19 + 8) = xmmword_239FEC310;
    v20 = v23;
    *(v19 + 4) = 0x4082BFEB851EB852;
    *(v19 + 5) = v20;
    *(v19 + 12) = v11;
    *(v19 + 13) = a2;
    *v18 = v19;
  }

  pthread_mutex_unlock((v12 + 768));
  v22 = *(a1 + 16);
  if (v22 != -1)
  {
    *(a1 + 16) = -1;
    close(v22);
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void gckPreemptivelyClearFlagsForTransientNodes(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 && a3 >= 1)
  {
    v4 = 0;
    v5 = (a1 + 424);
    v6 = a3;
    do
    {
      v7 = v6;
      v8 = v5;
      do
      {
        if (*(a2 + 4 * v4) == *v8 && v8[1] == -1)
        {
          v9 = gcks_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *v8;
            *buf = 67109120;
            v13 = v10;
            _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Received LSA with no route to previously unknown participant [%08X] (no old connection).", buf, 8u);
          }

          v8[69] = 0;
        }

        v8 += 104;
        --v7;
      }

      while (v7);
      ++v4;
    }

    while (v4 != v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void gckSessionSendLSA(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v35 = a3;
  v34 = a2;
  if (*(a1 + 708) >= 1)
  {
    v8 = 0;
    v30 = 0;
    v31 = 0;
    v9 = a1 + 712;
    do
    {
      v10 = *(v9 + 8 * v8);
      if (v10 != a4)
      {
        v11 = *(a1 + 20);
        *(a1 + 20) = v11 + 1;
        WORD2(v33) = v11;
        v12 = OSPFMakeLSA(&v31, &v32, 0, *(a1 + 416), v10, 0);
        if (v12 < 0)
        {
          v15 = gcks_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "OSPFMakeLSA failed.", buf, 2u);
          }
        }

        else
        {
          v13 = *(a1 + 7184);
          if (!v13)
          {
            goto LABEL_24;
          }

          v14 = v12;
          while (v10 != *(v13 + 88) || *(v13 + 80))
          {
            v13 = *(v13 + 832);
            if (!v13)
            {
              goto LABEL_24;
            }
          }

          if (!*(v13 + 60) && a5 == 0)
          {
LABEL_24:
            free(v31);
          }

          else
          {
            v17 = a5;
            pthread_mutex_lock((v13 + 768));
            v18 = (v13 + 600);
            do
            {
              v19 = v18;
              v20 = *v18;
              v18 = (*v18 + 64);
            }

            while (v20);
            v21 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
            *v21 = 4;
            *(v21 + 8) = xmmword_239FEC310;
            v22 = v31;
            *(v21 + 4) = 0x4082BFEB851EB852;
            *(v21 + 5) = v22;
            *(v21 + 12) = v14;
            *(v21 + 13) = v10;
            *(v21 + 28) = WORD2(v33);
            *v19 = v21;
            pthread_mutex_unlock((v13 + 768));
            v23 = gcks_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              v37 = WORD2(v33);
              v38 = 1024;
              v39 = v10;
              _os_log_impl(&dword_239FB7000, v23, OS_LOG_TYPE_DEFAULT, "Sending LSA with SN [%d] to participant [%08X].", buf, 0xEu);
            }

            v24 = *(a1 + 16);
            if (v24 != -1)
            {
              *(a1 + 16) = -1;
              close(v24);
            }

            ++v30;
            a5 = v17;
          }
        }
      }

      ++v8;
    }

    while (v8 < *(a1 + 708));
    if (v30)
    {
      TracePrintNodes(a1, a2, a3, 1, *(a1 + 416));
      v25 = gcks_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 416);
        *buf = 67109376;
        v37 = v26;
        v38 = 1024;
        v39 = v30;
        _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "I am participant %08X. Just sent LSAs to %d participants.", buf, 0xEu);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void gckSessionHandleRemainingDisconnectedNodes(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  gckSessionFindAndRemoveDisconnectedNodes(v2, v20, &v19);
  v10 = v19;
  if (v19 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = &v20[26 * v11];
      v13 = *v12;
      v14 = v4;
      v15 = v6;
      if (v4 < 1)
      {
LABEL_6:
        gckSessionDisconnectParticipant(v9, *v12, v12 + 9, *(v12 + 8), v8);
        for (i = *(v9 + 7184); i; i = *(i + 832))
        {
          if (*(i + 88) == v13)
          {
            gckSessionScheduleCListClose(i, v8);
          }
        }
      }

      else
      {
        while (1)
        {
          v16 = *v15++;
          if (v16 == v13)
          {
            break;
          }

          if (!--v14)
          {
            goto LABEL_6;
          }
        }
      }

      ++v11;
    }

    while (v11 != v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void gckSessionRequestLSAUpdateForNode(int *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  ++*(a1 + 136);
  a1[69] = 1;
  v2 = gcks_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = *(a1 + 136);
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Requesting LSA update for node with ID [%08X] serial number [%d].", v6, 0xEu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

_DWORD *gckSessionFindAndRemoveDisconnectedNodes(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = result[105];
  if (v3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = (result + 106);
    v9 = (result + 178);
    do
    {
      v10 = &v8[416 * v6];
      *(v10 + 69) = 0;
      if (*(v10 + 1) == -1)
      {
        v11 = gcks_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v10;
          *buf = 136315394;
          v19 = v10 + 9;
          v20 = 1024;
          v21 = v12;
          _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "No route to participant %s[%08X] -- disconnected.", buf, 0x12u);
        }

        v13 = *(v5 + 708);
        if (v13 >= 1)
        {
          for (i = 0; i < v13; ++i)
          {
            v15 = &v9[8 * i];
            if (*v15 == *v10)
            {
              gckSessionDeleteNeighbor(v5, v15);
              --i;
              v13 = *(v5 + 708);
            }
          }
        }

        memcpy((a2 + 416 * v7), &v8[416 * v6], 0x1A0uLL);
        result = gckSessionDeleteDisconnectedNode(v5, &v8[416 * v6--]);
        v3 = *(v5 + 420);
        ++v7;
      }

      ++v6;
    }

    while (v6 < v3);
  }

  *a3 = v7;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void gckSessionDeleteNeighbor(uint64_t a1, int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = gcks_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Deleting neighbor representing participant %08X.", v9, 8u);
  }

  v6 = *(a1 + 708) - 1;
  v7 = (a1 + 8 * v6 + 712);
  if (v7 != a2)
  {
    *a2 = *v7;
    LODWORD(v6) = *(a1 + 708) - 1;
  }

  *(a1 + 708) = v6;
  v8 = *MEMORY[0x277D85DE8];
}

void *gckSessionDeleteDisconnectedNode(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = gcks_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Deleting node for participant %08X.", v8, 8u);
  }

  result = memmove(a2, (a1 + 416 * *(a1 + 420) + 8), 0x1A0uLL);
  --*(a1 + 420);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void gckSessionDisconnectParticipant(uint64_t a1, int a2, const void *a3, int a4, int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = gcks_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = a2;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting participant [%08X].", v17, 8u);
  }

  v11 = *(a1 + 408);
  v12 = *(v11 + 168);
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = 0;
    while (*(v11 + 172 + 4 * v13) != a2)
    {
      if (v12 == ++v13)
      {
        LODWORD(v13) = *(v11 + 168);
        break;
      }
    }
  }

  if (v13 <= 0xF && v13 == v12)
  {
    *(v11 + 4 * v12 + 172) = a2;
    *(v11 + 168) = v12 + 1;
  }

  if (a5)
  {
    v14 = -2145779689;
  }

  else
  {
    v14 = 0;
  }

  PostEventCallback(v11, a2, 2, a3, a4, v14);
  for (i = *(a1 + 7184); i; i = *(i + 832))
  {
    if (*(i + 88) == a2)
    {
      gckSessionScheduleCListClose(i, a5);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void gckSessionScheduleCListClose(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = gcks_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 88);
    v6 = *(a1 + 72);
    v9[0] = 67109376;
    v9[1] = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling to close CList corresponding to participant (%08X), channel %d.", v9, 0xEu);
  }

  *(a1 + 56) = 1;
  if (a2)
  {
    *(a1 + 8) = micro();
    v7 = gcks_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Timed out, enforcing clean up.", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void gckSessionSendLSAACK(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  WORD6(v13[0]) = a4;
  v8 = OSPFMakeLSAACK(&v12, v13, 0, *(a1 + 416), a2);
  v9 = gcks_log();
  v10 = v9;
  if (v8 < 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      gckSessionSendLSAACK_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = a4;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Sending LSAACK with SN [%d] to participant [%08X].", buf, 0xEu);
    }

    SendUDPPacketToParticipantChannelID(a1, v12, v8, a2, 0, a3, 0);
    free(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t gckSessionHandleDeletedNode(uint64_t a1, int a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 708);
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = (a1 + 712);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      if (v9 == a2)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_8:
    v10 = 2149187606;
    v11 = gcks_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 67109120;
      v20[1] = a2;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Participant %08X not found.", v20, 8u);
    }
  }

  else
  {
    v12 = (a1 + 712 + 8 * v7);
    v13 = v12[1];
    gckSessionDeleteNeighbor(a1, v12);
    if (v13 != -1 || a3 != 0)
    {
      v15 = a1 + 424;
      gckSessionRequestLSAUpdateForNode((a1 + 424));
      if (a3)
      {
        v17 = *(a1 + 420);
        if (v17 >= 1)
        {
          while (*v15 != a2)
          {
            v15 += 416;
            if (!--v17)
            {
              goto LABEL_20;
            }
          }

          gckSessionDisconnectParticipant(a1, a2, (v15 + 9), *(v15 + 8), 1);
          gckSessionDeleteDisconnectedNode(a1, v15);
        }
      }

LABEL_20:
      gckSessionUpdateRoutingTable(a1, v16);
    }

    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t gckSessionGetInterfacePriorityForCList(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 384);
  if ((v2 & 0x100) != 0)
  {
    v20 = 4;
    goto LABEL_26;
  }

  if ((v2 & 4) != 0)
  {
    v20 = 1;
    goto LABEL_26;
  }

  v5 = SCNetworkInterfaceCopyAll();
  if (!v5)
  {
    v21 = gcks_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      gckSessionGetInterfacePriorityForCList_cold_1(a2);
    }

    v20 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    goto LABEL_19;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
      BSDName = SCNetworkInterfaceGetBSDName(v11);
      CStringPtr = CFStringGetCStringPtr(BSDName, 0x8000100u);
      if (!CStringPtr)
      {
        if (CFStringGetCString(BSDName, buffer, 256, 0x8000100u))
        {
          CStringPtr = buffer;
        }

        else
        {
          CStringPtr = 0;
        }
      }

      if (!InterfaceType || !BSDName || !CStringPtr)
      {
        v15 = gcks_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = CFStringGetCStringPtr(InterfaceType, 0x8000100u);
          v17 = CFStringGetCStringPtr(BSDName, 0x8000100u);
          v18 = *(a2 + 88);
          v19 = *(a2 + 72);
          *buf = 136315906;
          v36 = v16;
          v37 = 2080;
          v38 = v17;
          v39 = 1024;
          v40 = v18;
          v41 = 1024;
          v42 = v19;
          _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Invalid type [%s] or bsd name [%s] for participant [%08X] channelID [%d].", buf, 0x22u);
        }

        goto LABEL_18;
      }

      if (!strcmp((a2 + 388), CStringPtr))
      {
        break;
      }
    }

LABEL_18:
    if (v8 == ++v9)
    {
      goto LABEL_19;
    }
  }

  if (CFStringCompare(InterfaceType, *MEMORY[0x277CE16D8], 0) == kCFCompareEqualTo)
  {
    v20 = 3;
    goto LABEL_20;
  }

  if (CFStringCompare(InterfaceType, *MEMORY[0x277CE16D0], 0) == kCFCompareEqualTo)
  {
    *buf = 0;
    *existing = 0;
    IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
    if (!IORegistryEntryID)
    {
      v30 = 0;
LABEL_44:
      if (*buf)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], *buf);
      }

      if (v30)
      {
        if (*(a1 + 7540))
        {
          v20 = 7;
        }

        else
        {
          v20 = 5;
        }
      }

      else
      {
        v20 = 6;
      }

      goto LABEL_20;
    }

    v29 = IORegistryEntryID;
    IOMasterPort(*MEMORY[0x277D85F18], buf);
    v30 = *buf;
    if (*buf)
    {
      v31 = IORegistryEntryIDMatching(v29);
      IOServiceGetMatchingServices(v30, v31, &existing[1]);
      if (!existing[1])
      {
        v30 = 0;
LABEL_42:
        if (existing[0])
        {
          IOObjectRelease(existing[0]);
        }

        goto LABEL_44;
      }

      v32 = IOIteratorNext(existing[1]);
      v33 = v32;
      if (v32 && (IORegistryEntryGetParentEntry(v32, "IOService", existing), existing[0]))
      {
        v30 = IOObjectConformsTo(existing[0], "AppleUSBDeviceNCMData");
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    if (existing[1])
    {
      IOObjectRelease(existing[1]);
    }

    if (v33)
    {
      IOObjectRelease(v33);
    }

    goto LABEL_42;
  }

  v24 = gcks_log();
  v20 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = CFStringGetCStringPtr(InterfaceType, 0x8000100u);
    v26 = *(a2 + 88);
    v27 = *(a2 + 72);
    *buf = 136315906;
    v36 = v25;
    v37 = 2080;
    v38 = CStringPtr;
    v39 = 1024;
    v40 = v26;
    v41 = 1024;
    v42 = v27;
    _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Unexpected type [%s] for bsd name [%s] of participant [%08X] channelID [%d].", buf, 0x22u);
LABEL_19:
    v20 = 0;
  }

LABEL_20:
  CFRelease(v6);
LABEL_26:
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return [v0 displayNameAndPID];
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t AGPSendingSetElement::buffer(AGPSendingSetElement *this, unsigned __int8 *a2, unsigned __int32 a3, int a4, unsigned int a5, unsigned int a6, char a7)
{
  pthread_mutex_lock((this + 32));
  can_buffer = AGPAssociationSetElement::can_buffer(this, 1);
  v15 = 0xFFFFFFFFLL;
  if (a5 <= a6 && a2 && a3 - 1 <= 0x5DB && can_buffer)
  {
    v16 = *(this + 699);
    if (v16 > 0x3F)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      *(this + 699) = v16 + 1;
      v15 = *(this + 697);
      *(this + 697) = (v15 + 1) & 0x3F;
      v17 = this + 8 * v15;
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFFFFE | !AGPAssociationSetElement::can_buffer(this, 1);
      *(*(v17 + 15) + 8) |= 2u;
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFC0FF | ((v15 & 0x3F) << 8);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFFF03 | (4 * (*(this + 698) & 0x3F));
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0x3FFFFFF | (*(this + 697) << 26);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFC0FF | ((v15 & 0x3F) << 8);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFF03FFF | ((a5 & 0x3F) << 14);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFC0FFFFF | ((a6 & 0x3F) << 20);
      v18 = *(this + 27);
      *(this + 27) = v18 + 1;
      **(v17 + 15) = v18;
      v19 = CAGP::current_timestamp(*(this + 1));
      v20 = *(v17 + 15);
      v20[1] = v19;
      v20[3] = a3;
      v20[379] = a4;
      *(this + v15 + 632) = a7;
      memcpy((*(v17 + 15) + 16), a2, a3);
      *(this + 12) |= 1 << v15;
      v21.i32[0] = 1;
      v21.i32[1] = a3;
      *(*(this + 1) + 368) = vadd_s32(*(*(this + 1) + 368), v21);
    }
  }

  pthread_mutex_unlock((this + 32));
  return v15;
}

BOOL AGPAssociationSetElement::can_buffer(AGPAssociationSetElement *this, _BOOL8 a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 698);
  v5 = *(this + 696);
  if (v4 == v5)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = ((((v5 - v4) & ~((v5 - v4) >> 31)) + v4 - v5 + 63) & 0xFFFFFFC0) + v5 - v4;
  if (a2)
  {
LABEL_5:
    a2 = 64 - v6 - *(this + 699) >= a2;
  }

LABEL_6:
  pthread_mutex_unlock((this + 32));
  return a2;
}

uint64_t CAGP::current_timestamp(CAGP *this)
{
  v2 = *(this + 52);
  if (!gettimeofday(&v6, 0))
  {
    v3 = (v6.tv_usec / 1000 + 1000 * (SLODWORD(v6.tv_sec) % 604800)) % 0x240C8400u;
    v2 = *(this + 52);
    if (v2 == -1 || (v2 > v3 ? (v4 = (v2 - v3) >= 0x12064201) : (v4 = 1), v4))
    {
      *(this + 52) = v3;
      return v3;
    }
  }

  return v2;
}

uint64_t AGPSendingSetElement::search(AGPSendingSetElement *this, int a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 699);
  if (*(this + 699))
  {
    v5 = *(this + 696);
    while (**(this + v5 + 15) != a2)
    {
      v5 = (v5 + 1) & 0x3FLL;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((this + 32));
  return v5;
}

uint64_t AGPSendingSetElement::remove(AGPSendingSetElement *this, unsigned int a2)
{
  pthread_mutex_lock((this + 32));
  if (a2 <= 0x3F && (v4 = this + 120, v5 = *(this + a2 + 15), (v6 = v5[3]) != 0))
  {
    v7 = a2;
    v8 = v5[380];
    v9 = *(this + 1);
    *(v9 + 94) += v8;
    *(v9 + 95) += v8 * v6;
    v5[3] = 0;
    if (v5[1] != -1)
    {
      v10 = CAGP::current_timestamp(v9);
      v5 = *&v4[8 * a2];
      v11 = v10 - v5[1];
      v12 = v11 <= -302400000 ? v11 + 604800000 : v10 - v5[1];
      if (v12 >= 1)
      {
        pthread_mutex_lock((this + 32));
        UpdateRTO(this + 175, v12);
        pthread_mutex_unlock((this + 32));
        v5 = *&v4[8 * v7];
      }
    }

    v5[380] = 0;
    *(this + v7 + 632) = 0x80;
    *(*&v4[8 * v7] + 4) = -1;
    v13 = 1;
    *(this + 12) &= ~(1 << v7);
    if (*(this + 699))
    {
      v14 = *(this + 696);
LABEL_11:
      v15 = *&v4[8 * v14];
      if (!*(v15 + 12))
      {
        v16 = ((*(v15 + 8) >> 20) & 0x3F) + 1;
        v17 = v16;
        v18 = v14;
        while (1)
        {
          v19 = *&v4[8 * v18];
          if (*(v19 + 12) || (*(v19 + 8) & 2) == 0)
          {
            break;
          }

          v18 = (v18 + 1) & 0x3F;
          if (!--v17)
          {
            do
            {
              --v16;
              --*(this + 699);
              *(*&v4[8 * v14] + 8) &= ~2u;
              v14 = (*(this + 696) + 1) & 0x3F;
              *(this + 696) = v14;
            }

            while (v16);
            v13 = 1;
            if (*(this + 699))
            {
              goto LABEL_11;
            }

            goto LABEL_21;
          }
        }
      }

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_21:
  pthread_mutex_unlock((this + 32));
  return v13;
}

void releaseAssociationSetElement(const __CFAllocator *a1, void *a2)
{
  v2 = a2[1];
  a2[2] = *(v2 + 200);
  *(v2 + 200) = a2;
}

uint64_t checkSendingSet(char *a1, pthread_mutex_t **a2)
{
  v20[185] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 2);
  pthread_mutex_lock(*a2 + 1);
  pthread_mutex_lock((a1 + 32));
  for (i = 0; ; ++i)
  {
    v6 = (i + a1[698]) & 0x3FLL;
    v7 = *&a1[8 * v6 + 120];
    if (v7)
    {
      if (*(v7 + 3) && (v7[8] & 2) != 0 && *(v7 + 1) != -1)
      {
        v8 = CAGP::current_timestamp(v3);
        v9 = v8 - *(v7 + 1);
        if (v9 <= -302400000)
        {
          v9 += 604800000;
        }

        v10 = *(a1 + 178);
        if (v10)
        {
          if (v9 > 3 * v10)
          {
            break;
          }
        }
      }
    }

    if (i > 0x3E)
    {
      goto LABEL_15;
    }

LABEL_14:
    ;
  }

  v14[0] = 5;
  v14[1] = a1[v6 + 632];
  checksum = 0;
  v11 = *(a1 + 26);
  v16 = *&v3->__opaque[8];
  v17 = v11;
  v18 = *v7;
  v19 = *(v7 + 2) & 0x3FFFF03 | (4 * (a1[698] & 0x3F)) | (a1[697] << 26);
  *(v7 + 1) = v8;
  ++*(v7 + 380);
  memcpy(v20, v7 + 16, *(v7 + 3));
  checksum = agp_control::generate_checksum(v14, v7 + 16, *(v7 + 3));
  if (GCKSessionSendTo(*&v3->__opaque[16], (a1 + 104), 1, v14, (*(v7 + 3) + 20), 0, 64, 0, 0, *(v7 + 379), v4) != -1072037833 && i < 0x3F)
  {
    goto LABEL_14;
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 32));
  result = pthread_mutex_unlock(v3 + 1);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t agp_control::generate_checksum(agp_control *this, char *a2, int a3)
{
  if (*this)
  {
    v3 = 0;
    v4 = 2 * *this;
    do
    {
      v5 = *this;
      this = (this + 2);
      v3 += v5;
      --v4;
    }

    while (v4);
    if (!a2)
    {
      return ~v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return ~v3;
    }
  }

  v6 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *v7++;
      v3 += v8;
      --v6;
    }

    while (v6);
    a2 += 2 * ((a3 >> 1) - 1) + 2;
  }

  if (a3)
  {
    v3 += *a2;
  }

  return ~v3;
}

uint64_t AGPTransportCallback(uint64_t a1, unsigned int *a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, int a12)
{
  v19 = CheckInHandleDebug();
  if (v19)
  {
    v20 = v19;
    if (a3 < 1)
    {
      if (a3)
      {
        v41 = -a3;
        AGPDataQueue::disconnect((v19 + 216), a2, -a3);
        pthread_mutex_lock((v20 + 64));
        v42 = v41;
        v43 = a2;
        do
        {
          v44 = *v43++;
          v45 = *(v20 + 48);
          v45[26] = v44;
          value = 0;
          if (CFSetGetValueIfPresent(*(v20 + 40), v45, &value))
          {
            CFSetRemoveValue(*(v20 + 40), value);
          }

          --v42;
        }

        while (v42);
        while (1)
        {
          v46 = *(v20 + 200);
          if (!v46)
          {
            break;
          }

          *(v20 + 200) = v46[2];
          (*(*v46 + 8))(v46);
        }

        pthread_mutex_unlock((v20 + 64));
        pthread_mutex_lock((v20 + 128));
        do
        {
          v47 = *a2++;
          v48 = *(v20 + 56);
          v48[26] = v47;
          value = 0;
          if (CFSetGetValueIfPresent(*(v20 + 32), v48, &value))
          {
            CFSetRemoveValue(*(v20 + 32), value);
          }

          --v41;
        }

        while (v41);
        while (1)
        {
          v49 = *(v20 + 200);
          if (!v49)
          {
            break;
          }

          *(v20 + 200) = v49[2];
          (*(*v49 + 8))(v49);
        }

        v50 = (v20 + 128);
      }

      else
      {
        pthread_mutex_lock((v19 + 224));
        pthread_mutex_lock((v20 + 224));
        v51 = *(v20 + 216);
        pthread_mutex_unlock((v20 + 224));
        while (v51)
        {
          v52 = *(v51 + 80);
          if (v52)
          {
            v53 = *(v51 + 72);
            BytePtr = CFDataGetBytePtr(v52);
            Length = CFDataGetLength(*(v51 + 80));
            if (AGPSessionSendTo(a1, (v51 + 8), v53, BytePtr, Length, 0, 2, *(v51 + 88), a12, 0))
            {
              break;
            }
          }

          v56 = *(v51 + 96);
          if (v56)
          {
            global_queue = dispatch_get_global_queue(0, 0);
            dispatch_async(global_queue, v56);
          }

          pthread_mutex_lock((v20 + 224));
          v58 = *(v20 + 216);
          *(v20 + 216) = *v58;
          pthread_mutex_unlock((v20 + 224));
          AGPDataQueueNode::~AGPDataQueueNode(v58);
          MEMORY[0x23EE811A0]();
          pthread_mutex_lock((v20 + 224));
          v51 = *(v20 + 216);
          pthread_mutex_unlock((v20 + 224));
        }

        pthread_mutex_lock((v20 + 64));
        value = v20;
        v63 = a12;
        CFSetApplyFunction(*(v20 + 40), checkSendingSet, &value);
        pthread_mutex_unlock((v20 + 64));
        v50 = (v20 + 224);
      }

      pthread_mutex_unlock(v50);
    }

    else
    {
      v21 = a9;
      if ((a9 & 0x40) == 0)
      {
        v60 = a4;
        *a4 = 0;
        a4[1] = a9;
        *(a4 + 1) = 0;
        if ((a9 & 2) != 0)
        {
          LODWORD(v22) = a4 + 4;
        }

        else
        {
          *(a4 + 1) = *(v19 + 16);
          v22 = a4 + 8;
          v23 = a3;
          v24 = a4 + 8;
          do
          {
            v25 = CAGP::sendingSetElement(v20, *a2);
            v26 = AGPSendingSetElement::buffer(v25, a7, a8, a6, a10, a11, v21);
            if ((v26 & 0x80000000) != 0)
            {
              v38 = agps_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                AGPTransportCallback(&value, &value + 1);
              }
            }

            else
            {
              *v24 = *a2;
              v61 = v22;
              v27 = v21;
              v28 = a6;
              v29 = a7;
              v30 = a8;
              v31 = v25 + 8 * v26;
              *(v24 + 1) = **(v31 + 15);
              v32 = *(v24 + 2) & 0xFFFFFFFC | !AGPAssociationSetElement::can_buffer(v25, 1) | 2;
              *(v24 + 2) = v32;
              v33 = v32 & 0xFFFFFF03 | (4 * ((*(*(v31 + 15) + 8) >> 2) & 0x3F));
              *(v24 + 2) = v33;
              v34 = v33 & 0xFFFFC0FF | (((*(*(v31 + 15) + 8) >> 8) & 0x3F) << 8);
              *(v24 + 2) = v34;
              v35 = v34 & 0xFFF03FFF | (((*(*(v31 + 15) + 8) >> 14) & 0x3F) << 14);
              *(v24 + 2) = v35;
              v36 = v35 & 0xFC0FFFFF | (((*(*(v31 + 15) + 8) >> 20) & 0x3F) << 20);
              *(v24 + 2) = v36;
              v37 = *(v31 + 15);
              a8 = v30;
              a7 = v29;
              a6 = v28;
              v21 = v27;
              *(v24 + 2) = *(v37 + 8) & 0xFC000000 | v36 & 0x3FFFFFF;
              v22 = v61 + 12;
              v24 += 12;
            }

            ++a2;
            --v23;
          }

          while (v23);
        }

        *v60 = (v22 - v60 + 3) >> 2;
        *(v60 + 1) = agp_control::generate_checksum(v60, a7, a8);
        v40 = 4 * *v60;
        goto LABEL_42;
      }
    }

    v40 = 0;
LABEL_42:
    CheckOutHandleDebug();
    return v40;
  }

  v39 = agps_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    AGPTransportCallback(a3, v39);
  }

  return 0xFFFFFFFFLL;
}

void *CAGP::sendingSetElement(pthread_mutex_t *this, int a2)
{
  pthread_mutex_lock(this + 1);
  v4 = *&this->__opaque[32];
  v5 = *&this->__opaque[40];
  v5[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(v4, v5, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 1);
  return value;
}

uint64_t AGPDataQueue::disconnect(AGPDataQueue *this, unsigned int *a2, int a3)
{
  pthread_mutex_lock((this + 8));
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      if (v7)
      {
        v8 = a2[v6];
        v9 = v7;
        do
        {
          v10 = *(v9 + 18);
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = v10 - 1;
            v13 = v9 + 3;
            v14 = (v10 - 1);
            while (*(v9 + v11 + 2) != v8)
            {
              ++v11;
              ++v13;
              --v14;
              if (v10 == v11)
              {
                goto LABEL_14;
              }
            }

            if (v12 > v11)
            {
              do
              {
                *(v13 - 1) = *v13;
                ++v13;
                --v14;
              }

              while (v14);
              v12 = *(v9 + 18) - 1;
            }

            *(v9 + 18) = v12;
          }

LABEL_14:
          v9 = *v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t AGPSessionSendTo(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, unsigned int a8, int a9, void *a10)
{
  v10 = 0;
  v62 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_64;
  }

  if (!a4)
  {
    goto LABEL_64;
  }

  v11 = a5;
  if (a5 < 1)
  {
    goto LABEL_64;
  }

  v17 = CheckInHandleDebug();
  if (!v17)
  {
    v10 = 2149187586;
    v42 = agps_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      AGPSessionSendTo_cold_3(v42);
    }

    goto LABEL_64;
  }

  __src = a2;
  v57 = a6;
  v48 = 0;
  v49 = 1115 - 16 * a3;
  v19 = a4;
  v56 = v17;
  while (1)
  {
    memset(v61, 0, sizeof(v61));
    if (v49 < 0)
    {
      v43 = agps_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        AGPSessionSendTo_cold_2(&v59, v60);
      }

      goto LABEL_59;
    }

    v20 = 0;
    v21 = 0;
    v22 = 1;
    v23 = v19;
    do
    {
      v24 = v20;
      *(v61 + v20) = v23;
      if (v11 >= v49)
      {
        v25 = 1115 - 16 * a3;
      }

      else
      {
        v25 = v11;
      }

      *&v60[4 * v20 + 15] = v25;
      v26 = v22;
      v21 += v25;
      v11 -= v25;
      v23 += v25;
      ++v20;
      if (v24 > 6)
      {
        break;
      }

      ++v22;
    }

    while (v11 > 0);
    if (v20 != 1 && a7 == 1)
    {
      a7 = 0;
    }

    v55 = a7;
    if (!a7)
    {
      v28 = a10;
      v29 = 0;
      v30 = v11 > 0;
      goto LABEL_24;
    }

    if (a7 != 1)
    {
      break;
    }

    v28 = a10;
    v29 = 1;
    v30 = 2;
LABEL_24:
    v54 = v30;
    pthread_mutex_lock((v56 + 224));
    v31 = *(v56 + 27);
    pthread_mutex_unlock((v56 + 224));
    v32 = v31 != 0;
    if ((v29 & 1) != 0 || !v31)
    {
      v52 = v28;
      v50 = v29;
      v51 = v31 != 0;
      if (v54 <= 1)
      {
        a7 = v55;
        goto LABEL_29;
      }

      v54 = 2;
LABEL_36:
      v38 = 0;
      do
      {
        v39 = *&v60[4 * v38 + 15];
        v40.i32[0] = 1;
        v40.i32[1] = *&v60[4 * v38 + 15];
        *(v56 + 45) = vadd_s32(*(v56 + 360), v40);
        GCKSessionSendTo(*(v56 + 3), __src, a3, *(v61 + v38), v39, v57, v54, v38, v20 - 1, a8, a9);
        ++v38;
      }

      while (v24 + 1 != v38);
      v33 = v48;
      a10 = v52;
      a7 = v55;
      v32 = v51;
      if (v50)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v33 = 0;
      v26 = 0;
      a10 = v28;
      a7 = v55;
    }

LABEL_39:
    if (v32)
    {
      v10 = v33;
    }

    else
    {
      v10 = 0;
    }

    if (v33)
    {
      v41 = 1;
    }

    else
    {
      v41 = v32;
    }

    if (v11 > 0)
    {
      v41 = 1;
    }

    if (v26 < v20 && v41)
    {
      operator new();
    }

    if (v11 >= 1)
    {
      v19 = v23;
      if (!v10)
      {
        continue;
      }
    }

    goto LABEL_61;
  }

  if (a7 != 2)
  {
    v44 = agps_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      AGPSessionSendTo_cold_1(&v59, v60);
    }

LABEL_59:
    v48 = -2145648639;
    goto LABEL_60;
  }

  v52 = a10;
  v54 = v11 > 0;
  v50 = 1;
  v51 = 0;
LABEL_29:
  v34 = a3;
  v35 = __src;
  while (1)
  {
    v36 = *v35++;
    v37 = CAGP::sendingSetElement(v56, v36);
    if (!AGPAssociationSetElement::can_buffer(v37, v20))
    {
      break;
    }

    if (!--v34)
    {
      goto LABEL_36;
    }
  }

  v32 = v51;
  if ((v50 & 1) == 0)
  {
    v26 = 0;
    v33 = -2145648639;
    v48 = -2145648639;
    a10 = v52;
    goto LABEL_39;
  }

  v48 = -2145648639;
  a10 = v52;
LABEL_60:
  v10 = v48;
LABEL_61:
  if (a10)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, a10);
  }

  CheckOutHandleDebug();
LABEL_64:
  v46 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t AGPSessionCreate()
{
  if (CheckInHandleDebug())
  {
    CheckOutHandleDebug();
    operator new();
  }

  return 2149187586;
}

uint64_t AGPSessionRelease()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149187586;
  }

  v1 = v0;
  CheckOutHandleDebug();
  CAGP::~CAGP(v1);
  MEMORY[0x23EE811A0]();
  return 0;
}

uint64_t AGPDataQueue::add_tail(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      if (v4 == a2)
      {
        a2 = 0;
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = a1;
  }

  *v5 = a2;

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t AGPSessionRecvFrom(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v5 = a2;
  v109 = *MEMORY[0x277D85DE8];
  v107 = a2;
  if (!a1 || !a3 || !*(a3 + 8) || (*(a3 + 16) - 1) > 0x5DB)
  {
    v14 = agps_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v21 = *(a3 + 8);
        v22 = *(a3 + 16);
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *v108 = 67109632;
      *&v108[4] = v5;
      *&v108[8] = 2048;
      *&v108[10] = v21;
      *&v108[18] = 1024;
      *&v108[20] = v22;
      _os_log_error_impl(&dword_239FB7000, v14, OS_LOG_TYPE_ERROR, "Could not process a packet for participant [%08X], event-buffer [%p], event->size [%d].", v108, 0x18u);
    }

    goto LABEL_13;
  }

  pthread_mutex_lock((a1 + 128));
  v8 = CAGP::receiveSetElement(a1, v5);
  v9 = *(a3 + 8);
  v10 = 4 * *v9;
  v11 = *(a3 + 16);
  if (v11 < v10 || v8 == 0)
  {
    goto LABEL_10;
  }

  v17 = v8;
  v18 = *(v9 + 1);
  *(v9 + 1) = 0;
  checksum = agp_control::generate_checksum(v9, &v9[v10], v11 - v10);
  if (v18 != checksum)
  {
    v23 = checksum;
    v24 = agps_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v108 = 67109376;
      *&v108[4] = v18;
      *&v108[8] = 1024;
      *&v108[10] = v23;
      _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Incoming packet for participant (%08X) failed checksum check -> given (%04x) calculated (04x).", v108, 0xEu);
    }

    goto LABEL_10;
  }

  v20 = v9[1];
  if (v20 >= 2 && v20 != 11)
  {
    if (v20 == 2)
    {
      *(a3 + 8) += v10;
      *(a3 + 16) -= v10;
      v13 = 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v25 = (v9 + 4);
  v26 = 20;
  do
  {
    if (v26 > v10)
    {
      goto LABEL_10;
    }

    v27 = v25[1];
    v25 += 3;
    v26 += 12;
  }

  while (v27 != *(a1 + 16));
  *(a3 + 8) += v10;
  *(a3 + 16) -= v10;
  if (v20 < 2)
  {
    v49 = *(v25 - 1);
    v50 = v17[27];
    if (v49 >= v50 || v17[28] == -1)
    {
      v53 = 0;
      v13 = 1;
    }

    else
    {
      v51 = CAGP::current_timestamp(a1);
      v50 = v17[27];
      v52 = v51 - v17[28];
      if (v52 <= -302400000)
      {
        v52 += 604800000;
      }

      v53 = v52 > 1000;
      v13 = v52 < 1001;
      v49 = *(v25 - 1);
    }

    if (v49 >= v50 || v53)
    {
      if (v53)
      {
        goto LABEL_76;
      }

      v66 = (*v25 >> 8) & 0x3F;
      *&v104 = v17 + 30;
      v13 = *&v17[2 * v66 + 30];
      if (!v13)
      {
LABEL_11:
        pthread_mutex_unlock((a1 + 128));
        goto LABEL_14;
      }

      if (!*(v13 + 12))
      {
        v67 = v9[1];
        v98 = (v17 + 158);
        *(v17 + v66 + 632) = v67;
        memcpy((v13 + 16), *(a3 + 8), *(a3 + 16));
        *v13 = *(v25 - 1);
        *(v13 + 8) = *v25;
        *(v13 + 12) = *(a3 + 16);
        *(v13 + 1516) = a4;
        v68 = *v25;
        v69 = (*v25 >> 14) & 0x3F;
        LODWORD(v99) = *(v25 - 1) - v69;
        *&v103 = (v68 >> 8) - v69;
        while (1)
        {
          v70 = 0;
          v100 = (v68 >> 20) & 0x3F;
          v101 = v100 + 1;
          LODWORD(v102) = 1;
          do
          {
            v71 = (v103 + v70) & 0x3F;
            v72 = *(v104 + 8 * v71);
            if (!v72)
            {
              v90 = agps_log();
              if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_134;
              }

              *v108 = 67109120;
              *&v108[4] = v71;
              v91 = "No buffer pointer for message fragment @index %d.";
              v92 = v90;
              v93 = 8;
LABEL_138:
              _os_log_error_impl(&dword_239FB7000, v92, OS_LOG_TYPE_ERROR, v91, v108, v93);
              goto LABEL_134;
            }

            if (!v72[3])
            {
              goto LABEL_134;
            }

            v73 = v72[2];
            if (((v73 >> 20) & 0x3F) != v100)
            {
              v94 = agps_log();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                v95 = (v72[2] >> 20) & 0x3F;
                *v108 = 67109632;
                *&v108[4] = v71;
                *&v108[8] = 1024;
                *&v108[10] = v95;
                *&v108[14] = 1024;
                *&v108[16] = v100;
                v91 = "Fragment @index %d has incorrect maximum segment count: %d should be %d.";
                goto LABEL_137;
              }

LABEL_134:
              v13 = 0;
              v5 = v107;
LABEL_76:
              *&v108[20] = 0;
              v55 = *(a1 + 16);
              *v108 = 2823;
              *&v108[4] = v55;
              *&v108[8] = v5;
              *&v108[12] = *(v25 - 1);
              v56 = *(v17 + 696);
              *&v108[16] = *v25 & 0xFFFFFF03 | (4 * (v56 & 0x3F));
              v57 = *v25 >> 2;
              v58 = *v25 >> 26;
              if ((*v25 & 1) != 0 || v57 != v58)
              {
                v59 = 0;
                v60 = 0;
                v62 = (*v25 & 1) == 0 || v57 != v58;
                do
                {
                  v60 |= v62 && v57 == v56;
                  if (v60)
                  {
                    v63 = *&v17[2 * v57 + 30];
                    if (v63)
                    {
                      if (*(v63 + 12) || (*(v63 + 8) & 2) != 0)
                      {
                        v59 &= ~(1 << v57);
                      }

                      else
                      {
                        v59 |= 1 << v57;
                      }

                      *&v108[20] = v59;
                    }
                  }

                  v57 = (v57 + 1) & 0x3F;
                  v62 = 1;
                }

                while (v57 != v58);
              }

              v64 = 0;
              v65 = 0;
              do
              {
                v65 += *&v108[v64];
                v64 += 2;
              }

              while (v64 != 28);
              *&v108[2] = ~v65;
              *(a1 + 384) = vadd_s32(*(a1 + 384), 0x1C00000001);
              v17[28] = CAGP::current_timestamp(a1);
              pthread_mutex_unlock((a1 + 128));
              GCKSessionSendTo(*(a1 + 24), &v107, 1, v108, 28, 0, 64, 0, 0, a4, 1);
              goto LABEL_14;
            }

            if (v99 + v70 != *v72)
            {
              v94 = agps_log();
              if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_134;
              }

              v96 = *v72;
              *v108 = 67109632;
              *&v108[4] = v71;
              *&v108[8] = 1024;
              *&v108[10] = v96;
              *&v108[14] = 1024;
              *&v108[16] = v99 + v70;
              v91 = "Fragment @index %d has incorrect serial number: is %08X should be %08X.";
LABEL_137:
              v92 = v94;
              v93 = 20;
              goto LABEL_138;
            }

            if (v70 != ((v73 >> 14) & 0x3F))
            {
              v74 = agps_log();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v75 = *v72;
                v76 = (v72[2] >> 14) & 0x3F;
                *v108 = 67109888;
                *&v108[4] = v71;
                *&v108[8] = 1024;
                *&v108[10] = v75;
                *&v108[14] = 1024;
                *&v108[16] = v76;
                *&v108[20] = 1024;
                *&v108[22] = v70;
                _os_log_error_impl(&dword_239FB7000, v74, OS_LOG_TYPE_ERROR, "Message fragment @index %d serial number %08X seg_idx %d should be %d.", v108, 0x1Au);
              }
            }

            LODWORD(v102) = (v98[v71] != 1) & v102;
            ++v70;
          }

          while (v101 != v70);
          if (v99 != v17[27])
          {
            goto LABEL_134;
          }

          v77 = AGPDataQueue::peek_head_for_participant((a1 + 288), v107);
          v97[1] = v97;
          *v108 = *a3;
          *&v108[16] = *(a3 + 16);
          MEMORY[0x28223BE20](v77, v78);
          v81 = v97 - v80;
          v82 = 0;
          v83 = v97 - v80;
          v99 = v97 - v80;
          v100 = v79;
          do
          {
            v84 = *(v104 + 8 * ((v103 + v82) & 0x3F));
            *(v17 + 696) = (*(v17 + 696) + 1) & 0x3F;
            ++v17[27];
            if (v79)
            {
              v83 = (v84 + 16);
            }

            else
            {
              memcpy(v81, (v84 + 16), *(v84 + 12));
              LOBYTE(v79) = v100;
            }

            v81 += *(v84 + 12);
            a4 = *(v84 + 1516);
            *v84 = 0;
            *(v84 + 8) = 0;
            ++v82;
          }

          while (v101 != v82);
          *&v108[8] = v83;
          *&v108[16] = v81 - v99;
          if ((v79 & 1) == 0)
          {
            operator new();
          }

          if (a4 == 10)
          {
            v85 = 5;
          }

          else
          {
            v85 = 3;
          }

          *v108 = v85;
          (*a1)(*(a1 + 8), v107, v108);
          if ((v100 & 1) == 0)
          {
            CFRelease(0);
          }

          *&v103 = *(v17 + 696);
          v86 = *(v104 + 8 * v103);
          if (!v86)
          {
            goto LABEL_134;
          }

          if (!v86[3])
          {
            goto LABEL_134;
          }

          v87 = v17[27];
          LODWORD(v99) = *v86;
          if (v99 != v87)
          {
            goto LABEL_134;
          }

          v68 = v86[2];
        }
      }
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  pthread_mutex_unlock((a1 + 128));
  pthread_mutex_lock((a1 + 64));
  v28 = CAGP::sendingSetElement(a1, v5);
  pthread_mutex_lock((v28 + 32));
  if (!v28[699])
  {
    goto LABEL_128;
  }

  v30 = v28 + 120;
  if (*(v25 - 1) < **&v28[8 * v28[696] + 120])
  {
    goto LABEL_128;
  }

  if (*(v25 + 1))
  {
    v31 = 0;
    *&v103 = v28 + 632;
    while (1)
    {
      v32 = v31 + v28[698];
      if ((v25[1] >> v32))
      {
        v33 = v32 & 0x3F;
        v34 = *&v30[8 * v33];
        if (v34)
        {
          if (*(v34 + 12) && (*(v34 + 8) & 2) != 0 && *(v34 + 4) != -1)
          {
            break;
          }
        }
      }

LABEL_47:
      if (++v31 == 64)
      {
        goto LABEL_48;
      }
    }

    v35 = CAGP::current_timestamp(a1);
    v36 = v35 - *(v34 + 4);
    if (v36 < 0)
    {
      if (v36 > 0xEDF9BE00)
      {
        LODWORD(v104) = v35 - *(v34 + 4);
        v102 = agps_log();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          AGPSessionRecvFrom(&v105, v106);
        }

        goto LABEL_45;
      }

      v36 += 604800000;
    }

    LODWORD(v104) = v36;
LABEL_45:
    if (v104 > *(v28 + 178))
    {
      v108[0] = 5;
      v108[1] = *(v103 + v33);
      *&v108[2] = 0;
      *&v108[4] = *(a1 + 16);
      *&v108[8] = v107;
      *&v108[12] = *v34;
      *&v108[16] = *(v34 + 8) & 0x3FFFF03 | (4 * (v28[698] & 0x3F)) | (v28[697] << 26);
      *(v34 + 4) = v35;
      ++*(v34 + 1520);
      memcpy(&v108[20], (v34 + 16), *(v34 + 12));
      *&v108[2] = agp_control::generate_checksum(v108, (v34 + 16), *(v34 + 12));
      GCKSessionSendTo(*(a1 + 24), &v107, 1, v108, (*(v34 + 12) + 20), 0, 64, 0, 0, a4, 1);
    }

    goto LABEL_47;
  }

LABEL_48:
  v37 = *v25 >> 2;
  v38 = v28[698];
  if (v37 == v38)
  {
    goto LABEL_126;
  }

  *&v29 = 67109632;
  v104 = v29;
  *&v29 = 67109376;
  v103 = v29;
  while (1)
  {
    v39 = *&v30[8 * v38];
    if (!v39)
    {
      break;
    }

    if (!*(v39 + 12) || (*(v39 + 8) & 2) == 0)
    {
      goto LABEL_61;
    }

    v40 = AGPSendingSetElement::search(v28, *v39);
    if (v40 == v28[698])
    {
LABEL_56:
      if (AGPSendingSetElement::remove(v28, v40))
      {
        goto LABEL_61;
      }

      v42 = agps_log();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v43 = *v39;
      *v108 = v104;
      *&v108[4] = v40;
      *&v108[8] = 1024;
      *&v108[10] = v43;
      *&v108[14] = 1024;
      *&v108[16] = v107;
      v44 = v42;
      v45 = "Failed to remove index (%02d) packet serial number (%08X) from (%08X).";
      goto LABEL_64;
    }

    v41 = agps_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v46 = v28[698];
      *v108 = v103;
      *&v108[4] = v40;
      *&v108[8] = 1024;
      *&v108[10] = v46;
      _os_log_error_impl(&dword_239FB7000, v41, OS_LOG_TYPE_ERROR, "SACK buf_idx [%d] != base [%d].", v108, 0xEu);
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    v47 = agps_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = *v39;
      *v108 = v104;
      *&v108[4] = -1;
      *&v108[8] = 1024;
      *&v108[10] = v48;
      *&v108[14] = 1024;
      *&v108[16] = v107;
      v44 = v47;
      v45 = "Index (%02d) packet serial number (%08X) from (%08X) was not found in sending set.";
LABEL_64:
      _os_log_error_impl(&dword_239FB7000, v44, OS_LOG_TYPE_ERROR, v45, v108, 0x14u);
    }

LABEL_61:
    v38 = (v28[698] + 1) & 0x3F;
    v28[698] = v38;
    if (v37 == v38)
    {
      goto LABEL_126;
    }
  }

  v88 = agps_log();
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    AGPSessionRecvFrom(v88);
  }

LABEL_126:
  v89 = AGPSendingSetElement::search(v28, *(v25 - 1));
  if ((v89 & 0x80000000) == 0)
  {
    AGPSendingSetElement::remove(v28, v89);
  }

LABEL_128:
  pthread_mutex_unlock((v28 + 32));
  pthread_mutex_unlock((a1 + 64));
LABEL_13:
  v13 = 0;
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void *CAGP::receiveSetElement(CAGP *this, int a2)
{
  pthread_mutex_lock(this + 2);
  v4 = *(this + 7);
  v4[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(*(this + 4), v4, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 2);
  return value;
}

uint64_t *AGPDataQueue::peek_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *this;
  if (*this)
  {
    do
    {
      if (*(v4 + 18) == 1 && *(v4 + 2) == a2)
      {
        break;
      }

      v4 = *v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((this + 8));
  return v4;
}

AGPDataQueue *AGPDataQueue::pop_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  if (*this)
  {
    v4 = 0;
    v5 = *this;
    v6 = this;
    while (1)
    {
      v7 = v5;
      if (*(v5 + 18) == 1 && *(v5 + 2) == a2)
      {
        break;
      }

      v5 = *v5;
      v4 = v6;
      v6 = v7;
      if (!*v7)
      {
        goto LABEL_6;
      }
    }

    if (v4)
    {
      **v4 = *v5;
    }

    else
    {
      *this = **this;
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v7;
}

uint64_t AGPSessionEvent(uint64_t a1, uint64_t a2, __int128 *a3)
{
  result = CheckInHandleDebug();
  if (result)
  {
    v6 = result;
    v7 = *result;
    if (!*result)
    {
      return CheckOutHandleDebug();
    }

    if (!a3)
    {
      return CheckOutHandleDebug();
    }

    v8 = *(result + 8);
    if (!v8)
    {
      return CheckOutHandleDebug();
    }

    v10 = *a3;
    v11 = *(a3 + 2);
    if (v10 == 3)
    {
      v9 = 5;
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_11;
      }

      v9 = 10;
    }

    if (!AGPSessionRecvFrom(v6, a2, &v10, v9))
    {
      return CheckOutHandleDebug();
    }

    v7 = *v6;
    v8 = v6[1];
LABEL_11:
    v7(v8, a2, &v10);
    return CheckOutHandleDebug();
  }

  return result;
}

CFMutableStringRef AGPSessionCopyDetailedDescription()
{
  v0 = CheckInHandleDebug();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v2 = Mutable;
  if (v0)
  {
    CFStringAppendF();
    CFStringAppendF();
    CheckOutHandleDebug();
  }

  else
  {
    CFRelease(Mutable);
    return 0;
  }

  return v2;
}

void AGPAssociationSetElement::AGPAssociationSetElement(AGPAssociationSetElement *this, CAGP *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *this = &unk_284D240A0;
  *(this + 1) = a2;
  *(this + 27) = 0;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 32), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  pthread_mutex_lock((this + 32));
  UpdateRTO(this + 175, 250);
  pthread_mutex_unlock((this + 32));
  *(this + 28) = -1;
  operator new();
}

void AGPSendingSetElement::~AGPSendingSetElement(AGPSendingSetElement *this)
{
  *this = &unk_284D24040;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);
}

{
  *this = &unk_284D24040;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x23EE811A0);
}

void AGPAssociationSetElement::~AGPAssociationSetElement(AGPAssociationSetElement *this)
{
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x23EE811A0);
}

{
  v2 = 0;
  *this = &unk_284D240A0;
  do
  {
    *(this + v2 + 632) = 0x80;
    v3 = *(this + v2 + 15);
    if (v3)
    {
      MEMORY[0x23EE811A0](v3, 0x1000C40049130BCLL);
    }

    ++v2;
  }

  while (v2 != 64);
  pthread_mutex_destroy((this + 32));
}

void AGPDataQueueNode::~AGPDataQueueNode(CFTypeRef *this)
{
  CFRelease(this[10]);
  this[10] = 0;
  *(this + 18) = 0;
  v2 = this[12];
  if (v2)
  {
    _Block_release(v2);
  }
}

void CAGP::CAGP(CAGP *this)
{
  v2 = *MEMORY[0x277D85DE8];
  AGPDataQueue::AGPDataQueue((this + 216));
  AGPDataQueue::AGPDataQueue((this + 288));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 4) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  *(this + 5) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  operator new();
}

void sub_239FE1918(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x23EE811A0](v3, 0x10A1C404616C3E8);
  AGPDataQueue::~AGPDataQueue((v1 + 288));
  AGPDataQueue::~AGPDataQueue((v1 + 216));
  _Unwind_Resume(a1);
}

void AGPDataQueue::AGPDataQueue(AGPDataQueue *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = 0;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 8), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void AGPReceiveSetElement::~AGPReceiveSetElement(AGPReceiveSetElement *this)
{
  *this = &unk_284D240C0;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);
}

{
  *this = &unk_284D240C0;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x23EE811A0);
}

void AGPDataQueue::~AGPDataQueue(AGPDataQueue *this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      *this = *v2;
      AGPDataQueueNode::~AGPDataQueueNode(v2);
      MEMORY[0x23EE811A0]();
      v2 = *this;
    }

    while (*this);
  }

  pthread_mutex_destroy((this + 8));
}

void CAGP::~CAGP(pthread_mutex_t *this)
{
  v2 = *&this->__opaque[32];
  if (v2)
  {
    CFRelease(v2);
    *&this->__opaque[32] = 0;
  }

  v3 = *&this->__opaque[24];
  if (v3)
  {
    CFRelease(v3);
    *&this->__opaque[24] = 0;
  }

  while (1)
  {
    sig = this[3].__sig;
    if (!sig)
    {
      break;
    }

    v5 = sig[3];
    this[3].__sig = sig[2];
    CFSetRemoveValue(v5, sig);
  }

  while (1)
  {
    v6 = *this[3].__opaque;
    if (!v6)
    {
      break;
    }

    *this[3].__opaque = v6[2];
    (*(*v6 + 8))(v6);
  }

  pthread_mutex_destroy(this + 1);
  pthread_mutex_destroy(this + 2);
  v7 = *&this->__opaque[40];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *&this->__opaque[48];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  AGPDataQueue::~AGPDataQueue(&this[4].__opaque[24]);
  AGPDataQueue::~AGPDataQueue(&this[3].__opaque[16]);
}

_BYTE *OUTLINED_FUNCTION_0_3(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t PostEventCallback(uint64_t a1, int a2, int a3, const void *a4, int a5, int a6)
{
  v6 = 2149187587;
  if (!a1)
  {
    return 2149187585;
  }

  if (*(a1 + 4))
  {
    return 2149187606;
  }

  if (a4 && a5)
  {
    v13 = malloc_type_malloc(a5 + 48, 0x103004055E16862uLL);
    if (!v13)
    {
      return v6;
    }

    v14 = v13;
    *v13 = a2;
    v13[2] = a3;
    v15 = v13 + 12;
    *(v14 + 2) = v15;
    v14[6] = a5;
    v14[7] = a6;
    memcpy(v15, a4, a5);
  }

  else
  {
    v16 = malloc_type_malloc(0x30uLL, 0x103004055E16862uLL);
    if (!v16)
    {
      return v6;
    }

    v14 = v16;
    *v16 = a2;
    v16[2] = a3;
    *(v16 + 2) = 0;
    v16[6] = 0;
    v16[7] = a6;
  }

  *(v14 + 5) = 0;
  pthread_mutex_lock((a1 + 48));
  v17 = a1;
  do
  {
    v18 = v17;
    v17 = *(v17 + 40);
  }

  while (v17);
  *(v18 + 40) = v14;
  pthread_cond_signal((a1 + 112));
  pthread_mutex_unlock((a1 + 48));
  return 0;
}

uint64_t ServiceWaitEventCallbacks(uint64_t a1, double a2)
{
  v16 = *MEMORY[0x277D85DE8];
  result = 2149187585;
  if (a1)
  {
    if (*(a1 + 4))
    {
      result = 2149187606;
    }

    else
    {
      pthread_mutex_lock((a1 + 248));
      v6 = (a1 + 240);
      v5 = *(a1 + 240);
      if (v5)
      {
        do
        {
          v7 = (v5 + 40);
          if (*(v5 + 32) <= a2)
          {
            *v6 = *v7;
            *v7 = 0;
            v8 = ec_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(v5 + 8);
              v10 = *v5;
              *buf = 67109376;
              v13 = v9;
              v14 = 1024;
              v15 = v10;
              _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "ServiceWaitEventCallbacks: post delayed event of type %d to participant %08X.", buf, 0xEu);
            }

            PostEventCallback(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 28));
            free(v5);
          }

          else
          {
            v6 = (v5 + 40);
          }

          v5 = *v6;
        }

        while (*v6);
      }

      pthread_mutex_unlock((a1 + 248));
      result = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CleanupWaitEventCallbacks(uint64_t a1)
{
  v2 = ec_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEFAULT, "Start cleanup.", v5, 2u);
  }

  if (!a1)
  {
    return 2149187585;
  }

  pthread_mutex_lock((a1 + 248));
  while (1)
  {
    v3 = *(a1 + 240);
    if (!v3)
    {
      break;
    }

    *(a1 + 240) = v3[5];
    free(v3);
  }

  pthread_mutex_unlock((a1 + 248));
  return 0;
}

uint64_t StartEventCallbackThread(_DWORD *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(&v5, 0, sizeof(v5));
    pthread_mutex_lock((a1 + 12));
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    v2 = pthread_create(a1 + 20, 0, EventCBProc, a1);
    pthread_attr_destroy(&v5);
    if (v2)
    {
      v2 = v2 | 0xC01A0000;
    }

    else
    {
      *a1 = 1;
    }

    pthread_mutex_unlock((a1 + 12));
  }

  else
  {
    v2 = 2149187585;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t EventCBProc(uint64_t a1)
{
  pthread_setname_np("com.apple.multipeerconnectivity.eventcallback.eventcbproc");
  while (1)
  {
    pthread_mutex_lock((a1 + 48));
    while (1)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        break;
      }

      if (*(a1 + 4))
      {
        goto LABEL_8;
      }

      pthread_cond_wait((a1 + 112), (a1 + 48));
    }

    if (*(a1 + 4))
    {
      break;
    }

    *(a1 + 40) = v2[5];
    pthread_mutex_unlock((a1 + 48));
    (*(a1 + 8))(*(a1 + 16), *v2, v2 + 1);
    free(v2);
  }

LABEL_8:
  pthread_mutex_unlock((a1 + 48));
  v3 = ec_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "EventCallbackThread ends.", v5, 2u);
  }

  return 0;
}

uint64_t StopEventCallbackThread(char *a1)
{
  v1 = 2149187585;
  if (a1)
  {
    pthread_mutex_lock((a1 + 48));
    v3 = *a1;
    if (*a1)
    {
      *(a1 + 1) = 1;
      pthread_cond_signal((a1 + 112));
    }

    v4 = *(a1 + 5);
    if (v4)
    {
      do
      {
        v5 = v4[5];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 5) = 0;
    pthread_mutex_unlock((a1 + 48));
    pthread_join(*(a1 + 20), 0);
    CleanupWaitEventCallbacks(a1);
    pthread_mutex_destroy((a1 + 48));
    pthread_mutex_destroy((a1 + 248));
    pthread_cond_destroy((a1 + 112));
    free(a1);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 2149187606;
    }
  }

  return v1;
}

uint64_t OSPFMakeHello(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x22uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  LOWORD(v10) = 0;
  *v8 = 449;
  *(v8 + 2) = 50340352;
  *(v8 + 2) = bswap32(a3);
  *(v8 + 3) = bswap32(a4);
  *(v8 + 8) = bswap32(*(a2 + 12)) >> 16;
  *(v8 + 18) = 268435960;
  *(v8 + 22) = 523;
  *(v8 + 26) = bswap64(*(a2 + 16));
  do
  {
    v10 = CRC16Table[(v8[v9++] ^ v10)] ^ ((v10 & 0xFF00) >> 8);
  }

  while (v9 != 34);
  *(v8 + 3) = bswap32(v10) >> 16;
  *a1 = v8;
  return 34;
}

uint64_t OSPFMakeHeartbeat(void *a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040451B5BE8uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  LOWORD(v12) = 0;
  *v10 = 2241;
  *(v10 + 2) = 5120;
  v10[2] = bswap32(a2);
  v10[3] = bswap32(a3);
  *(v10 + 8) = (a4 != 0) << 9;
  *(v10 + 9) = __rev16(a5);
  do
  {
    v12 = CRC16Table[(*(v10 + v11++) ^ v12)] ^ ((v12 & 0xFF00) >> 8);
  }

  while (v11 != 20);
  *(v10 + 3) = bswap32(v12) >> 16;
  *a1 = v10;
  return 20;
}

uint64_t OSPFMakeDD(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v10 = *(a2 + 12);
  v11 = *(a2 + 16);
  if (v10 < 1)
  {
    v12 = 0;
    v16 = 18;
  }

  else
  {
    v12 = 0;
    v13 = 2;
    v14 = *(a2 + 12);
    v15 = *(a2 + 16);
    do
    {
      if (*v15 != a5)
      {
        v13 += *(v15 + 8) + 8 * *(v15 + 284) + 9;
        ++v12;
      }

      v15 += 416;
      --v14;
    }

    while (v14);
    v16 = (v13 + 16);
  }

  v17 = malloc_type_calloc(1uLL, v16, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v36 = a6;
  v37 = v16;
  v38 = a1;
  *v17 = 705;
  v17[1] = bswap32(v16) >> 16;
  *(v17 + 2) = bswap32(a4);
  *(v17 + 3) = bswap32(a5);
  v17[8] = bswap32(v12) >> 16;
  if (v10 >= 1)
  {
    v19 = 0;
    v20 = v17 + 9;
    v21 = (v11 + 292);
    do
    {
      v22 = v11 + 416 * v19;
      if (*v22 != a5)
      {
        v23 = *(v22 + 284);
        *v20 = bswap32(*v22);
        v20[2] = bswap32(*(v22 + 272)) >> 16;
        v24 = *(v22 + 8);
        *(v20 + 6) = v24;
        v25 = v20 + 7;
        memcpy(v20 + 7, (v22 + 9), v24);
        v26 = &v25[*(v22 + 8)];
        *v26 = bswap32(v23) >> 16;
        v20 = v26 + 2;
        if (v23 >= 1)
        {
          v27 = v21;
          do
          {
            *v20 = bswap32(*(v27 - 1));
            v28 = *v27;
            v27 += 2;
            *(v20 + 1) = bswap32(v28);
            v20 += 4;
            --v23;
          }

          while (v23);
        }
      }

      ++v19;
      v21 += 104;
    }

    while (v19 != v10);
  }

  if (v36)
  {
    v40 = 0;
    v39 = 0;
    v29 = v37;
    v30 = v38;
    if (!ospfTryCompressPacket(&v40, &v39, v18, v37))
    {
      free(v18);
      v18 = v40;
      v29 = v39;
    }
  }

  else
  {
    v29 = v37;
    v30 = v38;
  }

  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    v32 = v29;
    v33 = v18;
    do
    {
      v34 = *v33++;
      v31 = CRC16Table[(v34 ^ v31)] ^ ((v31 & 0xFF00) >> 8);
      --v32;
    }

    while (v32);
  }

  v18[3] = bswap32(v31) >> 16;
  *v30 = v18;
  return v29;
}

uint64_t ospfTryCompressPacket(void *a1, unsigned int *a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4 - 16;
  destLen = compressBound(a4 - 16);
  v9 = malloc_type_malloc(destLen + 18, 0x1000040451B5BE8uLL);
  if (!v9)
  {
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  v10 = v9;
  if (compress2(v9 + 18, &destLen, (a3 + 16), v8, 9) || (v11 = destLen, destLen + 2 >= v8))
  {
    v19 = ospf_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a3 + 1);
      v21 = "OSPF";
      if (v20 == 3)
      {
        v21 = "LSA";
      }

      *buf = 136315650;
      if (v20 == 2)
      {
        v21 = "DD";
      }

      v25 = v21;
      v26 = 1024;
      v27 = v8;
      v28 = 1024;
      v29 = destLen;
      _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "%s compressed body %u => %u+2 (not performed).", buf, 0x18u);
    }

    free(v10);
    goto LABEL_17;
  }

  *v10 = *a3;
  v10[8] = bswap32(v8) >> 16;
  v10[2] = 256;
  v12 = v11 + 18;
  v10[1] = bswap32(v12) >> 16;
  *a1 = v10;
  *a2 = v12;
  v13 = ospf_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v14)
  {
    v16 = "OSPF";
    v17 = *(a3 + 1);
    v18 = *a2;
    if (v17 == 3)
    {
      v16 = "LSA";
    }

    *buf = 136316162;
    if (v17 == 2)
    {
      v16 = "DD";
    }

    v25 = v16;
    v26 = 1024;
    v27 = v8;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = v18;
    _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "%s compressed body %u => %u+2, total size: %d => %d.", buf, 0x24u);
    result = 0;
  }

LABEL_18:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSPFMakeLSA(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = *(a2 + 12);
  v13 = *(a2 + 24);
  v14 = 4;
  v15 = *(a2 + 16);
  v16 = v13;
  do
  {
    if (*v16 != a5 && *(v16 + 276) && *(v16 + 280) != a5)
    {
      v14 += *(v16 + 8) + 8 * *(v16 + 284) + 9;
      ++v11;
    }

    v16 += 416;
    --v15;
  }

  while (v15);
  if (!v11)
  {
LABEL_22:
    v32 = ospf_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v32, OS_LOG_TYPE_DEFAULT, "No eligible nodes.", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  v17 = (v14 + 16);
  v18 = malloc_type_calloc(1uLL, v17, 0x1000040451B5BE8uLL);
  if (!v18)
  {
    v33 = ospf_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      OSPFMakeLSA_cold_1(v33);
    }

    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  v39 = a6;
  v40 = v17;
  v41 = a1;
  v20 = 0;
  *v18 = 961;
  v18[1] = bswap32(v17) >> 16;
  *(v18 + 2) = bswap32(a4);
  *(v18 + 3) = bswap32(a5);
  v18[8] = __rev16(v12);
  v18[9] = bswap32(v11) >> 16;
  v21 = v18 + 10;
  v22 = (v13 + 292);
  do
  {
    v23 = v13 + 416 * v20;
    if (*v23 != a5)
    {
      if (*(v23 + 276))
      {
        if (*(v23 + 280) != a5)
        {
          v24 = *(v23 + 284);
          *v21 = bswap32(*v23);
          v21[2] = bswap32(*(v23 + 272)) >> 16;
          v25 = *(v23 + 8);
          *(v21 + 6) = v25;
          v26 = v21 + 7;
          memcpy(v21 + 7, (v23 + 9), v25);
          v27 = &v26[*(v23 + 8)];
          *v27 = bswap32(v24) >> 16;
          v21 = v27 + 2;
          if (v24 >= 1)
          {
            v28 = v22;
            do
            {
              *v21 = bswap32(*(v28 - 1));
              v29 = *v28;
              v28 += 2;
              *(v21 + 1) = bswap32(v29);
              v21 += 4;
              --v24;
            }

            while (v24);
          }
        }
      }
    }

    ++v20;
    v22 += 104;
  }

  while (v20 != v6);
  if (v39)
  {
    v43 = 0;
    v42 = 0;
    v30 = v40;
    if (!ospfTryCompressPacket(&v43, &v42, v19, v40))
    {
      free(v19);
      v19 = v43;
      v30 = v42;
    }

    v31 = v41;
  }

  else
  {
    v30 = v40;
    v31 = v41;
  }

  if (v30 < 1)
  {
    v34 = 0;
  }

  else
  {
    LOWORD(v34) = 0;
    v35 = v30;
    v36 = v19;
    do
    {
      v37 = *v36++;
      v34 = CRC16Table[(v37 ^ v34)] ^ ((v34 & 0xFF00) >> 8);
      --v35;
    }

    while (v35);
  }

  v19[3] = bswap32(v34) >> 16;
  *v31 = v19;
  return v30;
}

uint64_t OSPFMakeLSAACK(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = malloc_type_calloc(1uLL, 0x12uLL, 0x1000040451B5BE8uLL);
  if (v9)
  {
    v10 = 0;
    LOWORD(v11) = 0;
    *v9 = 301991105;
    v9[2] = bswap32(a4);
    v9[3] = bswap32(a5);
    *(v9 + 8) = bswap32(*(a2 + 12)) >> 16;
    do
    {
      v11 = CRC16Table[(*(v9 + v10++) ^ v11)] ^ ((v11 & 0xFF00) >> 8);
    }

    while (v10 != 18);
    *(v9 + 3) = bswap32(v11) >> 16;
    *a1 = v9;
    return 18;
  }

  else
  {
    v13 = ospf_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OSPFMakeLSAACK_cold_1(a5, v13);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t OSPFMakeData(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int *a7, uint64_t a8, uint64_t (*a9)(uint64_t, unsigned int *, uint64_t, char *, void, uint64_t, void, void, int), uint64_t a10, char a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v13 = a8;
  v14 = a7;
  v16 = a5;
  v19 = a1;
  v20 = &a1[4 * a8];
  if (a9)
  {
    *(&v31 + 1) = __PAIR16__(a13, a12);
    LOBYTE(v31) = a11;
    v21 = a9(a10, a7, a8, v20 + 12, (1488 - 4 * a8), a5, *a3, *(a3 + 8), v31);
    if (v21 < 0)
    {
      v22 = 0;
      v23 = 0;
      *(v19 + 2) = 0;
      v24 = v19 + 6;
LABEL_15:
      *v24 = bswap32(v23) >> 16;
      return v22;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = (4 * v13 + *(a3 + 8) + v21 + 12);
  if (v22 <= a2)
  {
    *v19 = v13 & 0xF | 0xC0;
    v19[1] = v16;
    *(v19 + 1) = bswap32(v22) >> 16;
    *(v19 + 2) = bswap32(a6);
    if (v13 >= 1)
    {
      v25 = v19 + 12;
      v26 = v13;
      do
      {
        v27 = *v14++;
        *v25++ = bswap32(v27);
        --v26;
      }

      while (v26);
    }

    memcpy(&v20[v21 + 12], *a3, *(a3 + 8));
    *(v19 + 1) = 0;
    v24 = v19 + 6;
    if (v22 < 1)
    {
      v23 = 0;
    }

    else
    {
      LOWORD(v23) = 0;
      v28 = v22;
      do
      {
        v29 = *v19++;
        v23 = CRC16Table[(v29 ^ v23)] ^ ((v23 & 0xFF00) >> 8);
        --v28;
      }

      while (v28);
    }

    goto LABEL_15;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ospfParseOption(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 4) & 2) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  v7 = *a3;
  if (!*a3)
  {
LABEL_7:
    result = 0;
    *a4 = 0;
    goto LABEL_8;
  }

  if (v7 <= 3)
  {
    v9 = ospf_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 1);
      v11 = *a3;
      v23 = 67109376;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Msg: %d: option too small: %d.", &v23, 0xEu);
    }

    goto LABEL_7;
  }

  v14 = *a2;
  v15 = 4 * *(*a2 + 1);
  v16 = v15 + 4;
  if (v15 + 4 <= v7)
  {
    if (*v14)
    {
      if (*v14 < 0)
      {
        v20 = ospf_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 1);
          v22 = *v14;
          v23 = 67109376;
          v24 = v21;
          v25 = 1024;
          v26 = v22;
          _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "Msg: %d: unsupported required option: %d", &v23, 0xEu);
        }

        *a4 = 1;
        v14 = *a2;
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      *a4 = 1;
    }

    *a2 = &v14[v16];
    *a3 -= v16;
    result = 1;
  }

  else
  {
    v17 = ospf_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 1);
      v19 = *a3;
      v23 = 67109632;
      v24 = v18;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v19;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Msg: %d: incorrect option size: %d > %d.", &v23, 0x14u);
    }

    result = 1;
    *a4 = 1;
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ospfVerifyOptions(uint64_t a1, unsigned __int8 *a2, int a3, int *a4, _DWORD *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    if (*a2 == 248)
    {
      v11 = __rev16(*(a2 + 1));
      if (v11 <= a3)
      {
        v18 = a2[1];
        v19 = a2 + 4;
        if (a2[1])
        {
          v20 = 0;
          while (1)
          {
            v21 = v19 - a2;
            v22 = v11 - (v19 - a2);
            if (v22 <= 3)
            {
              break;
            }

            v23 = 4 * v19[1] + 4;
            if (v22 < v23)
            {
              v29 = ospf_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = *(a1 + 1);
                v31 = 67110400;
                v32 = v30;
                v33 = 1024;
                v34 = v20;
                v35 = 1024;
                v36 = v18;
                v37 = 1024;
                v38 = v21;
                v39 = 1024;
                v40 = v11;
                v41 = 1024;
                v42 = v23;
                _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Msg: %d: option %d of %d: @%d/%d, size=%d.", &v31, 0x26u);
              }

              result = 5;
              goto LABEL_13;
            }

            v19 += v23;
            if (v18 == ++v20)
            {
              goto LABEL_19;
            }
          }

          v27 = ospf_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 1);
            v31 = 67109632;
            v32 = v28;
            v33 = 1024;
            v34 = v20;
            v35 = 1024;
            v36 = v18;
            _os_log_impl(&dword_239FB7000, v27, OS_LOG_TYPE_DEFAULT, "Msg: %d: option %d of %d: not enough option header.", &v31, 0x14u);
          }

          result = 4;
        }

        else
        {
LABEL_19:
          v24 = v19 - a2;
          if (v19 - a2 == v11)
          {
            result = 0;
            *a4 = v18;
            *a5 = v11;
          }

          else
          {
            v25 = ospf_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 1);
              v31 = 67109888;
              v32 = v26;
              v33 = 1024;
              v34 = v18;
              v35 = 1024;
              v36 = v24;
              v37 = 1024;
              v38 = v11;
              _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "Msg: %d: %d options used %d bytes != %d offset.", &v31, 0x1Au);
            }

            result = 6;
          }
        }
      }

      else
      {
        v12 = ospf_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 1);
          v31 = 67109632;
          v32 = v13;
          v33 = 1024;
          v34 = v11;
          v35 = 1024;
          v36 = a3;
          _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Msg: %d: body offset %d > %d.", &v31, 0x14u);
        }

        result = 3;
      }
    }

    else
    {
      v14 = ospf_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 1);
        v16 = *a2;
        v31 = 67109376;
        v32 = v15;
        v33 = 1024;
        v34 = v16;
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Msg: %d: expecting options info, got %d.", &v31, 0xEu);
      }

      result = 2;
    }
  }

  else
  {
    v6 = ospf_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 1);
      v31 = 67109120;
      v32 = v7;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Msg: %d: missing options info.", &v31, 8u);
    }

    result = 1;
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSPFParse(void *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6, int *a7)
{
  v10 = a4;
  v131 = *MEMORY[0x277D85DE8];
  v123 = 0;
  if ((*a3 & 0xF0) != 0xC0 && a3[1] != 1)
  {
    v21 = -3001;
    goto LABEL_141;
  }

  v14 = *a3 & 0xF;
  if ((*a3 & 0xF) == 0)
  {
    v21 = -3002;
LABEL_141:
    v97 = ospf_log();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v125 = v21;
      _os_log_impl(&dword_239FB7000, v97, OS_LOG_TYPE_DEFAULT, "OSPFParse failed with error %d.", buf, 8u);
    }

    v10 = 0xFFFFFFFFLL;
    goto LABEL_144;
  }

  v15 = a3[1];
  if ((v15 - 1) > 9)
  {
    v21 = -3003;
    goto LABEL_141;
  }

  v16 = *(a3 + 3);
  *(a3 + 3) = 0;
  if (a4 < 1)
  {
    v17 = 0;
  }

  else
  {
    LOWORD(v17) = 0;
    v18 = a4;
    v19 = a3;
    do
    {
      v20 = *v19++;
      v17 = CRC16Table[(v20 ^ v17)] ^ ((v17 & 0xFF00) >> 8);
      --v18;
    }

    while (v18);
  }

  v22 = bswap32(v17) >> 16;
  *(a3 + 3) = v22;
  if (v22 != v16)
  {
    *(a3 + 3) = v16;
    v21 = -3004;
    goto LABEL_141;
  }

  v23 = bswap32(*(a3 + 1)) >> 16;
  *(a3 + 1) = v23;
  if (v23 != a4)
  {
    v21 = -3005;
    goto LABEL_141;
  }

  v24 = bswap32(*(a3 + 2)) >> 16;
  *(a3 + 2) = v24;
  *(a3 + 2) = bswap32(*(a3 + 2));
  v25 = (a3 + 12);
  v26 = 12;
  v27 = v14;
  do
  {
    *&a3[v26] = bswap32(*&a3[v26]);
    v26 += 4;
    --v27;
  }

  while (v27);
  v28 = a4 - 4 * v14;
  v29 = (v28 - 12);
  if (v28 - 12 < 0)
  {
    v21 = -3006;
    goto LABEL_141;
  }

  v30 = v24 & 1;
  if (!a2 && v30)
  {
    v31 = ospf_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Cannot pre-parse compressed packet.", buf, 2u);
    }

    *(a3 + 2) = bswap32(*(a3 + 2)) >> 16;
    *(a3 + 1) = bswap32(*(a3 + 1)) >> 16;
    *(a3 + 2) = bswap32(*(a3 + 2));
    v21 = -3007;
    do
    {
      *v25 = bswap32(*v25);
      ++v25;
      --v14;
    }

    while (v14);
    goto LABEL_141;
  }

  v32 = 0;
  v33 = &v25[v14];
  if ((v15 & 0xE) == 2 && v29 >= 3 && v30)
  {
    destLen = bswap32(*v33) >> 16;
    v116 = destLen;
    v32 = malloc_type_malloc(destLen, 0x100004077774924uLL);
    if (v32)
    {
      v118 = v32;
      v103 = v29 - 2;
      v34 = uncompress(v32, &destLen, &v25[v14] + 2, v29 - 2);
      v111 = destLen;
      log = ospf_log();
      v35 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (!v34 && v111 == v116)
      {
        if (v35)
        {
          v36 = a3[1];
          v37 = "OSPF";
          if (v36 == 3)
          {
            v37 = "LSA";
          }

          v38 = v36 == 2;
          *buf = 136315906;
          v39 = "DD";
          if (!v38)
          {
            v39 = v37;
          }

          *v125 = v39;
          *&v125[8] = 1024;
          v126 = v103;
          v127 = 1024;
          v128 = destLen;
          v129 = 1024;
          v130 = v116;
          _os_log_impl(&dword_239FB7000, log, OS_LOG_TYPE_DEFAULT, "%s uncompressed body %u+2 => %u (stated %u).", buf, 0x1Eu);
        }

        LODWORD(v29) = destLen;
        v15 = a3[1];
        v32 = v118;
        v33 = v118;
        goto LABEL_41;
      }

      if (v35)
      {
        v52 = a3[1];
        v53 = "OSPF";
        if (v52 == 3)
        {
          v53 = "LSA";
        }

        v38 = v52 == 2;
        *buf = 136315906;
        v54 = "DD";
        if (!v38)
        {
          v54 = v53;
        }

        *v125 = v54;
        *&v125[8] = 1024;
        v126 = destLen;
        v127 = 1024;
        v128 = v116;
        v129 = 1024;
        v130 = v34;
        _os_log_impl(&dword_239FB7000, log, OS_LOG_TYPE_DEFAULT, "%s uncompressed body (real %u =? %u) failed (%d).", buf, 0x1Eu);
      }

      v21 = -3008;
      v32 = v118;
    }

    else
    {
      v21 = -6728;
    }

    v43 = 0;
    if (!v32)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

LABEL_41:
  if (v15 == 1)
  {
    v40 = *v33;
    v33 += 2;
    loga = bswap32(v40) >> 16;
    LODWORD(v29) = v29 - 2;
  }

  else
  {
    LOWORD(loga) = 0;
  }

  v119 = v32;
  if ((*(a3 + 2) & 2) == 0)
  {
    v41 = 0;
    v117 = 0;
    if (!a6)
    {
      goto LABEL_50;
    }

LABEL_46:
    if (*(a3 + 2))
    {
      v42 = 0;
    }

    else
    {
      v42 = v33;
    }

    *a6 = v42;
LABEL_50:
    v43 = v117;
    if (a5)
    {
      v44 = *(a5 + 16);
      v45 = a5;
      v46 = v33;
      v44(v45, v117, v41);
      v33 = v46;
      v32 = v119;
    }

    if (!a2)
    {
      *(a3 + 2) = bswap32(*(a3 + 2)) >> 16;
      *(a3 + 1) = bswap32(*(a3 + 1)) >> 16;
      *(a3 + 2) = bswap32(*(a3 + 2));
      do
      {
        *v25 = bswap32(*v25);
        ++v25;
        --v14;
      }

      while (v14);
      v55 = 0;
      goto LABEL_125;
    }

    v47 = a3[1];
    if (v47 > 3)
    {
      if (a3[1] <= 7u)
      {
        if (v47 == 4)
        {
          v80 = v33;
          v55 = malloc_type_malloc(0x20uLL, 0x1032040E8FB2772uLL);
          *v55 = 0;
          v55[2] = 0;
          *(v55 + 6) = bswap32(*v80) >> 16;
          goto LABEL_124;
        }

        if (v47 != 5)
        {
          goto LABEL_109;
        }

        goto LABEL_98;
      }

      if (v47 == 8)
      {
        v81 = v33;
        v55 = malloc_type_calloc(1uLL, 0x20uLL, 0x1032040E8FB2772uLL);
        *v55 = 0;
        v55[2] = 0;
        *(v55 + 6) = bswap32(*v81) >> 16;
        *(v55 + 7) = bswap32(*(v81 + 1)) >> 16;
        goto LABEL_124;
      }

      if (v47 == 10)
      {
LABEL_98:
        v73 = v33;
        v55 = malloc_type_malloc(0x20uLL, 0x1032040E8FB2772uLL);
        *v55 = v73;
        v55[2] = v29;
        goto LABEL_124;
      }

LABEL_109:
      v78 = ospf_log();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = a3[1];
        *buf = 67109120;
        *v125 = v79;
        _os_log_impl(&dword_239FB7000, v78, OS_LOG_TYPE_DEFAULT, "Unknown OSPF type %d.", buf, 8u);
      }

      v21 = -3003;
      goto LABEL_135;
    }

    switch(v47)
    {
      case 1u:
        v74 = malloc_type_calloc(1uLL, 0x20uLL, 0x1032040E8FB2772uLL);
        v55 = v74;
        *v74 = 0;
        *(v74 + 2) = 0;
        *(v74 + 6) = loga;
        v75 = HIDWORD(v123);
        if (SHIDWORD(v123) >= 1)
        {
          v76 = v117;
          do
          {
            if (**v76 == 11)
            {
              v74[2] = bswap64(*(*v76 + 4));
            }

            v76 += 8;
            --v75;
          }

          while (v75);
        }

        v77 = *a3 >> 4;
        if (v77 != 12)
        {
          fprintf(*MEMORY[0x277D85DF8], "OSPF version mismatch: expected %d, got %d\n", 12, v77);
          v10 = 0;
        }

        goto LABEL_124;
      case 2u:
        v82 = v33;
        v83 = *v33;
        v84 = __rev16(v83);
        v85 = malloc_type_malloc((416 * v84) | 0x18, 0x1030040D5FA72FAuLL);
        v55 = v85;
        v85->isa = 0;
        LODWORD(v85[1].isa) = 0;
        HIDWORD(v85[1].isa) = v84;
        v106 = v84;
        logc = v85 + 3;
        v85[2].isa = &v85[3];
        if (!v83)
        {
          goto LABEL_124;
        }

        v86 = 0;
        v87 = (v82 + 2);
        v102 = v85;
        v88 = &v85[39].isa + 4;
        while (1)
        {
          v115 = v88;
          v89 = &logc[52 * v86];
          LODWORD(v89->isa) = bswap32(*v87);
          HIDWORD(v89->isa) = -1;
          HIDWORD(v89[33].isa) = -1;
          LOWORD(v89[34].isa) = bswap32(*(v87 + 4)) >> 16;
          HIDWORD(v89[34].isa) = 1;
          LODWORD(v89[35].isa) = *(a3 + 2);
          v90 = *(v87 + 6);
          LOBYTE(v89[1].isa) = v90;
          v91 = v87 + 7;
          memcpy(&v89[1].isa + 1, (v87 + 7), v90);
          *(&v89[1].isa + v90 + 1) = 0;
          v92 = *(v91 + v90);
          v93 = __rev16(v92);
          if (v93 > 0x10)
          {
            break;
          }

          v87 = v91 + v90 + 2;
          HIDWORD(v89[35].isa) = v93;
          if (v92)
          {
            v94 = v115;
            v95 = v115;
            do
            {
              *(v95 - 1) = bswap32(*v87);
              *v95 = bswap32(*(v87 + 4));
              v95 += 2;
              v87 += 8;
              --v93;
            }

            while (v93);
          }

          else
          {
            v94 = v115;
          }

          ++v86;
          v88 = (v94 + 104);
          if (v86 == v106)
          {
LABEL_123:
            v43 = v117;
            v32 = v119;
            v55 = v102;
            goto LABEL_125;
          }
        }

        break;
      case 3u:
        v59 = v33;
        v113 = bswap32(*v33) >> 16;
        v60 = *(v33 + 1);
        v61 = __rev16(v60);
        v62 = malloc_type_malloc(416 * v61 + 32, 0x1030040A19808B3uLL);
        v55 = v62;
        v62->isa = 0;
        LODWORD(v62[1].isa) = 0;
        WORD2(v62[1].isa) = v113;
        LODWORD(v62[2].isa) = v61;
        v105 = v61;
        logb = v62 + 4;
        v62[3].isa = &v62[4];
        if (!v60)
        {
LABEL_124:
          v32 = v119;
LABEL_125:
          if (a1)
          {
            *a1 = a3;
          }

          v21 = 0;
          if (a2)
          {
            *a2 = v55;
            if (!v32)
            {
              goto LABEL_138;
            }

LABEL_137:
            free(v32);
            goto LABEL_138;
          }

          if (!v55)
          {
            goto LABEL_136;
          }

LABEL_131:
          free(v55);
LABEL_135:
          v32 = v119;
LABEL_136:
          if (!v32)
          {
            goto LABEL_138;
          }

          goto LABEL_137;
        }

        v63 = 0;
        v64 = (v59 + 4);
        v102 = v62;
        v65 = &v62[40].isa + 4;
        while (1)
        {
          v114 = v65;
          v66 = &logb[52 * v63];
          LODWORD(v66->isa) = bswap32(*v64);
          HIDWORD(v66->isa) = -1;
          HIDWORD(v66[33].isa) = -1;
          LOWORD(v66[34].isa) = bswap32(*(v64 + 4)) >> 16;
          HIDWORD(v66[34].isa) = 1;
          LODWORD(v66[35].isa) = *(a3 + 2);
          v67 = *(v64 + 6);
          LOBYTE(v66[1].isa) = v67;
          v68 = v64 + 7;
          memcpy(&v66[1].isa + 1, (v64 + 7), v67);
          *(&v66[1].isa + v67 + 1) = 0;
          v69 = *(v68 + v67);
          v70 = __rev16(v69);
          if (v70 > 0x10)
          {
            break;
          }

          v64 = v68 + v67 + 2;
          HIDWORD(v66[35].isa) = v70;
          if (v69)
          {
            v71 = v114;
            v72 = v114;
            do
            {
              *(v72 - 1) = bswap32(*v64);
              *v72 = bswap32(*(v64 + 4));
              v72 += 2;
              v64 += 8;
              --v70;
            }

            while (v70);
          }

          else
          {
            v71 = v114;
          }

          ++v63;
          v65 = (v71 + 104);
          if (v63 == v105)
          {
            goto LABEL_123;
          }
        }

        break;
      default:
        goto LABEL_109;
    }

    v21 = -3010;
    v43 = v117;
    v55 = v102;
    goto LABEL_131;
  }

  destLen = 0;
  v121 = 0;
  v104 = v33;
  v48 = ospfVerifyOptions(a3, v33, v29, &v123 + 1, &v123);
  if (v48)
  {
    v49 = v48;
    v50 = ospf_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = a3[1];
      *buf = 67109376;
      *v125 = v51;
      *&v125[4] = 1024;
      *&v125[6] = v49;
      _os_log_impl(&dword_239FB7000, v50, OS_LOG_TYPE_DEFAULT, "Msg: %d: options verification failed (%d).", buf, 0xEu);
    }

    v43 = 0;
    v21 = -3009;
    goto LABEL_135;
  }

  v56 = v104;
  destLen = (v104 + 4);
  v121 = v29 - 4;
  v41 = HIDWORD(v123);
  if (!HIDWORD(v123))
  {
    v117 = 0;
    v32 = v119;
LABEL_100:
    v33 = &v56[v123];
    LODWORD(v29) = v29 - v123;
    if (!a6)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  v112 = v29;
  v57 = HIDWORD(v123);
  v117 = malloc_type_malloc(8 * SHIDWORD(v123), 0x2004093837F09uLL);
  if (!v117)
  {
    v96 = ospf_log();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      OSPFParse_cold_1(v96);
    }

    v43 = 0;
    v21 = -6728;
    goto LABEL_135;
  }

  v120 = 0;
  v41 = v57;
  if (v57 < 1)
  {
LABEL_82:
    v32 = v119;
    v56 = v104;
    LODWORD(v29) = v112;
    goto LABEL_100;
  }

  v58 = 0;
  v101 = v41;
  while (1)
  {
    *&v117[8 * v58] = destLen;
    if (!ospfParseOption(a3, &destLen, &v121, &v120))
    {
      break;
    }

    if (v120)
    {
      goto LABEL_150;
    }

    ++v58;
    v41 = v101;
    if (v101 == v58)
    {
      goto LABEL_82;
    }
  }

  v100 = ospf_log();
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v125 = v58;
    *&v125[4] = 1024;
    *&v125[6] = v101;
    _os_log_impl(&dword_239FB7000, v100, OS_LOG_TYPE_DEFAULT, "Expecting option %d of %d.", buf, 0xEu);
  }

LABEL_150:
  v21 = -3009;
  v43 = v117;
  v32 = v119;
  if (v119)
  {
    goto LABEL_137;
  }

LABEL_138:
  if (v43)
  {
    free(v43);
  }

  if (v21)
  {
    goto LABEL_141;
  }

LABEL_144:
  if (a7)
  {
    *a7 = v21;
  }

  v98 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t OSPFAddDynamicOptions(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v8 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9[0] = a1;
  v9[1] = a2;
  v7 = 1;
  v6 = v9;
  if (a3)
  {
    (*(a3 + 16))(a3, &v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

char *makebase36string(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  __s1[13] = 0;
  v1 = 12;
  do
  {
    __s1[v1] = MCPeerIDBase36Digits[a1 % 0x24];
    v2 = v1-- + 1;
    a1 /= 0x24uLL;
  }

  while (v2 > 1);
  result = strdup(__s1);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void MCMetricsLog_cold_5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_239FB7000, a2, OS_LOG_TYPE_ERROR, "Invalid name %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void AGPEventListenerForMCSession_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void gckSessionUpdateDstIPPortAndSockAddrForCList(uint64_t a1, __int128 *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1 + 424;
    if ((*a2 & 1) == (*(a1 + 424) & 1))
    {
      if ((*a2 & 1) == 0)
      {
        if (*(a2 + 5) != *(a1 + 444))
        {
          goto LABEL_8;
        }

LABEL_7:
        if (*(a2 + 18) == *(a1 + 460))
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }

      if (!memcmp(a2 + 20, (a1 + 444), 0x10uLL))
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v5 = gcks_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 88);
      v7 = *(a1 + 72);
      v12[0] = 67109890;
      v12[1] = v6;
      v13 = 1024;
      v14 = v7;
      v15 = 2080;
      v16 = IPPORTToString();
      v17 = 2080;
      v18 = IPPORTToString();
      _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Update destination IPPort for participant %08X, channel %d from %s to %s.", v12, 0x22u);
    }

    v8 = *a2;
    v9 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v8;
    *(v4 + 16) = v9;
    if (*(a1 + 384))
    {
      OUTLINED_FUNCTION_5_0();
      IPPORTToSA6();
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      IPPORTToSA();
    }

    *(a1 + 592) = v12[0];
    goto LABEL_14;
  }

  v11 = gcks_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Invalid parameter.", v12, 2u);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t DTLS_SocketWrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  gckSessionUpdateDstIPPortAndSockAddrForCList(a1, (a1 + 424));
  memset(&v15.msg_namelen, 0, 40);
  v22[4] = 0;
  v22[5] = 0;
  v15.msg_name = (a1 + 464);
  v15.msg_namelen = *(a1 + 592);
  v14 = -48;
  v22[0] = &v14;
  v22[1] = 1;
  v22[2] = a2;
  v22[3] = v6;
  v15.msg_iovlen = 2;
  v15.msg_iov = v22;
  if (sendmsg(*a1, &v15, 0) == -1)
  {
    v9 = gcks_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      *buf = 67109634;
      v17 = (v6 + 1);
      v18 = 2080;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_error_impl(&dword_239FB7000, v9, OS_LOG_TYPE_ERROR, "Failed to send a DTLS packet with %d bytes; sendmsg error: %s (%d).", buf, 0x18u);
    }

    __error();
    *a3 = 0;
    result = 4294957493;
  }

  else
  {
    v7 = micro();
    result = 0;
    *(a1 + 48) = v7;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void TracePrintNodes_cold_1(unsigned int *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_239FB7000, v2, OS_LOG_TYPE_DEBUG, "TracePrintNodes throttled (last second count %d)\n", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to create RecvProc thread with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to create SendProc thread with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to create global with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, a1, a3, "Calloc (%d bytes) failed.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

double micro_cold_1()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27DF91D30 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}

void gckSessionRecvProc_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Select call failed with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gckSessionRecvProc_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to create socket with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKSessionPrepareConnection_cold_1(_DWORD *a1, _DWORD *a2)
{
  *a1 = 67109120;
  *a2 = -2145779708;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void GCKSessionPrepareConnection_cold_2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void GCKSessionPrepareConnection_cold_3(_DWORD *a1, _DWORD *a2)
{
  *a1 = 67109120;
  *a2 = 840;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void GCKSessionPrepareConnection_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionEstablishConnection_cold_1(unsigned int *a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
  v9 = *MEMORY[0x277D85DE8];
}

void GCKSessionDisposeConnection_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionStartEventCallbacks_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to start event callback thread with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __SendUDPPacketCList_block_invoke_cold_1(uint64_t *a1, int a2, NSObject *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 632);
  v9 = DTLSErrorName(a2);
  v10 = a2;
  v11 = __error();
  v12 = strerror(*v11);
  v13 = *__error();
  v15[0] = 67110914;
  v15[1] = v6;
  v16 = 1024;
  v17 = v7;
  v18 = 2048;
  v19 = v8;
  v20 = 2048;
  v21 = v5;
  v22 = 2080;
  v23 = v9;
  v24 = 2048;
  v25 = v10;
  v26 = 2080;
  v27 = v12;
  v28 = 1024;
  v29 = v13;
  _os_log_error_impl(&dword_239FB7000, a3, OS_LOG_TYPE_ERROR, "SSLWrite failed, packet was not sent for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p]; SSLError = %s (%ld): errno = %s (%d).", v15, 0x46u);
  v14 = *MEMORY[0x277D85DE8];
}

void __gckSessionSetupChannelWithDTLS_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "SendHello failed with error (%X).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __gckSessionSetupChannelWithDTLS_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Couldn't find pCList for participant %08X.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __gckSessionSetupChannelWithDTLS_block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, a1, a3, "WaitForHello failed with error (%X).", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void gckSessionSendHello_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "OSPFMakeHello failed for participant %08X.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void SendUDPPacketToParticipantChannelID_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 72);
  v5[0] = 67109376;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  _os_log_debug_impl(&dword_239FB7000, log, OS_LOG_TYPE_DEBUG, "Channel ID %d resolved to %d.", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

void gckSessionPerformDTLSHandshake_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v2, v3, "Failed to copy peer trust for participant [%08X].", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void gckSessionPerformDTLSHandshake_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v2, v3, "Trust for participant [%08X] is expected but SSLCopyPeerTrust returned NULL.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void gckSessionPerformDTLSHandshake_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionRecvMessage_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessHello_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to send Hello with error %X.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessDD_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "Failed to create dashboard data with error=%d.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gckSessionSendDD_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "OSPFMakeDD for participant [%08X].", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gckSessionSendLSAACK_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2(&dword_239FB7000, v0, v1, "OSPFMakeLSAACK for participant [%08X] failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gckSessionGetInterfacePriorityForCList_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  v2 = *(a1 + 72);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

void AGPTransportCallback(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_239FB7000, a2, OS_LOG_TYPE_ERROR, "Couldn't check in handle iDstIDs (%d).", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void OSPFMakeLSAACK_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_239FB7000, a2, OS_LOG_TYPE_ERROR, "Calloc failed for participant [%08X].", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
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