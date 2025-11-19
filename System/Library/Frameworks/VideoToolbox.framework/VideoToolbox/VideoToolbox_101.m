uint64_t VTDecompressionSessionRemoteClient_DecodeTile(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11, uint64_t a12)
{
  *&msg[20] = 0u;
  v20 = 0;
  *&msg[4] = 0u;
  *&msg[28] = a2;
  v15 = 1245184;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = a7;
  v21 = 1245184;
  v22 = a8;
  v23 = 16777472;
  v24 = a9;
  v25 = *MEMORY[0x1E69E99E0];
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a9;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x40000472ALL;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v12 = mach_msg(msg, 2097169, 0x88u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v12 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v12;
}

uint64_t VTDecompressionSessionRemoteClient_FinishDelayedTiles(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x472B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t VTDecompressionSessionRemoteClient_EnableMIO(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x472C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t (*vtdecompressionsession_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 18221) >= 0xFFFFFFEB)
  {
    return VTDecompressionSessionRemoteServer_vtdecompressionsession_subsystem[5 * (v1 - 18200) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 4)
  {
    goto LABEL_20;
  }

  v5 = *(result + 4);
  if ((v5 - 637) < 0xFFFFFDFF)
  {
    goto LABEL_20;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || *(result + 67) != 1 || *(result + 83) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(result + 120);
  v3 = -304;
  if (v6 > 0x200 || v5 - 124 < v6)
  {
    goto LABEL_20;
  }

  if (v5 != ((v6 + 3) & 0x7FC) + 124)
  {
    goto LABEL_2;
  }

  if (*(result + 52) != *(result + 104) || *(result + 68) != *(result + 108) || *(result + 84) != *(result + 112))
  {
LABEL_19:
    v3 = -300;
    goto LABEL_20;
  }

  result = memchr((result + 124), 0, v5 - 124);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_20:
    *(a2 + 32) = v3;
    goto LABEL_21;
  }

  v7 = ((v5 + 3) & 0x7FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_20;
  }

  *(a2 + 32) = 0x14000000000000;
  v8 = *(v4 + 12);
  v9 = *(v4 + 28);
  v10 = *(v4 + 96);
  v11 = *(v4 + 40);
  v12 = *(v4 + 52);
  v13 = *(v4 + 56);
  v14 = *(v4 + 68);
  v15 = *(v4 + 72);
  v16 = *(v4 + 84);
  v17 = *(v7 + 36);
  v18[0] = *(v7 + 20);
  v18[1] = v17;
  result = VTDecompressionSessionRemoteServer_Create(v8, v9, v18, v10, v11, v12, v13, v14, v15, v16, (v4 + 124), (a2 + 28), (a2 + 48), (a2 + 56), (a2 + 64));
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_21:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XInvalidate(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_Invalidate(a1[3], a2, a3, a4, a5, a6, a7, a8);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XDestroy(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_Destroy(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XCopySupportedPropertyDictionary(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = VTDecompressionSessionRemoteServer_CopySupportedPropertyDictionary(result[3], (a2 + 28), (a2 + 52), a2 + 56, a5, a6, a7, a8);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *_XCopySerializableProperties(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = VTDecompressionSessionRemoteServer_CopySerializableProperties(result[3], (a2 + 28), (a2 + 52), a2 + 56, a5, a6, a7, a8);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *_XCopyProperty(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result[1], (v3 - 553) < 0xFFFFFDFF) || ((v4 = result[9], v4 <= 0x200) ? (v5 = v3 - 40 >= v4) : (v5 = 0), (v6 = ((v4 + 3) & 0x7FC) + 40, v5) ? (v7 = v3 == v6) : (v7 = 0), !v7 || (result = memchr(result + 10, 0, v3 - 40)) == 0))
  {
    *(a2 + 32) = -304;
LABEL_11:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 36) = 16777473;
  result = VTDecompressionSessionRemoteServer_CopyProperty();
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_11;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XSetProperty(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 577 < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 56);
  if (v6 > 0x200)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = -304;
  if (v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 64)
  {
    goto LABEL_3;
  }

  v8 = *(result + 40);
  if (v8 != *(result + v7 + 60))
  {
LABEL_18:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x23C)
  {
    v9 = 572;
  }

  else
  {
    v9 = v5;
  }

  result = memchr((result + 60), 0, v9 - 60);
  if (!result)
  {
    goto LABEL_2;
  }

  result = VTDecompressionSessionRemoteServer_SetProperty(*(v4 + 12), (v4 + 60), *(v4 + 28), v8, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSetProperties(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = VTDecompressionSessionRemoteServer_SetProperties(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XDecodeFrame(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 3 && *(result + 4) == 104)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 51) == 1 && *(result + 67) == 1)
    {
      v3 = *(result + 52);
      if (v3 == *(result + 80))
      {
        v4 = *(result + 68);
        if (v4 == *(result + 88))
        {
          result = VTDecompressionSessionRemoteServer_DecodeFrame(*(result + 12), *(result + 28), *(result + 40), v3, *(result + 84), *(result + 56), v4, *(result + 92), *(result + 100));
          *(a2 + 32) = result;
          return result;
        }
      }
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XDequeueNextPendingFrame(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x11000000000000;
  *(a2 + 48) = 16777473;
  *(a2 + 60) = 0x11000000000000;
  *(a2 + 76) = 16777473;
  *(a2 + 92) = 16777473;
  *(a2 + 104) = 0x11000000000000;
  *(a2 + 120) = 16777473;
  *(a2 + 136) = 16777473;
  *(a2 + 148) = 0x11000000000000;
  *(a2 + 164) = 16777473;
  *(a2 + 180) = 16777473;
  *(a2 + 192) = 0x11000000000000;
  *(a2 + 208) = 16777473;
  *(a2 + 224) = 16777473;
  *(a2 + 236) = 0x11000000000000;
  *(a2 + 252) = 16777473;
  *(a2 + 268) = 16777473;
  *(&v14 + 1) = a2 + 260;
  *(&v13 + 1) = a2 + 244;
  *&v14 = a2 + 340;
  *(&v12 + 1) = a2 + 336;
  *&v13 = a2 + 232;
  *(&v11 + 1) = a2 + 332;
  *&v12 = a2 + 216;
  *(&v10 + 1) = a2 + 188;
  *&v11 = a2 + 200;
  *(&v9 + 1) = a2 + 172;
  *&v10 = a2 + 328;
  *(&v8 + 1) = a2 + 156;
  *&v9 = a2 + 324;
  *(&v7 + 1) = a2 + 320;
  *&v8 = a2 + 144;
  *(&v6 + 1) = a2 + 316;
  *&v7 = a2 + 128;
  *(&v5 + 1) = a2 + 100;
  *&v6 = a2 + 112;
  *(&v4 + 1) = a2 + 84;
  *&v5 = a2 + 312;
  *&v4 = a2 + 308;
  *(&v3 + 1) = a2 + 68;
  *&v3 = a2 + 56;
  result = VTDecompressionSessionRemoteServer_DequeueNextPendingFrame(result[3], (a2 + 284), (a2 + 288), (a2 + 296), (a2 + 300), (a2 + 28), (a2 + 40), (a2 + 304), v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, a2 + 344, (a2 + 348), (a2 + 372), (a2 + 396), (a2 + 400));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 52) = *(a2 + 304);
  *(a2 + 80) = *(a2 + 308);
  *(a2 + 96) = *(a2 + 312);
  *(a2 + 124) = *(a2 + 316);
  *(a2 + 140) = *(a2 + 320);
  *(a2 + 168) = *(a2 + 324);
  *(a2 + 184) = *(a2 + 328);
  *(a2 + 212) = *(a2 + 332);
  *(a2 + 228) = *(a2 + 336);
  *(a2 + 256) = *(a2 + 340);
  *(a2 + 272) = *(a2 + 344);
  *(a2 + 276) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 404;
  *(a2 + 24) = 17;
  return result;
}

_DWORD *_XFinishDelayedFrames(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_FinishDelayedFrames(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XCanAcceptFormatDescription(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = VTDecompressionSessionRemoteServer_CanAcceptFormatDescription(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XCopyBlackPixelBuffer(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x11000000000000;
  *(a2 + 48) = 16777473;
  result = VTDecompressionSessionRemoteServer_CopyBlackPixelBuffer();
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 52) = *(a2 + 64);
  *(a2 + 56) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 72;
  *(a2 + 24) = 2;
  return result;
}

uint64_t _XFlushPixelBufferPool(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_FlushPixelBufferPool(a1[3], a2, a3, a4, a5, a6, a7, a8);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetMinOutputPresentationTimeStampOfFramesBeingDecoded(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 60;
    }
  }

  return result;
}

_DWORD *_XGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(result[3], (a2 + 36), (a2 + 60), (a2 + 84));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 88;
    }
  }

  return result;
}

_DWORD *_XGetNextPendingNotification(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  v6 = 0;
  *(a2 + 36) = 16777473;
  result = VTDecompressionSessionRemoteServer_GetNextPendingNotification(result[3], (a2 + 52), (a2 + 56), (a2 + 72), (a2 + 28), &v6);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = v6;
  *(a2 + 40) = v6;
  v4 = *MEMORY[0x1E69E99E0];
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  result = strlen((a2 + 72));
  if ((result + 1) >> 32)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = v4;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 68) = result + 1;
    v5 = (result + 4) & 0xFFFFFFFC;
    *(a2 + v5 + 72) = v3;
    *a2 |= 0x80000000;
    *(a2 + 4) = v5 + 76;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t _XTileCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 3)
  {
    goto LABEL_18;
  }

  v5 = *(result + 4);
  if ((v5 - 617) < 0xFFFFFDFF)
  {
    goto LABEL_18;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || *(result + 67) != 1)
  {
    goto LABEL_17;
  }

  v6 = *(result + 100);
  v3 = -304;
  if (v6 > 0x200 || v5 - 104 < v6)
  {
    goto LABEL_18;
  }

  if (v5 != ((v6 + 3) & 0x7FC) + 104)
  {
    goto LABEL_2;
  }

  if (*(result + 52) != *(result + 88) || *(result + 68) != *(result + 92))
  {
LABEL_17:
    v3 = -300;
    goto LABEL_18;
  }

  result = memchr((result + 104), 0, v5 - 104);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_18:
    *(a2 + 32) = v3;
    goto LABEL_19;
  }

  v7 = ((v5 + 3) & 0x7FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_18;
  }

  *(a2 + 32) = 0x14000000000000;
  v8 = *(v4 + 12);
  v9 = *(v4 + 28);
  v10 = *(v4 + 80);
  v11 = *(v4 + 40);
  v12 = *(v4 + 52);
  v13 = *(v4 + 56);
  v14 = *(v4 + 68);
  v15 = *(v7 + 36);
  v16[0] = *(v7 + 20);
  v16[1] = v15;
  result = VTDecompressionSessionRemoteServer_TileCreate(v8, v9, v16, v10, v11, v12, v13, v14, (v4 + 104), (a2 + 28), (a2 + 48), (a2 + 56), (a2 + 64));
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_19:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XDecodeTile(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 4 && *(result + 4) == 136)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 51) == 1 && *(result + 66) << 16 == 1114112 && *(result + 79) == 1)
    {
      v3 = *(result + 52);
      if (v3 == *(result + 92))
      {
        v4 = *(result + 80);
        if (v4 == *(result + 112))
        {
          result = VTDecompressionSessionRemoteServer_DecodeTile(*(result + 12), *(result + 28), *(result + 40), v3, *(result + 96), *(result + 104), *(result + 56), *(result + 68), v4, *(result + 116), *(result + 124), *(result + 128));
          *(a2 + 32) = result;
          return result;
        }
      }
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XFinishDelayedTiles(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_FinishDelayedTiles(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_XEnableMIO(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteServer_EnableMIO(result[3], a2, a3, a4, a5, a6, a7, a8);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t VTCompressionSessionRemoteClient_Create(mach_port_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, char *src, _DWORD *a14, void *a15, uint64_t *a16, int *a17)
{
  v42 = *MEMORY[0x1E69E9840];
  memset(v41, 0, 384);
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v29 = 0x13000000000000;
  memset(&name, 0, sizeof(name));
  v27 = 4;
  v28 = a2;
  v30 = a7;
  LODWORD(v31) = 16777472;
  HIDWORD(v31) = a8;
  v32 = a9;
  v33 = 16777472;
  v34 = a10;
  v35 = a11;
  v36 = 16777472;
  v37 = a12;
  v38 = *MEMORY[0x1E69E99E0];
  *&v39 = a3;
  *(&v39 + 1) = __PAIR64__(a5, a4);
  *&v40 = __PAIR64__(a8, a6);
  *(&v40 + 1) = __PAIR64__(a12, a10);
  if (MEMORY[0x1EEE9AC40])
  {
    v18 = mig_strncpy_zerofill(v41 + 8, src, 512);
  }

  else
  {
    v18 = mig_strncpy(v41 + 8, src, 512);
  }

  LODWORD(v41[0]) = 0;
  DWORD1(v41[0]) = v18;
  v19 = (v18 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x477C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v22 = mach_msg(&name, 3162387, v19 + 136, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v23 = v22;
  if ((v22 - 268435458) > 0xE || ((1 << (v22 - 2)) & 0x4003) == 0)
  {
    if (!v22)
    {
      if (name.msgh_id == 71)
      {
        v23 = 4294966988;
      }

      else if (name.msgh_id == 18400)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v23 = 4294966996;
            if (v29)
            {
              if (name.msgh_remote_port)
              {
                v23 = 4294966996;
              }

              else
              {
                v23 = v29;
              }
            }
          }

          else
          {
            v23 = 4294966996;
          }

          goto LABEL_30;
        }

        v23 = 4294966996;
        if (v27 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v29) << 16 == 1114112)
        {
          v23 = 0;
          *a14 = v28;
          v24 = v32;
          *a15 = v31;
          *a16 = v24;
          *a17 = v33;
          return v23;
        }
      }

      else
      {
        v23 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v23;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v23 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v23;
}

uint64_t VTCompressionSessionRemoteClient_Destroy(int a1)
{
  v9 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x477D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v3, *MEMORY[0x1E695FF48], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18401)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v5;
}

uint64_t VTCompressionSessionRemoteClient_CopySupportedPropertyDictionary(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x477E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x44u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18402)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_31;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v13 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v13;
            *a4 = DWORD1(v17);
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v11;
}

uint64_t VTCompressionSessionRemoteClient_CopySerializableProperties(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x477F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x44u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18403)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_31;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v13 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v13;
            *a4 = DWORD1(v17);
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v11;
}

uint64_t VTCompressionSessionRemoteClient_CopyProperty(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  *name = 0u;
  memset(v18, 0, sizeof(v18));
  *(&v18[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(&v18[1] + 8, a2, 512);
  }

  else
  {
    v9 = mig_strncpy(&v18[1] + 8, a2, 512);
  }

  LODWORD(v18[1]) = 0;
  DWORD1(v18[1]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v18[0] = 0x478000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v12 = name[3];
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(name, 3162387, v10 + 40, 0x44u, v12, *MEMORY[0x1E695FF48], 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (DWORD1(v18[0]) == 71)
      {
        v14 = 4294966988;
      }

      else if (DWORD1(v18[0]) == 18404)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v14 = 4294966996;
            if (LODWORD(v18[1]))
            {
              if (name[2])
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = LODWORD(v18[1]);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_31;
        }

        v14 = 4294966996;
        if (DWORD2(v18[0]) == 1 && name[1] == 60 && !name[2] && BYTE7(v18[1]) == 1)
        {
          v15 = DWORD2(v18[1]);
          if (DWORD2(v18[1]) == DWORD1(v19))
          {
            v14 = 0;
            *a3 = *(v18 + 12);
            *a4 = v15;
            *a5 = DWORD2(v19);
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v14;
}

uint64_t VTCompressionSessionRemoteClient_SetProperty(mach_port_t a1, const char *a2, uint64_t a3, unsigned int a4, int *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *&v20[8] = 0u;
  memset(&name, 0, sizeof(name));
  v17 = 1;
  v18 = a3;
  v19 = 16777472;
  *v20 = a4;
  *&v20[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v8 = mig_strncpy_zerofill(&v20[20], a2, 512);
  }

  else
  {
    v8 = mig_strncpy(&v20[20], a2, 512);
  }

  *&v20[12] = 0;
  *&v20[16] = v8;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  *&v20[v9 + 20] = a4;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x478100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&name, 3162387, v9 + 64, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (name.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (name.msgh_id == 18405)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 40)
          {
            if (!name.msgh_remote_port)
            {
              v13 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a5 = v19;
                return v13;
              }

              goto LABEL_29;
            }
          }

          else if (name.msgh_size == 36)
          {
            if (name.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v18) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v18);
            }

            goto LABEL_29;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&name);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v13;
}

uint64_t VTCompressionSessionRemoteClient_SetMultiPassStorage(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 1;
  v15 = 0u;
  v12.msgh_size = 0;
  v14 = a2;
  DWORD1(v15) = 1245184;
  special_reply_port = mig_get_special_reply_port();
  v12.msgh_remote_port = a1;
  v12.msgh_local_port = special_reply_port;
  v12.msgh_bits = -2147478253;
  *&v12.msgh_voucher_port = 0x478200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&v12, 3162387, 0x28u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (v12.msgh_id == 71)
      {
        v8 = 4294966988;
      }

      else if (v12.msgh_id == 18406)
      {
        if ((v12.msgh_bits & 0x80000000) == 0)
        {
          if (v12.msgh_size == 40)
          {
            if (!v12.msgh_remote_port)
            {
              v8 = v15;
              if (!v15)
              {
                *a3 = DWORD1(v15);
                return v8;
              }

              goto LABEL_29;
            }
          }

          else if (v12.msgh_size == 36)
          {
            if (v12.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = v15 == 0;
            }

            if (v10)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = v15;
            }

            goto LABEL_29;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v12);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v8 - 268435459) <= 1)
  {
    if ((v12.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v12.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v8;
}

uint64_t VTCompressionSessionRemoteClient_SetProperties(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x478300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162387, 0x38u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 18407)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                return v9;
              }

              goto LABEL_29;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_29;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v13);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v13.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v13.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v9;
}

uint64_t VTCompressionSessionRemoteClient_PrepareToEncodeFrames(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x478400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t VTCompressionSessionRemoteClient_EncodeFrame(mach_port_name_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, unint64_t a12, unsigned int a13, int a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, uint64_t a25, unsigned int a26, uint64_t a27, __int128 *a28, uint64_t a29, int a30, uint64_t a31)
{
  v59 = *MEMORY[0x1E69E9840];
  *&v58[16] = 0;
  v31 = *a28;
  v57 = 0u;
  *v58 = 0u;
  memset(v56, 0, sizeof(v56));
  *(v56 + 8) = *a27;
  v35 = 0u;
  HIDWORD(v35) = a2;
  v36 = 0;
  v38 = 0u;
  v37 = a3;
  v39 = 0u;
  v40 = 0u;
  *(&v39 + 4) = a6;
  *(&v40 + 4) = a8;
  v41 = 0u;
  v42 = 0u;
  *&v42 = a10;
  memset(v44, 0, sizeof(v44));
  v43 = a12;
  LODWORD(v44[0]) = a14;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v47 = 0;
  v49 = 0u;
  v45 = 0;
  *(v44 + 12) = a15;
  *(&v44[1] + 12) = a17;
  v46 = a19;
  v48 = a21;
  *(&v50 + 4) = a23;
  *(&v51 + 4) = a25;
  *(&v52 + 4) = a29;
  *(&v53 + 4) = *MEMORY[0x1E69E99E0];
  *&v58[12] = a31;
  HIDWORD(v36) = 1245184;
  LODWORD(v38) = 16777472;
  LODWORD(v39) = 1245184;
  HIDWORD(v39) = 16777472;
  HIDWORD(v40) = 16777472;
  HIDWORD(v41) = 1245184;
  DWORD2(v42) = 16777472;
  DWORD2(v43) = 16777472;
  DWORD2(v44[0]) = 1245184;
  DWORD1(v44[1]) = 16777472;
  DWORD1(v44[2]) = 16777472;
  HIDWORD(v45) = 1245184;
  LODWORD(v47) = 16777472;
  LODWORD(v49) = 16777472;
  LODWORD(v50) = 1245184;
  HIDWORD(v50) = 16777472;
  HIDWORD(v51) = 16777472;
  HIDWORD(v52) = 16777472;
  *(&v38 + 4) = __PAIR64__(a5, a4);
  HIDWORD(v53) = a4;
  LODWORD(v40) = a7;
  *&v54 = __PAIR64__(a9, a7);
  *&v41 = a9;
  HIDWORD(v42) = a11;
  *(&v54 + 1) = __PAIR64__(a13, a11);
  HIDWORD(v43) = a13;
  DWORD2(v44[1]) = a16;
  *&v55 = __PAIR64__(a18, a16);
  *(&v44[2] + 1) = a18;
  HIDWORD(v47) = a20;
  *(&v55 + 1) = __PAIR64__(a22, a20);
  *(&v49 + 4) = a22;
  LODWORD(v51) = a24;
  *&v56[0] = __PAIR64__(a26, a24);
  LODWORD(v52) = a26;
  *(&v56[1] + 1) = *(a27 + 16);
  *name = 0u;
  *v58 = *(a28 + 2);
  LODWORD(v53) = a30;
  *&v58[8] = a30;
  name[0] = -2147483629;
  v57 = v31;
  name[2] = a1;
  *(&v35 + 4) = 0x1200004785;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v32 = mach_msg(name, 2097169, 0x194u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v32 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v32;
}

uint64_t VTCompressionSessionRemoteClient_DequeueNextPendingEncodedFrame(int a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, void *a11, _DWORD *a12, uint64_t a13, _DWORD *a14)
{
  v46 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  *&name_12[4] = 0u;
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v33 = 5395;
  *name_12 = 0x478600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v33);
    v23 = name_8;
  }

  else
  {
    v23 = special_reply_port;
  }

  v24 = mach_msg(&v33, 3162387, 0x18u, 0x98u, v23, *MEMORY[0x1E695FF48], 0);
  v25 = v24;
  if ((v24 - 268435458) > 0xE || ((1 << (v24 - 2)) & 0x4003) == 0)
  {
    if (!v24)
    {
      if (*&name_12[4] == 71)
      {
        v25 = 4294966988;
      }

      else if (*&name_12[4] == 18410)
      {
        if ((v33 & 0x80000000) == 0)
        {
          if (name == 36)
          {
            v25 = 4294966996;
            if (*&name_12[16])
            {
              if (name_4)
              {
                v25 = 4294966996;
              }

              else
              {
                v25 = *&name_12[16];
              }
            }
          }

          else
          {
            v25 = 4294966996;
          }

          goto LABEL_34;
        }

        v25 = 4294966996;
        if (*&name_12[8] == 3 && name == 144 && !name_4 && WORD1(v38) << 16 == 1114112 && HIBYTE(v38) == 1 && HIBYTE(v39) == 1)
        {
          v27 = v39;
          if (v39 == v42)
          {
            v28 = v40;
            if (v40 == HIDWORD(v42))
            {
              v25 = 0;
              *a2 = HIDWORD(v40);
              *a3 = v41;
              v29 = HIDWORD(v41);
              *a4 = DWORD2(v41);
              *a5 = v29;
              *a6 = *&name_12[12];
              v30 = *(&v39 + 4);
              *a7 = *(&v38 + 4);
              *a8 = v27;
              v31 = DWORD2(v42);
              *a9 = DWORD1(v42);
              *a10 = v31;
              *a11 = v30;
              *a12 = v28;
              *a13 = v43;
              *(a13 + 16) = v44;
              *a14 = DWORD2(v44);
              return v25;
            }
          }
        }
      }

      else
      {
        v25 = 4294966995;
      }

LABEL_34:
      mach_msg_destroy(&v33);
      return v25;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v25 - 268435459) <= 1)
  {
    if ((v33 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_34;
  }

  return v25;
}

uint64_t VTCompressionSessionRemoteClient_CompleteFrames(mach_port_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E99E0];
  v6 = *a2;
  v7 = *(a2 + 2);
  *&v4.msgh_bits = 19;
  v4.msgh_voucher_port = 0;
  v4.msgh_id = 18311;
  v4.msgh_remote_port = a1;
  v4.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v4);
  }

  v2 = mach_msg(&v4, 2097169, 0x38u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((v4.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v4.msgh_local_port);
    }

    mach_msg_destroy(&v4);
  }

  return v2;
}

uint64_t VTCompressionSessionRemoteClient_BeginPass(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  *&msg[20] = 0u;
  v16 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x478800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162387, 0x24u, 0x34u, v8, *MEMORY[0x1E695FF48], 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 18412)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v10 = *&msg[32];
              if (!*&msg[32])
              {
                v14 = DWORD1(v16);
                *a3 = v16;
                *a4 = v14;
                return v10;
              }

              goto LABEL_29;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v12 = 1;
            }

            else
            {
              v12 = *&msg[32] == 0;
            }

            if (v12)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&msg[32];
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v10;
}

uint64_t VTCompressionSessionRemoteClient_EndPass(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = 0;
  v17 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x478900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x38u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18413)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 48)
          {
            if (!*&msg[8])
            {
              v11 = *&msg[32];
              if (!*&msg[32])
              {
                v15 = DWORD1(v17);
                *a2 = v17;
                *a3 = v15;
                *a4 = DWORD2(v17);
                return v11;
              }

              goto LABEL_29;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v13 = 1;
            }

            else
            {
              v13 = *&msg[32] == 0;
            }

            if (v13)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }

            goto LABEL_29;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v11;
}

uint64_t VTCompressionSessionRemoteClient_GetTimeRangesForNextPass(int a1, void *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x478A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(msg, 3162387, 0x18u, 0x4Cu, v11, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&msg[20] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&msg[20] == 18414)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v13 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = *&msg[32];
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_31;
        }

        v13 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 68 && !*&msg[8] && BYTE3(v18) == 1)
        {
          v15 = DWORD1(v18);
          if (DWORD1(v18) == DWORD2(v19))
          {
            v13 = 0;
            *a2 = v19;
            *a3 = *&msg[28];
            *a4 = v15;
            *a5 = HIDWORD(v19);
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v13;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageCreate(mach_port_name_t a1, int a2, uint64_t a3, uint64_t a4, int a5, _OWORD *a6, uint64_t a7, int a8, char *src, _DWORD *a10, void *a11, void *a12, _DWORD *a13)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v28[1], 0, 416);
  v27 = 0u;
  v28[0] = 0u;
  v25 = 0u;
  v26 = 0u;
  *name = 0u;
  v24 = 0u;
  v14 = a6[1];
  *(v28 + 12) = *a6;
  DWORD2(v24) = 3;
  HIDWORD(v24) = a2;
  DWORD1(v25) = 1245184;
  *(&v25 + 1) = a4;
  LODWORD(v26) = 16777472;
  DWORD1(v26) = a5;
  *(&v26 + 1) = a7;
  LODWORD(v27) = 16777472;
  DWORD1(v27) = a8;
  *(&v27 + 1) = *MEMORY[0x1E69E99E0];
  *&v28[0] = a3;
  DWORD2(v28[0]) = a5;
  *(&v28[1] + 12) = v14;
  *(&v28[2] + 12) = a6[2];
  HIDWORD(v28[3]) = a8;
  if (MEMORY[0x1EEE9AC40])
  {
    v15 = mig_strncpy_zerofill(&v28[4] + 8, src, 512);
  }

  else
  {
    v15 = mig_strncpy(&v28[4] + 8, src, 512);
  }

  LODWORD(v28[4]) = 0;
  DWORD1(v28[4]) = v15;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = -2147478253;
  *&v24 = 0x478B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v18 = name[3];
  }

  else
  {
    v18 = special_reply_port;
  }

  v19 = mach_msg(name, 3162387, v16 + 152, 0x4Cu, v18, *MEMORY[0x1E695FF48], 0);
  v20 = v19;
  if ((v19 - 268435458) > 0xE || ((1 << (v19 - 2)) & 0x4003) == 0)
  {
    if (!v19)
    {
      if (DWORD1(v24) == 71)
      {
        v20 = 4294966988;
      }

      else if (DWORD1(v24) == 18415)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v20 = 4294966996;
            if (v25)
            {
              if (name[2])
              {
                v20 = 4294966996;
              }

              else
              {
                v20 = v25;
              }
            }
          }

          else
          {
            v20 = 4294966996;
          }

          goto LABEL_30;
        }

        v20 = 4294966996;
        if (DWORD2(v24) == 1 && name[1] == 68 && !name[2] && WORD3(v25) << 16 == 1114112)
        {
          v20 = 0;
          *a10 = HIDWORD(v24);
          v21 = *(&v26 + 1);
          *a11 = v26;
          *a12 = v21;
          *a13 = v27;
          return v20;
        }
      }

      else
      {
        v20 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(name);
      return v20;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v20 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_30;
  }

  return v20;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageDestroy(int a1)
{
  v9 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x478C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v3, *MEMORY[0x1E695FF48], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18416)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v5;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageSetIdentifier(mach_port_name_t a1, const char *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 480);
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 512);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 512);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x478D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162387, v6 + 40, 0x30u, v8, *MEMORY[0x1E695FF48], 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v14) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v14) == 18417)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v15[0]);
              if (!LODWORD(v15[0]))
              {
                *a3 = DWORD1(v15[0]);
                return v10;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v15[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v15[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v10;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageCopyIdentifier(mach_port_t a1, char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&msg[20].msgh_size, 0, 28);
  memset(&msg[1].msgh_local_port, 0, 448);
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x478E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162387, 0x18u, 0x234u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 18418)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size - 557 <= 0xFFFFFDFE)
          {
            if (msg[1].msgh_remote_port)
            {
              v8 = msg[0].msgh_remote_port == 0;
            }

            else
            {
              v8 = 0;
            }

            if (v8 && msg[0].msgh_size == 36)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_28;
          }

          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_voucher_port <= 0x200 && msg[0].msgh_size - 44 >= msg[1].msgh_voucher_port && msg[0].msgh_size == ((LOWORD(msg[1].msgh_voucher_port) + 3) & 0x7FC) + 44)
              {
                mig_strncpy(a2, &msg[1].msgh_id, 512);
                return 0;
              }
            }

            goto LABEL_28;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  if ((msgh_remote_port - 268435459) <= 1)
  {
    if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg[0].msgh_local_port);
    }

    goto LABEL_28;
  }

  return msgh_remote_port;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageSetDataAtTimeStamp(mach_port_t a1, __int128 *a2, int a3, uint64_t a4, int a5, int *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 1;
  v17 = a4;
  v18 = 16777472;
  v19 = a5;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = *a2;
  v22 = *(a2 + 2);
  v23 = a3;
  v24 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v15.msgh_bits = 2147489043;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = special_reply_port;
  *&v15.msgh_voucher_port = 0x478F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&v15, 3162387, 0x54u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v15.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (v15.msgh_id == 18419)
      {
        if ((v15.msgh_bits & 0x80000000) == 0)
        {
          if (v15.msgh_size == 40)
          {
            if (!v15.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                return v11;
              }

              goto LABEL_29;
            }
          }

          else if (v15.msgh_size == 36)
          {
            if (v15.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v17) == 0;
            }

            if (v13)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_29;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v15);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((v15.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v15.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v11;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageGetTimeStamp(mach_port_name_t a1, uint64_t a2, char *src, uint64_t a4, _DWORD *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 448);
  memset(v18, 0, sizeof(v18));
  *name = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x1E69E99E0];
  v18[0] = *a2;
  *&v18[1] = *(a2 + 16);
  if (MEMORY[0x1EEE9AC40])
  {
    v8 = mig_strncpy_zerofill(v19, src, 512);
  }

  else
  {
    v8 = mig_strncpy(v19, src, 512);
  }

  DWORD2(v18[1]) = 0;
  HIDWORD(v18[1]) = v8;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v17 = 0x479000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v11 = name[3];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(name, 3162387, v9 + 64, 0x48u, v11, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (DWORD1(v17) == 71)
      {
        v13 = 4294966988;
      }

      else if (DWORD1(v17) == 18420)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 64)
          {
            if (!name[2])
            {
              v13 = LODWORD(v18[0]);
              if (!LODWORD(v18[0]))
              {
                *a4 = *(v18 + 4);
                *(a4 + 16) = *(&v18[1] + 4);
                *a5 = HIDWORD(v18[1]);
                return v13;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v14 = 1;
            }

            else
            {
              v14 = LODWORD(v18[0]) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = LODWORD(v18[0]);
            }

            goto LABEL_29;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v13;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageGetTimeStampAndDuration(mach_port_name_t a1, uint64_t a2, char *src, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, 480);
  *name = 0u;
  v19 = 0u;
  *(&v19 + 1) = *MEMORY[0x1E69E99E0];
  v20[0] = *a2;
  *&v20[1] = *(a2 + 16);
  if (MEMORY[0x1EEE9AC40])
  {
    v10 = mig_strncpy_zerofill(&v20[2], src, 512);
  }

  else
  {
    v10 = mig_strncpy(&v20[2], src, 512);
  }

  DWORD2(v20[1]) = 0;
  HIDWORD(v20[1]) = v10;
  v11 = (v10 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v19 = 0x479100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v13 = name[3];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(name, 3162387, v11 + 64, 0x60u, v13, *MEMORY[0x1E695FF48], 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (DWORD1(v19) == 71)
      {
        v15 = 4294966988;
      }

      else if (DWORD1(v19) == 18421)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 88)
          {
            if (!name[2])
            {
              v15 = LODWORD(v20[0]);
              if (!LODWORD(v20[0]))
              {
                *a4 = *(v20 + 4);
                *(a4 + 16) = *(&v20[1] + 4);
                *a5 = *(&v20[1] + 12);
                *(a5 + 16) = *(&v20[2] + 12);
                *a6 = DWORD1(v20[3]);
                return v15;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v16 = 1;
            }

            else
            {
              v16 = LODWORD(v20[0]) == 0;
            }

            if (v16)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = LODWORD(v20[0]);
            }

            goto LABEL_29;
          }
        }

        v15 = 4294966996;
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v15;
}

uint64_t VTCompressionSessionRemoteClient_MultiPassStorageCopyDataAtTimeStamp(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 48);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = *a2;
  *&msg_4[44] = *(a2 + 16);
  *&msg_4[52] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x479200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v11 = *&msg_4[8];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162387, 0x3Cu, 0x44u, v11, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&msg_4[16] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&msg_4[16] == 18422)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v13 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = *&msg_4[28];
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_31;
        }

        v13 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 60 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v15 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v13 = 0;
            *a4 = *&msg_4[24];
            *a5 = v15;
            *a6 = *&msg_4[52];
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_31;
  }

  return v13;
}

uint64_t VTCompressionSessionRemoteClient_GetNextPendingNotification(int a1, _DWORD *a2, void *a3, char *a4, void *a5, _DWORD *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, 444);
  v22 = 0u;
  v21 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x479300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(msg, 3162387, 0x18u, 0x254u, v13, *MEMORY[0x1E695FF48], 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 18423)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v15 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = *&msg[32];
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_31;
        }

        v15 = 4294966996;
        if (*&msg[24] == 1 && (*&msg[4] - 76) <= 0x200 && !*&msg[8] && BYTE3(v21) == 1 && LODWORD(v23[0]) <= 0x200 && (*&msg[4] - 76) >= LODWORD(v23[0]))
        {
          v16 = (LODWORD(v23[0]) + 3) & 0xFFFFFFFC;
          if (*&msg[4] == v16 + 76)
          {
            v17 = &msg[v16];
            if (DWORD1(v21) == *(v17 + 18))
            {
              v18 = v17 - 512;
              *a2 = v22;
              *a3 = *(&v22 + 4);
              mig_strncpy(a4, v23 + 4, 512);
              v15 = 0;
              *a5 = *&msg[28];
              *a6 = *(v18 + 146);
              return v15;
            }
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v15;
}

uint64_t VTCompressionSessionRemoteClient_TileCreate(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, int a9, char *src, _DWORD *a11, void *a12, void *a13, int *a14)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  memset(v35, 0, 400);
  v32 = 0;
  v33 = 0u;
  v26 = 0x13000000000000;
  memset(&name, 0, sizeof(name));
  v24 = 3;
  v25 = a2;
  v27 = a6;
  LODWORD(v28) = 16777472;
  HIDWORD(v28) = a7;
  v29 = a8;
  v30 = 16777472;
  v31 = a9;
  v32 = *MEMORY[0x1E69E99E0];
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = __PAIR64__(a7, a5);
  DWORD2(v34) = a9;
  if (MEMORY[0x1EEE9AC40])
  {
    v15 = mig_strncpy_zerofill(v35 + 4, src, 512);
  }

  else
  {
    v15 = mig_strncpy(v35 + 4, src, 512);
  }

  HIDWORD(v34) = 0;
  LODWORD(v35[0]) = v15;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x479400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v19 = mach_msg(&name, 3162387, v16 + 116, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v20 = v19;
  if ((v19 - 268435458) > 0xE || ((1 << (v19 - 2)) & 0x4003) == 0)
  {
    if (!v19)
    {
      if (name.msgh_id == 71)
      {
        v20 = 4294966988;
      }

      else if (name.msgh_id == 18424)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v20 = 4294966996;
            if (v26)
            {
              if (name.msgh_remote_port)
              {
                v20 = 4294966996;
              }

              else
              {
                v20 = v26;
              }
            }
          }

          else
          {
            v20 = 4294966996;
          }

          goto LABEL_30;
        }

        v20 = 4294966996;
        if (v24 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v26) << 16 == 1114112)
        {
          v20 = 0;
          *a11 = v25;
          v21 = v29;
          *a12 = v28;
          *a13 = v21;
          *a14 = v30;
          return v20;
        }
      }

      else
      {
        v20 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v20;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v20 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v20;
}

uint64_t VTCompressionSessionRemoteClient_PrepareToEncodeTiles(mach_port_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18325;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097169, 0x24u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t VTCompressionSessionRemoteClient_EncodeTile(mach_port_name_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v13 = 0u;
  *name = 0u;
  DWORD2(v13) = a2;
  v14 = 1245184;
  v15 = a3;
  v16 = 16777472;
  v17 = a4;
  v18 = a7;
  v19 = 16777472;
  v20 = a8;
  v21 = *MEMORY[0x1E69E99E0];
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a8;
  v26 = a9;
  v11 = -2147483629;
  name[1] = a1;
  *&v13 = 0x300004796;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
  }

  v9 = mach_msg(&v11, 2097169, 0x70u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v9 - 268435459) <= 1)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[2]);
    }

    mach_msg_destroy(&v11);
  }

  return v9;
}

uint64_t VTCompressionSessionRemoteClient_CompleteTiles(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x479700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t VTCompressionSessionRemoteClient_MotionEstimationCreate(mach_port_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, int a7, char *src, _DWORD *a9, void *a10, void *a11, _DWORD *a12)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  memset(v29, 0, 432);
  v24 = 0x13000000000000;
  v27 = 0;
  memset(&name, 0, sizeof(name));
  v22 = 2;
  v23 = a2;
  v25 = a6;
  LODWORD(v26) = 16777472;
  HIDWORD(v26) = a7;
  v27 = *MEMORY[0x1E69E99E0];
  *&v28 = a3;
  *(&v28 + 1) = __PAIR64__(a5, a4);
  LODWORD(v29[0]) = a7;
  if (MEMORY[0x1EEE9AC40])
  {
    v13 = mig_strncpy_zerofill(v29 + 12, src, 512);
  }

  else
  {
    v13 = mig_strncpy(v29 + 12, src, 512);
  }

  DWORD1(v29[0]) = 0;
  DWORD2(v29[0]) = v13;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x479800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v17 = mach_msg(&name, 3162387, v14 + 92, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v18 = v17;
  if ((v17 - 268435458) > 0xE || ((1 << (v17 - 2)) & 0x4003) == 0)
  {
    if (!v17)
    {
      if (name.msgh_id == 71)
      {
        v18 = 4294966988;
      }

      else if (name.msgh_id == 18428)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v18 = 4294966996;
            if (v24)
            {
              if (name.msgh_remote_port)
              {
                v18 = 4294966996;
              }

              else
              {
                v18 = v24;
              }
            }
          }

          else
          {
            v18 = 4294966996;
          }

          goto LABEL_30;
        }

        v18 = 4294966996;
        if (v22 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v24) << 16 == 1114112)
        {
          v18 = 0;
          *a9 = v23;
          v19 = v27;
          *a10 = v26;
          *a11 = v19;
          *a12 = v28;
          return v18;
        }
      }

      else
      {
        v18 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v18;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v18 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v18;
}

uint64_t VTCompressionSessionRemoteClient_MotionEstimationCopySourcePixelBufferAttributes(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x479900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x44u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18429)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_31;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v13 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v13;
            *a4 = DWORD1(v17);
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v11;
}

uint64_t VTCompressionSessionRemoteClient_EstimateMotion(mach_port_name_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v13 = 0u;
  v19 = 0;
  *name = 0u;
  DWORD2(v13) = a2;
  v14 = 1245184;
  v15 = a3;
  v16 = 16777472;
  v17 = a4;
  v18 = a5;
  v20 = 1245184;
  v21 = a6;
  v22 = 16777472;
  v23 = a7;
  v24 = *MEMORY[0x1E69E99E0];
  v25 = a4;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v11 = -2147483629;
  name[1] = a1;
  *&v13 = 0x40000479ALL;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
  }

  v9 = mach_msg(&v11, 2097169, 0x70u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v9 - 268435459) <= 1)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[2]);
    }

    mach_msg_destroy(&v11);
  }

  return v9;
}

uint64_t VTCompressionSessionRemoteClient_CompleteMotionEstimation(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x479B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t VTCompressionSessionRemoteClient_CopyTemporalFilterList(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  msg.msgh_id = 0;
  v22 = 0;
  v23 = 0u;
  *&msg.msgh_size = 0u;
  v18 = 1;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = *MEMORY[0x1E69E99E0];
  LODWORD(v23) = a3;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x479C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162387, 0x38u, 0x44u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 18432)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v19))
            {
              if (msg.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v19);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_31;
        }

        v13 = 4294966996;
        if (v18 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
        {
          v15 = v21;
          if (v21 == v23)
          {
            v13 = 0;
            *a4 = v19;
            *a5 = v15;
            *a6 = DWORD1(v23);
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_31;
  }

  return v13;
}

uint64_t VTCompressionSessionRemoteClient_TemporalFilterCreate(mach_port_t a1, int a2, uint64_t a3, char *src, int a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, uint64_t a11, int a12, uint64_t a13, int a14, const char *a15, _DWORD *a16, void *a17, uint64_t *a18, int *a19)
{
  v56 = *MEMORY[0x1E69E9840];
  memset(v55, 0, 352);
  memset(v54, 0, sizeof(v54));
  v52 = 0;
  v53 = 0u;
  v40 = 0x13000000000000;
  memset(&name, 0, sizeof(name));
  v38 = 5;
  v39 = a2;
  v41 = a7;
  LODWORD(v42) = 16777472;
  HIDWORD(v42) = a8;
  v43 = a9;
  v44 = 16777472;
  v45 = a10;
  v46 = a11;
  v47 = 16777472;
  v48 = a12;
  v49 = a13;
  v50 = 16777472;
  v51 = a14;
  v52 = *MEMORY[0x1E69E99E0];
  *&v53 = a3;
  if (MEMORY[0x1EEE9AC40])
  {
    v23 = mig_strncpy_zerofill(v54, src, 512);
  }

  else
  {
    v23 = mig_strncpy(v54, src, 512);
  }

  v24 = MEMORY[0x1EEE9AC40];
  DWORD2(v53) = 0;
  HIDWORD(v53) = v23;
  v25 = (v23 + 3) & 0xFFFFFFFC;
  v26 = (&name.msgh_bits + v25);
  v27 = &name + v25 - 512;
  v26[32] = a5;
  v26[33] = a6;
  v26[34] = a8;
  v26[35] = a10;
  v26[36] = a12;
  v26[37] = a14;
  v28 = v55 + v25;
  if (v24)
  {
    v29 = mig_strncpy_zerofill(v28, a15, 512);
  }

  else
  {
    v29 = mig_strncpy(v28, a15, 512);
  }

  *(v27 + 167) = v29;
  *(v27 + 166) = 0;
  v30 = (v29 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x479D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v33 = mach_msg(&name, 3162387, v25 + 160 + v30, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v34 = v33;
  if ((v33 - 268435458) > 0xE || ((1 << (v33 - 2)) & 0x4003) == 0)
  {
    if (!v33)
    {
      if (name.msgh_id == 71)
      {
        v34 = 4294966988;
      }

      else if (name.msgh_id == 18433)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v34 = 4294966996;
            if (v40)
            {
              if (name.msgh_remote_port)
              {
                v34 = 4294966996;
              }

              else
              {
                v34 = v40;
              }
            }
          }

          else
          {
            v34 = 4294966996;
          }

          goto LABEL_33;
        }

        v34 = 4294966996;
        if (v38 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v40) << 16 == 1114112)
        {
          v34 = 0;
          *a16 = v39;
          v35 = v43;
          *a17 = v42;
          *a18 = v35;
          *a19 = v44;
          return v34;
        }
      }

      else
      {
        v34 = 4294966995;
      }

LABEL_33:
      mach_msg_destroy(&name);
      return v34;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v34 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_33;
  }

  return v34;
}

uint64_t VTCompressionSessionRemoteClient_TemporalProcessFrame(mach_port_name_t a1, int a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, int a7, uint64_t a8)
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  *name = 0u;
  DWORD2(v12) = a2;
  v13 = 1245184;
  v14 = a3;
  v15 = 16777472;
  v16 = a4;
  v17 = a6;
  v18 = 16777472;
  v19 = a7;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a4;
  v22 = *a5;
  v23 = *(a5 + 2);
  v24 = a7;
  v25 = a8;
  v10 = -2147483629;
  name[1] = a1;
  *&v12 = 0x30000479ELL;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
  }

  v8 = mach_msg(&v10, 2097169, 0x78u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[2]);
    }

    mach_msg_destroy(&v10);
  }

  return v8;
}

uint64_t VTCompressionSessionRemoteClient_CompleteTemporalFilterFrames(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x479F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t (*vtcompressionsession_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 18336) >= 0xFFFFFFDC)
  {
    return VTCompressionSessionRemoteServer_vtcompressionsession_subsystem[5 * (v1 - 18300) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XDestroy_0(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = VTCompressionSessionRemoteServer_Destroy(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XCopySupportedPropertyDictionary_0(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_CopySupportedPropertyDictionary(result[3], (a2 + 28), (a2 + 52), a2 + 56, a5, a6, a7, a8);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *_XCopySerializableProperties_0(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_CopySerializableProperties(result[3], (a2 + 28), (a2 + 52), a2 + 56, a5, a6, a7, a8);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

const char *_XCopyProperty_0(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), (v4 - 553) < 0xFFFFFDFF) || ((v5 = *(result + 9), v5 <= 0x200) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x7FC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr((result + 40), 0, v4 - 40)) == 0))
  {
    *(a2 + 32) = -304;
LABEL_11:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_CopyProperty(*(v3 + 3), v3 + 40, (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_11;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XSetProperty_0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 577 < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 56);
  if (v6 > 0x200)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = -304;
  if (v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 64)
  {
    goto LABEL_3;
  }

  v8 = *(result + 40);
  if (v8 != *(result + v7 + 60))
  {
LABEL_18:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x23C)
  {
    v9 = 572;
  }

  else
  {
    v9 = v5;
  }

  result = memchr((result + 60), 0, v9 - 60);
  if (!result)
  {
    goto LABEL_2;
  }

  result = VTCompressionSessionRemoteServer_SetProperty(*(v4 + 12), (v4 + 60), *(v4 + 28), v8, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSetMultiPassStorage(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v3 = -304;
LABEL_8:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_8;
  }

  result = VTCompressionSessionRemoteServer_SetMultiPassStorage(*(result + 12), *(result + 28), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSetProperties_0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = VTCompressionSessionRemoteServer_SetProperties(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XPrepareToEncodeFrames(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_PrepareToEncodeFrames(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XEncodeFrame(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 18 && *(result + 4) == 404)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 51) == 1 && *(result + 66) << 16 == 1114112 && *(result + 79) == 1 && *(result + 95) == 1 && *(result + 110) << 16 == 1114112 && *(result + 123) == 1 && *(result + 139) == 1 && *(result + 154) << 16 == 1114112 && *(result + 167) == 1 && *(result + 183) == 1)
    {
      if (*(result + 198) << 16 == 1114112 && *(result + 211) == 1 && *(result + 227) == 1 && *(result + 242) << 16 == 1114112 && *(result + 255) == 1 && *(result + 271) == 1 && *(result + 287) == 1)
      {
        v2 = *(result + 52);
        if (v2 == *(result + 300))
        {
          v3 = *(result + 80);
          if (v3 == *(result + 304))
          {
            v4 = *(result + 96);
            if (v4 == *(result + 308))
            {
              v5 = *(result + 124);
              if (v5 == *(result + 312))
              {
                v6 = *(result + 140);
                if (v6 == *(result + 316))
                {
                  v7 = *(result + 168);
                  if (v7 == *(result + 320))
                  {
                    v8 = *(result + 184);
                    if (v8 == *(result + 324))
                    {
                      v9 = *(result + 212);
                      if (v9 == *(result + 328))
                      {
                        v10 = *(result + 228);
                        if (v10 == *(result + 332))
                        {
                          v11 = *(result + 256);
                          if (v11 == *(result + 336))
                          {
                            v12 = *(result + 272);
                            if (v12 == *(result + 340))
                            {
                              v13 = *(result + 288);
                              if (v13 == *(result + 392))
                              {
                                v31 = *(result + 12);
                                v30 = *(result + 28);
                                v14 = *(result + 40);
                                v33 = *(result + 56);
                                v32 = *(result + 68);
                                v34 = *(result + 84);
                                v15 = *(result + 100);
                                v16 = *(result + 112);
                                v17 = *(result + 128);
                                v18 = *(result + 144);
                                v19 = *(result + 156);
                                v20 = *(result + 172);
                                v21 = *(result + 188);
                                v22 = *(result + 200);
                                v23 = *(result + 216);
                                v24 = *(result + 232);
                                v25 = *(result + 244);
                                v26 = *(result + 260);
                                v27 = *(result + 276);
                                v28 = *(result + 396);
                                v38 = *(result + 344);
                                v39 = *(result + 360);
                                v36 = *(result + 368);
                                v37 = *(result + 384);
                                result = VTCompressionSessionRemoteServer_EncodeFrame(v31, v30, v14, v2, v33, v32, v3, v34, v4, v15, v16, v5, v17, v6, v18, v19, v7, v20, v8, v21, v22, v9, v23, v10, v24, v25, v11, v26, v12, &v38, &v36, v27, v13, v28);
                                *(a2 + 32) = result;
                                return result;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v29 = -300;
    }

    else
    {
      v29 = -300;
    }
  }

  else
  {
    v29 = -304;
  }

  *(a2 + 32) = v29;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XCompleteFrames(uint64_t result, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 56)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    v5 = *(result + 48);
    result = VTCompressionSessionRemoteServer_CompleteFrames(v3, &v4);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_XBeginPass(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_BeginPass(result[3], result[8], (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *_XEndPass(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_EndPass(result[3], (a2 + 36), (a2 + 40), (a2 + 44));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 48;
    }
  }

  return result;
}

_DWORD *_XGetTimeRangesForNextPass(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_GetTimeRangesForNextPass(result[3], (a2 + 52), (a2 + 28), (a2 + 60), (a2 + 64));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 60);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 68;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XMultiPassStorageCreate(uint64_t result, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 3)
  {
    goto LABEL_18;
  }

  v5 = *(result + 4);
  if ((v5 - 665) < 0xFFFFFDFF)
  {
    goto LABEL_18;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || *(result + 67) != 1)
  {
    goto LABEL_17;
  }

  v6 = *(result + 148);
  v3 = -304;
  if (v6 > 0x200 || v5 - 152 < v6)
  {
    goto LABEL_18;
  }

  if (v5 != ((v6 + 3) & 0x7FC) + 152)
  {
    goto LABEL_2;
  }

  if (*(result + 52) != *(result + 88) || *(result + 68) != *(result + 140))
  {
LABEL_17:
    v3 = -300;
    goto LABEL_18;
  }

  result = memchr((result + 152), 0, v5 - 152);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_18:
    *(a2 + 32) = v3;
    goto LABEL_19;
  }

  v7 = ((v5 + 3) & 0x7FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_18;
  }

  *(a2 + 32) = 0x14000000000000;
  v8 = *(v4 + 12);
  v9 = *(v4 + 28);
  v10 = *(v4 + 80);
  v11 = *(v4 + 40);
  v12 = *(v4 + 52);
  v13 = *(v4 + 56);
  v14 = *(v4 + 68);
  v15 = *(v7 + 36);
  v17[0] = *(v7 + 20);
  v17[1] = v15;
  v16 = *(v4 + 108);
  v18[0] = *(v4 + 92);
  v18[1] = v16;
  v18[2] = *(v4 + 124);
  result = VTCompressionSessionRemoteServer_MultiPassStorageCreate(v8, v9, v17, v10, v11, v12, v18, v13, v14, (v4 + 152), (a2 + 28), (a2 + 48), (a2 + 56), (a2 + 64));
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_19:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XMultiPassStorageDestroy(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = VTCompressionSessionRemoteServer_MultiPassStorageDestroy(a1[3]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

const char *_XMultiPassStorageSetIdentifier(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 553) >= 0xFFFFFDFF) && ((v5 = *(result + 9), v5 <= 0x200) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x7FC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = VTCompressionSessionRemoteServer_MultiPassStorageSetIdentifier(*(v3 + 3), v3 + 40, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  return result;
}

_DWORD *_XMultiPassStorageCopyIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_MultiPassStorageCopyIdentifier(result[3], (a2 + 44));
    *(a2 + 32) = result;
    v3 = *MEMORY[0x1E69E99E0];
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      result = strlen((a2 + 44));
      if ((result + 1) >> 32)
      {
        *(a2 + 32) = -304;
        *(a2 + 24) = v3;
      }

      else
      {
        *(a2 + 36) = 0;
        *(a2 + 40) = result + 1;
        *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
      }
    }
  }

  return result;
}

uint64_t _XMultiPassStorageSetDataAtTimeStamp(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 84)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 80)))
  {
    v7 = -300;
    goto LABEL_9;
  }

  v4 = *(result + 12);
  v5 = *(result + 76);
  v6 = *(result + 28);
  v8 = *(result + 52);
  v9 = *(result + 68);
  result = VTCompressionSessionRemoteServer_MultiPassStorageSetDataAtTimeStamp(v4, &v8, v5, v6, v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XMultiPassStorageGetTimeStamp(_DWORD *result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 577) >= 0xFFFFFDFF) && ((v5 = result[15], v5 <= 0x200) ? (v6 = v4 - 64 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x7FC) + 64, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 16, 0, v4 - 64)) != 0))
  {
    v9 = v3[3];
    v10 = *(v3 + 2);
    v11 = *(v3 + 6);
    result = VTCompressionSessionRemoteServer_MultiPassStorageGetTimeStamp(v9, &v10, v3 + 64, (a2 + 36), (a2 + 60));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 64;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  return result;
}

_DWORD *_XMultiPassStorageGetTimeStampAndDuration(_DWORD *result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 577) >= 0xFFFFFDFF) && ((v5 = result[15], v5 <= 0x200) ? (v6 = v4 - 64 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x7FC) + 64, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 16, 0, v4 - 64)) != 0))
  {
    v9 = v3[3];
    v10 = *(v3 + 2);
    v11 = *(v3 + 6);
    result = VTCompressionSessionRemoteServer_MultiPassStorageGetTimeStampAndDuration(v9, &v10, v3 + 64, (a2 + 36), (a2 + 60), (a2 + 84));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 88;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  return result;
}

uint64_t _XMultiPassStorageCopyDataAtTimeStamp(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 60)
  {
    *(a2 + 32) = -304;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v3 = *(result + 12);
    v4 = *(result + 56);
    v5 = *(result + 32);
    v6 = *(result + 48);
    result = VTCompressionSessionRemoteServer_MultiPassStorageCopyDataAtTimeStamp(v3, &v5, v4, (a2 + 28), (a2 + 52), (a2 + 56));
    if (!result)
    {
      *(a2 + 40) = *(a2 + 52);
      *(a2 + 44) = *MEMORY[0x1E69E99E0];
      *a2 |= 0x80000000;
      *(a2 + 4) = 60;
      *(a2 + 24) = 1;
      return result;
    }

    *(a2 + 32) = result;
  }

  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetNextPendingNotification_0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  v6 = 0;
  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_GetNextPendingNotification(result[3], (a2 + 52), (a2 + 56), (a2 + 72), (a2 + 28), &v6);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = v6;
  *(a2 + 40) = v6;
  v4 = *MEMORY[0x1E69E99E0];
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  result = strlen((a2 + 72));
  if ((result + 1) >> 32)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = v4;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 68) = result + 1;
    v5 = (result + 4) & 0xFFFFFFFC;
    *(a2 + v5 + 72) = v3;
    *a2 |= 0x80000000;
    *(a2 + 4) = v5 + 76;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t _XTileCreate_0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 3)
  {
    goto LABEL_18;
  }

  v5 = *(result + 4);
  if ((v5 - 629) < 0xFFFFFDFF)
  {
    goto LABEL_18;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || *(result + 67) != 1)
  {
    goto LABEL_17;
  }

  v6 = *(result + 112);
  v3 = -304;
  if (v6 > 0x200 || v5 - 116 < v6)
  {
    goto LABEL_18;
  }

  if (v5 != ((v6 + 3) & 0x7FC) + 116)
  {
    goto LABEL_2;
  }

  if (*(result + 52) != *(result + 100) || *(result + 68) != *(result + 104))
  {
LABEL_17:
    v3 = -300;
    goto LABEL_18;
  }

  result = memchr((result + 116), 0, v5 - 116);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_18:
    *(a2 + 32) = v3;
    goto LABEL_19;
  }

  v7 = ((v5 + 3) & 0x7FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_18;
  }

  *(a2 + 32) = 0x14000000000000;
  v8 = *(v4 + 12);
  v9 = *(v4 + 28);
  v10 = *(v4 + 96);
  v11 = *(v4 + 40);
  v12 = *(v4 + 52);
  v13 = *(v4 + 56);
  v14 = *(v4 + 68);
  v15 = *(v7 + 36);
  v16[0] = *(v7 + 20);
  v16[1] = v15;
  result = VTCompressionSessionRemoteServer_TileCreate(v8, v9, v16, *(v4 + 80), *(v4 + 88), v10, v11, v12, v13, v14, (v4 + 116), (a2 + 28), (a2 + 48), (a2 + 56), (a2 + 64));
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_19:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XPrepareToEncodeTiles(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_PrepareToEncodeTiles(result[3], result[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XEncodeTile(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 3 && *(result + 4) == 112)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 51) == 1 && *(result + 67) == 1)
    {
      v3 = *(result + 52);
      if (v3 == *(result + 80))
      {
        v4 = *(result + 68);
        if (v4 == *(result + 100))
        {
          result = VTCompressionSessionRemoteServer_EncodeTile(*(result + 12), *(result + 28), *(result + 40), v3, *(result + 84), *(result + 92), *(result + 56), v4, *(result + 104));
          *(a2 + 32) = result;
          return result;
        }
      }
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XCompleteTiles(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_CompleteTiles(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XMotionEstimationCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if ((v5 - 605) < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 88);
  v3 = -304;
  if (v6 > 0x200 || v5 - 92 < v6)
  {
    goto LABEL_3;
  }

  if (v5 != ((v6 + 3) & 0x7FC) + 92)
  {
    goto LABEL_2;
  }

  if (*(result + 52) != *(result + 80))
  {
LABEL_18:
    v3 = -300;
    goto LABEL_3;
  }

  result = memchr((result + 92), 0, v5 - 92);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    goto LABEL_4;
  }

  v7 = ((v5 + 3) & 0x7FC) + v4;
  if (*v7 || *(v7 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  *(a2 + 32) = 0x14000000000000;
  v8 = *(v4 + 12);
  v9 = *(v4 + 28);
  v10 = *(v4 + 64);
  v11 = *(v4 + 72);
  v12 = *(v4 + 76);
  v13 = *(v4 + 40);
  v14 = *(v4 + 52);
  v15 = *(v7 + 36);
  v16[0] = *(v7 + 20);
  v16[1] = v15;
  result = VTCompressionSessionRemoteServer_MotionEstimationCreate(v8, v9, v16, v10, v11, v12, v13, v14, (v4 + 92), (a2 + 28), (a2 + 48), (a2 + 56), (a2 + 64));
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_4:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XMotionEstimationCopySourcePixelBufferAttributes(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_MotionEstimationCopySourcePixelBufferAttributes(result[3], (a2 + 28), (a2 + 52), a2 + 56, a5, a6, a7, a8);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XEstimateMotion(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 4 && *(result + 4) == 112)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 51) == 1 && *(result + 66) << 16 == 1114112 && *(result + 79) == 1)
    {
      v3 = *(result + 52);
      if (v3 == *(result + 92))
      {
        v4 = *(result + 80);
        if (v4 == *(result + 96))
        {
          result = VTCompressionSessionRemoteServer_EstimateMotion(*(result + 12), *(result + 28), *(result + 40), v3, *(result + 56), *(result + 68), v4, *(result + 100));
          *(a2 + 32) = result;
          return result;
        }
      }
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XCompleteMotionEstimation(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_CompleteMotionEstimation(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XCopyTemporalFilterList(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = VTCompressionSessionRemoteServer_CopyTemporalFilterList(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XTemporalProcessFrame(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 3 && *(result + 4) == 120)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 51) == 1 && *(result + 67) == 1)
    {
      v3 = *(result + 52);
      if (v3 == *(result + 80))
      {
        v4 = *(result + 68);
        if (v4 == *(result + 108))
        {
          v5 = *(result + 12);
          v6 = *(result + 28);
          v7 = *(result + 40);
          v8 = *(result + 56);
          v10 = *(result + 84);
          v11 = *(result + 100);
          result = VTCompressionSessionRemoteServer_TemporalProcessFrame(v5, v6, v7, v3, &v10, v8, v4);
          *(a2 + 32) = result;
          return result;
        }
      }
    }

    v9 = -300;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XCompleteTemporalFilterFrames(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteServer_CompleteTemporalFilterFrames(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t VTCompressionSessionRemoteCallbackClient_FrameIsPending(mach_port_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E99E0];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18351;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
}

uint64_t VTCompressionSessionRemoteCallbackClient_EncodeReturn(mach_port_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v7 = *MEMORY[0x1E69E99E0];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18352;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
}

uint64_t VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(mach_port_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = a3;
  *&v4.msgh_bits = 19;
  v4.msgh_voucher_port = 0;
  v4.msgh_id = 18353;
  v4.msgh_remote_port = a1;
  v4.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v4);
  }

  return mach_msg(&v4, 1, 0x2Cu, 0, 0, 0, 0);
}

uint64_t VTCompressionSessionRemoteCallbackClient_PrepareToEncodeFramesReturn(mach_port_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = a3;
  *&v4.msgh_bits = 19;
  v4.msgh_voucher_port = 0;
  v4.msgh_id = 18354;
  v4.msgh_remote_port = a1;
  v4.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v4);
  }

  return mach_msg(&v4, 1, 0x2Cu, 0, 0, 0, 0);
}

uint64_t VTCompressionSessionRemoteCallbackClient_PrepareToEncodeTilesReturn(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18355;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
}

uint64_t (*vtcompressionsessioncallback_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 18356) >= 0xFFFFFFFA)
  {
    return VTCompressionSessionRemoteCallbackServer_vtcompressionsessioncallback_subsystem[5 * (v1 - 18350) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_XNotificationIsPending(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteCallbackServer_NotificationIsPending();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_XFrameIsPending(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteCallbackServer_FrameIsPending();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XEncodeReturn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteCallbackServer_EncodeReturn(*(result + 12), *(result + 32), *(result + 40), *(result + 44), *(result + 48));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XCompleteFramesReturn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteCallbackServer_CompleteFramesReturn(*(result + 12), *(result + 32), *(result + 40));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XPrepareToEncodeFramesReturn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteCallbackServer_PrepareToEncodeFramesReturn(*(result + 12), *(result + 32), *(result + 40));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XPrepareToEncodeTilesReturn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTCompressionSessionRemoteCallbackServer_PrepareToEncodeTilesReturn(*(result + 12), *(result + 32), *(result + 40), *(result + 48));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t vtcompressionsessioncallback_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 18356) >= 0xFFFFFFFA && (v5 = VTCompressionSessionRemoteCallbackServer_vtcompressionsessioncallback_subsystem[5 * (v4 - 18350) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t VTDecompressionSessionRemoteCallbackClient_FrameIsPending(mach_port_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E99E0];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18251;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
}

uint64_t VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(mach_port_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  v7 = *MEMORY[0x1E69E99E0];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18252;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x34u, 0, 0, 0, 0);
}

uint64_t VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(mach_port_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = a3;
  *&v4.msgh_bits = 19;
  v4.msgh_voucher_port = 0;
  v4.msgh_id = 18253;
  v4.msgh_remote_port = a1;
  v4.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v4);
  }

  return mach_msg(&v4, 2097153, 0x2Cu, 0, 0, 0, 0);
}

uint64_t (*vtdecompressionsessioncallback_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 18254) >= 0xFFFFFFFC)
  {
    return VTDecompressionSessionRemoteCallbackServer_vtdecompressionsessioncallback_subsystem[5 * (v1 - 18250) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_XNotificationIsPending_0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteCallbackServer_NotificationIsPending();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_XFrameIsPending_0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteCallbackServer_FrameIsPending();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XDecodeFrameReturn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteCallbackServer_DecodeFrameReturn(*(result + 12), *(result + 32), *(result + 40), *(result + 44), *(result + 48));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XFinishDelayedFramesReturn(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = VTDecompressionSessionRemoteCallbackServer_FinishDelayedFramesReturn(*(result + 12), *(result + 32), *(result + 40));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t vtdecompressionsessioncallback_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 18254) >= 0xFFFFFFFC && (v5 = VTDecompressionSessionRemoteCallbackServer_vtdecompressionsessioncallback_subsystem[5 * (v4 - 18250) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

__n128 VTConvertFloatRectToIntRect(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *a1;
      *(a2 + 32) = vcvtq_s64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(*(a1 + 16)))));
      v3 = vcvtq_s64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(*(a1 + 32)))));
      *a2 = result;
      *(a2 + 16) = v3;
    }
  }

  return result;
}

void VTPixelTransferChainAppendScalerNode(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53();
  VTPixelTransferNodeGetClassID();
  CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  OUTLINED_FUNCTION_52();
}

uint64_t VTPixelTransferNodeDynamicCopyProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a4 = 0;
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      result = CFDictionaryGetValue(*(DerivedStorage + 136), @"ServiceHistogramData");
      *a4 = result;
      if (result)
      {
        CFRetain(result);
        return 0;
      }
    }

    else
    {
      return 4294954396;
    }
  }

  return result;
}

size_t vtScale(void *a1, void *a2, void **a3, uint64_t a4, uint64_t (*a5)(void *, void *, void *, uint64_t), int a6)
{
  v12 = *a3;
  if (!v12)
  {
    result = a5(a1, a2, 0, a4 | 0x80);
    if (!result)
    {
      return result;
    }

    v12 = malloc_type_malloc(result, 0xB24146EEuLL);
    *a3 = v12;
    if (!v12)
    {
      return 4294954392;
    }
  }

  if (a6)
  {
    v14 = a1[3];
    v15 = *a1;
    v16 = a1[1];
    v17 = *a1 + v14;
    v29 = a1[2];
    v30 = 2 * v14;
    v31[2] = v29;
    v31[3] = 2 * v14;
    v31[0] = v15;
    v31[1] = (v16 + 1) >> 1;
    v28[0] = v17;
    v28[1] = v16 >> 1;
    v18 = a2[3];
    v19 = *a2;
    v20 = a2[1];
    v21 = *a2 + v18;
    v25 = a2[2];
    v26 = 2 * v18;
    v27[2] = v25;
    v27[3] = 2 * v18;
    v27[0] = v19;
    v27[1] = (v20 + 1) >> 1;
    v24[0] = v21;
    v24[1] = v20 >> 1;
    result = a5(v31, v27, v12, a4);
    if (result)
    {
      return result;
    }

    v12 = *a3;
    v22 = v28;
    v23 = v24;
  }

  else
  {
    v22 = a1;
    v23 = a2;
  }

  return a5(v22, v23, v12, a4);
}

size_t vt_ScaleCommon_Y_and_UVPlanes(__CVBuffer *a1, uint64_t a2, __CVBuffer *a3, int8x16_t *a4, uint64_t a5, int a6, int a7, int a8, void (*a9)(__CVBuffer *, int8x16_t *))
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CVPixelBufferGetPixelFormatType(a3);
  v17 = OUTLINED_FUNCTION_15();
  CVPixelBufferLockBaseAddress(v17, v18);
  v19 = OUTLINED_FUNCTION_17();
  CVPixelBufferLockBaseAddress(v19, v20);
  v21 = OUTLINED_FUNCTION_5();
  vt_SetupOrCleanupPlanarBuffers(v21, v22, v23, v24);
  vt_SetupOrCleanupPlanarBuffers(a3, a4, a5 + 128, 1);
  if (CVPixelBufferGetPixelFormatType(a1) == 1983000880)
  {
    v25 = OUTLINED_FUNCTION_6();
    vt_Copy_v210_10bitBiPlanarYUV422(v25, v26, v27);
  }

  OUTLINED_FUNCTION_10();
  v29 = MEMORY[0x1E6958A68];
  v116 = a4;
  if (!a7)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1();
  v29 = MEMORY[0x1E6958A70];
  if (v9 != v30)
  {
    goto LABEL_10;
  }

  v31 = MEMORY[0x1E6958A88];
  if (PixelFormatType != v30)
  {
    OUTLINED_FUNCTION_1();
    v29 = MEMORY[0x1E6958A70];
    if (v34)
    {
      v35 = 0;
      v36 = *(a5 + 224);
      do
      {
        memset(v36, 255, *(a5 + 240));
        v36 += *(a5 + 248);
        ++v35;
        OUTLINED_FUNCTION_1();
        v29 = MEMORY[0x1E6958A70];
      }

      while (v35 < v37);
    }

LABEL_10:
    v32 = v29;
    v31 = 0;
    v33 = 1;
    goto LABEL_11;
  }

  v32 = MEMORY[0x1E6958A70];
  v33 = 0;
  v28 = MEMORY[0x1E6958A88];
LABEL_11:
  v38 = vtScale(a5, (a5 + 128), (a5 + 256), a8 | 8u, v28, a6);
  if (v38 || (v38 = vtScale((a5 + 32), (a5 + 160), (a5 + 264), a8 | 8u, v32, a6), v38))
  {
    v39 = v38;
    v40 = v116;
  }

  else
  {
    if (v33)
    {
      v39 = 0;
    }

    else
    {
      v39 = vtScale((a5 + 96), (a5 + 224), (a5 + 256), a8 | 8u, v31, a6);
    }

    v40 = v116;
    if ((((v116[1].i32[0] + v116[2].i32[0]) ^ CVPixelBufferGetWidth(a3)) & 0xFFFFFFFE) == 0)
    {
      a9(a3, v116);
    }

    if (((v116[1].i32[2] + v116[2].i32[2]) ^ CVPixelBufferGetHeight(a3)) & 0xFFFFFFFE) == 0 && (CVPixelBufferGetHeight(a3))
    {
      v49 = OUTLINED_FUNCTION_17();
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v49, v50);
      v52 = OUTLINED_FUNCTION_35();
      if (HeightOfPlane != CVPixelBufferGetHeightOfPlane(v52, v53))
      {
        v54 = (v116[2].i64[0] & 0xFFFFFFFELL) << (a7 == 0);
        v55 = ((v116[2].i64[0] + v116[1].i32[0] - v54 + 1) & 0xFFFFFFFE) << (a7 == 0);
        v56 = OUTLINED_FUNCTION_17();
        v58 = CVPixelBufferGetHeightOfPlane(v56, v57);
        v59 = OUTLINED_FUNCTION_17();
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v59, v60);
        v62 = OUTLINED_FUNCTION_17();
        v112 = v58;
        v64 = CVPixelBufferGetBaseAddressOfPlane(v62, v63) + (v58 - 1) * BytesPerRowOfPlane + v54;
        v65 = OUTLINED_FUNCTION_17();
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v65, v66);
        v67 = OUTLINED_FUNCTION_35();
        __na = v55;
        if (&v64[v55] <= CVPixelBufferGetBaseAddressOfPlane(v67, v68))
        {
          memcpy(v64, &BaseAddressOfPlane[(v112 - 2) * BytesPerRowOfPlane + v54], v55);
        }

        v69 = OUTLINED_FUNCTION_35();
        v71 = CVPixelBufferGetHeightOfPlane(v69, v70);
        v72 = OUTLINED_FUNCTION_35();
        v74 = CVPixelBufferGetBytesPerRowOfPlane(v72, v73);
        v75 = OUTLINED_FUNCTION_35();
        v113 = v54;
        v77 = CVPixelBufferGetBaseAddressOfPlane(v75, v76) + (v71 - 1) * v74 + v54;
        v78 = OUTLINED_FUNCTION_35();
        CVPixelBufferGetBaseAddressOfPlane(v78, v79);
        if (CVPixelBufferGetPlaneCount(a3) == 2)
        {
          BaseAddress = CVPixelBufferGetBaseAddress(a3);
          v81 = &BaseAddress[CVPixelBufferGetDataSize(a3)];
          v40 = v116;
        }

        else
        {
          v89 = OUTLINED_FUNCTION_54();
          v81 = CVPixelBufferGetBaseAddressOfPlane(v89, v90);
        }

        if (&v77[__na] <= v81)
        {
          OUTLINED_FUNCTION_56(v81, v82, v83, v84, v85, v86, v87, v88, BaseAddressOfPlane, v54, __na);
        }

        if (CVPixelBufferGetPlaneCount(a3) == 3)
        {
          v91 = OUTLINED_FUNCTION_54();
          v93 = CVPixelBufferGetHeightOfPlane(v91, v92);
          v94 = OUTLINED_FUNCTION_54();
          v96 = CVPixelBufferGetBaseAddressOfPlane(v94, v95) + (v93 - 1) * v74 + v113;
          v97 = OUTLINED_FUNCTION_54();
          CVPixelBufferGetBaseAddressOfPlane(v97, v98);
          v99 = OUTLINED_FUNCTION_54();
          CVPixelBufferGetBytesPerRowOfPlane(v99, v100);
          v101 = CVPixelBufferGetBaseAddress(a3);
          DataSize = CVPixelBufferGetDataSize(a3);
          v110 = &v101[DataSize];
          v40 = v116;
          if (&v96[__na] <= v110)
          {
            OUTLINED_FUNCTION_56(DataSize, v103, v104, v105, v106, v107, v108, v109, BaseAddressOfPlane, v113, __na);
          }
        }
      }
    }

    if (CVPixelBufferGetPixelFormatType(a3) == 1983000880)
    {
      vt_Copy_10bitBiPlanarYUV422_v210((a5 + 128), a3, v40);
    }
  }

  v41 = OUTLINED_FUNCTION_6();
  vt_SetupOrCleanupPlanarBuffers(v41, v42, v43, 0);
  vt_SetupOrCleanupPlanarBuffers(a3, v40, a5 + 128, 0);
  v44 = OUTLINED_FUNCTION_26();
  CVPixelBufferUnlockBaseAddress(v44, v45);
  v46 = OUTLINED_FUNCTION_17();
  CVPixelBufferUnlockBaseAddress(v46, v47);
  return v39;
}

size_t vt_Scale_HalfFloat_Y_and_UVPlanes(__CVBuffer *a1, int8x16_t *a2, __CVBuffer *a3, int8x16_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v14 = CVPixelBufferGetPixelFormatType(a3);
  if (v14 == 1751527984)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v73 = v15;
  if (v14 == 1751527984 || v14 == 1751527986)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v72 = v17;
  if ((PixelFormatType & 0xFFFFFFFD) == 0x68663230)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (PixelFormatType == 1751527984)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = OUTLINED_FUNCTION_26();
  CVPixelBufferLockBaseAddress(v20, v21);
  v22 = OUTLINED_FUNCTION_17();
  CVPixelBufferLockBaseAddress(v22, v23);
  v24 = a2[2].i64[1];
  v25 = OUTLINED_FUNCTION_27();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v25, v26);
  v28 = a2[2].i64[0];
  v29 = OUTLINED_FUNCTION_27();
  v81 = CVPixelBufferGetBaseAddressOfPlane(v29, v30) + 2 * v28 + BytesPerRowOfPlane * v24;
  v82 = vextq_s8(a2[1], a2[1], 8uLL);
  v31 = OUTLINED_FUNCTION_27();
  v83 = CVPixelBufferGetBytesPerRowOfPlane(v31, v32);
  v33 = a2[2].i64[1];
  v34 = OUTLINED_FUNCTION_26();
  v36 = CVPixelBufferGetBytesPerRowOfPlane(v34, v35);
  v37 = a2[2].i64[0];
  v38 = OUTLINED_FUNCTION_26();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v38, v39);
  v41 = a2[1].i64[0];
  v42 = a2[1].i64[1] / v19;
  v80[0] = &BaseAddressOfPlane[4 * v37 + v36 * v33];
  v80[1] = v42;
  v80[2] = v41 / v18;
  v43 = OUTLINED_FUNCTION_26();
  v80[3] = CVPixelBufferGetBytesPerRowOfPlane(v43, v44);
  v45 = a4[2].i64[1];
  v46 = OUTLINED_FUNCTION_17();
  v48 = CVPixelBufferGetBytesPerRowOfPlane(v46, v47);
  v49 = a4[2].i64[0];
  v50 = OUTLINED_FUNCTION_17();
  v77 = CVPixelBufferGetBaseAddressOfPlane(v50, v51) + 2 * v49 + v48 * v45;
  v78 = vextq_s8(a4[1], a4[1], 8uLL);
  v52 = OUTLINED_FUNCTION_17();
  v79 = CVPixelBufferGetBytesPerRowOfPlane(v52, v53);
  v54 = a4[2].i64[1];
  v55 = OUTLINED_FUNCTION_35();
  v57 = CVPixelBufferGetBytesPerRowOfPlane(v55, v56);
  v58 = a4[2].i64[0];
  v59 = OUTLINED_FUNCTION_35();
  v61 = CVPixelBufferGetBaseAddressOfPlane(v59, v60) + 4 * v58 + v57 * v54;
  v62 = a4[1].i64[0];
  v63 = a4[1].i64[1] / v73;
  v76[0] = v61;
  v76[1] = v63;
  v76[2] = v62 / v72;
  v64 = OUTLINED_FUNCTION_35();
  v76[3] = CVPixelBufferGetBytesPerRowOfPlane(v64, v65);
  v66 = vtScale(&v81, &v77, (a5 + 256), a10 | 8u, MEMORY[0x1E6958A78], a6);
  if (!v66)
  {
    v66 = vtScale(v80, v76, (a5 + 264), a10 | 8u, MEMORY[0x1E6958A60], a6);
  }

  v67 = OUTLINED_FUNCTION_26();
  CVPixelBufferUnlockBaseAddress(v67, v68);
  v69 = OUTLINED_FUNCTION_17();
  CVPixelBufferUnlockBaseAddress(v69, v70);
  return v66;
}

size_t vt_Scale_101010_Together(__CVBuffer *a1, int8x16_t *a2, __CVBuffer *a3, int8x16_t *a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, int a10)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v16 = OUTLINED_FUNCTION_17();
  CVPixelBufferLockBaseAddress(v16, v17);
  v18 = a2[2].i64[1];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v20 = a2[2].i64[0];
  v21 = OUTLINED_FUNCTION_27();
  v43 = CVPixelBufferGetBaseAddressOfPlane(v21, v22) + 4 * v20 + BytesPerRow * v18;
  v44 = vextq_s8(a2[1], a2[1], 8uLL);
  v23 = OUTLINED_FUNCTION_27();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v23, v24);
  v25 = a4[2].i64[1];
  v26 = CVPixelBufferGetBytesPerRow(a3);
  v27 = a4[2].i64[0];
  v28 = OUTLINED_FUNCTION_17();
  v40 = CVPixelBufferGetBaseAddressOfPlane(v28, v29) + 4 * v27 + v26 * v25;
  v41 = vextq_s8(a4[1], a4[1], 8uLL);
  v30 = OUTLINED_FUNCTION_17();
  v42 = CVPixelBufferGetBytesPerRowOfPlane(v30, v31);
  v32 = vtScale(&v43, &v40, (a5 + 256), a10 | 8u, MEMORY[0x1E6958A98], a6);
  if (!v32)
  {
    scaleOrSetAlpha8(a1, a2, a3, a4, a5, a6, a7, a8, a10);
  }

  v33 = OUTLINED_FUNCTION_26();
  CVPixelBufferUnlockBaseAddress(v33, v34);
  v35 = OUTLINED_FUNCTION_17();
  CVPixelBufferUnlockBaseAddress(v35, v36);
  return v32;
}

size_t vt_Scale_floatARGB_Together(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  OUTLINED_FUNCTION_28(a1);
  v9 = OUTLINED_FUNCTION_17();
  CVPixelBufferLockBaseAddress(v9, v10);
  v11 = OUTLINED_FUNCTION_5();
  vt_SetupOrCleanupPlanarBuffers(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_5();
  vt_CopyToOrFromPlanarBuffers(v15, v16, v17, v18, v7);
  v19 = OUTLINED_FUNCTION_13();
  vt_SetupOrCleanupPlanarBuffers(v19, v20, v21, 1);
  v22 = vtScale(v6, (v6 + 128), (v6 + 256), v7 | 8, MEMORY[0x1E6958A58], a6);
  if (!v22)
  {
    v23 = OUTLINED_FUNCTION_11();
    vt_CopyToOrFromPlanarBuffers(v23, v24, v25, v26, v7);
  }

  v27 = OUTLINED_FUNCTION_6();
  vt_SetupOrCleanupPlanarBuffers(v27, v28, v29, 0);
  v30 = OUTLINED_FUNCTION_11();
  vt_SetupOrCleanupPlanarBuffers(v30, v31, v32, v33);
  v34 = OUTLINED_FUNCTION_26();
  CVPixelBufferUnlockBaseAddress(v34, v35);
  v36 = OUTLINED_FUNCTION_17();
  CVPixelBufferUnlockBaseAddress(v36, v37);
  return v22;
}

uint64_t VTPixelTransferSessionCreateScalingParameters(__CVBuffer *a1, unint64_t a2, unint64_t a3, __CFString *a4, __int128 *a5, __int128 *a6, const void *a7, const void *a8, uint64_t a9, void *a10, void *a11, CFDictionaryRef *a12, const __CFNumber **a13)
{
  v93 = 0;
  *v94 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v20 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D70], 0);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v81 = v20;
  vtBufferGetCleanRect(Width, Height, v20, &v94[1], v94, &v93 + 1, &v93, &v92 + 1, &v92);
  v23 = a5[1];
  v85 = *a5;
  v86 = v23;
  v87 = a5[2];
  v24 = vtBufferApplyCropToRect(&v85, SHIDWORD(v93), v93, SHIDWORD(v92), v92, &v93 + 1, &v93, &v92 + 1, &v92, &v88 + 1);
  if (v24 || (v25 = a2, CleanRect = vtBufferGetCleanRect(a2, a3, a7, &v91 + 1, &v91, &v90 + 1, &v90, &v89 + 1, &v89), v27 = a6[1], v85 = *a6, v86 = v27, v87 = a6[2], v24 = vtBufferApplyCropToRect(&v85, SHIDWORD(v90), v90, SHIDWORD(v89), v89, &v90 + 1, &v90, &v89 + 1, &v89, &v88), v24))
  {
    v58 = v24;
    goto LABEL_57;
  }

  if (v94[1] && v94[0] && HIDWORD(v91) && v91)
  {
    if (v94[1] != HIDWORD(v91) || v94[0] != v91)
    {
      vtRoundDimensionsToPixelBlockBoundary();
      vtRoundDimensionsToPixelBlockBoundary();
    }

    if (v88)
    {
      v29 = @"CropSourceToCleanAperture";
    }

    else
    {
      v29 = a4;
    }

    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = @"Normal";
    }

    if (CFEqual(v30, @"CropSourceToCleanAperture"))
    {
      if (CleanRect)
      {
        *a12 = CFRetain(a7);
      }

      if (a8)
      {
        *a13 = CFRetain(a8);
      }

      goto LABEL_53;
    }

    v31 = CFEqual(v30, @"Letterbox");
    if (v31)
    {
      v84 = 0.0;
      *&v85 = 0;
      v82 = 0.0;
      v83 = 0.0;
      v32 = OUTLINED_FUNCTION_59(v31, *MEMORY[0x1E6965EF8]);
      if (CleanRect)
      {
        *a12 = CFRetain(a7);
      }

      v34 = v92;
      v33 = HIDWORD(v92);
      vtBufferGetPixelAndPictureAspectRatio(v32, SHIDWORD(v92), v92, &v85, &v83);
      v35 = a8;
      if (a8)
      {
        v36 = a8;
      }

      else
      {
        v36 = v32;
      }

      v37 = HIDWORD(v89);
      v38 = v89;
      vtBufferGetPixelAndPictureAspectRatio(v36, SHIDWORD(v89), v89, &v84, &v82);
      if (a8 || (v35 = v32) != 0)
      {
        *a13 = CFRetain(v35);
      }

      if (v83 <= v82)
      {
        if (v83 >= v82 || (v52 = OUTLINED_FUNCTION_20(v37, *&v85 * (v38 * v33), v34, v84), v54 = vcvtmd_s64_f64(v52 + v53), v54 < 1))
        {
LABEL_51:
          if (v32)
          {
            CFRelease(v32);
          }

          goto LABEL_53;
        }

        HIDWORD(v90) += v54 >> 1;
        vtRoundDimensionsToPixelBlockBoundary();
        HIDWORD(v89) = v37 - v54;
      }

      else
      {
        v39 = OUTLINED_FUNCTION_20(v38, v84 * (v37 * v34), v33, *&v85);
        v41 = vcvtmd_s64_f64(v39 + v40);
        if (v41 < 1)
        {
          goto LABEL_51;
        }

        LODWORD(v90) = v90 + (v41 >> 1);
        vtRoundDimensionsToPixelBlockBoundary();
        LODWORD(v89) = v38 - v41;
      }

      vtRoundDimensionsToPixelBlockBoundary();
      goto LABEL_51;
    }

    v42 = CFEqual(v30, @"Trim");
    if (v42)
    {
      v84 = 0.0;
      *&v85 = 0;
      v82 = 0.0;
      v83 = 0.0;
      v32 = OUTLINED_FUNCTION_59(v42, *MEMORY[0x1E6965EF8]);
      if (CleanRect)
      {
        *a12 = CFRetain(a7);
      }

      v44 = v92;
      v43 = HIDWORD(v92);
      vtBufferGetPixelAndPictureAspectRatio(v32, SHIDWORD(v92), v92, &v85, &v83);
      v45 = a8;
      if (a8)
      {
        v46 = a8;
      }

      else
      {
        v46 = v32;
      }

      v47 = HIDWORD(v89);
      v48 = v89;
      vtBufferGetPixelAndPictureAspectRatio(v46, SHIDWORD(v89), v89, &v84, &v82);
      if (a8 || (v45 = v32) != 0)
      {
        *a13 = CFRetain(v45);
      }

      if (v83 <= v82)
      {
        if (v83 < v82)
        {
          v70 = OUTLINED_FUNCTION_20(v44, *&v85 * (v48 * v43), v47, v84);
          v72 = vcvtmd_s64_f64(v71 + v70 * v71);
          if (v72 >= 1)
          {
            LODWORD(v92) = v44 - 2 * v72;
            LODWORD(v93) = v93 + v72;
          }
        }
      }

      else
      {
        v49 = OUTLINED_FUNCTION_20(v43, v84 * (v47 * v44), v48, *&v85);
        v51 = vcvtmd_s64_f64(v50 + v49 * v50);
        if (v51 >= 1)
        {
          HIDWORD(v92) = v43 - 2 * v51;
          HIDWORD(v93) += v51;
        }
      }

      goto LABEL_51;
    }

    v63 = v94[0];
    v64 = v94[1];
    v65 = *(a5 + 2);
    v66 = *(a5 + 3);
    v67 = *(a5 + 4);
    v68 = *(a5 + 5);
    v69 = v67 < 1;
    if (v67 < 1)
    {
      v65 += v67;
      LODWORD(v67) = 0;
    }

    else
    {
      v64 = v94[1] - v67;
      if (v94[1] - v67 < 1)
      {
        goto LABEL_70;
      }
    }

    if (v68 < 1)
    {
      v66 += v68;
      LODWORD(v68) = 0;
    }

    else
    {
      v63 = v94[0] - v68;
      if (v94[0] - v68 < 1)
      {
LABEL_70:
        v58 = 4294954394;
        goto LABEL_57;
      }

      v69 = 0;
    }

    if (v65 < v64)
    {
      v73 = v65;
    }

    else
    {
      v73 = v64;
    }

    if (v66 < v63)
    {
      v74 = v66;
    }

    else
    {
      v74 = v63;
    }

    if (!v69 || (v66 >= v63 ? (v75 = v65 < v64) : (v75 = 1), v75))
    {
      if (a12)
      {
        vtBufferCreateScaledCleanRectFromCropCleanRect(v67, v68, v73, v74, SHIDWORD(v93), v93, SHIDWORD(v92), v92, v25, a3, a12);
      }

      if (!a13)
      {
        goto LABEL_92;
      }

      v76 = a13;
      v79 = a1;
      v77 = v73;
      v78 = v74;
    }

    else
    {
      if (a12)
      {
        vtBufferCreateScaledCleanRect(a1, v25, a3, a12);
      }

      if (!a13)
      {
        goto LABEL_92;
      }

      v76 = a13;
      v78 = v94[0];
      v77 = v94[1];
      v79 = a1;
    }

    vtBufferCreateScaledPixelAspectRatio(v79, v77, v78, v25, a3, v76);
LABEL_92:
    v93 = __PAIR64__(v67, v68);
    v92 = __PAIR64__(v73, v74);
    v90 = 0;
    v89 = v91;
  }

LABEL_53:
  if (a10)
  {
    v55 = v94[0];
    *a10 = v94[1];
    a10[1] = v55;
    v56 = v93;
    a10[4] = SHIDWORD(v93);
    a10[5] = v56;
    v57 = v92;
    a10[2] = SHIDWORD(v92);
    a10[3] = v57;
  }

  v58 = 0;
  if (a11)
  {
    v59 = v91;
    *a11 = SHIDWORD(v91);
    a11[1] = v59;
    v60 = v90;
    a11[4] = SHIDWORD(v90);
    a11[5] = v60;
    v61 = v89;
    a11[2] = SHIDWORD(v89);
    a11[3] = v61;
  }

LABEL_57:
  if (v81)
  {
    CFRelease(v81);
  }

  return v58;
}

uint64_t VTPixelTransferSessionFlush(uint64_t a1, CVOptionFlags a2)
{
  v4 = *(a1 + 32);
  if (!v4 || (result = VTPixelTransferChainFlush(v4, a2), !result))
  {
    result = *(a1 + 1160);
    if (result)
    {

      return VTMetalTransferSessionFlush(result, a2);
    }
  }

  return result;
}

void VTRequiresUnalignedBlackFill()
{
  OUTLINED_FUNCTION_53();
  if (v1 && v0)
  {
    Value = FigCFDictionaryGetValue();
    v3 = Value;
    if (Value && (v4 = CFGetTypeID(Value), v4 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v3);
      if (!Count)
      {
        goto LABEL_12;
      }
    }

    else
    {
      Count = 1;
    }

    for (i = 0; i != Count; ++i)
    {
      if (v3)
      {
        CFArrayGetValueAtIndex(v3, i);
      }

      FigCFDictionaryGetInt32IfPresent();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_52();
}

uint64_t vtPixelTransferAppendvImageBlitterNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a3 + 8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a1 + 5));
  v12 = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a2 + 5));
  cf = 0;
  v13 = (*(a6 + 26) & 3) != 0;
  CurrentDimensions = VTPixelTransferGraphGetCurrentDimensions(a1, a2, a3, a6, 0, &v23);
  if (CurrentDimensions || (CurrentDimensions = v10(*&v24, *(&v24 + 1), StringForIntegerCodePoint, v12, *(a6 + 136), *(a6 + 144), 0, &v22, &v21, a3 + 32, &v20), CurrentDimensions))
  {
    appended = CurrentDimensions;
    goto LABEL_6;
  }

  PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, v13, *&v24, *(&v24 + 1), &cf);
  v16 = cf;
  if (PixelBufferPoolAttributes)
  {
    appended = PixelBufferPoolAttributes;
    if (!cf)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  appended = VTPixelTransferChainAppendSoftwareNode(*a6, cf, 0, v21, v22, v20);
  v22 = 0;
  v16 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v16);
  }

LABEL_6:
  if (v20 && v22)
  {
    (v20)();
  }

  return appended;
}

uint64_t VTPixelTransferNodeSoftwareDoTransfer()
{
  v4 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_47(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v16[0], v16[1], v16[2]);
  VTConvertFloatRectToIntRect(v0, v15);
  return vtPixelTransferSession_InvokeBlitter(v3[3], v3[4], v3[5], v3 + 7, v3 + 8, v2, v1, v16, v15);
}

uint64_t VTPixelTransferNodeScalerDoTransfer()
{
  v4 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_47(v4, v5, v6, v7, v8, v9, v10, v11, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v18[0], v18[1], v18[2]);
  v12 = VTConvertFloatRectToIntRect(v0, v17);
  LOBYTE(v15) = *(v3 + 315);
  return (*(v3 + 24))(v2, v18, v1, v17, v3 + 32, *(v3 + 312), *(v3 + 313), *(v3 + 314), v12, v15, *(v3 + 320));
}

uint64_t VTPixelTransferNodeDynamicDoTransfer()
{
  if (*(OUTLINED_FUNCTION_44() + 24) || (OUTLINED_FUNCTION_60(), result = v0(), !result))
  {
    OUTLINED_FUNCTION_60();

    return v2();
  }

  return result;
}

uint64_t setBooleanPropertyWithDefault(const __CFBoolean *a1, int Value, _BYTE *a3, _BYTE *a4)
{
  if (!a3)
  {
    return 4294954394;
  }

  if (!a1 || *MEMORY[0x1E695E738] == a1)
  {
    goto LABEL_6;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    Value = CFBooleanGetValue(a1);
LABEL_6:
    if (Value == *a3)
    {
      return 0;
    }

    *a3 = Value;
    if (!a4)
    {
      return 0;
    }

    result = 0;
    *a4 = 1;
    return result;
  }

  return FigSignalErrorAtGM();
}

vImage_Error vt_VImage_Copy_420v_32ARGB()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_23(v0);
  v22 = v2 - (*(v1 + 32) & 1);
  v23 = v3;
  OUTLINED_FUNCTION_12();
  result = OUTLINED_FUNCTION_63();
  if ((v6 & 0x8000000000000000) == 0 && (v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_39();
    if (!v7)
    {
      return 4294945520;
    }

    result = OUTLINED_FUNCTION_22();
    if (v7 && (v9 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_38();
      if (!v7)
      {
        return 4294945520;
      }

      OUTLINED_FUNCTION_37();
      if (!v7)
      {
        return 4294945520;
      }

      return OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v18, *v19, v19[4], v20, v21, v22, v23, v24);
    }
  }

  return result;
}

vImage_Error vt_VImage_Copy_420v_32BGRA()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_23(v0);
  v22 = v2 - (*(v1 + 32) & 1);
  v23 = v3;
  OUTLINED_FUNCTION_12();
  result = OUTLINED_FUNCTION_63();
  if ((v6 & 0x8000000000000000) == 0 && (v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_39();
    if (!v7)
    {
      return 4294945520;
    }

    result = OUTLINED_FUNCTION_22();
    if (v7 && (v9 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_38();
      if (!v7)
      {
        return 4294945520;
      }

      OUTLINED_FUNCTION_37();
      if (!v7)
      {
        return 4294945520;
      }

      return OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v18, *v19, v19[4], v20, v21, v22, v23, v24);
    }
  }

  return result;
}

vImage_Error vt_VImage_Copy_420f_32BGRA()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_23(v0);
  v22 = v2 - (*(v1 + 32) & 1);
  v23 = v3;
  OUTLINED_FUNCTION_12();
  result = OUTLINED_FUNCTION_63();
  if ((v6 & 0x8000000000000000) == 0 && (v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_39();
    if (!v7)
    {
      return 4294945520;
    }

    result = OUTLINED_FUNCTION_22();
    if (v7 && (v9 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_38();
      if (!v7)
      {
        return 4294945520;
      }

      OUTLINED_FUNCTION_37();
      if (!v7)
      {
        return 4294945520;
      }

      return OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v18, *v19, v19[4], v20, v21, v22, v23, v24);
    }
  }

  return result;
}

vImage_Error vt_VImage_Copy_420f_32ARGB()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_23(v0);
  v22 = v2 - (*(v1 + 32) & 1);
  v23 = v3;
  OUTLINED_FUNCTION_12();
  result = OUTLINED_FUNCTION_63();
  if ((v6 & 0x8000000000000000) == 0 && (v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_39();
    if (!v7)
    {
      return 4294945520;
    }

    result = OUTLINED_FUNCTION_22();
    if (v7 && (v9 & 0x8000000000000000) == 0 && (v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_38();
      if (!v7)
      {
        return 4294945520;
      }

      OUTLINED_FUNCTION_37();
      if (!v7)
      {
        return 4294945520;
      }

      return OUTLINED_FUNCTION_18(v10, v11, v12, v13, v14, v15, v16, v17, v18, *v19, v19[4], v20, v21, v22, v23, v24);
    }
  }

  return result;
}

uint64_t vtPixelTransferSession_BuildChain(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v123 = *MEMORY[0x1E69E9840];
  v6 = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v7 = CVPixelBufferGetPixelFormatType(a3);
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v8 = *MEMORY[0x1E6965D70];
  v9 = OUTLINED_FUNCTION_57();
  key = *MEMORY[0x1E6965EF8];
  v102 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965EF8], 0);
  CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v109 = 0;
  value = 0;
  v107 = 0;
  v106 = 0;
  *(a1 + 1152) = 0;
  VTIsPixelBufferProtected(pixelBuffer);
  pixelBuffera = a3;
  VTIsPixelBufferProtected(a3);
  *(a1 + 1137) = 0;
  pixelFormatType = v6;
  *(a1 + 580) = v6;
  *(a1 + 584) = v7;
  v10 = *(a1 + 688);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 688) = 0;
  }

  v11 = *(a1 + 224);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 224) = 0;
  }

  v12 = *(a1 + 720);
  if (v12)
  {
    v12(*(a1 + 712));
    *(a1 + 712) = 0u;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  v14 = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    IOSurfaceGetID(IOSurface);
  }

  pixelFormat = v7;
  if (v14)
  {
    IOSurfaceGetID(v14);
  }

  *(a1 + 168) = 0;
  *(a1 + 588) = IOSurface != 0;
  *(a1 + 589) = v14 != 0;
  *(a1 + 176) = 0;
  v96 = (a1 + 168);
  *(a1 + 184) = 0;
  v15 = CVBufferCopyAttachments(pixelBuffera, kCVAttachmentMode_ShouldPropagate);
  v16 = CVBufferCopyAttachments(pixelBuffera, kCVAttachmentMode_ShouldNotPropagate);
  v17 = v16;
  if (v15)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    MutableCopy = 0;
    if (v16)
    {
LABEL_13:
      v19 = FigCFDictionaryCreateMutableCopy();
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v19 = 0;
  if (v15)
  {
LABEL_14:
    CFRelease(v15);
  }

LABEL_15:
  if (v17)
  {
    CFRelease(v17);
  }

  v20 = MEMORY[0x1E6965CE8];
  v97 = v8;
  v98 = v19;
  if ((!*(a1 + 1080) || !*(a1 + 1088)) && !*(a1 + 1008))
  {
    CVBufferPropagateAttachments(pixelBuffer, pixelBuffera);
    goto LABEL_37;
  }

  v21 = CVBufferCopyAttachments(pixelBuffer, kCVAttachmentMode_ShouldPropagate);
  v22 = *MEMORY[0x1E695E480];
  if (v21)
  {
    Mutable = CFDictionaryCreateMutableCopy(v22, 0, v21);
    CFDictionaryRemoveValue(Mutable, *v20);
    CFDictionaryRemoveValue(Mutable, *MEMORY[0x1E6965EC8]);
    CFDictionaryRemoveValue(Mutable, *MEMORY[0x1E6965D88]);
    CFDictionaryRemoveValue(Mutable, *MEMORY[0x1E6965F30]);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v24 = *(a1 + 1008);
  if (v24)
  {
    v25 = *MEMORY[0x1E6965EC8];
  }

  else
  {
    v26 = *(a1 + 1080);
    if (!v26 || !*(a1 + 1088))
    {
      goto LABEL_29;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v26);
    v25 = *MEMORY[0x1E6965F30];
    v24 = *(a1 + 1088);
  }

  CFDictionarySetValue(Mutable, v25, v24);
LABEL_29:
  CVBufferSetAttachments(pixelBuffera, Mutable, kCVAttachmentMode_ShouldPropagate);
  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_37:
  CVPixelBufferGetIOSurface(pixelBuffer);
  ProtectionOptions = IOSurfaceGetProtectionOptions();
  v28 = MEMORY[0x1E6965ED0];
  v101 = v9;
  if (!ProtectionOptions || (CVPixelBufferGetIOSurface(pixelBuffera), v29 = IOSurfaceSupportsProtectionOptions(), v29))
  {
    allocator = *MEMORY[0x1E695E480];
    v51 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
    v52 = MEMORY[0x1E6966290];
    v53 = MEMORY[0x1E69662B8];
    v54 = MEMORY[0x1E69662A0];
    if (v51)
    {
      v57 = v51;
      CFDictionaryGetValueIfPresent(v51, *MEMORY[0x1E6966290], &value);
      CFDictionaryGetValueIfPresent(v57, *v53, &v110);
      v55 = v54;
      CFDictionaryGetValueIfPresent(v57, *v54, &v109);
      FigCFDictionaryGetInt32IfPresent();
      v56 = *MEMORY[0x1E695E4D0];
      if (value && CFEqual(value, *MEMORY[0x1E695E4D0]))
      {
        v58 = 1;
        goto LABEL_100;
      }
    }

    else
    {
      v55 = MEMORY[0x1E69662A0];
      v56 = *MEMORY[0x1E695E4D0];
    }

    v58 = 0;
LABEL_100:
    *(a1 + 1138) = v58;
    v99 = FigCFEqual() || FigCFEqual();
    theDict = CVPixelFormatDescriptionCreateWithPixelFormatType(allocator, pixelFormatType);
    if (theDict)
    {
      CFDictionaryGetValueIfPresent(theDict, *v52, &value);
      CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E69662B8], &v110);
      CFDictionaryGetValueIfPresent(theDict, *v55, &v109);
      FigCFDictionaryGetInt32IfPresent();
    }

    v59 = value && CFEqual(value, v56);
    *(a1 + 1139) = v59;
    v62 = FigCFEqual() || FigCFEqual();
    v63 = *(a1 + 192);
    if (v63)
    {
      CFRelease(v63);
      *(a1 + 192) = 0;
    }

    v64 = *(a1 + 200);
    if (v64)
    {
      CFRelease(v64);
      *(a1 + 200) = 0;
    }

    v65 = OUTLINED_FUNCTION_57();
    v66 = OUTLINED_FUNCTION_45(v65, *MEMORY[0x1E6965F98]);
    v67 = VTCreateYCbCrCFStringsAndProvideDefaultsFromColorSpaceHint(v66, v62, *(a1 + 1072), v99, v65, 0, &v112, &v111);
    if (v65)
    {
      CFRelease(v65);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (*(a1 + 1188))
    {
      v68 = *(a1 + 1080);
      if (v68)
      {
        CFRelease(v68);
        *(a1 + 1080) = 0;
      }

      v67 = *(a1 + 1088);
      if (v67)
      {
        CFRelease(v67);
        *(a1 + 1088) = 0;
      }
    }

    *(a1 + 1188) = 0;
    v69 = pixelFormat == 1999843442 || pixelFormat == 1647534392;
    v70 = MEMORY[0x1E6965F50];
    if (v69 && !*(a1 + 1008) && !*(a1 + 1080) && !*(a1 + 1088))
    {
      *(a1 + 1188) = 1;
      v71 = *MEMORY[0x1E6965DB8];
      if (*MEMORY[0x1E6965DB8])
      {
        v71 = CFRetain(v71);
      }

      *(a1 + 1080) = v71;
      v67 = *v70;
      if (*v70)
      {
        v67 = CFRetain(v67);
      }

      *(a1 + 1088) = v67;
    }

    v72 = pixelFormatType == 1651521076 || pixelFormatType == 1647392369;
    if (v72 && (v73 = OUTLINED_FUNCTION_45(v67, *MEMORY[0x1E69661F8])) != 0)
    {
      CFRelease(v73);
      OUTLINED_FUNCTION_34();
      VTCreateColorAttachments(0, 0, v80, v81, 0, v82, pixelFormatType, 0, v84, v85, v86, v87, v88, *v89, v89[4], v90, v91);
    }

    else
    {
      v74 = OUTLINED_FUNCTION_57();
      v75 = OUTLINED_FUNCTION_45(v74, *MEMORY[0x1E6965EC8]);
      v76 = OUTLINED_FUNCTION_59(v75, *MEMORY[0x1E6965D88]);
      v77 = OUTLINED_FUNCTION_59(v76, *MEMORY[0x1E6965F30]);
      v78 = OUTLINED_FUNCTION_59(v77, *MEMORY[0x1E6965ED0]);
      OUTLINED_FUNCTION_34();
      VTCreateColorAttachments(v74, v75, v76, v77, v78, v79, pixelFormatType, 0, v84, v85, v86, v87, v88, *v89, v89[4], v90, v91);
      if (v74)
      {
        CFRelease(v74);
      }

      if (v75)
      {
        CFRelease(v75);
      }

      if (v76)
      {
        CFRelease(v76);
      }

      if (v77)
      {
        CFRelease(v77);
      }

      if (v78)
      {
        CFRelease(v78);
      }
    }

    VTCreateColorSpacesFromDictionaries(0, 0, &v107, &v106);
    CVBufferSetAttachments(pixelBuffera, 0, kCVAttachmentMode_ShouldPropagate);
    v83 = *(a1 + 776);
    if (!v83)
    {
      v83 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a1 + 776) = v83;
    }

    VTConvertToSessionPropertiesFromCVProperties(0, v83);
    VTRequiresMatrixChange(v112, v62, v111, v99);
    if (v107 && v106)
    {
      FigCFEqual();
    }

    FigRegisterIOSurfacePixelTransferCapability();
  }

  v30 = OUTLINED_FUNCTION_45(v29, *v20);
  v95 = OUTLINED_FUNCTION_45(v30, *MEMORY[0x1E6965EC8]);
  v94 = OUTLINED_FUNCTION_45(v95, *MEMORY[0x1E6965D88]);
  v31 = OUTLINED_FUNCTION_45(v94, *MEMORY[0x1E6965F30]);
  v32 = OUTLINED_FUNCTION_45(v31, *v28);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_62();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v30)
  {
    CFRelease(v30);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  CVBufferRemoveAllAttachments(pixelBuffera);
  CVBufferSetAttachments(pixelBuffera, MutableCopy, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachments(pixelBuffera, v98, kCVAttachmentMode_ShouldNotPropagate);
  if (*(a1 + 568) || *(a1 + 211) || *(a1 + 1016))
  {
    *(a1 + 572) = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v34 = v121;
    *(a1 + 592) = v120;
    *(a1 + 608) = v34;
    *(a1 + 624) = v122;
    *(a1 + 576) = CVPixelBufferGetPixelFormatType(pixelBuffera);
    v35 = v118;
    *(a1 + 640) = v117;
    *(a1 + 656) = v35;
    *(a1 + 672) = v119;
    *(a1 + 744) = 0;
  }

  else
  {
    v60 = *(a1 + 752);
    if (v60)
    {
      v61 = *(v60 + 64);
      if (v61)
      {
        v61(*(a1 + 760));
      }

      *(a1 + 752) = 0;
      *(a1 + 760) = 0;
    }
  }

  *(a1 + 1104) = 0;
  *(a1 + 1096) = 0;
  v36 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v36)
  {
    v37 = v36;
    if (*v96)
    {
      CFDictionarySetValue(v36, *MEMORY[0x1E6965D48], *v96);
    }

    v38 = *(a1 + 176);
    if (v38)
    {
      CFDictionarySetValue(v37, *MEMORY[0x1E6965D00], v38);
      CFDictionarySetValue(v37, *MEMORY[0x1E6965CF0], *(a1 + 176));
    }

    v39 = *(a1 + 192);
    if (v39)
    {
      CFDictionarySetValue(v37, v97, v39);
    }

    v40 = *(a1 + 200);
    if (v40)
    {
      CFDictionarySetValue(v37, key, v40);
    }

    if (*(a1 + 1138) && !*(a1 + 1139))
    {
      CFDictionarySetValue(v37, *MEMORY[0x1E6965CB8], *MEMORY[0x1E695E4D0]);
    }

    v41 = *(a1 + 1096);
    if (v41)
    {
      CFDictionaryGetValue(v41, *MEMORY[0x1E6965CE8]);
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_40();
    }

    v36 = *(a1 + 1112);
    if (v36)
    {
      CFRelease(v36);
    }

    *(a1 + 1112) = v37;
  }

  v42 = OUTLINED_FUNCTION_45(v36, *MEMORY[0x1E6965D88]);
  *(a1 + 952) = v42;
  v43 = OUTLINED_FUNCTION_45(v42, *MEMORY[0x1E6965F30]);
  *(a1 + 960) = v43;
  v44 = OUTLINED_FUNCTION_45(v43, *MEMORY[0x1E6965ED0]);
  *(a1 + 968) = v44;
  v45 = OUTLINED_FUNCTION_45(v44, *MEMORY[0x1E6965EC8]);
  *(a1 + 928) = v45;
  *(a1 + 944) = OUTLINED_FUNCTION_45(v45, *MEMORY[0x1E6965CE8]);
  v46 = *(a1 + 1008);
  if (v46)
  {
    v46 = CFRetain(v46);
  }

  *(a1 + 936) = v46;
  v47 = *(a1 + 1080);
  if (v47)
  {
    v47 = CFRetain(v47);
  }

  *(a1 + 984) = v47;
  v48 = *(a1 + 1088);
  if (v48)
  {
    v48 = CFRetain(v48);
  }

  *(a1 + 992) = v48;
  *(a1 + 976) = OUTLINED_FUNCTION_45(v48, *MEMORY[0x1E6965F98]);
  v49 = *(a1 + 1072);
  if (v49)
  {
    v49 = CFRetain(v49);
  }

  *(a1 + 1000) = v49;
  if (v112)
  {
    CFRelease(v112);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  ++*(a1 + 1224);
  if (v101)
  {
    CFRelease(v101);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  return 4294954391;
}

uint64_t vtPixelTransferSessionBuildChainFromBasicTransfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  HIDWORD(v60) = *(a1 + 1139);
  v67 = 0;
  if (*(a1 + 769))
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 786) != 0;
  }

  v11 = *(a1 + 608);
  v10 = *(a1 + 624);
  v12 = *(a1 + 672);
  v13 = *(a1 + 272);
  v14 = *(a1 + 248);
  v15 = *(a1 + 256);
  v16 = *(a1 + 264);
  v17 = *(a1 + 232);
  v61 = *(a1 + 240);
  v62 = v14;
  if (v17)
  {
    v63 = v12;
    v64 = v11;
    v65 = v10;
    v66 = v13;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v17);
    if (!v15 || (Width = v15, (Height = v16) == 0))
    {
      Width = CVPixelBufferGetWidth(*(a1 + 232));
      Height = CVPixelBufferGetHeight(*(a1 + 232));
    }

    VTPixelTransferChainCreatePixelBufferPoolAttributes(PixelFormatType, v9, Width, Height, &v67);
  }

  else
  {
    LODWORD(PixelFormatType) = 0;
  }

  v21 = *(a1 + 752);
  if (v21 && *(v21 + 56))
  {
    if (*(a1 + 768))
    {
      goto LABEL_13;
    }

    if ((*(a1 + 696) || *(a1 + 704)) && !*(a1 + 216))
    {
      if (*(a1 + 580) == PixelFormatType)
      {
        OUTLINED_FUNCTION_64();
        appended = OUTLINED_FUNCTION_33(v36, v37);
        if (!appended)
        {
          OUTLINED_FUNCTION_50();
          appended = VTPixelTransferChainAppendSoftwareNode(v38, 0, v39, v40, v41, v42);
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_50();
      appended = VTPixelTransferChainAppendSoftwareNode(v50, v51, v52, v53, v54, v55);
      if (appended)
      {
LABEL_23:
        v31 = appended;
        goto LABEL_25;
      }

LABEL_13:
      OUTLINED_FUNCTION_64();
      appended = vtPixelTransferChainAppendDynamicNode();
      goto LABEL_23;
    }
  }

  v23 = *(a1 + 696);
  if (v23)
  {
    if (!*(a1 + 216))
    {
      v24 = *(a1 + 704);
LABEL_24:
      VTPixelTransferChainAppendSoftwareNode(*(a1 + 32), 0, v23, v24, *(a1 + 712), *(a1 + 720));
      v31 = 0;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v24 = *(a1 + 704);
  if (v24)
  {
    if (!*(a1 + 216))
    {
      goto LABEL_24;
    }

LABEL_22:
    OUTLINED_FUNCTION_50();
    appended = VTPixelTransferChainAppendSoftwareNode(v25, v26, v27, v28, v29, v30);
    if (appended)
    {
      goto LABEL_23;
    }

    v56 = *(a1 + 32);
    v33 = *(a1 + 216);
LABEL_49:
    OUTLINED_FUNCTION_32(v56, v33, v23, v24, a5, a6, a7, a8, v57, v58, v59, v60, v61, v62, v63, *(&v63 + 1), v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1));
    goto LABEL_23;
  }

  if (!*(a1 + 1184))
  {
    v33 = *(a1 + 216);
    if (v33)
    {
      v56 = *(a1 + 32);
      goto LABEL_49;
    }
  }

  if (*(a1 + 1184))
  {
    if (v21 && *(v21 + 56))
    {
      if (*(a1 + 572) != PixelFormatType && *(a1 + 580) != PixelFormatType)
      {
        appended = VTPixelTransferChainAppendNode(*(a1 + 32), *(a1 + 1160));
        if (appended)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      }

      OUTLINED_FUNCTION_64();
      appended = OUTLINED_FUNCTION_33(v34, v35);
      if (appended)
      {
        goto LABEL_23;
      }

LABEL_54:
      appended = VTPixelTransferChainAppendNode(*(a1 + 32), *(a1 + 1160));
      goto LABEL_23;
    }

    v43 = *(a1 + 216);
    if (!v43)
    {
      goto LABEL_54;
    }

    if (*(a1 + 256) == *(a1 + 656) && *(a1 + 264) == *(a1 + 664))
    {
      OUTLINED_FUNCTION_32(*(a1 + 32), v43, 0, 0, a5, a6, a7, a8, v57, v58, v59, v60, v61, v62, v63, *(&v63 + 1), v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1));
      goto LABEL_54;
    }

    v31 = VTPixelTransferChainAppendNode(*(a1 + 32), *(a1 + 1160));
    if (!v31)
    {
      OUTLINED_FUNCTION_32(*(a1 + 32), *(a1 + 216), v44, v45, v46, v47, v48, v49, v57, v58, v59, v60, v61, v62, v63, *(&v63 + 1), v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1));
    }
  }

  else
  {
    v31 = 4294954391;
  }

LABEL_25:
  if (v67)
  {
    CFRelease(v67);
  }

  return v31;
}

vImage_Error vtVImageConverterProc(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = OUTLINED_FUNCTION_26();
  v12 = CVPixelBufferLockBaseAddress(v10, v11);
  if (v12)
  {
    return v12;
  }

  v13 = OUTLINED_FUNCTION_17();
  v15 = CVPixelBufferLockBaseAddress(v13, v14);
  if (v15)
  {
    v16 = v15;
    v19 = OUTLINED_FUNCTION_26();
  }

  else
  {
    srcs.data = CVPixelBufferGetBaseAddress(a1);
    srcs.height = Height;
    srcs.width = Width;
    srcs.rowBytes = BytesPerRow;
    v22.data = CVPixelBufferGetBaseAddress(a2);
    v22.height = Height;
    v22.width = Width;
    v22.rowBytes = v9;
    v16 = vImageConvert_AnyToAny(*(a3 + 8), &srcs, &v22, 0, 0);
    v17 = OUTLINED_FUNCTION_26();
    CVPixelBufferUnlockBaseAddress(v17, v18);
    v19 = OUTLINED_FUNCTION_17();
  }

  CVPixelBufferUnlockBaseAddress(v19, v20);
  return v16;
}

uint64_t vtCreateDynamicSession(uint64_t a1, CVPixelBufferRef pixelBuffer, OSType a3, int64x2_t *a4, CVPixelBufferRef a5, OSType a6, int64x2_t *a7, int a8, char a9, char a10, char a11, char a12, char *a13, _BYTE *a14, _BYTE *a15)
{
  buffer = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  if (pixelBuffer)
  {
    v23 = a5 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  v84 = 0;
  if (!pixelBuffer && a4)
  {
    if (CVPixelBufferGetPixelFormatType(a5) == a3)
    {
      if (!a5)
      {
        v27 = 0;
        v34 = 0;
        v30 = 0;
LABEL_43:
        pixelBuffera = v34;
        v38 = a4[1];
        v85 = *a4;
        v86 = v38;
        v39 = a4[2];
LABEL_48:
        v87 = v39;
        v78 = 1;
        a8 = 1;
        goto LABEL_49;
      }

      v25 = CFRetain(a5);
      v26 = v25;
      if (v25)
      {
        v27 = CFRetain(v25);
      }

      else
      {
        v27 = 0;
      }

LABEL_42:
      v30 = CFRetain(a5);
      v34 = v26;
      goto LABEL_43;
    }

    v31 = vtCreateIntermediatePixelBuffer(a5, a3, a4, 4, &buffer);
    if (!v31)
    {
      v32 = buffer;
      if (buffer && ((v33 = *(a1 + 1104)) == 0 || (CVBufferSetAttachments(buffer, v33, kCVAttachmentMode_ShouldPropagate), (v32 = buffer) != 0)))
      {
        v27 = CFRetain(v32);
      }

      else
      {
        v27 = 0;
      }

      v26 = 0;
      v34 = 0;
      v30 = 0;
      if (!a5)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_138:
    v55 = v31;
    v54 = 0;
    v46 = 0;
    goto LABEL_94;
  }

  if (!a5 && a7)
  {
    if (CVPixelBufferGetPixelFormatType(pixelBuffer) == a6)
    {
      if (pixelBuffer)
      {
        v28 = CFRetain(pixelBuffer);
        v29 = v28;
        if (v28)
        {
          v30 = CFRetain(v28);
        }

        else
        {
          v30 = 0;
        }

LABEL_46:
        v27 = CFRetain(pixelBuffer);
        v37 = v29;
        goto LABEL_47;
      }

      v30 = 0;
      v37 = 0;
      v27 = 0;
    }

    else
    {
      v31 = vtCreateIntermediatePixelBuffer(pixelBuffer, a6, a7, 4, &buffer);
      if (v31)
      {
        goto LABEL_138;
      }

      v35 = buffer;
      if (buffer && ((v36 = *(a1 + 1096)) == 0 || (CVBufferSetAttachments(buffer, v36, kCVAttachmentMode_ShouldPropagate), (v35 = buffer) != 0)))
      {
        v30 = CFRetain(v35);
      }

      else
      {
        v30 = 0;
      }

      v29 = 0;
      v37 = 0;
      v27 = 0;
      if (pixelBuffer)
      {
        goto LABEL_46;
      }
    }

LABEL_47:
    pixelBuffera = v37;
    v40 = a7[1];
    v85 = *a7;
    v86 = v40;
    v39 = a7[2];
    goto LABEL_48;
  }

  if (!pixelBuffer)
  {
    v27 = 0;
    if (a5)
    {
      goto LABEL_21;
    }

LABEL_36:
    pixelBuffera = 0;
    v30 = 0;
    v78 = 1;
    goto LABEL_49;
  }

  v27 = CFRetain(pixelBuffer);
  if (!a5)
  {
    goto LABEL_36;
  }

LABEL_21:
  v78 = v24;
  v30 = CFRetain(a5);
  pixelBuffera = 0;
LABEL_49:
  v41 = a4[1];
  v92 = *a4;
  v74 = a7;
  v75 = a4;
  v93 = vcvtq_f64_s64(a4[2]);
  v94 = vcvtq_f64_s64(v41);
  v42 = a7[1];
  v43 = vcvtq_f64_s64(a7[2]);
  v89 = *a7;
  v90 = v43;
  v80 = *(a1 + 776);
  v82 = (a1 + 752);
  v83 = v30;
  v44 = *(a1 + 752);
  v45 = v44 == 0;
  if (v44)
  {
    v46 = *(a1 + 752);
  }

  else
  {
    v46 = gVTPixelTransferServiceList;
  }

  v91 = vcvtq_f64_s64(v42);
  if (!(v30 | v27) || !v46)
  {
LABEL_81:
    v46 = 0;
    v50 = pixelBuffera;
    v51 = (a1 + 752);
    goto LABEL_82;
  }

  v79 = *MEMORY[0x1E695E480];
  while (1)
  {
    if (!vtPixelTransferServiceNodeMatchesSourceAndDestinationPixelFormats(v46, a3, a6) || a8 && (*(v46 + 32) & 1) == 0)
    {
      goto LABEL_75;
    }

    if (a9 && (*(v46 + 32) & 2) == 0)
    {
      goto LABEL_75;
    }

    if (a11 && (*(v46 + 32) & 0x10) == 0)
    {
      goto LABEL_75;
    }

    if (a12 && (*(v46 + 32) & 0x40) == 0)
    {
      goto LABEL_75;
    }

    if (!a10 && (*(v46 + 32) & 8) != 0)
    {
      goto LABEL_75;
    }

    v47 = *(v46 + 40);
    if (v47)
    {
      if (!v47(v27, v30))
      {
        goto LABEL_75;
      }
    }

    if (v44)
    {
      break;
    }

LABEL_73:
    if (!(*(v46 + 48))(v79, v80, v27, &v92, v30, &v89, &v84))
    {
      v51 = (a1 + 752);
      goto LABEL_107;
    }

    FigSignalErrorAtGM();
LABEL_75:
    v49 = (v46 + 72);
    if (!v45)
    {
      v49 = &gVTPixelTransferServiceList;
    }

    v46 = *v49;
    if (*v49)
    {
      if (v46 == v44)
      {
        v46 = *(v46 + 72);
      }

      v45 = 1;
      if (v46)
      {
        continue;
      }
    }

    goto LABEL_81;
  }

  if (v46 != v44)
  {
    v48 = *(v44 + 64);
    if (v48)
    {
      v48(*(a1 + 760));
    }

    *v82 = 0;
    *(a1 + 760) = 0;
    goto LABEL_73;
  }

  v84 = *(a1 + 760);
  v51 = (a1 + 752);
  *v82 = 0;
  *(a1 + 760) = 0;
LABEL_107:
  v59 = v78;
  if (buffer)
  {
    v59 = 0;
  }

  v56 = v30;
  v53 = v27;
  v50 = pixelBuffera;
  if (v59 != 1)
  {
    goto LABEL_118;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffera);
  v61 = vtCreateIntermediatePixelBuffer(pixelBuffera, PixelFormatType, &v85, *(v46 + 32), &buffer);
  if (v61)
  {
    v55 = v61;
    v54 = 0;
  }

  else if (pixelBuffer)
  {
    if (a5)
    {
      goto LABEL_82;
    }

    v62 = *(v46 + 40);
    if (!v62)
    {
      goto LABEL_82;
    }

    v53 = v27;
    if (!v62(v27, buffer))
    {
      goto LABEL_82;
    }

LABEL_118:
    v64 = *(v46 + 56);
    if (v64)
    {
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      if (v75)
      {
        v65 = v75[1];
        v92 = *v75;
        v66 = v75[2];
        goto LABEL_121;
      }

      if (pixelBuffer)
      {
        v92.i64[0] = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        v93 = 0uLL;
        v92.i64[1] = Height;
        v94.f64[0] = v92.i64[0];
        v94.f64[1] = Height;
        v64 = *(v46 + 56);
      }

      else
      {
        v65 = v86;
        v92 = v85;
        v66 = v87;
LABEL_121:
        v93 = vcvtq_f64_s64(v66);
        v94 = vcvtq_f64_s64(v65);
      }

      v68 = v74[1];
      v69 = vcvtq_f64_s64(v74[2]);
      v89 = *v74;
      v90 = v69;
      v91 = vcvtq_f64_s64(v68);
      if (v64(v84, *(a1 + 776), v53, &v92, v83, &v89))
      {
        FigSignalErrorAtGM();
        goto LABEL_82;
      }

      if (a15)
      {
        *a15 = 1;
      }
    }

    *(a1 + 752) = v46;
    *(a1 + 760) = v84;
    v84 = 0;
    if (v78)
    {
      *(a1 + 768) = 0;
      v70 = *(a1 + 232);
      v71 = buffer;
      *(a1 + 232) = buffer;
      if (v71)
      {
        CFRetain(v71);
      }

      if (v70)
      {
        CFRelease(v70);
      }

      v46 = 0;
      v55 = 0;
      v72 = v86;
      *(a1 + 240) = v85;
      *(a1 + 256) = v72;
      *(a1 + 272) = v87;
      v54 = 1;
    }

    else
    {
      v73 = *(a1 + 232);
      if (v73)
      {
        CFRelease(v73);
        *(a1 + 232) = 0;
      }

      v46 = 0;
      v55 = 0;
      v54 = 1;
      *(a1 + 768) = 1;
      *(a1 + 568) = 1;
    }
  }

  else
  {
    v63 = *(v46 + 40);
    if (v63 && v63(buffer, v83))
    {
      goto LABEL_118;
    }

LABEL_82:
    if (*v51)
    {
      v52 = *(*v51 + 64);
      v53 = v27;
      if (v52)
      {
        v52(*(a1 + 760));
      }

      v54 = 0;
      v55 = 0;
      *v51 = 0;
      v51[1] = 0;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v53 = v27;
    }

    v56 = v83;
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v50)
  {
    CFRelease(v50);
  }

LABEL_94:
  if (buffer)
  {
    CFRelease(buffer);
  }

  if (v46)
  {
    (*(v46 + 64))(v84);
  }

  if (a13)
  {
    *a13 = v54;
  }

  v57 = v54 ^ 1;
  if (!a14)
  {
    v57 = 1;
  }

  if ((v57 & 1) == 0)
  {
    *a14 = 1;
  }

  return v55;
}

unint64_t vtBuildMetalSession(__CVBuffer *a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, int a5, const __CFDictionary *a6, void *a7, int a8, __CFDictionary **a9)
{
  v30 = 0;
  cf = 0;
  v9 = 4294954394;
  if (!a1 || !a3)
  {
    goto LABEL_34;
  }

  if (!CVPixelBufferGetIOSurface(a1) || !CVPixelBufferGetIOSurface(a3))
  {
    v9 = 4294954391;
    goto LABEL_34;
  }

  if (a6)
  {
    CFDictionaryApplyFunction(a6, sessionPropertyApplier, a7);
  }

  PixelBufferDescription = VTMetalTransferSessionCreatePixelBufferDescription(a1, &cf);
  if (PixelBufferDescription || (PixelBufferDescription = VTMetalTransferSessionCreatePixelBufferDescription(a3, &v30), PixelBufferDescription))
  {
    v9 = PixelBufferDescription;
    goto LABEL_34;
  }

  if (a2)
  {
    v19 = *MEMORY[0x1E695E480];
    v20 = MEMORY[0x1E695E9D8];
    v21 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = CFDictionaryCreateMutable(v19, 0, v20, v21);
    FigCFDictionarySetCFIndex();
    FigCFDictionarySetCFIndex();
    FigCFDictionarySetCFIndex();
    FigCFDictionarySetCFIndex();
    CFDictionarySetValue(v23, @"SourceAmendments", Mutable);
    if (a4)
    {
LABEL_11:
      v24 = *MEMORY[0x1E695E480];
      v25 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v26 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v23)
      {
        v23 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      FigCFDictionarySetCFIndex();
      FigCFDictionarySetCFIndex();
      FigCFDictionarySetCFIndex();
      FigCFDictionarySetCFIndex();
      CFArraySetValueAtIndex(v25, 0, v26);
      CFDictionarySetValue(v23, @"DestinationAmendments", v25);
      goto LABEL_17;
    }
  }

  else
  {
    v23 = 0;
    Mutable = 0;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
  v26 = 0;
LABEL_17:
  v27 = *MEMORY[0x1E695E4D0];
  if (a5)
  {
    v28 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v28 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(a7, @"WriteBlackPixelsOutsideDestRect", v28);
  if (a8)
  {
    if (!v23)
    {
      v23 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    CFDictionarySetValue(v23, @"SetGPUPriorityLow", v27);
  }

  v9 = VTMetalTransferSessionConfigureForSourceAndDest(a7, cf, v30, v23);
  if (!v9)
  {
    *a9 = v23;
    v23 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v9;
}

uint64_t vtPixelTransferSession_BuildColorCorrector(__CVBuffer *a1, OSType a2, CGColorSpace *a3, const __CFDictionary *a4, const __CFDictionary *a5, char a6, __CVBuffer *a7, OSType a8, uint64_t a9, CFDictionaryRef a10, const __CFDictionary *a11, char a12, char a13, char a14, void *a15, unsigned __int8 a16, const __CFDictionary *a17, __CFDictionary **a18, _BYTE *a19, const __CFDictionary *a20, __int16 a21, int *a22, void *a23, void *a24, void (**a25)(uint64_t), CFTypeRef *a26, CFTypeRef *a27, CVPixelBufferRef *a28, CVPixelBufferRef *a29, VTPixelTransferSessionRef *a30, VTPixelTransferSessionRef *a31)
{
  v34 = a31;
  v35 = a28;
  v36 = a22;
  v123[1] = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v38 = CVPixelBufferGetPixelFormatType(a7);
  v119 = 0;
  v120 = 0;
  v117 = 0;
  pixelTransferSessionOut = 0;
  v116 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v113 = 0;
  cf = 0;
  *a28 = 0;
  *a29 = 0;
  *a30 = 0;
  *a31 = 0;
  if (!a22 || *a22 == 4)
  {
    v39 = 0;
    Mutable = 0;
    v41 = 0;
    goto LABEL_121;
  }

  v42 = v38;
  if (PixelFormatType == a2 || v38 == a8)
  {
    OUTLINED_FUNCTION_55();
    v39 = 0;
    goto LABEL_39;
  }

  if (a13 && VTMetalTransferSessionCanTransfer(a2, a8, 0))
  {
    v121 = 0;
    v44 = a1;
    v45 = CVPixelBufferGetPixelFormatType(a1);
    v46 = CVPixelBufferGetPixelFormatType(a7);
    pixelBufferOut = 0;
    v123[0] = 0;
    if (v45 == a2)
    {
      if (!CVPixelBufferGetIOSurface(a1))
      {
        goto LABEL_146;
      }

      p_pixelBufferOut = &pixelBufferOut;
    }

    else
    {
      Width = CVPixelBufferGetWidth(a7);
      Height = CVPixelBufferGetHeight(a7);
      v50 = vtCreatePixelBuffer(a2, Width, Height, 1, &pixelBufferOut);
      v44 = pixelBufferOut;
      if (v50)
      {
        OUTLINED_FUNCTION_55();
        v34 = a31;
        if (!v44)
        {
LABEL_30:
          if (v123[0])
          {
            CFRelease(v123[0]);
          }

          goto LABEL_32;
        }

LABEL_29:
        CFRelease(v44);
        goto LABEL_30;
      }

      p_pixelBufferOut = v123;
    }

    if (v46 == a8)
    {
      v51 = a7;
      if (!CVPixelBufferGetIOSurface(a7))
      {
        goto LABEL_146;
      }

LABEL_23:
      v54 = vtBuildMetalSession(v44, 0, v51, 0, 1, a17, a15, a16, &v121);
      v55 = v121;
      if (v54 || VTMetalTransferSessionTransferImageSync(a15, v44, v51, v121))
      {
        OUTLINED_FUNCTION_55();
      }

      else
      {
        v119 = v123[0];
        v120 = pixelBufferOut;
        pixelBufferOut = 0;
        v123[0] = 0;
        v35 = 1;
        v104 = v55;
      }

      v36 = a22;
      v34 = a31;
      if (v55)
      {
        CFRelease(v55);
      }

LABEL_28:
      v44 = pixelBufferOut;
      if (!pixelBufferOut)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v52 = CVPixelBufferGetWidth(a7);
    v53 = CVPixelBufferGetHeight(a7);
    if (!vtCreatePixelBuffer(a8, v52, v53, 1, p_pixelBufferOut))
    {
      v51 = *p_pixelBufferOut;
      goto LABEL_23;
    }

LABEL_146:
    OUTLINED_FUNCTION_55();
    v36 = a22;
    v34 = a31;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_55();
LABEL_32:
  v39 = 0;
  if (a14 && !v35)
  {
    v39 = VTPixelBlitterColorHandlingOptimized_setup(a2, a5, a8, a11, a20, a21, HIBYTE(a21), &v113, &v114, &cf, &v112);
    if (v39)
    {
      if (v112)
      {
        v112(v113);
      }

      v35 = 0;
      v113 = 0;
      v114 = 0;
      cf = 0;
      v112 = 0;
    }

    else
    {
      v35 = 0;
    }
  }

LABEL_39:
  v103 = v35;
  if (v35 || v114)
  {
    v116 = __PAIR64__(a2, a8);
  }

  else
  {
    vtPixelTransferSession_chooseColorCorrectionFormat(PixelFormatType, &v116 + 1, a6, 1);
    vtPixelTransferSession_chooseColorCorrectionFormat(v42, &v116, a12, 0);
    if (v120)
    {
      CFRelease(v120);
      v120 = 0;
    }

    if (v119)
    {
      CFRelease(v119);
      v119 = 0;
    }
  }

  v56 = v116;
  if (v42 == v116)
  {
    if (v120)
    {
      if (CVPixelBufferGetPixelFormatType(v120) == v42)
      {
        goto LABEL_63;
      }

      if (v120)
      {
        CFRelease(v120);
        v120 = 0;
      }
    }

    v57 = CVPixelBufferGetWidth(a7);
    v58 = CVPixelBufferGetHeight(a7);
    CVPixelBufferGetIOSurface(a7);
    OUTLINED_FUNCTION_51();
    v39 = vtCreatePixelBuffer(v42, v57, v58, v59, v60);
    if (v39)
    {
      v41 = 0;
      Mutable = 0;
      v61 = v104;
      goto LABEL_115;
    }

LABEL_63:
    Mutable = 0;
    v68 = 2;
    if (!a3)
    {
      v41 = 0;
      v61 = v104;
      goto LABEL_113;
    }

    v61 = v104;
    if (a9)
    {
      if (FigCFEqual())
      {
        Mutable = 0;
        v41 = 0;
        v68 = 2;
        goto LABEL_113;
      }

      if (a14 && !v103 && !v114)
      {
        v39 = VTCreateVImageConverter(v42, a3, v42, a9, &v115);
      }

      Mutable = 0;
      if (!v39)
      {
        v68 = 2;
        goto LABEL_112;
      }

LABEL_110:
      v41 = 0;
      goto LABEL_115;
    }

LABEL_112:
    v41 = 0;
    goto LABEL_113;
  }

  v62 = v34;
  v63 = HIDWORD(v116);
  if (PixelFormatType != HIDWORD(v116))
  {
    v69 = a3;
    if (a3 && a9 && (v70 = FigCFEqual(), v69 = a3, !v70) || v63 != v56)
    {
      if (a14 && !v35 && !v114)
      {
        v71 = VTCreateVImageConverter(v63, v69, v56, a9, &v115);
        v69 = a3;
        v39 = v71;
      }

      if (v39)
      {
        goto LABEL_95;
      }
    }

    v72 = (v69 | a9) == 0;
    v73 = v63 == v56;
    v74 = v72 && v73;
    if (v72 && v73)
    {
      v75 = 5;
    }

    else
    {
      v75 = 3;
    }

    v110 = v75;
    if (v120)
    {
      if (CVPixelBufferGetPixelFormatType(v120) == v63)
      {
        goto LABEL_84;
      }

      if (v120)
      {
        CFRelease(v120);
        v120 = 0;
      }
    }

    v76 = v36;
    v77 = CVPixelBufferGetWidth(a7);
    v78 = CVPixelBufferGetHeight(a7);
    CVPixelBufferGetIOSurface(a1);
    OUTLINED_FUNCTION_51();
    v79 = v77;
    v36 = v76;
    v82 = vtCreatePixelBuffer(v63, v79, v78, v80, v81);
    if (v82)
    {
      goto LABEL_94;
    }

LABEL_84:
    if (!v74)
    {
      if (!v119)
      {
        goto LABEL_89;
      }

      if (CVPixelBufferGetPixelFormatType(v119) != v56)
      {
        if (v119)
        {
          CFRelease(v119);
          v119 = 0;
        }

LABEL_89:
        v83 = CVPixelBufferGetWidth(a7);
        v84 = v36;
        v85 = CVPixelBufferGetHeight(a7);
        v86 = CVPixelBufferGetIOSurface(a7) != 0;
        v87 = v85;
        v36 = v84;
        v82 = vtCreatePixelBuffer(v56, v83, v87, v86, &v119);
        if (!v82)
        {
          goto LABEL_90;
        }

LABEL_94:
        v39 = v82;
LABEL_95:
        v41 = 0;
        Mutable = 0;
        goto LABEL_96;
      }
    }

LABEL_90:
    v88 = *MEMORY[0x1E695E480];
    v82 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
    if (!v82)
    {
      v82 = VTSessionSetProperties(pixelTransferSessionOut, a4);
      if (!v82)
      {
        v82 = VTPixelTransferSessionCreate(v88, &v117);
        if (!v82)
        {
          v82 = VTSessionSetProperties(v117, a10);
          if (!v82)
          {
            v90 = OUTLINED_FUNCTION_17();
            Mutable = CFDictionaryCreateMutable(v90, v91, v92, v93);
            v94 = VTConvertToSessionPropertiesFromCVProperties(a5, Mutable);
            if (v94 || (v94 = VTSessionSetProperties(pixelTransferSessionOut, Mutable), v94))
            {
              v39 = v94;
              v41 = 0;
            }

            else
            {
              if (!_VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, v120))
              {
                v61 = v104;
                v95 = OUTLINED_FUNCTION_17();
                v41 = CFDictionaryCreateMutable(v95, v96, v97, v98);
                v99 = VTConvertToSessionPropertiesFromCVProperties(a11, v41);
                if (v99 || (v99 = VTSessionSetProperties(v117, v41), v99))
                {
                  v39 = v99;
                  goto LABEL_115;
                }

                if (v74)
                {
                  v100 = v117;
                  v101 = v120;
                }

                else
                {
                  v102 = v120;
                  if (!v120)
                  {
                    v102 = a1;
                  }

                  CVBufferPropagateAttachments(v102, v119);
                  CVBufferRemoveAttachment(v119, *MEMORY[0x1E6965CE8]);
                  CVBufferSetAttachments(v119, a11, kCVAttachmentMode_ShouldPropagate);
                  v100 = v117;
                  v101 = v119;
                }

                if (_VTPixelTransferSessionTransferImage(v100, v101, a7))
                {
                  v39 = 4294955084;
                  goto LABEL_115;
                }

                v39 = 0;
                v34 = v62;
                v68 = v110;
                goto LABEL_113;
              }

              v41 = 0;
              v39 = 4294955084;
            }

LABEL_96:
            v61 = v104;
            goto LABEL_115;
          }
        }
      }
    }

    goto LABEL_94;
  }

  v34 = v62;
  if (v120)
  {
    if (CVPixelBufferGetPixelFormatType(v120) == PixelFormatType)
    {
      goto LABEL_59;
    }

    if (v120)
    {
      CFRelease(v120);
      v120 = 0;
    }
  }

  v64 = CVPixelBufferGetWidth(a1);
  v65 = CVPixelBufferGetHeight(a1);
  CVPixelBufferGetIOSurface(a1);
  OUTLINED_FUNCTION_51();
  v39 = vtCreatePixelBuffer(PixelFormatType, v64, v65, v66, v67);
  if (v39)
  {
    goto LABEL_95;
  }

LABEL_59:
  Mutable = 0;
  v68 = 1;
  if (!a3)
  {
    v41 = 0;
    v61 = v104;
    goto LABEL_113;
  }

  v61 = v104;
  if (!a9)
  {
    goto LABEL_112;
  }

  if (!FigCFEqual())
  {
    if (a14 && !v103 && !v114)
    {
      v39 = VTCreateVImageConverter(PixelFormatType, a3, PixelFormatType, a9, &v115);
    }

    Mutable = 0;
    if (!v39)
    {
      v68 = 1;
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  Mutable = 0;
  v41 = 0;
  v68 = 1;
LABEL_113:
  *a28 = v120;
  *a29 = v119;
  v119 = 0;
  v120 = 0;
  *a30 = pixelTransferSessionOut;
  *v34 = v117;
  v117 = 0;
  pixelTransferSessionOut = 0;
  *a19 = v103;
  *a18 = v61;
  *a23 = v114;
  *a24 = v113;
  *a25 = v112;
  *a26 = cf;
  v113 = 0;
  v114 = 0;
  cf = 0;
  v112 = 0;
  *a27 = v115;
  v115 = 0;
  *v36 = v68;
  if (!v39)
  {
    goto LABEL_121;
  }

  v61 = 0;
LABEL_115:
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
  }

  if (v117)
  {
    VTPixelTransferSessionInvalidate(v117);
  }

  if (v61)
  {
    CFRelease(v61);
  }

LABEL_121:
  if (v112)
  {
    v112(v113);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v39;
}

uint64_t vtPixelTransferAppendSimpleSoftwareNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0u;
  v18 = 0u;
  cf = 0;
  v9 = *(a6 + 26);
  CurrentDimensions = VTPixelTransferGraphGetCurrentDimensions(a1, a2, a3, a6, 0, &v17);
  if (!CurrentDimensions)
  {
    CurrentDimensions = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, (v9 & 3) != 0, *&v18, *(&v18 + 1), &cf);
    if (!CurrentDimensions)
    {
      if (*(a3 + 16))
      {
        v11 = malloc_type_malloc(0x10uLL, 0x1000040A65DF9BBuLL);
        *v11 = *(a6 + 170) == 0;
        v11[1] = *(a6 + 171) == 0;
        v11[2] = *(a6 + 172);
        v12 = *(a3 + 16);
        v13 = VTSimpleBlitterCleanup;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v11 = 0;
      }

      CurrentDimensions = VTPixelTransferChainAppendSoftwareNode(*a6, cf, *(a3 + 8), v12, v11, v13);
    }
  }

  v14 = CurrentDimensions;
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t vtCreateIntermediatePixelBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFTypeRef VTCopyRegistryKeyValueForDeviceIOService(const __CFString *a1, const __CFString *a2)
{
  existing = 0;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  MEMORY[0x193AE3010](&gInitializeDeviceGroupAndCacheOnce, vtInitializeDeviceGroupsAndCache);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(_MergedGlobals_3, a1);
  v6 = MEMORY[0x1E695E480];
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(_MergedGlobals_3, a1, Mutable);
    if (!Mutable)
    {
      v11 = 0;
      v9 = 0;
      v10 = 1;
      goto LABEL_10;
    }
  }

  if (CFDictionaryContainsKey(Mutable, a2))
  {
    v8 = CFDictionaryGetValue(Mutable, a2);
    if (v8)
    {
      v9 = CFRetain(v8);
      v10 = 0;
      v11 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v12 = *MEMORY[0x1E696CD60];
  v13 = IOServiceNameMatching(CStringPtr);
  if (IOServiceGetMatchingServices(v12, v13, &existing))
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v15 = IOIteratorNext(existing);
  v11 = v15;
  if (!v15)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = IORegistryEntrySearchCFProperty(v15, "IOService", a2, *v6, 1u);
  if (!v9)
  {
    if (*MEMORY[0x1E695E738])
    {
      v9 = CFRetain(*MEMORY[0x1E695E738]);
    }

    else
    {
      v9 = 0;
    }
  }

  CFDictionaryAddValue(Mutable, a2, v9);
  v10 = 0;
LABEL_10:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  FigSimpleMutexUnlock();
  if ((v10 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  return v9;
}

BOOL VTDoesIOServiceSupportRegistryKey(const __CFString *a1, const __CFString *a2)
{
  v2 = VTCopyRegistryKeyValueForDeviceIOService(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = FigCFEqual() == 0;
  CFRelease(v3);
  return v4;
}

uint64_t vt_Copy_x422_v210(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_1();
    v7 = v5[1];
    v8 = *v4;
    v9 = v4[1];
    v14[12] = *v5;
    v14[13] = v8;
    v14[14] = v7;
    v14[15] = v9;
    v10 = *v2;
    v14[16] = *v3;
    v14[17] = v10;
    v15 = 0;
    BYTE4(v15) = *v1;
    if (v1[1] && (v11 = v6, v6 >= 2))
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_apply_f(v11, global_queue, v14, vt_Copy_x422_v210_internal);
    }

    else
    {
      vt_Copy_x422_v210_internal(v14);
    }
  }

  return 0;
}

uint64_t vt_Copy_v210_x422(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_1();
    v7 = *v4;
    v14[12] = *v5;
    v14[13] = v7;
    v8 = v3[1];
    v9 = *v2;
    v10 = v2[1];
    v14[14] = *v3;
    v14[15] = v9;
    v14[16] = v8;
    v14[17] = v10;
    v15 = 0;
    BYTE4(v15) = *v1;
    if (v1[1] && (v11 = v6, v6 >= 2))
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_apply_f(v11, global_queue, v14, vt_Copy_v210_x422_internal);
    }

    else
    {
      vt_Copy_v210_x422_internal(v14);
    }
  }

  return 0;
}

uint64_t vtPixelTransferAppendDynamicNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  v7 = *(a2 + 4) ^ *(a1 + 4);
  v8 = (v7 >> 4) & 1;
  v9 = v7 & 0x18;
  v10 = &kVTRotation_180;
  if (v9 == 24)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v7 >> 3) & 1;
  }

  if (v9 == 24)
  {
    v12 = 0;
  }

  else
  {
    v10 = &kVTRotation_0;
    v12 = (v7 >> 4) & 1;
  }

  v13 = (v7 & 8) == 0;
  if (v8)
  {
    v13 = 0;
  }

  v14 = &kVTRotation_CCW90;
  if (!v8)
  {
    v14 = &kVTRotation_CW90;
  }

  v15 = v9 == 24;
  if (v9 == 24)
  {
    v13 = 0;
    v16 = &kVTRotation_CW90;
  }

  else
  {
    v16 = v14;
  }

  if (!v15)
  {
    v8 = 0;
  }

  if ((v7 & 4) != 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = v11;
  }

  if ((v7 & 4) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v10;
  }

  if ((v7 & 4) != 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = v12;
  }

  v28 = 0u;
  *v29 = 0u;
  v20 = *v18;
  VTPixelTransferGraphGetCurrentDimensions(a1, a2, a3, a6, 0, &v28);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 0;
  }

  v22 = MutableCopy;
  if (v20 == @"Rotation0")
  {
    CFDictionaryRemoveValue(MutableCopy, @"Rotation");
  }

  else
  {
    FigCFDictionarySetValue();
  }

  if (v19)
  {
    FigCFDictionarySetValue();
  }

  else
  {
    CFDictionaryRemoveValue(v22, @"FlipHorizontalOrientation");
  }

  if (v17)
  {
    FigCFDictionarySetValue();
    if ((v7 & 2) == 0)
    {
LABEL_34:
      CFDictionaryRemoveValue(v22, @"DestinationColorPrimaries");
      CFDictionaryRemoveValue(v22, @"DestinationTransferFunction");
      goto LABEL_37;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v22, @"FlipVerticalOrientation");
    if ((v7 & 2) == 0)
    {
      goto LABEL_34;
    }
  }

  FigCFDictionaryGetValue();
  FigCFDictionaryGetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
LABEL_37:
  PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, 1, v29[0], v29[1], &cf);
  v24 = cf;
  if (PixelBufferPoolAttributes)
  {
    appended = PixelBufferPoolAttributes;
    if (!cf)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  appended = vtPixelTransferChainAppendDynamicNode();
  v24 = cf;
  if (cf)
  {
LABEL_39:
    CFRelease(v24);
  }

LABEL_40:
  CFRelease(v22);
  return appended;
}

uint64_t vtPixelTransferAppendColorProcessingBlitterNodeCallback(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a1 + 5));
  v11 = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a2 + 5));
  cf = 0;
  v21 = 0u;
  v22 = 0u;
  v12 = (*(a6 + 26) & 3) != 0;
  VTPixelTransferGraphGetCurrentDimensions(a1, a2, v13, a6, 0, &v21);
  MutableCopy = 0;
  v15 = *MEMORY[0x1E695E480];
  if (((*(a2 + 4) ^ *(a1 + 4)) & 2) == 0 || (Mutable = FigCFDictionaryCreateMutableCopy(), MutableCopy = FigCFDictionaryCreateMutableCopy(), !Mutable))
  {
    Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  appended = 4294954392;
  if (Mutable && MutableCopy)
  {
    v18 = MEMORY[0x1E6965F98];
    if (StringForIntegerCodePoint)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F98], StringForIntegerCodePoint);
    }

    if (v11)
    {
      CFDictionarySetValue(MutableCopy, *v18, v11);
    }

    PixelBufferPoolAttributes = VTPixelBlitterColorHandlingOptimized_setup(*a1, Mutable, *a2, MutableCopy, 0, *(a6 + 170), *(a6 + 171), &v26, &v25, a3 + 32, &v24);
    if (PixelBufferPoolAttributes || (PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, v12, *&v22, *(&v22 + 1), &cf), PixelBufferPoolAttributes))
    {
      appended = PixelBufferPoolAttributes;
    }

    else
    {
      appended = VTPixelTransferChainAppendSoftwareNode(*a6, cf, 0, v25, v26, v24);
      v26 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24 && v26)
  {
    (v24)();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return appended;
}

uint64_t vtPixelTransferAppendScalerNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = 0;
  bzero(v25, 0x118uLL);
  v10 = *(a1 + 7);
  v11 = *(a2 + 7);
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  *v18 = 0u;
  v12 = *(a6 + 26);
  VTPixelTransferGraphGetCurrentDimensions(a1, a2, v13, a6, 0, &v23);
  v14 = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, (v12 & 3) != 0, v24.f64[0], v24.f64[1], &v27);
  if (!v14)
  {
    VTConvertFloatRectToIntRect(a6 + 28, &v20);
    VTConvertFloatRectToIntRect(a6 + 76, v17);
    *v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(v24))));
    *v19 = vcvtq_s64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(v23))));
    vtAllocatePlanarBuffersCommon(*a1, &v20, v25);
    vtAllocatePlanarBuffersCommon(*a2, v17, v26);
    VTPixelTransferChainAppendScalerNode(*a6, *(a3 + 8), v25, *(a6 + 168), v10 & 0x40, v11 & 0x40, *(a6 + 169), *(a6 + 136), v27, *(a3 + 32), v17[0], v17[1], v18[0], v18[1], v19[0], v19[1], v20, *(&v20 + 1), v21[0], v21[1], v22, *(&v22 + 1));
  }

  v15 = v14;
  vtFreePlanarBuffers(v25);
  vtFreePlanarBuffers(v26);
  if (v27)
  {
    CFRelease(v27);
  }

  return v15;
}

uint64_t VTPixelTransferGraphBuildChain_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelTransferGraphBuildChain_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void VTCompressionSessionSetProperty(uint64_t a1, void *value, const __CFNumber *a3)
{
  if (!a1 || *(a1 + 16) == 2)
  {
    goto LABEL_19;
  }

  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_0();

    VTCompressionSessionRemote_SetProperty(v6, v7, v8);
    return;
  }

  vtCoreAnalyticsSaveUserConfiguredCompressionProperty(value, a3, a1);
  if (*(a1 + 850))
  {
    v10 = OUTLINED_FUNCTION_5_0();
    if (vtCompressionSessionIsPropertyHandledByRateControl(v10, v11))
    {
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_0();

      VTRateControlSessionSetProperty(v12);
      return;
    }
  }

  if (!vtCompressionSessionIsPropertyHandledByVideoToolbox(value))
  {
    v15 = OUTLINED_FUNCTION_5_0();
    if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(v15, v16))
    {
      goto LABEL_19;
    }

    if (!*(a1 + 850))
    {
      if (*(a1 + 851))
      {
        v20 = OUTLINED_FUNCTION_5_0();
        if (vtCompressionSessionIsPropertyHandledByRateControl(v20, v21))
        {
          OUTLINED_FUNCTION_6_0();
          VTRateControlSessionSetProperty(v22);
        }
      }
    }

    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      OUTLINED_FUNCTION_6_0();
      v17();
    }

    if (!CFEqual(@"AverageDataRate", value) && !CFEqual(@"AverageBitRate", value) && !CFEqual(@"ConvergenceDurationForAverageDataRate", value) && !CFEqual(@"DataRateLimits", value) && !CFEqual(@"MoreFramesBeforeStart", value) && !CFEqual(@"MoreFramesAfterEnd", value) && !CFEqual(@"RequestedMaxEncoderLatency", value) && !CFEqual(@"SourceFrameCount", value) && !CFEqual(@"ExpectedFrameRate", value) && !CFEqual(@"ExpectedDuration", value))
    {
      *(a1 + 256) = 1;
    }

    if (CFEqual(@"ProfileLevel", value))
    {
      v18 = *(a1 + 600);
      if (v18 == a3)
      {
        goto LABEL_56;
      }

      *(a1 + 600) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (!v18)
      {
        goto LABEL_56;
      }

      v19 = v18;
      goto LABEL_43;
    }

    if (CFEqual(@"ExpectedFrameRate", value))
    {
      v23 = (a1 + 728);
      if (a3)
      {
        v24 = a3;
        v25 = kCFNumberFloat32Type;
LABEL_54:
        CFNumberGetValue(v24, v25, v23);
        goto LABEL_56;
      }
    }

    else
    {
      if (!CFEqual(@"OutputBitDepth", value))
      {
        goto LABEL_56;
      }

      v23 = (a1 + 608);
      if (a3)
      {
        v24 = a3;
        v25 = kCFNumberSInt32Type;
        goto LABEL_54;
      }
    }

    *v23 = 0;
    goto LABEL_56;
  }

  if (CFEqual(@"PixelBufferPoolIsShared", value) || CFEqual(@"VideoEncoderPixelBufferAttributes", value) || CFEqual(@"PoolPixelBufferAttributesSeed", value) || CFEqual(@"PoolPixelBufferAttributes", value) || CFEqual(@"NumberOfPendingFrames", value) || CFEqual(@"CurrentHDRMetadataGenerationState", value))
  {
    goto LABEL_19;
  }

  if (!CFEqual(@"PixelTransferProperties", value))
  {
    if (!OUTLINED_FUNCTION_12_0() && !OUTLINED_FUNCTION_8_0() && !OUTLINED_FUNCTION_11_0() && !CFEqual(@"FieldDetail", value) && !CFEqual(@"ComponentRange", value) && !OUTLINED_FUNCTION_17_0() && !CFEqual(@"TransferFunction", value) && !CFEqual(@"GammaLevel", value) && !CFEqual(@"YCbCrMatrix", value) && !CFEqual(@"ICCProfile", value) && !CFEqual(@"MasteringDisplayColorVolume", value) && !CFEqual(@"ContentLightLevelInfo", value) && !CFEqual(@"MultiPassStorage", value) && !CFEqual(@"AuxiliaryTypeInfo", value) && !CFEqual(@"ChromaLocationTopField", value) && !CFEqual(@"ChromaLocationBottomField", value) && !CFEqual(@"AmbientViewingEnvironment", value) && !CFEqual(@"PrepareEncodedSampleBuffersForPaddedWrites", value) && !CFEqual(@"HasLeftStereoEyeView", value) && !CFEqual(@"HasRightStereoEyeView", value) && !CFEqual(@"HasEyeViewsReversed", value) && !CFEqual(@"HasAdditionalViews", value) && !CFEqual(@"HeroEye", value) && !CFEqual(@"ProjectionKind", value) && !CFEqual(@"ViewPackingKind", value) && !CFEqual(@"TransportIdentifier", value) && !CFEqual(@"WarpKind", value) && !CFEqual(@"StereoCameraBaseline", value) && !CFEqual(@"HorizontalDisparityAdjustment", value) && !CFEqual(@"CameraCalibrationDataLensCollection", value) && !CFEqual(@"HorizontalFieldOfView", value) && !CFEqual(@"PowerLogSessionID", value) && !CFEqual(@"InputQueueMaxCount", value))
    {
      if (CFEqual(@"MaximizePowerEfficiency", value))
      {
        if (a3)
        {
          v49 = CFGetTypeID(a3);
          if (v49 == CFBooleanGetTypeID())
          {
            *(a1 + 569) = CFBooleanGetValue(a3);
            goto LABEL_106;
          }
        }

        goto LABEL_19;
      }

      if (CFEqual(@"HDRMetadataInsertionMode", value))
      {
        if (!*(a1 + 593))
        {
          goto LABEL_56;
        }

        if (*(a1 + 96))
        {
          goto LABEL_19;
        }

        if (!vtCompressionSessionValidateHDRMetadata(a1, a3))
        {
          *(a1 + 624) = 0;
          if (FigCFEqual())
          {
            v51 = MEMORY[0x1E695E4D0];
LABEL_241:
            *(a1 + 616) = *v51;
            goto LABEL_56;
          }

          if (!*(a1 + 693) || !FigCFEqual())
          {
            v51 = MEMORY[0x1E695E4C0];
            goto LABEL_241;
          }

          *(a1 + 616) = *MEMORY[0x1E695E4D0];
          *(a1 + 624) = 1;
        }

LABEL_56:
        OUTLINED_FUNCTION_7_0();
        return;
      }

      if (CFEqual(@"PreserveDynamicHDRMetadata", value))
      {
        if (a3)
        {
          if (*(a1 + 593))
          {
            v50 = CFGetTypeID(a3);
            if (v50 == CFBooleanGetTypeID())
            {
              *(a1 + 652) = CFBooleanGetValue(a3);
            }
          }
        }

        goto LABEL_56;
      }

      if (CFEqual(@"InitialHDRMetadataGenerationState", value))
      {
        if (!vtCompressionSessionValidateInitialHDRMetadataState(a3))
        {
          if (!*(a1 + 96))
          {
            v54 = *(a1 + 664);
            if (v54 != a3)
            {
              *(a1 + 664) = a3;
              if (a3)
              {
                CFRetain(a3);
              }

              if (v54)
              {
                CFRelease(v54);
              }
            }

            goto LABEL_56;
          }

          goto LABEL_19;
        }

        goto LABEL_56;
      }

      if (CFEqual(@"AmbientViewingEnvironment", value))
      {
        if (*(a1 + 689))
        {
          v52 = OUTLINED_FUNCTION_5_0();
          *(a1 + 690) = vtCompressionSessionIsPropertyHandledByVideoEncoder(v52, v53);
          vtCompressionSessionUpdateAmbientViewingEnvironment(a1, a3);
          if (*(a1 + 690))
          {
            goto LABEL_107;
          }
        }

        goto LABEL_56;
      }

      if (!OUTLINED_FUNCTION_12_0() && !OUTLINED_FUNCTION_11_0() && !OUTLINED_FUNCTION_8_0())
      {
        if (CFEqual(@"AllowPixelTransfer", value))
        {
          if (a3)
          {
            v66 = CFGetTypeID(a3);
            if (v66 == CFBooleanGetTypeID())
            {
              *(a1 + 568) = *MEMORY[0x1E695E4D0] == a3;
              goto LABEL_56;
            }
          }

          goto LABEL_19;
        }

        if (!CFEqual(@"LowMemory", value))
        {
          goto LABEL_56;
        }

        if (!a3 || (v68 = CFGetTypeID(a3), v68 != CFBooleanGetTypeID()))
        {
LABEL_19:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_7_0();

          FigSignalErrorAtGM();
          return;
        }

        if (*MEMORY[0x1E695E4D0] == a3)
        {
          *(a1 + 592) = 1;
          if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"InputQueueMaxCount"))
          {
            goto LABEL_56;
          }

          valuePtr = -1;
          v69 = *MEMORY[0x1E695E480];
          p_valuePtr = &valuePtr;
        }

        else
        {
          *(a1 + 592) = 0;
          if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"InputQueueMaxCount"))
          {
            goto LABEL_56;
          }

          v69 = *MEMORY[0x1E695E480];
          p_valuePtr = (a1 + 272);
        }

        v76 = CFNumberCreate(v69, kCFNumberIntType, p_valuePtr);
        VTVideoEncoderSetProperty(*(a1 + 472), @"InputQueueMaxCount", v76);
        if (!v76)
        {
          goto LABEL_56;
        }

        goto LABEL_404;
      }

      if (a3)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {
          if (OUTLINED_FUNCTION_12_0())
          {
            v67 = (a1 + 572);
          }

          else
          {
            if (!OUTLINED_FUNCTION_11_0())
            {
              goto LABEL_369;
            }

            v67 = (a1 + 576);
          }

          CFNumberGetValue(a3, kCFNumberSInt32Type, v67);
        }

        else
        {
          if (!OUTLINED_FUNCTION_8_0())
          {
            goto LABEL_19;
          }

          v64 = CFGetTypeID(a3);
          if (v64 == CFBooleanGetTypeID())
          {
            v65 = *(a1 + 584);
            *(a1 + 584) = a3;
            CFRetain(a3);
LABEL_365:
            if (v65)
            {
              CFRelease(v65);
            }
          }
        }

LABEL_369:
        if (*(a1 + 544))
        {
          if (OUTLINED_FUNCTION_11_0())
          {
            VTSessionSetProperty(*(a1 + 544), @"ClientPID", a3);
          }

          if (OUTLINED_FUNCTION_8_0())
          {
            VTSessionSetProperty(*(a1 + 544), @"RealTime", a3);
          }
        }

        if (*(a1 + 408))
        {
          if (OUTLINED_FUNCTION_11_0())
          {
            VTSessionSetProperty(*(a1 + 408), @"ClientPID", a3);
          }

          if (OUTLINED_FUNCTION_8_0())
          {
            VTSessionSetProperty(*(a1 + 408), @"RealTime", a3);
          }
        }

        if (vtCompressionSessionDispatchQueuesUpdatePriorityAndClientPID(a1))
        {
          goto LABEL_56;
        }

        v71 = OUTLINED_FUNCTION_5_0();
        if (vtCompressionSessionIsPropertyHandledByVideoEncoder(v71, v72))
        {
          OUTLINED_FUNCTION_6_0();
          VTVideoEncoderSetProperty(v73, v74, v75);
        }

        if (!OUTLINED_FUNCTION_8_0() || !vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"FigThreadPriority") || *(a1 + 572))
        {
          goto LABEL_56;
        }

        v77 = *(a1 + 584);
        if (*MEMORY[0x1E695E4D0] == v77)
        {
          v80 = 0;
        }

        else
        {
          v78 = *MEMORY[0x1E695E4C0] == v77;
          v80 = 8 * v78;
          if (!v78)
          {
            goto LABEL_56;
          }
        }

        v76 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v80);
        VTVideoEncoderSetProperty(*(a1 + 472), @"FigThreadPriority", v76);
        if (!v76)
        {
          goto LABEL_56;
        }

LABEL_404:
        v19 = v76;
LABEL_43:
        CFRelease(v19);
        goto LABEL_56;
      }

      if (!OUTLINED_FUNCTION_8_0())
      {
        goto LABEL_19;
      }

      v65 = *(a1 + 584);
      *(a1 + 584) = 0;
      goto LABEL_365;
    }

    if (OUTLINED_FUNCTION_12_0())
    {
      HasLeftStereoEyeView = vtCompressionSessionValidatePixelAspectRatio(a3);
      goto LABEL_118;
    }

    if (OUTLINED_FUNCTION_8_0())
    {
      HasLeftStereoEyeView = vtCompressionSessionValidateCleanAperture(a1, a3);
      goto LABEL_118;
    }

    if (OUTLINED_FUNCTION_11_0())
    {
      HasLeftStereoEyeView = vtCompressionSessionValidateFieldCount(a3);
      goto LABEL_118;
    }

    if (CFEqual(@"FieldDetail", value))
    {
      HasLeftStereoEyeView = vtCompressionSessionValidateFieldDetail(a3);
      goto LABEL_118;
    }

    if (CFEqual(@"ComponentRange", value))
    {
      HasLeftStereoEyeView = vtCompressionSessionValidatePixelFormatComponentRange(a3);
LABEL_118:
      if (HasLeftStereoEyeView)
      {
        goto LABEL_56;
      }

LABEL_119:
      v41 = OUTLINED_FUNCTION_5_0();
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(v41, v42))
      {
        if (*(a1 + 96) == 1 || !FigVideoCodecTypeIsHEVCFlavor(*(a1 + 48)) || !OUTLINED_FUNCTION_17_0() && !CFEqual(@"TransferFunction", value) && !CFEqual(@"YCbCrMatrix", value))
        {
          OUTLINED_FUNCTION_6_0();
          if (!VTVideoEncoderSetProperty(v43, v44, v45))
          {
            if (CFEqual(@"MultiPassStorage", value))
            {
              v46 = *(a1 + 816);
              *(a1 + 816) = a3;
              if (!a3)
              {
                goto LABEL_248;
              }

LABEL_247:
              CFRetain(a3);
              goto LABEL_248;
            }
          }
        }

LABEL_250:
        *(a1 + 256) = 1;
        goto LABEL_56;
      }

LABEL_245:
      if (OUTLINED_FUNCTION_12_0())
      {
        v46 = *(a1 + 136);
        *(a1 + 136) = a3;
        if (!a3)
        {
          goto LABEL_248;
        }

        goto LABEL_247;
      }

      if (OUTLINED_FUNCTION_8_0())
      {
        v46 = *(a1 + 144);
        *(a1 + 144) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (OUTLINED_FUNCTION_11_0())
      {
        v46 = *(a1 + 152);
        *(a1 + 152) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (CFEqual(@"FieldDetail", value))
      {
        v46 = *(a1 + 160);
        *(a1 + 160) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (CFEqual(@"ComponentRange", value))
      {
        v46 = *(a1 + 168);
        *(a1 + 168) = a3;
        if (a3)
        {
          goto LABEL_247;
        }

        goto LABEL_248;
      }

      if (OUTLINED_FUNCTION_17_0())
      {
        v55 = *(a1 + 176);
        *(a1 + 176) = a3;
        if (a3)
        {
          goto LABEL_265;
        }
      }

      else
      {
        if (CFEqual(@"TransferFunction", value))
        {
          v55 = *(a1 + 184);
          *(a1 + 184) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"GammaLevel", value))
        {
          v55 = *(a1 + 192);
          *(a1 + 192) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"YCbCrMatrix", value))
        {
          v55 = *(a1 + 200);
          *(a1 + 200) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"ICCProfile", value))
        {
          v55 = *(a1 + 208);
          *(a1 + 208) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (CFEqual(@"MasteringDisplayColorVolume", value))
        {
          v55 = *(a1 + 216);
          *(a1 + 216) = a3;
          if (!a3)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        if (!CFEqual(@"ContentLightLevelInfo", value))
        {
          if (CFEqual(@"AmbientViewingEnvironment", value))
          {
            v46 = *(a1 + 704);
            *(a1 + 704) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"MultiPassStorage", value))
          {
            goto LABEL_19;
          }

          if (CFEqual(@"AuxiliaryTypeInfo", value))
          {
            v46 = *(a1 + 232);
            *(a1 + 232) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ChromaLocationTopField", value))
          {
            v46 = *(a1 + 240);
            *(a1 + 240) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ChromaLocationBottomField", value))
          {
            v46 = *(a1 + 248);
            *(a1 + 248) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"PrepareEncodedSampleBuffersForPaddedWrites", value))
          {
            if (a3 && (v57 = CFGetTypeID(a3), v57 == CFBooleanGetTypeID()))
            {
              *(a1 + 456) = CFBooleanGetValue(a3);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_1();
              FigSignalErrorAtGM();
            }

            goto LABEL_250;
          }

          if (CFEqual(@"HasLeftStereoEyeView", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 736) = v58;
            goto LABEL_250;
          }

          if (CFEqual(@"HasRightStereoEyeView", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 737) = v59;
            goto LABEL_250;
          }

          if (CFEqual(@"HasEyeViewsReversed", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 738) = v60;
            goto LABEL_250;
          }

          if (CFEqual(@"HasAdditionalViews", value))
          {
            OUTLINED_FUNCTION_14_0();
            *(a1 + 739) = v61;
            goto LABEL_250;
          }

          if (CFEqual(@"HeroEye", value))
          {
            v46 = *(a1 + 744);
            *(a1 + 744) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ProjectionKind", value))
          {
            v46 = *(a1 + 752);
            *(a1 + 752) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"ViewPackingKind", value))
          {
            v46 = *(a1 + 760);
            *(a1 + 760) = a3;
            if (a3)
            {
              goto LABEL_247;
            }

            goto LABEL_248;
          }

          if (CFEqual(@"TransportIdentifier", value))
          {
            if (!a3)
            {
              *(a1 + 768) = 0;
              goto LABEL_250;
            }

            *(a1 + 768) = 1;
            v62 = (a1 + 772);
          }

          else
          {
            if (CFEqual(@"WarpKind", value))
            {
              v46 = *(a1 + 776);
              *(a1 + 776) = a3;
              if (a3)
              {
                goto LABEL_247;
              }

              goto LABEL_248;
            }

            if (CFEqual(@"StereoCameraBaseline", value))
            {
              if (!a3)
              {
                *(a1 + 784) = 0;
                goto LABEL_250;
              }

              *(a1 + 784) = 1;
              v62 = (a1 + 788);
            }

            else
            {
              if (!CFEqual(@"HorizontalDisparityAdjustment", value))
              {
                if (CFEqual(@"CameraCalibrationDataLensCollection", value))
                {
                  v46 = *(a1 + 800);
                  *(a1 + 800) = a3;
                  if (a3)
                  {
                    goto LABEL_247;
                  }
                }

                else if (CFEqual(@"HorizontalFieldOfView", value))
                {
                  v46 = *(a1 + 264);
                  *(a1 + 264) = a3;
                  if (a3)
                  {
                    goto LABEL_247;
                  }
                }

                else
                {
                  if (!CFEqual(@"PowerLogSessionID", value))
                  {
                    goto LABEL_250;
                  }

                  v46 = *(a1 + 872);
                  *(a1 + 872) = a3;
                  if (a3)
                  {
                    goto LABEL_247;
                  }
                }

LABEL_248:
                if (v46)
                {
                  CFRelease(v46);
                }

                goto LABEL_250;
              }

              if (!a3)
              {
                *(a1 + 792) = 0;
                goto LABEL_250;
              }

              *(a1 + 792) = 1;
              v62 = (a1 + 796);
            }
          }

          CFNumberGetValue(a3, kCFNumberSInt32Type, v62);
          goto LABEL_250;
        }

        v55 = *(a1 + 224);
        *(a1 + 224) = a3;
        if (a3)
        {
LABEL_265:
          CFRetain(a3);
        }
      }

LABEL_266:
      if (v55)
      {
        CFRelease(v55);
      }

      v56 = *(a1 + 416);
      if (v56)
      {
        CFRelease(v56);
        *(a1 + 416) = 0;
      }

      goto LABEL_250;
    }

    if (OUTLINED_FUNCTION_17_0())
    {
      if (vtCompressionSessionValidateColorPrimaries(a3))
      {
        goto LABEL_56;
      }

      v47 = *(a1 + 176);
      if (v47 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 176) = a3;
      if (a3)
      {
        goto LABEL_133;
      }

LABEL_134:
      if (v47)
      {
        CFRelease(v47);
      }

      v48 = *(a1 + 416);
      if (v48)
      {
        CFRelease(v48);
        *(a1 + 416) = 0;
      }

      goto LABEL_119;
    }

    if (CFEqual(@"TransferFunction", value))
    {
      if (vtCompressionSessionValidateTransferFunction(a3))
      {
        goto LABEL_56;
      }

      v47 = *(a1 + 184);
      if (v47 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 184) = a3;
      if (!a3)
      {
        goto LABEL_134;
      }
    }

    else if (CFEqual(@"GammaLevel", value))
    {
      if (vtCompressionSessionValidateGammaLevel(a3))
      {
        goto LABEL_56;
      }

      v47 = *(a1 + 192);
      if (v47 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 192) = a3;
      if (!a3)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (!CFEqual(@"YCbCrMatrix", value))
      {
        if (!CFEqual(@"ICCProfile", value))
        {
          if (CFEqual(@"MasteringDisplayColorVolume", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateMasteringDisplayColorVolume(a3);
          }

          else if (CFEqual(@"ContentLightLevelInfo", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateContentLightLevelInfo(a3);
          }

          else if (CFEqual(@"AmbientViewingEnvironment", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateAmbientViewingEnvironment(a3);
          }

          else if (CFEqual(@"MultiPassStorage", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateMultiPassStorage(a3);
          }

          else if (CFEqual(@"AuxiliaryTypeInfo", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateAuxiliaryTypeInfo(a3);
          }

          else if (CFEqual(@"ChromaLocationTopField", value) || CFEqual(@"ChromaLocationBottomField", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateChromaLocation(a3);
          }

          else if (CFEqual(@"PrepareEncodedSampleBuffersForPaddedWrites", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidatePrepareEncodedSampleBuffersForPaddedWrites(a3);
          }

          else if (CFEqual(@"HasLeftStereoEyeView", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasLeftStereoEyeView(a3);
          }

          else if (CFEqual(@"HasRightStereoEyeView", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasRightStereoEyeView(a3);
          }

          else if (CFEqual(@"HasEyeViewsReversed", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasEyeViewsReversed(a3);
          }

          else if (CFEqual(@"HasAdditionalViews", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHasAdditionalViews(a3);
          }

          else if (CFEqual(@"HeroEye", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHeroEye(a3);
          }

          else if (CFEqual(@"ProjectionKind", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateProjectionKind(a3);
          }

          else if (CFEqual(@"ViewPackingKind", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateViewPackingKind(a3);
          }

          else if (CFEqual(@"TransportIdentifier", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateTransportIdentifier(a3);
          }

          else if (CFEqual(@"WarpKind", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateWarpKind(a3);
          }

          else if (CFEqual(@"StereoCameraBaseline", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateBaselineValue(a3);
          }

          else if (CFEqual(@"HorizontalDisparityAdjustment", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateDisparityAdjustment(a3);
          }

          else if (CFEqual(@"CameraCalibrationDataLensCollection", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateCameraCalibrationDataLensCollection(a3);
          }

          else if (CFEqual(@"HorizontalFieldOfView", value))
          {
            HasLeftStereoEyeView = vtCompressionSessionValidateHorizontalFieldOfView(a3);
          }

          else
          {
            if (!CFEqual(@"PowerLogSessionID", value))
            {
              if (CFEqual(@"InputQueueMaxCount", value))
              {
                if (vtCompressionSessionValidateInputQueueMaxCount(a3))
                {
                  goto LABEL_56;
                }

                *(a1 + 272) = FigCFNumberGetSInt32();
                if (*(a1 + 592))
                {
                  goto LABEL_245;
                }
              }

              goto LABEL_119;
            }

            HasLeftStereoEyeView = vtCompressionSessionValidatePowerLogSessionID(a3);
          }

          goto LABEL_118;
        }

        if (vtCompressionSessionValidateICCProfile(a3))
        {
          goto LABEL_56;
        }

        v47 = *(a1 + 208);
        if (v47 == a3)
        {
          goto LABEL_119;
        }

        *(a1 + 208) = a3;
        if (a3)
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

      if (vtCompressionSessionValidateYCbCrMatrix(a3))
      {
        goto LABEL_56;
      }

      v47 = *(a1 + 200);
      if (v47 == a3)
      {
        goto LABEL_119;
      }

      *(a1 + 200) = a3;
      if (!a3)
      {
        goto LABEL_134;
      }
    }

LABEL_133:
    CFRetain(a3);
    goto LABEL_134;
  }

  if (a3)
  {
    v26 = CFDictionaryGetTypeID();
    if (v26 != CFGetTypeID(a3))
    {
      goto LABEL_19;
    }
  }

  FigSimpleMutexLock();
  v27 = *(a1 + 560);
  if (v27)
  {
    CFRelease(v27);
  }

  if (a3)
  {
    v28 = CFGetAllocator(a1);
    Copy = CFDictionaryCreateCopy(v28, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 560) = Copy;
  FigCFDictionaryGetBooleanIfPresent();
  dispatch_group_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
  v31 = *(a1 + 544);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 544) = 0;
  }

  v32 = *(a1 + 328);
  if (v32)
  {
    dispatch_release(v32);
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = 0;
  v33 = *(a1 + 408);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 408) = 0;
  }

  v34 = *(a1 + 368);
  if (v34)
  {
    dispatch_release(v34);
    *(a1 + 368) = 0;
  }

  *(a1 + 376) = 0;
  FigSimpleMutexUnlock();
LABEL_106:
  v35 = OUTLINED_FUNCTION_5_0();
  if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(v35, v36))
  {
    goto LABEL_56;
  }

LABEL_107:
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_0();

  VTVideoEncoderSetProperty(v37, v38, v39);
}