void png_read_finish_row(uint64_t a1)
{
  v1 = *(a1 + 308) + 1;
  *(a1 + 308) = v1;
  if (v1 >= *(a1 + 288))
  {
    if (*(a1 + 428))
    {
      *(a1 + 308) = 0;
      v4 = *(a1 + 320);
      v3 = *(a1 + 328);
      v5 = *(a1 + 296);
      v6 = v5 + 1;
      v7 = v3 >= v4;
      v8 = v3 - v4;
      v9 = !v7 || v6 > v8;
      if (v9 || (bzero(*(a1 + 320), v5 + 1), v4 > v4 + v6))
      {
        __break(0x5519u);
        return;
      }

      v10 = *(a1 + 429);
      while (++v10 <= 6u)
      {
        v11 = png_read_finish_row_png_pass_inc[v10];
        v12 = *(a1 + 280) + v11 + ~png_read_start_row_png_pass_start[v10];
        *(a1 + 304) = v12 / v11;
        if ((*(a1 + 88) & 2) == 0)
        {
          v13 = png_read_finish_row_png_pass_yinc[v10];
          v14 = *(a1 + 284) + v13 + ~png_read_finish_row_png_pass_ystart[v10];
          *(a1 + 288) = v14 / v13;
          if (v14 < v13 || v12 < v11)
          {
            continue;
          }
        }

        *(a1 + 429) = v10;
        return;
      }

      *(a1 + 429) = v10;
    }

    if (*(a1 + 84))
    {
      *(a1 + 80) |= 8u;
    }

    png_read_finish_IDAT(a1);
  }
}

BOOL IIOImageRead::willNeed(IIOImageRead *this, uint64_t a2, size_t a3)
{
  pthread_mutex_lock((this + 376));
  v6 = *(this + 4);
  if (v6 && (BytePtr = CFDataGetBytePtr(*(this + 4))) != 0 && (v8 = BytePtr, (Length = CFDataGetLength(v6)) != 0))
  {
    v10 = __CFADD__(a2, a3);
    if (a2 + a3 <= Length || v10)
    {
      v12 = a3;
    }

    else
    {
      v12 = Length - a2;
    }

    v13 = madvise(&v8[a2], v12, 3) == 0;
  }

  else
  {
    v13 = 0;
  }

  pthread_mutex_unlock((this + 376));
  return v13;
}

uint64_t PNGReadPlugin::Read_user_chunk_callback2(void (**a1)(void), _DWORD *a2)
{
  user_chunk_ptr = _cg_png_get_user_chunk_ptr(a1);
  if (*a2 != 1229088579)
  {
    return 0;
  }

  return PNGReadPlugin::Read_user_chunkCgBI(user_chunk_ptr, a1, a2);
}

uint64_t png_read_finish_IDAT(uint64_t result)
{
  v1 = result;
  if ((*(result + 80) & 8) == 0)
  {
    result = png_read_IDAT_data(result, 0);
    *(v1 + 120) = 0;
    v2 = *(v1 + 80);
    if ((v2 & 8) == 0)
    {
      *(v1 + 76) |= 8u;
      *(v1 + 80) = v2 | 8;
    }
  }

  if (*(v1 + 92) == 1229209940)
  {
    *(v1 + 92) = 0;
    *(v1 + 100) = 0;
    v3 = *(v1 + 392);

    return png_crc_finish(v1, v3);
  }

  return result;
}

const void *IIOReadPlugin::createImageBlock(IIOReadPlugin *this, void *a2, mach_vm_size_t a3, CGRect a4, unint64_t a5, int a6)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ((*(this + 382) & 1) == 0 && IIOReadPlugin::readOnlyRequested(this))
  {
    ImageIO_make_read_only(a2, a3);
  }

  if (!a3 || (*(this + 369) & 1) == 0 || !a6)
  {
LABEL_11:
    if (a2)
    {
      goto LABEL_12;
    }

LABEL_26:
    LogError("createImageBlock", 3029, "*** ERROR: CGImageBlockCreate {%g, %g, %g, %g} - data is NULL\n");
    return 0;
  }

  if (*(this + 77) > 0xFu || *(this + 78) >= 0x10u || *(this + 56) >= 5uLL)
  {
    memset(v20, 0, 44);
    IIOReadPlugin::updateImageIOCacheKey(this, v20, a5, x, y, width, height);
    DWORD2(v20[2]) = a3;
    IIOImageRead::setCachedImageBlockData(*(this + 4), v20, a2, a3);
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (!a5)
  {
    LogError("createImageBlock", 3030, "*** ERROR: CGImageBlockCreate {%g, %g, %g, %g} - bytesPerRow is zero\n");
    return 0;
  }

  if (!a3)
  {
    v16 = IOMemorySizeLookup(a2);
    v15 = "cached";
    goto LABEL_17;
  }

  if (height * a5 > a3)
  {
    LogError("createImageBlock", 3034, "*** ERROR: CGImageBlockCreate dataSize too small: %ld < %lld\n");
    return 0;
  }

  v15 = "";
  v16 = a3;
LABEL_17:
  if ((gIIODebugFlags & 0x4000000000) != 0)
  {
    v17 = IIOHashForBuffer(a2, a3, 0);
    ImageIOLog("#️⃣ hash {%g,%g,%g,%g} rb: %d   ptr: %p   size: %ld  '%016x'\n", x, y, width, height, a5, a2, a3, v17);
  }

  v18 = CGImageBlockCreate();
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    atomic_fetch_add_explicit(&gBlockCount, 1u, memory_order_relaxed);
    ImageIOLog("    CGImageBlockCreate:       %14p - info: %14p  data: %14p  B-[%2ld]  rb: %8ld  r:(%4g,%4g,%4g,%4g) %s\n", v18, v16, a2, gBlockCount, a5, x, y, width, height, v15);
    if ((gIIODebugFlags & 0x800) != 0)
    {
      IIODebug_ShowBacktrace(2);
    }
  }

  if (*(this + 193) == 1)
  {
    IIOReadPlugin::debugWriteImageBlocks(this, a2, *(this + 78), ++IIOReadPlugin::createImageBlock(void *,unsigned long,CGRect,unsigned long,BOOL)::uniqueBlockID, width, height, *(this + 79), *(this + 160), (*(this + 327) << 12) | (*(this + 328) << 16) | ((*(this + 329) != 0) << 8) | *(this + 326));
  }

  return v18;
}

uint64_t PNGReadPlugin::postProcess(PNGReadPlugin *this, unsigned __int8 *a2)
{
  if (*(this + 161) != 32)
  {
    return 0;
  }

  v103 = v2;
  v104 = v3;
  if (*(this + 160) != 8 || *(this + 108) == 1768842360)
  {
    return 0;
  }

  v7 = *(this + 78);
  dest.data = a2;
  dest.height = v7;
  v8 = *(this + 77);
  v9 = *(this + 79);
  dest.width = v8;
  dest.rowBytes = v9;
  v10 = (*(this + 126) & 0x1Fu) - 1 >= 2 && *(this + 438) != 0;
  if ((*(this + 445) & 1) != 0 || *(this + 536) == 1)
  {
    v10 = 0;
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  if (*(this + 499) == 1)
  {
    if (!*(this + 437))
    {
      if (*(this + 536) != 1)
      {
        return 0;
      }

      if (*(this + 436) == 1)
      {
        return 0;
      }

      vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      if ((gIIODebugFlags & 0x20000) == 0)
      {
        return 0;
      }

      v22 = *(this + 55);
      v23 = v22 >> 24;
      if ((v22 >> 24) <= 0x7F)
      {
        v24 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
      }

      else
      {
        v24 = __maskrune(v23, 0x40000uLL);
        v22 = *(this + 55);
      }

      if (v24)
      {
        v42 = (v22 >> 24);
      }

      else
      {
        v42 = 46;
      }

      v82 = v22 << 8 >> 24;
      if (v82 <= 0x7F)
      {
        v83 = *(MEMORY[0x1E69E9830] + 4 * v82 + 60) & 0x40000;
      }

      else
      {
        v83 = __maskrune(v82, 0x40000uLL);
        v22 = *(this + 55);
      }

      if (v83)
      {
        v69 = (v22 << 8 >> 24);
      }

      else
      {
        v69 = 46;
      }

      v84 = v22 >> 8;
      if (v84 <= 0x7F)
      {
        v85 = *(MEMORY[0x1E69E9830] + 4 * v84 + 60) & 0x40000;
      }

      else
      {
        v85 = __maskrune(v84, 0x40000uLL);
        v22 = *(this + 55);
      }

      if (v85)
      {
        v86 = (v22 >> 8);
      }

      else
      {
        v86 = 46;
      }

      if (v22 <= 0x7F)
      {
        v87 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
      }

      else
      {
        v87 = __maskrune(v22, 0x40000uLL);
      }

      if (v87)
      {
        v88 = *(this + 220);
      }

      else
      {
        v88 = 46;
      }

      v99 = a2[2];
      v100 = a2[3];
      v97 = *a2;
      v98 = a2[1];
      v95 = v13;
      v96 = v14;
      v93 = v11;
      v94 = v12;
      v91 = v88;
      v92 = 3405;
      v90 = v86;
      v63 = "♦️  '%c%c%c%c' %d: vImageUnpremultiplyData_BGRA8888 [%02X,%02X,%02X,%02X] -> [%02X,%02X,%02X,%02X]\n";
      goto LABEL_187;
    }

    *permuteMap = 50331906;
    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v15 = *(this + 55);
      v16 = v15 >> 24;
      if ((v15 >> 24) <= 0x7F)
      {
        v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
      }

      else
      {
        v17 = __maskrune(v16, 0x40000uLL);
        v15 = *(this + 55);
      }

      if (v17)
      {
        v28 = (v15 >> 24);
      }

      else
      {
        v28 = 46;
      }

      v29 = v15 << 8 >> 24;
      if (v29 <= 0x7F)
      {
        v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000;
      }

      else
      {
        v30 = __maskrune(v29, 0x40000uLL);
        v15 = *(this + 55);
      }

      if (v30)
      {
        v36 = (v15 << 8 >> 24);
      }

      else
      {
        v36 = 46;
      }

      v37 = v15 >> 8;
      if (v37 <= 0x7F)
      {
        v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
      }

      else
      {
        v38 = __maskrune(v37, 0x40000uLL);
        v15 = *(this + 55);
      }

      if (v38)
      {
        v39 = (v15 >> 8);
      }

      else
      {
        v39 = 46;
      }

      if (v15 <= 0x7F)
      {
        v40 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
      }

      else
      {
        v40 = __maskrune(v15, 0x40000uLL);
      }

      if (v40)
      {
        v41 = *(this + 220);
      }

      else
      {
        v41 = 46;
      }

      ImageIOLog("♦️  '%c%c%c%c' %d: vImagePermuteChannels_ARGB8888 {2,1,0,3}\n", v28, v36, v39, v41, 3389);
    }

    if (*(this + 536) == 1 && *(this + 436) != 1)
    {
      vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      if ((gIIODebugFlags & 0x20000) != 0)
      {
        v45 = *(this + 55);
        v46 = v45 >> 24;
        if ((v45 >> 24) <= 0x7F)
        {
          v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
        }

        else
        {
          v47 = __maskrune(v46, 0x40000uLL);
          v45 = *(this + 55);
        }

        if (v47)
        {
          v42 = (v45 >> 24);
        }

        else
        {
          v42 = 46;
        }

        v75 = v45 << 8 >> 24;
        if (v75 <= 0x7F)
        {
          v76 = *(MEMORY[0x1E69E9830] + 4 * v75 + 60) & 0x40000;
        }

        else
        {
          v76 = __maskrune(v75, 0x40000uLL);
          v45 = *(this + 55);
        }

        if (v76)
        {
          v69 = (v45 << 8 >> 24);
        }

        else
        {
          v69 = 46;
        }

        v77 = v45 >> 8;
        if (v77 <= 0x7F)
        {
          v78 = *(MEMORY[0x1E69E9830] + 4 * v77 + 60) & 0x40000;
        }

        else
        {
          v78 = __maskrune(v77, 0x40000uLL);
          v45 = *(this + 55);
        }

        if (v78)
        {
          v79 = (v45 >> 8);
        }

        else
        {
          v79 = 46;
        }

        if (v45 <= 0x7F)
        {
          v80 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
        }

        else
        {
          v80 = __maskrune(v45, 0x40000uLL);
        }

        if (v80)
        {
          v81 = *(this + 220);
        }

        else
        {
          v81 = 46;
        }

        v99 = a2[2];
        v100 = a2[3];
        v97 = *a2;
        v98 = a2[1];
        v95 = v13;
        v96 = v14;
        v93 = v11;
        v94 = v12;
        v91 = v81;
        v92 = 3395;
        v90 = v79;
        v63 = "♦️  '%c%c%c%c' %d: vImageUnpremultiplyData_RGBA8888 [%02X,%02X,%02X,%02X] -> [%02X,%02X,%02X,%02X]\n";
LABEL_187:
        v89 = v69;
        goto LABEL_188;
      }
    }
  }

  else if (*(this + 437))
  {
    if (v10 || *(this + 438) == 1)
    {
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      if ((gIIODebugFlags & 0x20000) == 0)
      {
        return 0;
      }

      v18 = *(this + 55);
      v19 = v18 >> 24;
      v20 = MEMORY[0x1E69E9830];
      if ((v18 >> 24) <= 0x7F)
      {
        v21 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
      }

      else
      {
        v21 = __maskrune(v19, 0x40000uLL);
        v18 = *(this + 55);
      }

      if (v21)
      {
        v42 = (v18 >> 24);
      }

      else
      {
        v42 = 46;
      }

      v43 = v18 << 8 >> 24;
      if (v43 <= 0x7F)
      {
        v44 = *(v20 + 4 * v43 + 60) & 0x40000;
      }

      else
      {
        v44 = __maskrune(v43, 0x40000uLL);
        v18 = *(this + 55);
      }

      if (v44)
      {
        v48 = (v18 << 8 >> 24);
      }

      else
      {
        v48 = 46;
      }

      v49 = v18 >> 8;
      if (v49 <= 0x7F)
      {
        v50 = *(v20 + 4 * v49 + 60) & 0x40000;
      }

      else
      {
        v50 = __maskrune(v49, 0x40000uLL);
        v18 = *(this + 55);
      }

      if (v50)
      {
        v51 = (v18 >> 8);
      }

      else
      {
        v51 = 46;
      }

      if (v18 <= 0x7F)
      {
        v52 = *(v20 + 4 * v18 + 60) & 0x40000;
      }

      else
      {
        v52 = __maskrune(v18, 0x40000uLL);
      }

      if (v52)
      {
        v53 = *(this + 220);
      }

      else
      {
        v53 = 46;
      }

      v99 = a2[2];
      v100 = a2[3];
      v97 = *a2;
      v98 = a2[1];
      v95 = v13;
      v96 = v14;
      v93 = v11;
      v94 = v12;
      v91 = v53;
      v92 = 3431;
      v89 = v48;
      v90 = v51;
      v63 = "♦️  '%c%c%c%c' %d: vImagePremultiplyData_RGBA8888 [%02X,%02X,%02X,%02X] -> [%02X,%02X,%02X,%02X]\n";
LABEL_188:
      ImageIOLog(v63, v42, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
      return 0;
    }

    if (v7)
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        if (v8)
        {
          v33 = &a2[v31 * v9];
          v34 = v8;
          do
          {
            v35 = *v33;
            v33 += 4;
            v32 |= v35;
            --v34;
          }

          while (v34);
          if (HIBYTE(v32))
          {
            break;
          }
        }

        if (++v31 == v7)
        {
          if (v32)
          {
            bzero(a2, v9 * v7);
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("♦️  PNG alpha all zero, but RGB values were not zero --> clearing out RGB\n");
            }
          }

          return 0;
        }
      }
    }
  }

  else
  {
    *permuteMap = 50331906;
    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v25 = *(this + 55);
      v26 = v25 >> 24;
      if ((v25 >> 24) <= 0x7F)
      {
        v27 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000;
      }

      else
      {
        v27 = __maskrune(v26, 0x40000uLL);
        v25 = *(this + 55);
      }

      if (v27)
      {
        v54 = (v25 >> 24);
      }

      else
      {
        v54 = 46;
      }

      v55 = v25 << 8 >> 24;
      if (v55 <= 0x7F)
      {
        v56 = *(MEMORY[0x1E69E9830] + 4 * v55 + 60) & 0x40000;
      }

      else
      {
        v56 = __maskrune(v55, 0x40000uLL);
        v25 = *(this + 55);
      }

      if (v56)
      {
        v57 = (v25 << 8 >> 24);
      }

      else
      {
        v57 = 46;
      }

      v58 = v25 >> 8;
      if (v58 <= 0x7F)
      {
        v59 = *(MEMORY[0x1E69E9830] + 4 * v58 + 60) & 0x40000;
      }

      else
      {
        v59 = __maskrune(v58, 0x40000uLL);
        v25 = *(this + 55);
      }

      if (v59)
      {
        v60 = (v25 >> 8);
      }

      else
      {
        v60 = 46;
      }

      if (v25 <= 0x7F)
      {
        v61 = *(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x40000;
      }

      else
      {
        v61 = __maskrune(v25, 0x40000uLL);
      }

      if (v61)
      {
        v62 = *(this + 220);
      }

      else
      {
        v62 = 46;
      }

      ImageIOLog("♦️  '%c%c%c%c' %d: vImagePermuteChannels_ARGB8888 {2,1,0,3}\n", v54, v57, v60, v62, 3416);
    }

    if (*(this + 438) == 1)
    {
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
      if ((gIIODebugFlags & 0x20000) != 0)
      {
        v64 = *(this + 55);
        v65 = v64 >> 24;
        if ((v64 >> 24) <= 0x7F)
        {
          v66 = *(MEMORY[0x1E69E9830] + 4 * v65 + 60) & 0x40000;
        }

        else
        {
          v66 = __maskrune(v65, 0x40000uLL);
          v64 = *(this + 55);
        }

        if (v66)
        {
          v42 = (v64 >> 24);
        }

        else
        {
          v42 = 46;
        }

        v67 = v64 << 8 >> 24;
        if (v67 <= 0x7F)
        {
          v68 = *(MEMORY[0x1E69E9830] + 4 * v67 + 60) & 0x40000;
        }

        else
        {
          v68 = __maskrune(v67, 0x40000uLL);
          v64 = *(this + 55);
        }

        if (v68)
        {
          v69 = (v64 << 8 >> 24);
        }

        else
        {
          v69 = 46;
        }

        v70 = v64 >> 8;
        if (v70 <= 0x7F)
        {
          v71 = *(MEMORY[0x1E69E9830] + 4 * v70 + 60) & 0x40000;
        }

        else
        {
          v71 = __maskrune(v70, 0x40000uLL);
          v64 = *(this + 55);
        }

        if (v71)
        {
          v72 = (v64 >> 8);
        }

        else
        {
          v72 = 46;
        }

        if (v64 <= 0x7F)
        {
          v73 = *(MEMORY[0x1E69E9830] + 4 * v64 + 60) & 0x40000;
        }

        else
        {
          v73 = __maskrune(v64, 0x40000uLL);
        }

        if (v73)
        {
          v74 = *(this + 220);
        }

        else
        {
          v74 = 46;
        }

        v99 = a2[2];
        v100 = a2[3];
        v97 = *a2;
        v98 = a2[1];
        v95 = v13;
        v96 = v14;
        v93 = v11;
        v94 = v12;
        v91 = v74;
        v92 = 3422;
        v90 = v72;
        v63 = "♦️  '%c%c%c%c' %d: vImagePremultiplyData_BGRA8888 [%02X,%02X,%02X,%02X] -> [%02X,%02X,%02X,%02X]\n";
        goto LABEL_187;
      }
    }
  }

  return 0;
}

BOOL IIOReadPlugin::readOnlyRequested(IIOReadPlugin *this)
{
  result = *(this + 439) == 1;
  if ((gIIODebugFlags & 0x400000000000) != 0)
  {
    if (IIOReadPlugin::readOnlyRequested(void)::onceToken == -1)
    {
      return 0;
    }

    else
    {
      IIOReadPlugin::readOnlyRequested();
      return 0;
    }
  }

  return result;
}

void IIODecodeFrameParams::~IIODecodeFrameParams(IIODecodeFrameParams *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C8033FC2DF1);
    }

    MEMORY[0x186602850](v1, 0x1020C40D090CC53);
  }
}

const char *IIOReadPlugin::debugDecodeImage(IIOReadPlugin *this, IIODecodeParameter *a2)
{
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    ImageIOLog("    debugDecodeImage\n");
    _APP1XMP::getXmpData(a2);
    IIOReadPlugin::printRequests(this, v12);

    return IIOReadPlugin::debugGeometry(this, 0, 0);
  }

  else
  {
    v4 = *(a2 + 2);
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    v9 = *(a2 + 7);
    v10 = *(a2 + 8);

    return IIOReadPlugin::debugCopyBlockSet(this, v4, v5, v6, v7, v8, v9, v10);
  }
}

void ___ZN13PNGReadPlugin19DecodeFrameStandardEP19IIOImageReadSessionRK14ReadPluginDataRK13PNGPluginDataR20IIODecodeFrameParams_block_invoke(void *a1, uint64_t a2)
{
  v40 = 0;
  v41 = 0;
  v4 = *(a1[7] + 48) + 12 * a2;
  memset(v39, 0, sizeof(v39));
  v5 = *(v4 + 4);
  v7 = *(v4 + 8);
  v6 = v4 + 4;
  v8 = _cg_png_create_read_struct("1.6.43", 0, handle_error_idot, handle_warning);
  v41 = v8;
  info_struct = _cg_png_create_info_struct(v8);
  v40 = info_struct;
  _cg_png_set_option(v8, 2u, 3);
  _cg_png_set_benign_errors(v8, 1);
  v10 = a1[8];
  v37 = 0;
  v38 = 0;
  v36 = v10;
  _cg_png_set_read_fn(v8, &v36, read_fn2);
  _cg_png_set_keep_unknown_chunks_sized(v8, 3u, "CgBI", 4);
  appleflags = _cg_png_get_appleflags(v8);
  _cg_png_set_appleflags(v8, appleflags | 0xC);
  _cg_png_set_read_user_chunk_fn(v8, v39, PNGReadPlugin::Read_user_chunk_callback2);
  _cg_png_read_info(v8, info_struct);
  if (*(a1[9] + 63) == 1)
  {
    _cg_png_set_swap(v8);
  }

  if (*(a1[7] + 27) == 1)
  {
    _cg_png_set_add_alpha(v8, 255, 1);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v12 = a1[9];
      v13 = *(v12 + 23);
      if (v13 <= 0x7F)
      {
        v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
      }

      else
      {
        v14 = __maskrune(v13, 0x40000uLL);
        v12 = a1[9];
      }

      v15 = *(v12 + 20);
      if (v14)
      {
        v16 = (v15 >> 24);
      }

      else
      {
        v16 = 46;
      }

      v17 = v15 << 8 >> 24;
      if (v17 <= 0x7F)
      {
        v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
      }

      else
      {
        v18 = __maskrune(v17, 0x40000uLL);
        v12 = a1[9];
      }

      v19 = *(v12 + 20);
      if (v18)
      {
        v20 = (v19 << 8 >> 24);
      }

      else
      {
        v20 = 46;
      }

      v21 = v19 >> 8;
      if (v21 <= 0x7F)
      {
        v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(v21, 0x40000uLL);
        v12 = a1[9];
      }

      v23 = *(v12 + 20);
      if (v22)
      {
        v24 = (v23 >> 8);
      }

      else
      {
        v24 = 46;
      }

      if (v23 <= 0x7F)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000) != 0)
        {
          goto LABEL_25;
        }
      }

      else if (__maskrune(v23, 0x40000uLL))
      {
LABEL_25:
        v25 = *(a1[9] + 20);
LABEL_28:
        ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_AFTER\n", v16, v20, v24, v25, 4301);
        goto LABEL_29;
      }

      v25 = 46;
      goto LABEL_28;
    }
  }

LABEL_29:
  if (a2)
  {
    v26 = _cg_png_get_appleflags(v8);
    _cg_png_set_appleflags(v8, v26 | 0x10);
  }

  if (*(a1[7] + 28) == 1 && _cg_png_get_valid(v8, info_struct, 0x10u))
  {
    _cg_png_set_palette_to_rgb(v8);
    _cg_png_read_update_info(v8, info_struct);
  }

  v27 = (*(v6 + 8) - 4);
  v37 = v27;
  v38 = 0;
  IIOImageReadSession::willNeed(v36, v27, 0x10000uLL);
  v38 = v27 + 0x10000;
  _cg_png_set_row_number(v8, v5);
  chunk_header = _cg_png_read_chunk_header(v8);
  _cg_png_set_idat_size(v8, chunk_header);
  _cg_png_read_update_info(v8, info_struct);
  rowbytes = _cg_png_get_rowbytes(v8, info_struct);
  v30 = rowbytes;
  if (rowbytes >= *(a1[9] + 116))
  {
    v31 = *(a1[9] + 116);
  }

  else
  {
    v31 = rowbytes;
  }

  v32 = malloc_type_malloc(rowbytes, 0x100004077774924uLL);
  if (!v32)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (v7)
  {
    v33 = v7 + v5;
    if (a2)
    {
      v34 = 5;
    }

    else
    {
      v34 = 4;
    }

    do
    {
      _cg_png_read_row_sized(v8, v32, v30, 0, 0);
      memmove((a1[10] + v5 * *(a1[9] + 116)), v32, v31);
      atomic_fetch_add_explicit((*(a1[v34] + 8) + 24), 1u, memory_order_relaxed);
      ++v5;
    }

    while (v5 < v33);
  }

  _cg_png_destroy_read_struct(&v41, &v40, 0);
  v40 = 0;
  v41 = 0;
  free(v32);
}

void sub_185E865EC(void *a1)
{
  __cxa_begin_catch(a1);
  imagePNG_error_break(*(v2 - 96));
  *(*(*(v1 + 48) + 8) + 24) = -50;
  __cxa_end_catch();
  JUMPOUT(0x185E86588);
}

uint64_t ___ZN12IIOImageRead14CreateWithDataEPK8__CFDatab_block_invoke()
{
  result = IOPreferencesGetBoolean("ImageIO_CopyInputData", 0, 0);
  gCopyInputData = result;
  return result;
}

const char *LogError(const char *result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (gImageIOLogProc)
  {
    return gImageIOLogProc(16, 0, result, a2, a3, va);
  }

  return result;
}

const __CFString *IIOString::utf8String(IIOString *this)
{
  result = *(this + 2);
  if (result)
  {
    result = CFStringGetCStringPtr(result, 0x8000100u);
    if (!result)
    {
      result = *(this + 1);
      if (!result)
      {
        result = IIOString::createUTF8String(this);
        *(this + 1) = result;
      }
    }
  }

  return result;
}

const char *IIO_Reader::matchesExtension(IIO_Reader *this, char *a2)
{
  result = *(this + 2);
  if (result)
  {
    return (strcasestr(result, a2) != 0);
  }

  return result;
}

BOOL ValidDPI(float a1)
{
  if (a1 >= 10.0)
  {
    v2 = a1 == 4800.0;
    v1 = a1 >= 4800.0;
  }

  else
  {
    v1 = 1;
    v2 = 0;
  }

  return (v2 || !v1) && (LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000;
}

uint64_t IIOSkipMetadata(IIODictionary *a1)
{
  v2 = IIOMetadataParsingEnabledFlag() ^ 1;
  if (a1 && IIODictionary::getBoolForKey(a1, @"kCGImageSourceSkipMetadata"))
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• Ⓜ️  kCGImageSourceSkipMetadata --> handle minimum metadata only\n");
    }

    return 1;
  }

  return v2;
}

void IIODictionary::setObjectForKeyGroup(IIODictionary *this, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (a3)
  {
    if (a4)
    {
      if (*(this + 1))
      {
        GroupForKey = IIODictionary::getGroupForKey(this, a4, 1);
        if (GroupForKey)
        {
          if (a2)
          {

            CFDictionarySetValue(GroupForKey, a3, a2);
          }

          else
          {

            CFDictionaryRemoveValue(GroupForKey, a3);
          }
        }
      }
    }
  }
}

uint64_t IIOImageReadSession::getBytes(IIOImageReadSession *this, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(this + 4);
  if (!v4)
  {
    LogError("getBytes", 251, "*** ERROR: IIOImageReadSession::getBytes: _iRead is NULL\n");
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  IIOImageRead::length(v4);
  if (a3 < 1)
  {
    LogError("getBytes", 248, "*** ERROR: IIOImageReadSession::getBytes: count:%ld   offset:%ld   imgSize:%ld\n");
    goto LABEL_6;
  }

  result = IIOImageRead::getBytesAtOffset(*(this + 4), a2, *(this + 5), a3, 0);
LABEL_7:
  *(this + 5) += result;
  return result;
}

void IIOArray::addObject(IIOArray *this, const void *a2)
{
  if (a2)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if (*(this + 16) == 1)
      {
        CFArrayAppendValue(v3, a2);
      }

      else
      {
        LogError("addObject", 702, "IIOArray -- addObject for immutable array\n");
      }
    }
  }
}

void IIOArray::IIOArray(IIOArray *this)
{
  *this = &unk_1EF4D4210;
  *(this + 1) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(this + 16) = 1;
}

IIOImageRead *PNGReadPlugin::initialize(CGColorSpace **this, IIODictionary *a2)
{
  v3 = IIOImageSource::count(this);
  v4 = this[6];
  v5 = this[7];
  v6 = this[8];
  v7 = this[19];

  return PNGReadPlugin::InitializePluginData(v3, v4, v5, v6, this + 20, (this + 25), (this + 58), v7);
}

void png_colorspace_sync(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 76) = *(a1 + 1216);
    *(a2 + 92) = *(a1 + 1232);
    *(a2 + 108) = *(a1 + 1248);
    *(a2 + 60) = *(a1 + 1200);
    *(a2 + 120) = *(a1 + 1260);
    png_colorspace_sync_info(a1, a2);
  }
}

void png_colorspace_sync_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 134) < 0)
  {
    *(a2 + 8) = v2 & 0xFFFFE7FA;
    png_free_data(a1, a2, 0x10u, -1);
  }

  else
  {
    v3 = *(a2 + 134);
    v4 = v2 & 0xFFFFF7FB | (((v3 >> 7) & 1) << 11) | (4 * ((v3 >> 1) & 1));
    if (v3)
    {
      v5 = v4 | 1;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    *(a2 + 8) = v5;
  }
}

uint64_t _cg_png_get_valid(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (a3 == 16 && !*(a1 + 424))
    {
      return 0;
    }

    else
    {
      return *(a2 + 8) & a3;
    }
  }

  return result;
}

IIOImageRead *PNGReadPlugin::InitializePluginData(IIOImageReadSession *a1, IIODictionary *this, IIODictionary *a3, CGImageMetadata *a4, CGColorSpace **a5, uint64_t a6, uint64_t a7, __CFDictionary *a8)
{
  info_struct = 0;
  v215[0] = 0;
  if (!this)
  {
    v114 = 4294967246;
    goto LABEL_423;
  }

  if (IIODictionary::containsKey(this, @"kCGImageSourceCreateUnpremultipliedPNG"))
  {
    if (IIODictionary::getBoolForKey(this, @"kCGImageSourceCreateUnpremultipliedPNG"))
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = -1;
  }

  v12 = a6;
  *(a7 + 72) = v11;
  v191 = IIOSkipMetadata(this);
  IIOSkipXMP_and_IPTC(this);
  *(a7 + 28) = 0;
  v198 = this;
  *(a7 + 59) = IIODictionary::getBoolForKey(this, @"IIO_SKIP_APNG_COMPOSING");
  result = IIOImageReadSession::globalInfoForType(a1, 1095781959);
  if (!result)
  {
LABEL_13:
    v34 = *(v12 + 8);
    if (v34)
    {
      IIOImageReadSession::seek(a1, v34, 0);
    }

    if (IIODictionary::containsKey(v198, @"kCGImageSourceSubsampleFactor"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(v198, @"kCGImageSourceSubsampleFactor");
    }

    else
    {
      Uint32ForKey = 0;
    }

    v215[0] = _cg_png_create_read_struct("1.6.43", 0, handle_error, handle_warning);
    if (v215[0])
    {
      if (IIODictionary::containsKey(v198, @"kCGImageSourceSkipCRC"))
      {
        BoolForKey = IIODictionary::getBoolForKey(v198, @"kCGImageSourceSkipCRC");
      }

      else
      {
        BoolForKey = 0;
      }

      if (IIODictionary::containsKey(v198, @"kCGImageSourceDisableParallelDecode"))
      {
        v190 = IIODictionary::getBoolForKey(v198, @"kCGImageSourceDisableParallelDecode");
      }

      else
      {
        v190 = 0;
      }

      if (BoolForKey)
      {
        _cg_png_set_crc_action(v215[0], 4, 4);
      }

      info_struct = _cg_png_create_info_struct(v215[0]);
      if (!info_struct)
      {
        goto LABEL_186;
      }

      _cg_png_set_read_fn(v215[0], a1, pngReadCallback);
      _cg_png_set_option(v215[0], 2u, 3);
      _cg_png_set_benign_errors(v215[0], 1);
      *(a7 + 40) = 0;
      _cg_png_set_keep_unknown_chunks_sized(v215[0], 3u, "CgBI", 4);
      *(a7 + 56) = 0;
      _cg_png_set_read_user_chunk_fn(v215[0], a7, PNGReadPlugin::Read_user_chunk_callback);
      _cg_png_read_info(v215[0], info_struct);
      PNGReadPlugin::Validate_png_info(v215[0], info_struct, a7);
      bit_depth = _cg_png_get_bit_depth(v215[0], info_struct);
      if (*(a7 + 30) == 1)
      {
        *(a7 + 31) = _cg_png_get_first_frame_is_hidden(v215[0]) != 0;
      }

      *(a7 + 20) = _cg_png_set_interlace_handling(v215[0]);
      color_type = _cg_png_get_color_type(v215[0], info_struct);
      *(a7 + 19) = color_type;
      *(a7 + 18) = color_type;
      v36 = color_type;
      if (color_type == 3)
      {
        if (*(v12 + 169) != 1 || (*(a7 + 30) & 1) != 0 || *(a7 + 20) == 7)
        {
          *(a7 + 32) = 1;
          _cg_png_set_palette_to_rgb(v215[0]);
          if ((gIIODebugFlags & 0x20000) != 0)
          {
            v37 = *(v12 + 20);
            v38 = v37 >> 24;
            if ((v37 >> 24) <= 0x7F)
            {
              v39 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x40000;
            }

            else
            {
              v39 = __maskrune(v38, 0x40000uLL);
              v37 = *(v12 + 20);
              v38 = v37 >> 24;
            }

            if (v39)
            {
              v40 = v38;
            }

            else
            {
              v40 = 46;
            }

            v41 = v37 << 8 >> 24;
            if (v41 <= 0x7F)
            {
              v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
            }

            else
            {
              v42 = __maskrune(v41, 0x40000uLL);
              v37 = *(v12 + 20);
              v41 = v37 << 8 >> 24;
            }

            if (v42)
            {
              v43 = v41;
            }

            else
            {
              v43 = 46;
            }

            v44 = v37 >> 8;
            if (v44 <= 0x7F)
            {
              v45 = *(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x40000;
            }

            else
            {
              v45 = __maskrune(v44, 0x40000uLL);
              v37 = *(v12 + 20);
              v44 = v37 >> 8;
            }

            if (v45)
            {
              v46 = v44;
            }

            else
            {
              v46 = 46;
            }

            v47 = v37;
            if (v37 <= 0x7F)
            {
              v48 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
            }

            else
            {
              v48 = __maskrune(v37, 0x40000uLL);
              v47 = *(v12 + 20);
            }

            if (v48)
            {
              v49 = v47;
            }

            else
            {
              v49 = 46;
            }

            ImageIOLog("♦️  '%c%c%c%c' %d: png_set_palette_to_rgb\n", v40, v43, v46, v49, 1819);
          }

          _cg_png_set_add_alpha(v215[0], 255, 0);
          if ((gIIODebugFlags & 0x20000) != 0)
          {
            v50 = *(v12 + 20);
            v51 = v50 >> 24;
            if ((v50 >> 24) <= 0x7F)
            {
              v52 = *(MEMORY[0x1E69E9830] + 4 * v51 + 60) & 0x40000;
            }

            else
            {
              v52 = __maskrune(v51, 0x40000uLL);
              v50 = *(v12 + 20);
              v51 = v50 >> 24;
            }

            if (v52)
            {
              v53 = v51;
            }

            else
            {
              v53 = 46;
            }

            v54 = v50 << 8 >> 24;
            if (v54 <= 0x7F)
            {
              v55 = *(MEMORY[0x1E69E9830] + 4 * v54 + 60) & 0x40000;
            }

            else
            {
              v55 = __maskrune(v54, 0x40000uLL);
              v50 = *(v12 + 20);
              v54 = v50 << 8 >> 24;
            }

            if (v55)
            {
              v56 = v54;
            }

            else
            {
              v56 = 46;
            }

            v57 = v50 >> 8;
            if (v57 <= 0x7F)
            {
              v58 = *(MEMORY[0x1E69E9830] + 4 * v57 + 60) & 0x40000;
            }

            else
            {
              v58 = __maskrune(v57, 0x40000uLL);
              v50 = *(v12 + 20);
              v57 = v50 >> 8;
            }

            if (v58)
            {
              v59 = v57;
            }

            else
            {
              v59 = 46;
            }

            v60 = v50;
            if (v50 <= 0x7F)
            {
              v61 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
            }

            else
            {
              v61 = __maskrune(v50, 0x40000uLL);
              v60 = *(v12 + 20);
            }

            if (v61)
            {
              v62 = v60;
            }

            else
            {
              v62 = 46;
            }

            ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_BEFORE\n", v53, v56, v59, v62, 1821);
          }

          *(a7 + 27) = 1;
        }

        if (*(v12 + 58) == 24)
        {
          _cg_png_set_add_alpha(v215[0], 255, 0);
          if ((gIIODebugFlags & 0x20000) != 0)
          {
            v63 = *(v12 + 20);
            v64 = v63 >> 24;
            if ((v63 >> 24) <= 0x7F)
            {
              v65 = *(MEMORY[0x1E69E9830] + 4 * v64 + 60) & 0x40000;
            }

            else
            {
              v65 = __maskrune(v64, 0x40000uLL);
              v63 = *(v12 + 20);
              v64 = v63 >> 24;
            }

            if (v65)
            {
              v66 = v64;
            }

            else
            {
              v66 = 46;
            }

            v67 = v63 << 8 >> 24;
            if (v67 <= 0x7F)
            {
              v68 = *(MEMORY[0x1E69E9830] + 4 * v67 + 60) & 0x40000;
            }

            else
            {
              v68 = __maskrune(v67, 0x40000uLL);
              v63 = *(v12 + 20);
              v67 = v63 << 8 >> 24;
            }

            if (v68)
            {
              v69 = v67;
            }

            else
            {
              v69 = 46;
            }

            v70 = v63 >> 8;
            if (v70 <= 0x7F)
            {
              v71 = *(MEMORY[0x1E69E9830] + 4 * v70 + 60) & 0x40000;
            }

            else
            {
              v71 = __maskrune(v70, 0x40000uLL);
              v63 = *(v12 + 20);
              v70 = v63 >> 8;
            }

            if (v71)
            {
              v72 = v70;
            }

            else
            {
              v72 = 46;
            }

            v73 = v63;
            if (v63 <= 0x7F)
            {
              v74 = *(MEMORY[0x1E69E9830] + 4 * v63 + 60) & 0x40000;
            }

            else
            {
              v74 = __maskrune(v63, 0x40000uLL);
              v73 = *(v12 + 20);
            }

            if (v74)
            {
              v75 = v73;
            }

            else
            {
              v75 = 46;
            }

            ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_BEFORE\n", v66, v69, v72, v75, 1827);
          }

          *(a7 + 27) = 1;
        }

        v36 = *(a7 + 19);
      }

      if (!v36 && _cg_png_get_bit_depth(v215[0], info_struct) <= 7)
      {
        _cg_png_set_expand_gray_1_2_4_to_8(v215[0]);
        if ((gIIODebugFlags & 0x20000) != 0)
        {
          v76 = *(v12 + 20);
          v77 = v76 >> 24;
          if ((v76 >> 24) <= 0x7F)
          {
            v78 = *(MEMORY[0x1E69E9830] + 4 * v77 + 60) & 0x40000;
          }

          else
          {
            v78 = __maskrune(v77, 0x40000uLL);
            v76 = *(v12 + 20);
            v77 = v76 >> 24;
          }

          if (v78)
          {
            v79 = v77;
          }

          else
          {
            v79 = 46;
          }

          v80 = v76 << 8 >> 24;
          if (v80 <= 0x7F)
          {
            v81 = *(MEMORY[0x1E69E9830] + 4 * v80 + 60) & 0x40000;
          }

          else
          {
            v81 = __maskrune(v80, 0x40000uLL);
            v76 = *(v12 + 20);
            v80 = v76 << 8 >> 24;
          }

          if (v81)
          {
            v82 = v80;
          }

          else
          {
            v82 = 46;
          }

          v83 = v76 >> 8;
          if (v83 <= 0x7F)
          {
            v84 = *(MEMORY[0x1E69E9830] + 4 * v83 + 60) & 0x40000;
          }

          else
          {
            v84 = __maskrune(v83, 0x40000uLL);
            v76 = *(v12 + 20);
            v83 = v76 >> 8;
          }

          if (v84)
          {
            v85 = v83;
          }

          else
          {
            v85 = 46;
          }

          v86 = v76;
          if (v76 <= 0x7F)
          {
            v87 = *(MEMORY[0x1E69E9830] + 4 * v76 + 60) & 0x40000;
          }

          else
          {
            v87 = __maskrune(v76, 0x40000uLL);
            v86 = *(v12 + 20);
          }

          if (v87)
          {
            v88 = v86;
          }

          else
          {
            v88 = 46;
          }

          ImageIOLog("♦️  '%c%c%c%c' %d: png_set_expand_gray_1_2_4_to_8\n", v79, v82, v85, v88, 1837);
        }
      }

      if (_cg_png_get_valid(v215[0], info_struct, 0x10u))
      {
        _cg_png_set_palette_to_rgb(v215[0]);
        if ((gIIODebugFlags & 0x20000) != 0)
        {
          v89 = *(v12 + 20);
          v90 = v89 >> 24;
          if ((v89 >> 24) <= 0x7F)
          {
            v91 = *(MEMORY[0x1E69E9830] + 4 * v90 + 60) & 0x40000;
          }

          else
          {
            v91 = __maskrune(v90, 0x40000uLL);
            v89 = *(v12 + 20);
            v90 = v89 >> 24;
          }

          if (v91)
          {
            v95 = v90;
          }

          else
          {
            v95 = 46;
          }

          v96 = v89 << 8 >> 24;
          if (v96 <= 0x7F)
          {
            v97 = *(MEMORY[0x1E69E9830] + 4 * v96 + 60) & 0x40000;
          }

          else
          {
            v97 = __maskrune(v96, 0x40000uLL);
            v89 = *(v12 + 20);
            v96 = v89 << 8 >> 24;
          }

          if (v97)
          {
            v98 = v96;
          }

          else
          {
            v98 = 46;
          }

          v99 = v89 >> 8;
          if (v99 <= 0x7F)
          {
            v100 = *(MEMORY[0x1E69E9830] + 4 * v99 + 60) & 0x40000;
          }

          else
          {
            v100 = __maskrune(v99, 0x40000uLL);
            v89 = *(v12 + 20);
            v99 = v89 >> 8;
          }

          if (v100)
          {
            v101 = v99;
          }

          else
          {
            v101 = 46;
          }

          v102 = v89;
          if (v89 <= 0x7F)
          {
            v103 = *(MEMORY[0x1E69E9830] + 4 * v89 + 60) & 0x40000;
          }

          else
          {
            v103 = __maskrune(v89, 0x40000uLL);
            v102 = *(v12 + 20);
          }

          if (v103)
          {
            v104 = v102;
          }

          else
          {
            v104 = 46;
          }

          ImageIOLog("♦️  '%c%c%c%c' %d: png_set_tRNS_to_alpha\n", v95, v98, v101, v104, 1845);
        }

        *(a7 + 28) = 1;
      }

      else if (*(a7 + 30) == 1 && (*(a7 + 18) & 0xFE) == 2)
      {
        _cg_png_set_add_alpha(v215[0], 255, 0);
        if ((gIIODebugFlags & 0x20000) != 0)
        {
          v92 = *(v12 + 20);
          v93 = v92 >> 24;
          if ((v92 >> 24) <= 0x7F)
          {
            v94 = *(MEMORY[0x1E69E9830] + 4 * v93 + 60) & 0x40000;
          }

          else
          {
            v94 = __maskrune(v93, 0x40000uLL);
            v92 = *(v12 + 20);
            v93 = v92 >> 24;
          }

          if (v94)
          {
            v118 = v93;
          }

          else
          {
            v118 = 46;
          }

          v119 = v92 << 8 >> 24;
          if (v119 <= 0x7F)
          {
            v120 = *(MEMORY[0x1E69E9830] + 4 * v119 + 60) & 0x40000;
          }

          else
          {
            v120 = __maskrune(v119, 0x40000uLL);
            v92 = *(v12 + 20);
            v119 = v92 << 8 >> 24;
          }

          if (v120)
          {
            v121 = v119;
          }

          else
          {
            v121 = 46;
          }

          v122 = v92 >> 8;
          if (v122 <= 0x7F)
          {
            v123 = *(MEMORY[0x1E69E9830] + 4 * v122 + 60) & 0x40000;
          }

          else
          {
            v123 = __maskrune(v122, 0x40000uLL);
            v92 = *(v12 + 20);
            v122 = v92 >> 8;
          }

          if (v123)
          {
            v124 = v122;
          }

          else
          {
            v124 = 46;
          }

          v125 = v92;
          if (v92 <= 0x7F)
          {
            v126 = *(MEMORY[0x1E69E9830] + 4 * v92 + 60) & 0x40000;
          }

          else
          {
            v126 = __maskrune(v92, 0x40000uLL);
            v125 = *(v12 + 20);
          }

          if (v126)
          {
            v127 = v125;
          }

          else
          {
            v127 = 46;
          }

          ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_BEFORE\n", v118, v121, v124, v127, 1853);
        }

        *(a7 + 27) = 1;
      }

      _cg_png_read_update_info(v215[0], info_struct);
      channels = _cg_png_get_channels(v215[0], info_struct);
      *(a7 + 18) = _cg_png_get_color_type(v215[0], info_struct);
      image_width = _cg_png_get_image_width(v215[0], info_struct);
      image_height = _cg_png_get_image_height(v215[0], info_struct);
      rowbytes = _cg_png_get_rowbytes(v215[0], info_struct);
      v109 = ImageIOAlignRowBytes(rowbytes, 0x10uLL);
      if (image_width > 0x30D40 || image_height > 0x30D40)
      {
        LogError("InitializePluginData", 1871, "image too large (%ld x %ld)\n", image_width, image_height);
        goto LABEL_186;
      }

      v110 = v109;
      if (color_type == 3)
      {
        if (a8)
        {
          CFDictionarySetValue(a8, @"kImageIOInfoHeader_originalIsIndexed", *MEMORY[0x1E695E4D0]);
          v211 = 0;
          v201[0] = 0;
          _cg_png_get_PLTE(v215[0], info_struct, &v211, v201);
          if (v201[0])
          {
            v111 = CFDataCreate(*MEMORY[0x1E695E480], v211, 3 * v201[0]);
            if (v111)
            {
              CFDictionarySetValue(a8, @"kImageIOInfoHeader_originalIndexedColorMap", v111);
              CFRelease(v111);
            }
          }

          v112 = 1;
        }

        else
        {
          v112 = 0;
        }
      }

      else
      {
        if (v109 * image_height > 10000 * *v12)
        {
          LogError("InitializePluginData", 1881, "image (%ld x %ld) too large (b = %ld  bpr=%ld fs = %ld\n", image_width, image_height, v109 * image_height, v109, *v12);
          goto LABEL_186;
        }

        v112 = a8 != 0;
      }

      *(v12 + 44) = image_width;
      *(v12 + 48) = image_height;
      *(v12 + 52) = v110;
      *(v12 + 56) = bit_depth;
      *(v12 + 60) = channels;
      *(v12 + 58) = channels * bit_depth;
      if ((*(a7 + 18) & 2) != 0 && bit_depth == 8)
      {
        if (channels <= 3)
        {
          _cg_png_set_add_alpha(v215[0], 255, 1);
          if ((gIIODebugFlags & 0x20000) != 0)
          {
            v115 = *(v12 + 20);
            v116 = v115 >> 24;
            if ((v115 >> 24) <= 0x7F)
            {
              v117 = *(MEMORY[0x1E69E9830] + 4 * v116 + 60) & 0x40000;
            }

            else
            {
              v117 = __maskrune(v116, 0x40000uLL);
              v115 = *(v12 + 20);
              v116 = v115 >> 24;
            }

            if (v117)
            {
              v128 = v116;
            }

            else
            {
              v128 = 46;
            }

            v129 = v115 << 8 >> 24;
            if (v129 <= 0x7F)
            {
              v130 = *(MEMORY[0x1E69E9830] + 4 * v129 + 60) & 0x40000;
            }

            else
            {
              v130 = __maskrune(v129, 0x40000uLL);
              v115 = *(v12 + 20);
              v129 = v115 << 8 >> 24;
            }

            if (v130)
            {
              v131 = v129;
            }

            else
            {
              v131 = 46;
            }

            v132 = v115 >> 8;
            if (v132 <= 0x7F)
            {
              v133 = *(MEMORY[0x1E69E9830] + 4 * v132 + 60) & 0x40000;
            }

            else
            {
              v133 = __maskrune(v132, 0x40000uLL);
              v115 = *(v12 + 20);
              v132 = v115 >> 8;
            }

            if (v133)
            {
              v134 = v132;
            }

            else
            {
              v134 = 46;
            }

            v135 = v115;
            if (v115 <= 0x7F)
            {
              v136 = *(MEMORY[0x1E69E9830] + 4 * v115 + 60) & 0x40000;
            }

            else
            {
              v136 = __maskrune(v115, 0x40000uLL);
              v135 = *(v12 + 20);
            }

            if (v136)
            {
              v137 = v135;
            }

            else
            {
              v137 = 46;
            }

            ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_AFTER\n", v128, v131, v134, v137, 1918);
          }

          *(a7 + 27) = 1;
          *(v12 + 88) = 2097160;
          channels = 4;
          *(v12 + 92) = 4;
        }

        *(v12 + 95) = 0;
      }

      *(a7 + 29) = BoolForKey;
      v138 = 1;
      *(v12 + 132) = 1;
      if (image_width >= image_height)
      {
        v139 = image_height;
      }

      else
      {
        v139 = image_width;
      }

      if (Uint32ForKey > v139)
      {
        v140 = 1;
LABEL_251:
        Uint32ForKey = v140;
        goto LABEL_278;
      }

      if (Uint32ForKey < 2)
      {
        if (*(v12 + 32) < 2u)
        {
          v138 = 1;
          goto LABEL_278;
        }

        v141 = *(v12 + 28);
        if (v141 && ((v138 = 32, v141 < image_width >> 5) || image_height >> 5 > v141 || (v138 = 16, v141 < image_width >> 4) || image_height >> 4 > v141 || (v138 = 8, v141 < image_width >> 3) || image_height >> 3 > v141 || (v138 = 4, v141 < image_width >> 2) || image_height >> 2 > v141 || (v138 = 2, v141 < image_width >> 1) || image_height >> 1 > v141))
        {
          *(v12 + 132) = v138;
        }

        else
        {
          v138 = 1;
        }

        if (*(v12 + 48) > v138)
        {
          v140 = v138;
          goto LABEL_251;
        }

        v138 = 1;
      }

      else if (Uint32ForKey < 0x80)
      {
        if (Uint32ForKey < 0x40)
        {
          if (Uint32ForKey < 0x20)
          {
            if (Uint32ForKey < 0x10)
            {
              if (Uint32ForKey < 8)
              {
                if (Uint32ForKey < 4)
                {
                  v138 = 2;
                }

                else
                {
                  v138 = 4;
                }
              }

              else
              {
                v138 = 8;
              }
            }

            else
            {
              v138 = 16;
            }
          }

          else
          {
            v138 = 32;
          }
        }

        else
        {
          v138 = 64;
        }
      }

      else
      {
        v138 = 128;
      }

      *(v12 + 132) = v138;
LABEL_278:
      if (*(a7 + 18) == 3 || *(a7 + 20) > 1u || (v142 = *(v12 + 56), v142 != 8) && v142 != 16 || (gIIODebugFlags & 0x100000000) != 0 || *(a7 + 30) || Uint32ForKey < 2)
      {
        *(v12 + 132) = 1;
      }

      else
      {
        *(v12 + 76) = image_width / v138;
        *(v12 + 80) = image_height / v138;
        *(v12 + 84) = image_width / v138 * channels * (v142 >> 3);
      }

      *(v12 + 172) = 0;
      *(v12 + 174) = 0;
      if (a5)
      {
        *v201 = 0.0;
        *a5 = PNGReadPlugin::Get_colorspace(v12, a7, v215[0], info_struct, v201);
        if (*v201 != 0.0 && v112)
        {
          IIONumber::IIONumber(&v211, *v201);
          CFDictionarySetValue(a8, @"kImageIOInfoHeader_gammaValue", v213);
          IIONumber::~IIONumber(&v211);
        }
      }

      v144 = *(a7 + 18);
      if (*(a7 + 35) != 1 || (v144 & 2) != 0)
      {
        if (*(a7 + 18) <= 2u)
        {
          if (*(a7 + 18))
          {
            if (v144 == 2)
            {
              *(v12 + 62) = 0;
              if (*(v12 + 58) == 8 && *(v12 + 56) == 8)
              {
                *(v12 + 88) = 0x5000400200008;
              }

              goto LABEL_327;
            }

            goto LABEL_314;
          }
        }

        else
        {
          if (v144 == 3)
          {
            if (*(a7 + 30) == 1 || *(a7 + 38) == 1)
            {
              *(v12 + 62) = 5;
            }

            else
            {
              *(v12 + 62) = 0;
            }

LABEL_327:
            *(v12 + 140) = 1380401696;
            v146 = 1;
            goto LABEL_328;
          }

          if (v144 != 4)
          {
            if (v144 == 6)
            {
              if (*(a7 + 35))
              {
                v145 = *(a7 + 40) & 0x1F;
                switch(v145)
                {
                  case 2:
                    LOBYTE(v145) = 1;
                    break;
                  case 6:
                    LOBYTE(v145) = 5;
                    break;
                  case 4:
                    LOBYTE(v145) = 3;
                    break;
                }

                *(v12 + 62) = v145;
                *(v12 + 63) = 0;
                *(v12 + 65) = 0;
              }

              else
              {
                if (*(a7 + 72) == 1 || *(v12 + 56) != 8)
                {
                  LOBYTE(v145) = 3;
                }

                else
                {
                  LOBYTE(v145) = 1;
                }

                *(v12 + 62) = v145;
              }

              *(v12 + 94) = v145;
              goto LABEL_327;
            }

LABEL_314:
            v146 = *(v12 + 140) == 1380401696;
LABEL_328:
            if (v146 && channels >= 3)
            {
              *(a7 + 34) = 1;
            }

LABEL_331:
            if (_cg_png_get_valid(v215[0], info_struct, 1u))
            {
              _cg_png_get_gAMA(v215[0], info_struct, (a7 + 8));
              IIONumber::IIONumber(&v211, *(a7 + 8));
              IIODictionary::setObjectForKeyGroup(a3, &v211, @"Gamma", @"{PNG}");
              IIONumber::~IIONumber(&v211);
            }

            if (_cg_png_get_valid(v215[0], info_struct, 0x800u))
            {
              v201[0] = 0;
              _cg_png_get_sRGB(v215[0], info_struct, v201);
              IIONumber::IIONumber(&v211, v201[0]);
              IIODictionary::setObjectForKeyGroup(a3, &v211, @"sRGBIntent", @"{PNG}");
              IIONumber::~IIONumber(&v211);
            }

            if (_cg_png_get_valid(v215[0], info_struct, 4u))
            {
              v209 = 0.0;
              v210 = 0.0;
              v207 = 0.0;
              v208 = 0.0;
              v205 = 0.0;
              v206 = 0.0;
              v203 = 0.0;
              v204 = 0.0;
              _cg_png_get_cHRM(v215[0], info_struct, &v210, &v209, &v208, &v207, &v206, &v205, &v204, &v203);
              v211 = 0;
              v212 = 0;
              v213 = 0;
              IIOArray::IIOArray(&v211);
              IIONumber::IIONumber(v201, v210);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v209);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v208);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v207);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v206);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v205);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v204);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIONumber::IIONumber(v201, v203);
              IIOArray::addObject(&v211, v202);
              IIONumber::~IIONumber(v201);
              IIODictionary::setObjectForKeyGroup(a3, v212, @"Chromaticities", @"{PNG}");
              IIOArray::~IIOArray(&v211);
            }

            interlace_type = _cg_png_get_interlace_type(v215[0], info_struct);
            IIONumber::IIONumber(&v211, interlace_type);
            IIODictionary::setObjectForKeyGroup(a3, &v211, @"InterlaceType", @"{PNG}");
            IIONumber::~IIONumber(&v211);
            x_pixels_per_meter = _cg_png_get_x_pixels_per_meter(v215[0], info_struct);
            y_pixels_per_meter = _cg_png_get_y_pixels_per_meter(v215[0], info_struct);
            if (x_pixels_per_meter && (v150 = y_pixels_per_meter) != 0)
            {
              IIONumber::IIONumber(&v211, x_pixels_per_meter);
              IIODictionary::setObjectForKeyGroup(a3, &v211, @"XPixelsPerMeter", @"{PNG}");
              IIONumber::~IIONumber(&v211);
              IIONumber::IIONumber(v151, v150);
              IIODictionary::setObjectForKeyGroup(a3, &v211, @"YPixelsPerMeter", @"{PNG}");
              IIONumber::~IIONumber(&v211);
              v152 = roundf(x_pixels_per_meter * 0.0254);
              valid = ValidDPI(v152);
              if (!valid)
              {
                goto LABEL_345;
              }

              v155 = roundf(v150 * 0.0254);
              valid = ValidDPI(v155);
              if (!valid)
              {
                goto LABEL_345;
              }

              IIONumber::IIONumber(&v211, v152);
              IIODictionary::setObjectForKey(a3, &v211, @"DPIWidth");
              IIONumber::~IIONumber(&v211);
              IIONumber::IIONumber(v156, v155);
              IIODictionary::setObjectForKey(a3, &v211, @"DPIHeight");
            }

            else
            {
              pixel_aspect_ratio = _cg_png_get_pixel_aspect_ratio(v215[0], info_struct);
              if (pixel_aspect_ratio <= 0.0)
              {
                goto LABEL_345;
              }

              IIONumber::IIONumber(&v211, pixel_aspect_ratio);
              IIODictionary::setObjectForKeyGroup(a3, &v211, @"PixelAspectRatio", @"{PNG}");
            }

            IIONumber::~IIONumber(&v211);
LABEL_345:
            if (v191)
            {
              PNGReadPlugin::AddOrientationToMetadata(valid, v154, a4, v215[0], info_struct);
            }

            else
            {
              PNGReadPlugin::HandlePNGMetadata(v198, a3, a4, v215[0], info_struct);
            }

            if (IIODictionary::containsKey(v198, @"kCGImageSourceAddPencilKitPrivateData"))
            {
              v158 = *(a7 + 64);
              if (v158)
              {
                IIODictionary::setObjectForKeyGroup(a3, v158, @"PencilKitPrivateData", @"{PNG}");
              }
            }

            _cg_png_destroy_read_struct(v215, &info_struct, 0);
            v215[0] = 0;
            v159 = *(v12 + 58);
            v160 = *(v12 + 56);
            if (v159 == 32 && v160 == 8)
            {
              if (*(v12 + 62) == 3)
              {
                v161 = 3;
                if ((*(a7 + 30) & 1) == 0 && *(a7 + 72) != 1)
                {
                  if ((*(a7 + 40) & 0x1Fu) - 1 < 2)
                  {
                    v161 = 1;
                  }

                  else
                  {
                    v161 = 3;
                  }
                }

                *(v12 + 62) = v161;
                *(v12 + 63) = 0;
                goto LABEL_368;
              }

              if (*(a7 + 19) == 3)
              {
LABEL_367:
                *(a7 + 26) = 1;
                goto LABEL_368;
              }
            }

            else
            {
              if (*(a7 + 19) == 3)
              {
                goto LABEL_367;
              }

              if (v159 == 24)
              {
                if (*(v12 + 169))
                {
                  v162 = 5;
                }

                else
                {
                  v162 = 3;
                }

                *(v12 + 94) = v162;
                *(v12 + 95) = 0;
                goto LABEL_368;
              }

              if (v160 == 16)
              {
                *(v12 + 63) = 1;
                *(v12 + 95) = 1;
                goto LABEL_368;
              }
            }

            if ((*(v12 + 169) & 1) == 0)
            {
              v166 = *(a7 + 18);
              if (*(a7 + 18))
              {
                if (v166 == 2)
                {
                  if (v160 > 7)
                  {
                    goto LABEL_368;
                  }
                }

                else if (v166 != 3)
                {
                  goto LABEL_368;
                }

                *(a7 + 26) = 1;
                *(v12 + 52) = 4 * *(v12 + 44);
                *(v12 + 56) = 2097160;
                *(v12 + 62) = 1027;
                *(a7 + 34) = 1;
                goto LABEL_368;
              }

              if (v160 == 8)
              {
                *(a7 + 27) = 1;
                *(v12 + 58) = 16;
                *(v12 + 52) = 2 * *(v12 + 44);
              }

              else
              {
                *(v12 + 52) = 2 * *(v12 + 44);
                *(v12 + 56) = 1048584;
              }

              *(v12 + 62) = 3;
            }

LABEL_368:
            if (a5)
            {
              if (!*a5 && *(v12 + 140) == 1380401696)
              {
                TopLevelTag = CGImageMetadataGetTopLevelTag(a4, @"http://ns.adobe.com/exif/1.0/", @"ColorSpace");
                if (TopLevelTag)
                {
                  Value = CGImageMetadataTagGetValue(TopLevelTag);
                  if (Value)
                  {
                    TypeID = CFStringGetTypeID();
                    if (TypeID == CFGetTypeID(Value))
                    {
                      if (CFStringGetIntValue(Value) != 1)
                      {
                        goto LABEL_386;
                      }

LABEL_385:
                      *a5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                      goto LABEL_386;
                    }

                    v167 = CFNumberGetTypeID();
                    if (v167 == CFGetTypeID(Value))
                    {
                      v168 = IIONumber::IIONumber(&v211, Value);
                      v169 = IIONumber::uint32Num(v168);
                      IIONumber::~IIONumber(&v211);
                      if (v169 == 1)
                      {
                        goto LABEL_385;
                      }
                    }
                  }
                }
              }
            }

LABEL_386:
            *(v12 + 192) = 1;
            *(a7 + 58) = v190;
            *a7 = 1;
            if (*(a7 + 30))
            {
              v170 = 3;
              v171 = a3;
            }

            else
            {
              v171 = a3;
              if (*(a7 + 20) != 7)
              {
LABEL_391:
                v113 = 1;
                *(v12 + 208) = 1;
                if (*(v12 + 56) != bit_depth)
                {
                  IIONumber::IIONumber(&v211, bit_depth);
                  IIODictionary::setObjectForKey(v171, &v211, @"Depth");
                  IIONumber::~IIONumber(&v211);
                }

                *(v12 + 178) = 1;
                v172 = *(v12 + 97) != 0;
                if ((gIIODebugFlags & 0x20000) != 0)
                {
                  v173 = *(v12 + 96);
                  v174 = *(v12 + 95);
                  v175 = *(v12 + 94);
                  v176 = *(v12 + 20);
                  v177 = v176 >> 24;
                  if ((v176 >> 24) <= 0x7F)
                  {
                    v178 = *(MEMORY[0x1E69E9830] + 4 * v177 + 60) & 0x40000;
                  }

                  else
                  {
                    v178 = __maskrune(v177, 0x40000uLL);
                    v176 = *(v12 + 20);
                    v177 = v176 >> 24;
                  }

                  if (v178)
                  {
                    v179 = v177;
                  }

                  else
                  {
                    v179 = 46;
                  }

                  v180 = v176 << 8 >> 24;
                  if (v180 <= 0x7F)
                  {
                    v181 = *(MEMORY[0x1E69E9830] + 4 * v180 + 60) & 0x40000;
                  }

                  else
                  {
                    v181 = __maskrune(v180, 0x40000uLL);
                    v176 = *(v12 + 20);
                    v180 = v176 << 8 >> 24;
                  }

                  if (v181)
                  {
                    v182 = v180;
                  }

                  else
                  {
                    v182 = 46;
                  }

                  v183 = v176 >> 8;
                  if (v183 <= 0x7F)
                  {
                    v184 = *(MEMORY[0x1E69E9830] + 4 * v183 + 60) & 0x40000;
                  }

                  else
                  {
                    v184 = __maskrune(v183, 0x40000uLL);
                    v176 = *(v12 + 20);
                    v183 = v176 >> 8;
                  }

                  if (v184)
                  {
                    v185 = v183;
                  }

                  else
                  {
                    v185 = 46;
                  }

                  if (v176 <= 0x7F)
                  {
                    v186 = *(MEMORY[0x1E69E9830] + 4 * v176 + 60) & 0x40000;
                  }

                  else
                  {
                    v186 = __maskrune(v176, 0x40000uLL);
                    v176 = *(v12 + 20);
                  }

                  v187 = (v174 << 12) | (v173 << 16) | (v172 << 8) | v175;
                  v188 = IIO_BitmapInfoString(v187);
                  if (v186)
                  {
                    v189 = v176;
                  }

                  else
                  {
                    v189 = 46;
                  }

                  ImageIOLog("♦️  '%c%c%c%c' %d: rpd._createImageProviderWithBitmapInfo 0x%08X  %s\n", v179, v182, v185, v189, 2402, v187, v188);
                  v114 = 0;
                  v113 = 1;
                }

                else
                {
                  v114 = 0;
                }

LABEL_420:
                if (v215[0])
                {
                  _cg_png_destroy_read_struct(v215, &info_struct, 0);
                }

                if (v113)
                {
                  return v114;
                }

                goto LABEL_423;
              }

              v170 = 2;
            }

            *a7 = v170;
            goto LABEL_391;
          }

          LOBYTE(v144) = 3;
        }

        *(v12 + 62) = v144;
        *(v12 + 94) = v144;
        *(v12 + 140) = 1196573017;
        goto LABEL_331;
      }

LABEL_186:
      v113 = 0;
      v114 = 4294967246;
      goto LABEL_420;
    }

    v114 = 4294967246;
LABEL_423:
    kdebug_trace();
    return v114;
  }

  *(a7 + 30) = 1;
  v16 = *(a6 + 24);
  v17 = *(result + 1);
  if (0xF0F0F0F0F0F0F0F1 * ((*(result + 2) - v17) >> 1) > v16)
  {
    v18 = v17 + 34 * v16;
    v20 = *(v18 + 4);
    v19 = *(v18 + 8);
    v22 = *(v18 + 12);
    v21 = *(v18 + 16);
    v23 = *(v18 + 24);
    v24 = *(v18 + 25);
    LOWORD(v14) = *(v18 + 20);
    LOWORD(v15) = *(v18 + 22);
    v25 = v14 / v15;
    IIONumber::IIONumber(&v211, v25);
    IIODictionary::setObjectForKeyGroup(a3, &v211, @"UnclampedDelayTime", @"{PNG}");
    IIONumber::~IIONumber(&v211);
    v27 = v25;
    if (v25 < 0.05)
    {
      v27 = 0.05;
    }

    IIONumber::IIONumber(v26, v27);
    IIODictionary::setObjectForKeyGroup(a3, &v211, @"DelayTime", @"{PNG}");
    IIONumber::~IIONumber(&v211);
    v12 = a6;
    if (*(a7 + 59) == 1)
    {
      IIONumber::IIONumber(v28, v22);
      IIODictionary::setObjectForKeyGroup(a3, &v211, @"xOffset", @"{PNG}");
      IIONumber::~IIONumber(&v211);
      IIONumber::IIONumber(v29, v21);
      IIODictionary::setObjectForKeyGroup(a3, &v211, @"yOffset", @"{PNG}");
      IIONumber::~IIONumber(&v211);
      IIONumber::IIONumber(v30, v20);
      IIODictionary::setObjectForKeyGroup(a3, &v211, @"width", @"{PNG}");
      IIONumber::~IIONumber(&v211);
      IIONumber::IIONumber(v31, v19);
      IIODictionary::setObjectForKeyGroup(a3, &v211, @"height", @"{PNG}");
      IIONumber::~IIONumber(&v211);
      IIONumber::IIONumber(v32, v23);
      IIODictionary::setObjectForKeyGroup(a3, &v211, @"disposeOp", @"{PNG}");
      IIONumber::~IIONumber(&v211);
      IIONumber::IIONumber(v33, v24);
      IIODictionary::setObjectForKeyGroup(a3, &v211, @"blendOp", @"{PNG}");
      IIONumber::~IIONumber(&v211);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_185E8879C(void *a1)
{
  IIONumber::~IIONumber((v1 - 144));
  __cxa_begin_catch(a1);
  imagePNG_error_break(*(v1 - 112));
  __cxa_end_catch();
  JUMPOUT(0x185E88680);
}

uint64_t _cg_png_get_interlace_type(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 48);
    }
  }

  return result;
}

uint64_t _cg_png_get_cHRM(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  result = 0;
  if (a1 && a2)
  {
    if ((*(a2 + 134) & 2) != 0)
    {
      if (a3)
      {
        *a3 = *(a2 + 88) * 0.00001;
      }

      if (a4)
      {
        *a4 = *(a2 + 92) * 0.00001;
      }

      if (a5)
      {
        *a5 = *(a2 + 64) * 0.00001;
      }

      if (a6)
      {
        *a6 = *(a2 + 68) * 0.00001;
      }

      if (a7)
      {
        *a7 = *(a2 + 72) * 0.00001;
      }

      if (a8)
      {
        *a8 = *(a2 + 76) * 0.00001;
      }

      if (a9)
      {
        *a9 = *(a2 + 80) * 0.00001;
      }

      if (a10)
      {
        *a10 = *(a2 + 84) * 0.00001;
      }

      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _cg_png_get_x_pixels_per_meter(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if ((*(a2 + 8) & 0x80) != 0 && *(a2 + 256) == 1)
    {
      return *(a2 + 248);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _cg_png_get_y_pixels_per_meter(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if ((*(a2 + 8) & 0x80) != 0 && *(a2 + 256) == 1)
    {
      return *(a2 + 252);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PNGReadPlugin::Validate_png_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 35) == 1)
  {
    bit_depth = _cg_png_get_bit_depth(a1, a2);
    color_type = _cg_png_get_color_type(a1, a2);
    if (bit_depth != 8 || color_type == 3)
    {
      *(a3 + 35) = 256;
      *(a3 + 40) = 0;
    }
  }

  return 0;
}

uint64_t _cg_png_get_color_type(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 45);
    }
  }

  return result;
}

uint64_t _cg_png_get_bit_depth(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 44);
    }
  }

  return result;
}

uint64_t _cg_png_set_interlace_handling(uint64_t a1)
{
  if (!a1 || !*(a1 + 428))
  {
    return 1;
  }

  *(a1 + 88) |= 2u;
  return 7;
}

uint64_t _cg_png_get_image_height(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 4);
    }
  }

  return result;
}

uint64_t _cg_png_get_image_width(uint64_t a1, unsigned int *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *a2;
    }
  }

  return result;
}

unint64_t ImageIOAlignRowBytes(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    return (a1 + a2 - 1) / a2 * a2;
  }

  else
  {
    return (a1 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }
}

double PNGReadPlugin::PNGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D5108;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0u;
  *(v5 + 512) = 0u;
  *(v5 + 528) = 0u;
  return result;
}

void IIO_Reader_PNG::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t pngReadCallback(void (**a1)(void), unsigned __int8 *a2, uint64_t a3)
{
  io_ptr = _cg_png_get_io_ptr(a1);
  result = IIOImageReadSession::getBytes(io_ptr, a2, a3);
  if (result != a3)
  {
    _cg_png_error(a1, "PNG read error");
  }

  return result;
}

CGColorSpace *PNGReadPlugin::Get_colorspace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  __dst[96] = *MEMORY[0x1E69E9840];
  color_type = _cg_png_get_color_type(a3, a4);
  *a5 = 0.0;
  if (*(a2 + 25) == 1)
  {
    cHRM_colorspace = CGColorSpaceCreateFromCICP();
    if (cHRM_colorspace)
    {
      goto LABEL_25;
    }
  }

  valid = _cg_png_get_valid(a3, a4, 0x1000u);
  if (!valid)
  {
    goto LABEL_24;
  }

  __src = 0;
  __dst[0] = 0;
  length = 0;
  valid = _cg_png_get_iCCP(a3, a4, __dst, &length, &__src, &length + 1);
  if (HIDWORD(length) < 0x81)
  {
    if (color_type != 3)
    {
      v14 = 0;
      LOBYTE(v15) = 0;
LABEL_19:
      if ((color_type & 2) != 0)
      {
        LOBYTE(v15) = v14;
      }

      if (v15)
      {
        goto LABEL_24;
      }

      valid = __src;
      goto LABEL_23;
    }

LABEL_24:
    cHRM_colorspace = PNGReadPlugin::Get_cHRM_colorspace(valid, a3, a4, a5);
    goto LABEL_25;
  }

  valid = __src;
  v13 = *(__src + 16);
  if (v13 == 71)
  {
    if (*(__src + 17) == 82 && *(__src + 18) == 65)
    {
      v15 = 0;
      v14 = *(__src + 19) == 89;
      goto LABEL_16;
    }
  }

  else if (v13 == 82 && *(__src + 17) == 71 && *(__src + 18) == 66)
  {
    v14 = 0;
    v15 = *(__src + 19) == 32;
    goto LABEL_16;
  }

  v15 = 0;
  v14 = 0;
LABEL_16:
  if (color_type != 3)
  {
    goto LABEL_19;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_23:
  valid = CGColorSpaceCreateWithCopyOfData(valid, HIDWORD(length));
  cHRM_colorspace = valid;
  if (!valid)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (color_type == 3 && !_cg_png_get_valid(a3, a4, 0x10u))
  {
    if (!cHRM_colorspace)
    {
      cHRM_colorspace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      bzero(__dst, 0x300uLL);
      __src = 0;
      HIDWORD(length) = 0;
      _cg_png_get_PLTE(a3, a4, &__src, &length + 1);
      v16 = SHIDWORD(length);
      memcpy(__dst, __src, 3 * SHIDWORD(length));
      if (*(a1 + 169) == 1)
      {
        Indexed = CGColorSpaceCreateIndexed(cHRM_colorspace, v16 - 1, __dst);
        if (Indexed)
        {
          v18 = Indexed;
          CGColorSpaceRelease(cHRM_colorspace);
          return v18;
        }
      }
    }
  }

  return cHRM_colorspace;
}

uint64_t _cg_png_get_channels(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 49);
    }
  }

  return result;
}

uint64_t IIO_Reader_PNG::getImageCount(IIO_Reader_PNG *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  Size = IIOImageReadSession::getSize(a2);
  if (IIOImageReadSession::getBytesAtOffset(a2, v34, 8, 8) != 8)
  {
    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v32 = 0;
  v9 = 8;
  while (1)
  {
    v10 = bswap32(v34[0].u32[0]);
    v11 = bswap32(v34[0].u32[1]);
    if (v11 == 1229209940)
    {
      v12 = 1;
      if (v7)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v11 == 1229472850)
    {
      if (v8)
      {
        IIO_Reader_PNG::getImageCount();
        goto LABEL_20;
      }

      if (IIOImageReadSession::getBytesAtOffset(a2, v34, v9 + 8, 8) != 8)
      {
        goto LABEL_13;
      }

      v32 = vrev32_s8(v34[0]);
      v8 = 1;
      goto LABEL_10;
    }

    if (v11 == 1633899596)
    {
      break;
    }

LABEL_10:
    v12 = v7;
LABEL_12:
    v9 += v10 + 12;
    v7 = v12;
    if (IIOImageReadSession::getBytesAtOffset(a2, v34, v9, 8) != 8)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    IIO_Reader_PNG::getImageCount();
    goto LABEL_20;
  }

  if (IIOImageReadSession::getBytesAtOffset(a2, v34, v9 + 8, 8) != 8)
  {
LABEL_13:
    LODWORD(v12) = 1;
    goto LABEL_14;
  }

  v12 = bswap32(v34[0].u32[0]);
  if (v12 > Size / 0x22)
  {
LABEL_20:
    LODWORD(v12) = 0;
    goto LABEL_14;
  }

  v14 = v34[0].u32[1];
  v15 = IIOImageReadSession::globalInfoForType(a2, 1095781959);
  v30 = v15;
  if (!v15)
  {
    operator new();
  }

  std::vector<fcTL_CHUNK>::resize(v15 + 1, 0);
  *(v30 + 10) = v12;
  *(v30 + 11) = bswap32(v14);
  std::vector<fcTL_CHUNK>::resize(v30 + 1, v12);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  *(v30 + 4) = v32;
  v20 = v9 + v10 + 12;
  memset(v33, 0, 34);
  while (2)
  {
    if (v12 <= v19)
    {
      goto LABEL_51;
    }

    if (IIOImageReadSession::getBytesAtOffset(a2, v34, v20, 8) != 8)
    {
      ++v19;
      v18 = v12;
      goto LABEL_41;
    }

    v21 = v34[0].i32[0];
    v22 = bswap32(v34[0].u32[1]);
    if (v22 == 1717846356)
    {
      ++v16;
      goto LABEL_40;
    }

    if (v22 != 1717785676)
    {
      goto LABEL_40;
    }

    IIOImageReadSession::getBytesAtOffset(a2, v33, v20 + 8, 34);
    ++v17;
    *(&v33[1] + 10) = v20;
    v23 = bswap32(v33[0]);
    LODWORD(v33[0]) = v23;
    if (v17 + v16 > v23)
    {
      v24 = vrev32q_s8(*(v33 + 4));
      *(v33 + 4) = v24;
      WORD2(v33[1]) = bswap32(WORD2(v33[1])) >> 16;
      v25 = WORD3(v33[1]);
      WORD3(v33[1]) = __rev16(WORD3(v33[1]));
      if ((v24.i32[3] | v24.i32[2]) < 0 || v24.i32[0] < 1 || v24.i32[1] < 1 || (v24.i32[2] + v24.i32[0]) > v32.i32[0] || (v24.i32[3] + v24.i32[1]) > v32.i32[1])
      {
        if (v18)
        {
          LODWORD(v12) = v18 - 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        _cg_jpeg_mem_term("getImageCount", 420, "*** bad dimensions: PNG: %dx%d\n", v32.i32[0], v32.i32[1]);
        _cg_jpeg_mem_term("getImageCount", 421, "    frame[%d]: {%d, %d, %d, %d}\n", v12, HIDWORD(v33[0]), LODWORD(v33[1]), DWORD1(v33[0]), DWORD2(v33[0]));
        goto LABEL_49;
      }

      if (!v25)
      {
        strcpy(&v33[1] + 6, "d");
      }

      v26 = *(v30 + 1);
      if (0xF0F0F0F0F0F0F0F1 * ((*(v30 + 2) - v26) >> 1) <= v18)
      {
        __break(1u);
      }

      v27 = v26 + 34 * v18;
      v28 = v33[0];
      v29 = v33[1];
      *(v27 + 32) = v33[2];
      *v27 = v28;
      *(v27 + 16) = v29;
      ++v18;
      ++v19;
LABEL_40:
      v20 += bswap32(v21) + 12;
LABEL_41:
      if (v20 > Size)
      {
        if (v18)
        {
          LODWORD(v12) = v18 - 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

LABEL_49:
        *(v30 + 10) = v12;
        goto LABEL_14;
      }

      continue;
    }

    break;
  }

  _cg_jpeg_mem_term("getImageCount", 384, "*** bad fcTL.sequence_number: %d/%d\n", v23, v12);
  *(v30 + 10) = 1;
  std::vector<fcTL_CHUNK>::resize(v30 + 1, 1uLL);
  LODWORD(v12) = 1;
LABEL_51:
  if (v19 != v18)
  {
    _cg_jpeg_mem_term("getImageCount", 483, "frameLoop != fcTL_index (%d != %d) --> error while decoding frames\n", v19, v18);
    *(v30 + 10) = v18;
  }

LABEL_14:
  if (a5)
  {
    *a5 = v12;
  }

  return 0;
}

void *yy_scan_string(char *a1, uint64_t a2)
{
  v4 = strlen(a1);

  return yy_scan_bytes(a1, v4, a2);
}

void yy_switch_to_buffer(uint64_t a1, uint64_t a2)
{
  yyensure_buffer_stack(a2);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = *(v4 + 8 * v5);
    if (v6 != a1)
    {
      if (v6)
      {
        **(a2 + 64) = *(a2 + 48);
        v4 = *(a2 + 40);
        v5 = *(a2 + 24);
        *(*(v4 + 8 * v5) + 16) = *(a2 + 64);
        *(*(v4 + 8 * v5) + 32) = *(a2 + 52);
      }

      *(v4 + 8 * v5) = a1;
      v7 = *(a2 + 40);
      v8 = *(v7 + 8 * v5);
      *(a2 + 52) = *(v8 + 32);
      v9 = *(v8 + 16);
      *(a2 + 64) = v9;
      *(a2 + 128) = v9;
      *(a2 + 8) = **(v7 + 8 * v5);
      *(a2 + 48) = *v9;
      *(a2 + 80) = 1;
    }
  }
}

void *yy_scan_buffer(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 < 2 || *(a1 + v3) || *(a1 + a2 - 1))
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x40uLL, 0x2DE7D2C5uLL);
  if (!v8)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", "out of dynamic memory in yy_scan_buffer()");
    exit(2);
  }

  v5 = v8;
  v8[2] = a1;
  v8[3] = v3;
  *v8 = 0;
  v8[1] = a1;
  *(v8 + 8) = v3;
  *(v8 + 36) = 0;
  *(v8 + 11) = 1;
  v8[7] = 0;
  yy_switch_to_buffer(v8, a3);
  return v5;
}

void *yy_scan_bytes(char *a1, int a2, uint64_t a3)
{
  v6 = a2 + 2;
  v7 = malloc_type_malloc(v6, 0x2DE7D2C5uLL);
  if (!v7)
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = "out of dynamic memory in yy_scan_bytes()";
    goto LABEL_9;
  }

  if (a2 >= 1)
  {
    v8 = a2;
    v9 = v7;
    do
    {
      v10 = *a1++;
      *v9++ = v10;
      --v8;
    }

    while (v8);
  }

  *&v7[a2] = 0;
  result = yy_scan_buffer(v7, v6, a3);
  if (!result)
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = "bad buffer in yy_scan_bytes()";
LABEL_9:
    fprintf(v12, "%s\n", v13);
    exit(2);
  }

  *(result + 9) = 1;
  return result;
}

char *parse_metadata_pathString(const __CFString *a1)
{
  pthread_mutex_lock(&parse_metadata_pathString::mutex);
  CStringPtr = CFStringGetCStringPtr(a1, 0);
  if (CStringPtr)
  {
    v3 = parse_metadata_path(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0);
    v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      if (CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0))
      {
        v3 = parse_metadata_path(v7);
      }

      else
      {
        v3 = 0;
      }

      free(v7);
    }

    else
    {
      v3 = 0;
    }
  }

  pthread_mutex_unlock(&parse_metadata_pathString::mutex);
  return v3;
}

uint64_t yylex_init_extra(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = malloc_type_malloc(0x98uLL, 0x2DE7D2C5uLL);
    *a2 = v4;
    if (v4)
    {
      v5 = v4;
      result = 0;
      v5[18] = 0;
      *(v5 + 7) = 0u;
      *(v5 + 8) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 6) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *v5 = 0u;
      **a2 = a1;
      v7 = *a2;
      *(v7 + 21) = 0;
      *(v7 + 22) = 0;
      v7[12] = 0;
      *(v7 + 1) = 0u;
      *(v7 + 3) = 0u;
      v7[5] = 0;
      v7[8] = 0;
      v7[9] = 0;
      return result;
    }

    v8 = __error();
    v9 = 12;
  }

  else
  {
    v8 = __error();
    v9 = 22;
  }

  *v8 = v9;
  return 1;
}

double yyensure_buffer_stack(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = (v3 << 32) + 0x800000000;
      v5 = malloc_type_realloc(v2, v4 >> 29, 0x4E3848DuLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4 >> 32;
        return result;
      }

LABEL_8:
      fprintf(*MEMORY[0x1E69E9848], "%s\n", "out of dynamic memory in yyensure_buffer_stack()");
      exit(2);
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x2DE7D2C5uLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_186205EC0;
  }

  return result;
}

uint64_t yyparse(uint64_t *a1)
{
  v38 = 0;
  yynerrs = 0;
  *v35 = 0u;
  v36 = 0u;
  *v37 = 0u;
  if (!yygrowstack(v35))
  {
    v10 = 0;
    v11 = -1;
    v12 = v37[0];
    v13 = v35[1];
    *&v36 = v35[1];
    v37[1] = v37[0];
    *v35[1] = 0;
    while (((0x1FC3C3BuLL >> v10) & 1) != 0)
    {
      if (v11 < 0)
      {
        v15 = yylex(&v38, *a1, v2, v3, v4, v5, v6, v7);
        v11 = v15 & ~(v15 >> 31);
      }

      if (((0x603C3CCuLL >> v10) & 1) != 0 || (v16 = v11 + yysindex[v10], v16 > 0x111) || v11 != yycheck[v16])
      {
        if (((0x783DBCFuLL >> v10) & 1) != 0 || (v17 = (v11 + yyrindex[v10]), v17 > 0x111) || v11 != yycheck[v17])
        {
          yyerror(a1, "syntax error", v2, v3, v4, v5, v6, v7, v35[0]);
          ++yynerrs;
          while (v13 > v35[1])
          {
            --v13;
          }

          goto LABEL_3;
        }

        v14 = &yytable[v17];
LABEL_21:
        v18 = *v14;
        v19 = v18;
        v20 = yylen[v18];
        v21 = v37[1];
        v22 = *(v37[1] + 1 - v20);
        switch(v18)
        {
          case 1:
            v22 = *v37[1];
            goto LABEL_32;
          case 2:
            v22 = *(v37[1] - 2);
            v23 = *v37[1];
            v24 = 4;
            goto LABEL_31;
          case 3:
            v22 = *(v37[1] - 2);
            v23 = *v37[1];
            v24 = 5;
LABEL_31:
            *v23 = v24;
            appendNode(v22, *v21);
            fixPrefixes(v22);
LABEL_32:
            a1[1] = v22;
            break;
          case 5:
          case 10:
          case 11:
          case 15:
          case 17:
            v22 = *v37[1];
            break;
          case 6:
            v22 = *(v37[1] - 2);
            v25 = *v37[1];
            v26 = 4;
            goto LABEL_38;
          case 7:
            v22 = *(v37[1] - 2);
            v25 = *v37[1];
            v26 = 5;
LABEL_38:
            *v25 = v26;
            goto LABEL_41;
          case 8:
            v22 = *v37[1];
            goto LABEL_35;
          case 9:
            v22 = *(v37[1] - 1);
            *v22 = 1;
            goto LABEL_41;
          case 12:
            v22 = *v37[1];
            **v37[1] = 0;
            break;
          case 13:
            v22 = *(v37[1] - 1);
            *v22 = 0;
            goto LABEL_41;
          case 14:
            v22 = *v37[1];
            *(*v37[1] + 8) = *(*(v37[1] - 1) + 8);
            free(*(v21 - 1));
            break;
          case 16:
            v22 = *(v37[1] - 1);
            *(v22 + 16) = *(*v37[1] + 16);
            free(*v21);
LABEL_35:
            *v22 = 1;
            break;
          case 18:
            v22 = *(v37[1] - 1);
LABEL_41:
            appendNode(v22, *v21);
            break;
          case 19:
            v22 = *v37[1];
            **v37[1] = 3;
            break;
          case 20:
            v22 = *v37[1];
            **v37[1] = 2;
            break;
          default:
            break;
        }

        v27 = (v36 - 2 * v20);
        v28 = *v27;
        v29 = &v21[-v20];
        *&v36 = v27;
        v37[1] = v29;
        if (v28)
        {
          v30 = 1;
        }

        else
        {
          v30 = (v19 - 1) > 3;
        }

        if (v30)
        {
          v31 = yylhs[v19];
          if (((0x19uLL >> v31) & 1) != 0 || (v32 = (yygindex[v31] + v28), v32 > 0x111) || yycheck[v32] != v28)
          {
            v33 = &yydgoto + 2 * v31;
          }

          else
          {
            v33 = &yytable[v32];
          }

          v10 = *v33;
          if (v27 >= *(&v36 + 1))
          {
            if (yygrowstack(v35))
            {
              goto LABEL_2;
            }

            v27 = v36;
            v29 = v37[1];
          }

          v27[1] = v10;
          v13 = v27 + 1;
          v29[1] = v22;
          v12 = (v29 + 1);
          *&v36 = v13;
          v37[1] = v12;
        }

        else
        {
          v27[1] = 3;
          v13 = v27 + 1;
          v29[1] = v22;
          v12 = (v29 + 1);
          *&v36 = v13;
          v37[1] = v12;
          if (v11 < 0)
          {
            v34 = yylex(&v38, *a1, v2, v3, v4, v5, v6, v7);
            v11 = v34 & ~(v34 >> 31);
          }

          v10 = 3;
          if (!v11)
          {
            free(v35[1]);
            v8 = 0;
            goto LABEL_4;
          }
        }
      }

      else
      {
        if (v13 >= *(&v36 + 1))
        {
          if (yygrowstack(v35))
          {
            goto LABEL_2;
          }

          v13 = v36;
          v12 = v37[1];
        }

        v10 = yytable[v16];
        v13[1] = v10;
        *&v36 = ++v13;
        v37[1] = v12 + 8;
        *(v12 + 1) = v38;
        v11 = -1;
        v12 += 8;
      }
    }

    v14 = &yydefred + 2 * v10;
    goto LABEL_21;
  }

LABEL_2:
  yyerror(a1, "yacc stack overflow", v2, v3, v4, v5, v6, v7, v35[0]);
LABEL_3:
  free(v35[1]);
  v8 = 1;
LABEL_4:
  free(v37[0]);
  return v8;
}

void freeNodes(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[5];
      v3 = v1[1];
      if (v3)
      {
        free(v3);
      }

      v4 = v1[2];
      if (v4)
      {
        free(v4);
      }

      v5 = v1[4];
      if (v5)
      {
        free(v5);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t yylex_destroy(uint64_t a1)
{
  for (i = *(a1 + 40); i; i = *(a1 + 40))
  {
    if (!i[*(a1 + 24)])
    {
      break;
    }

    yy_delete_buffer(i[*(a1 + 24)], a1);
    *(*(a1 + 40) + 8 * *(a1 + 24)) = 0;
    yypop_buffer_state(a1);
  }

  free(i);
  *(a1 + 40) = 0;
  free(*(a1 + 96));
  free(a1);
  return 0;
}

void *CGImageMetadataGetTagWithPath(void *a1, void *a2, const __CFString *a3)
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  if (!a1)
  {
    goto LABEL_2;
  }

  v8 = CFGetTypeID(a1);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataCopyTagWithPath_cold_1();
  }

  v3 = 0;
  if (!a3)
  {
    v4 = 0;
    goto LABEL_95;
  }

  v4 = 0;
  if (v8 == _MergedGlobals_1)
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CFStringGetTypeID())
    {
      Source = CGImageSourceGetSource(a2);
      if (!a2)
      {
        v13 = *MEMORY[0x1E695E480];
        cf = CFStringCreateCopy(*MEMORY[0x1E695E480], a3);
        v17 = 0;
        v18 = parse_metadata_pathString(cf);
        goto LABEL_22;
      }

      v11 = Source;
      v12 = CFGetTypeID(a2);
      if (v12 == CGImageMetadataTagGetTypeID())
      {
        v13 = *MEMORY[0x1E695E480];
        v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", *(v11 + 3), *(v11 + 4));
        if (v14)
        {
          cf = IIOMetadata_Tag::createPathWithChildPath(v11, a3);
          v15 = parse_metadata_pathString(v14);
          if (v15)
          {
            v16 = *(v15 + 5);
            if (v16)
            {
              v17 = 0;
              do
              {
                if ((*v16 & 0xFFFFFFFE) != 2)
                {
                  break;
                }

                ++v17;
                v16 = *(v16 + 40);
              }

              while (v16);
            }

            else
            {
              v17 = 0;
            }

            freeNodes(v15);
          }

          else
          {
            v17 = 0;
          }

          CFRelease(v14);
          v18 = parse_metadata_pathString(cf);
LABEL_22:
          v4 = v18;
          if (v18 && (v19 = *(v18 + 1)) != 0 && *(v4 + 2))
          {
            if (a2)
            {
              v20 = CGImageSourceGetSource(a2);
              v21 = v17 + 1;
              v22 = v4;
              do
              {
                v22 = *(v22 + 5);
                --v21;
              }

              while (v21);
              v51 = 0;
              v52 = 0;
LABEL_35:
              if (v22)
              {
                v25 = a2 == 0;
              }

              else
              {
                v25 = 1;
              }

              if (!v25)
              {
                do
                {
                  v26 = CFGetTypeID(a2);
                  if (v26 != CGImageMetadataTagGetTypeID())
                  {
                    goto LABEL_96;
                  }

                  v27 = *(v22 + 1);
                  if (v27)
                  {
                    PropertyPrefixFromCStrPrefix = createPropertyPrefixFromCStrPrefix(v27);
                  }

                  else
                  {
                    PropertyPrefixFromCStrPrefix = 0;
                  }

                  v29 = *(v22 + 2);
                  if (v29)
                  {
                    v30 = CFStringCreateWithCString(v13, v29, 0x8000100u);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v31 = *v22;
                  if (*v22 > 3)
                  {
                    if (v31 == 5)
                    {
                      v49 = *(v20 + 56);
                      if (v49)
                      {
                        v54[0] = MEMORY[0x1E69E9820];
                        v54[1] = 0x40000000;
                        v54[2] = __CGImageMetadataGetTagWithPath_block_invoke_2;
                        v54[3] = &unk_1E6F09848;
                        v54[5] = PropertyPrefixFromCStrPrefix;
                        v54[6] = v30;
                        v54[4] = &v60;
                        IIOArrayEnumerateUsingBlock(v49, v54);
                      }
                    }

                    else if (v31 == 4)
                    {
                      if (CGImageMetadataTagGetType(a2) != kCGImageMetadataTypeStructure)
                      {
                        goto LABEL_97;
                      }

                      Value = CGImageMetadataTagGetValue(a2);
                      v37 = CFGetTypeID(Value);
                      if (v37 != CFDictionaryGetTypeID())
                      {
                        goto LABEL_97;
                      }

                      if (!v30)
                      {
                        goto LABEL_97;
                      }

                      v38 = CFDictionaryGetValue(Value, v30);
                      v39 = v38;
                      if (!v38)
                      {
                        goto LABEL_97;
                      }

                      v40 = CFGetTypeID(v38);
                      TypeID = CGImageMetadataTagGetTypeID();
                      v42 = v61;
                      if (v40 == TypeID)
                      {
                        goto LABEL_70;
                      }

                      v61[3] = 0;
                      LogMetadata("CGImageMetadataGetTagWithPath", 715, "Error: Structure field's value was not a CGImageMetadataTagRef\n");
                    }
                  }

                  else
                  {
                    if (v31 == 2)
                    {
                      if (CGImageMetadataTagGetType(a2) != kCGImageMetadataTypeArrayOrdered && CGImageMetadataTagGetType(a2) != kCGImageMetadataTypeArrayUnordered && CGImageMetadataTagGetType(a2) != kCGImageMetadataTypeAlternateArray)
                      {
                        goto LABEL_97;
                      }

                      v43 = CGImageMetadataTagGetValue(a2);
                      v44 = CFGetTypeID(v43);
                      if (v44 != CFArrayGetTypeID())
                      {
                        goto LABEL_97;
                      }

                      v45 = *(v22 + 6);
                      if (CFArrayGetCount(v43) <= v45)
                      {
                        goto LABEL_97;
                      }

                      ValueAtIndex = CFArrayGetValueAtIndex(v43, *(v22 + 6));
                      v39 = ValueAtIndex;
                      if (!ValueAtIndex)
                      {
                        goto LABEL_97;
                      }

                      v47 = CFGetTypeID(ValueAtIndex);
                      v48 = CGImageMetadataTagGetTypeID();
                      v42 = v61;
                      if (v47 != v48)
                      {
                        v61[3] = 0;
                        LogMetadata("CGImageMetadataGetTagWithPath", 738, "Error: Array element's value was not a CGImageMetadataTagRef\n");
                        goto LABEL_74;
                      }

LABEL_70:
                      v42[3] = v39;
                      goto LABEL_74;
                    }

                    if (v31 == 3)
                    {
                      if (CGImageMetadataTagGetType(a2) != kCGImageMetadataTypeAlternateText)
                      {
                        goto LABEL_97;
                      }

                      v32 = CGImageMetadataTagGetValue(a2);
                      v33 = CFGetTypeID(v32);
                      if (v33 != CFArrayGetTypeID())
                      {
                        goto LABEL_97;
                      }

                      v34 = CFStringCreateWithCString(v13, *(v22 + 4), 0x8000100u);
                      v35 = v34;
                      if (!v34)
                      {
                        goto LABEL_97;
                      }

                      key = 0;
                      p_key = &key;
                      v58 = 0x2000000000;
                      v59 = 0;
                      v55[0] = MEMORY[0x1E69E9820];
                      v55[1] = 0x40000000;
                      v55[2] = __CGImageMetadataGetTagWithPath_block_invoke;
                      v55[3] = &unk_1E6F09820;
                      v55[5] = &key;
                      v55[6] = v34;
                      v55[4] = &v60;
                      IIOArrayEnumerateUsingBlock(v32, v55);
                      if ((p_key[3] & 1) == 0)
                      {
                        v61[3] = 0;
                      }

                      CFRelease(v35);
                      _Block_object_dispose(&key, 8);
                    }
                  }

LABEL_74:
                  v22 = *(v22 + 5);
                  a2 = v61[3];
                  if (v22 && !a2)
                  {
                    v20 = 0;
                    if (!PropertyPrefixFromCStrPrefix)
                    {
                      goto LABEL_80;
                    }

LABEL_79:
                    CFRelease(PropertyPrefixFromCStrPrefix);
                    goto LABEL_80;
                  }

                  v20 = CGImageSourceGetSource(v61[3]);
                  v61[3] = 0;
                  if (PropertyPrefixFromCStrPrefix)
                  {
                    goto LABEL_79;
                  }

LABEL_80:
                  if (v30)
                  {
                    CFRelease(v30);
                  }
                }

                while (v22 && a2);
              }

              v30 = 0;
              PropertyPrefixFromCStrPrefix = 0;
              v3 = a2;
              goto LABEL_85;
            }

            v51 = createPropertyPrefixFromCStrPrefix(v19);
            v52 = CFStringCreateWithCString(v13, *(v4 + 2), 0x8000100u);
            if (v52)
            {
              v23 = CGImageMetadataNamespaceForPrefix(a1, v51);
              if (v23)
              {
                v24 = a1[3];
                if (v24)
                {
                  key = v23;
                  p_key = &v52->isa;
                  v58 = 0;
                  a2 = CFDictionaryGetValue(v24, &key);
                }

                else
                {
                  a2 = 0;
                }

                v20 = CGImageSourceGetSource(a2);
                v22 = *(v4 + 5);
                goto LABEL_35;
              }

LABEL_96:
              v30 = 0;
              PropertyPrefixFromCStrPrefix = 0;
            }

            else
            {
              v30 = 0;
              PropertyPrefixFromCStrPrefix = 0;
              v52 = 0;
            }
          }

          else
          {
            v30 = 0;
            PropertyPrefixFromCStrPrefix = 0;
            v51 = 0;
            v52 = 0;
          }

LABEL_97:
          v3 = 0;
LABEL_85:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          if (v52)
          {
            CFRelease(v52);
          }

          if (PropertyPrefixFromCStrPrefix)
          {
            CFRelease(PropertyPrefixFromCStrPrefix);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          goto LABEL_95;
        }
      }
    }

LABEL_2:
    v3 = 0;
    v4 = 0;
  }

LABEL_95:
  freeNodes(v4);
  _Block_object_dispose(&v60, 8);
  return v3;
}

void __CGImageMetadataCreateFromLegacyProps_block_invoke(uint64_t a1, uint64_t a2)
{
  values[3] = *MEMORY[0x1E69E9840];
  v66 = 0;
  v4 = **(a2 + 8);
  ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 40), **a2);
  if (!ObjectForKey)
  {
    return;
  }

  v6 = ObjectForKey;
  v7 = CFGetTypeID(ObjectForKey);
  if (v7 != CFDictionaryGetTypeID())
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFNullGetTypeID())
    {
      return;
    }
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CGImageMetadataCreateMutable();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  v9 = CFGetTypeID(v6);
  if (v9 == CFNullGetTypeID())
  {
    v10 = kCGImageMetadataTypeDefault;
    ArrayFromCFValue = *MEMORY[0x1E695E738];
    goto LABEL_77;
  }

  Value = CFDictionaryGetValue(v6, v4);
  if (!Value)
  {
LABEL_44:
    LOBYTE(ArrayFromCFValue) = 0;
    goto LABEL_84;
  }

  v13 = *(a2 + 18);
  v14 = Value;
  switch(*(a2 + 18))
  {
    case 0:
      v15 = 4;
      goto LABEL_28;
    case 1:
      v15 = 3;
LABEL_28:
      SimpleStringFromCFValue = CGImageMetadataCreateSimpleStringFromCFValue(Value, v15);
      goto LABEL_75;
    case 2:
      ArrayFromCFValue = CreateArrayFromCFValue(Value, *(a2 + 16));
      v10 = kCGImageMetadataTypeArrayUnordered;
      goto LABEL_77;
    case 3:
      ArrayFromCFValue = CreateArrayFromCFValue(Value, *(a2 + 16));
      v10 = kCGImageMetadataTypeArrayOrdered;
      goto LABEL_77;
    case 4:
      StructureFromCFValue = CreateStructureFromCFValue(Value);
      goto LABEL_16;
    case 5:
      v28 = *MEMORY[0x1E695E480];
      v29 = CGImageMetadataDefaultPrefixForNamespace(**(a2 + 24));
      ArrayFromCFValue = CFStringCreateWithFormat(v28, 0, @"%@:%@[x-default]", v29, **(a2 + 32));
      if (!ArrayFromCFValue)
      {
        goto LABEL_84;
      }

      CGImageMetadataSetValueWithPath(*(*(*(a1 + 32) + 8) + 24), 0, ArrayFromCFValue, v14);
      CFRelease(ArrayFromCFValue);
      goto LABEL_31;
    case 6:
      SimpleStringFromCFValue = CreateShortXMPDateFromIPTCDate(Value);
      goto LABEL_75;
    case 7:
      SimpleStringFromCFValue = CreateMetadataVersionStringFromArray(Value);
      goto LABEL_75;
    case 8:
      v43 = CreateMetadataLensInfoFromCFValue(Value, &v66);
      ArrayFromCFValue = v43;
      v10 = kCGImageMetadataTypeString;
      if (v66 == 4 || !v43)
      {
        goto LABEL_77;
      }

      CFRelease(v43);
      goto LABEL_44;
    case 9:
      memset(values, 0, 24);
      IIODictionary::IIODictionary(values, Value);
      AddMWGRegionsFromExifAuxRegions(*(*(*(a1 + 32) + 8) + 24), values);
      IIODictionary::~IIODictionary(values);
LABEL_31:
      LOBYTE(ArrayFromCFValue) = 1;
      goto LABEL_84;
    case 0xA:
      v30 = *MEMORY[0x1E695E480];
      v31 = CGImageMetadataDefaultPrefixForNamespace(**(a2 + 24));
      v32 = CFStringCreateWithFormat(v30, 0, @"%@:%@", v31, **(a2 + 32));
      if (!v32)
      {
        goto LABEL_44;
      }

      v33 = v32;
      v34 = CGImageMetadataCopyTagWithPath(*(*(*(a1 + 32) + 8) + 24), 0, v32);
      if (v34)
      {
        v35 = v34;
        v36 = CGImageMetadataTagGetValue(v34);
        v37 = v36;
        ArrayFromCFValue = 0;
        v38 = *(a2 + 16);
        if (v38 <= 0xE)
        {
          if (v38 == 8)
          {
            XMPDateFromIPTCDateAndTime = CreateXMPDateFromIPTCDateAndTime(v14, 0);
            if (XMPDateFromIPTCDateAndTime)
            {
              v40 = XMPDateFromIPTCDateAndTime;
              v42 = v37;
              goto LABEL_96;
            }

LABEL_99:
            ArrayFromCFValue = 0;
            goto LABEL_100;
          }

          if (v38 == 9)
          {
            v39 = CreateXMPDateFromIPTCDateAndTime(0, v14);
            if (v39)
            {
              v40 = v39;
              XMPDateFromIPTCDateAndTime = v37;
              v42 = v40;
LABEL_96:
              ArrayFromCFValue = CreateMergedXMPDateWithXMPTime(XMPDateFromIPTCDateAndTime, v42);
              CFRelease(v40);
              goto LABEL_100;
            }

            goto LABEL_99;
          }

LABEL_100:
          CFRelease(v35);
          goto LABEL_105;
        }

        if (v38 == 15)
        {
          v36 = v14;
          v50 = v37;
        }

        else
        {
          if (v38 != 16)
          {
            goto LABEL_100;
          }

          v50 = v14;
        }

        ArrayFromCFValue = CreateMergedXMPDateWithXMPTime(v36, v50);
        goto LABEL_100;
      }

      ArrayFromCFValue = 0;
      v48 = *(a2 + 16);
      if (v48 <= 8)
      {
        if (v48 == 3)
        {
          XMPDateTimeFromEXIFDateTime = CreateXMPDateTimeFromEXIFDateTime(v14);
          goto LABEL_104;
        }

        if (v48 != 8)
        {
          goto LABEL_105;
        }

        v54 = v14;
        v55 = 0;
        goto LABEL_102;
      }

      if (v48 == 9)
      {
        v54 = 0;
        v55 = v14;
LABEL_102:
        XMPDateTimeFromEXIFDateTime = CreateXMPDateFromIPTCDateAndTime(v54, v55);
        goto LABEL_104;
      }

      if (v48 == 15 || v48 == 16)
      {
        XMPDateTimeFromEXIFDateTime = CFRetain(v14);
LABEL_104:
        ArrayFromCFValue = XMPDateTimeFromEXIFDateTime;
      }

LABEL_105:
      CFRelease(v33);
LABEL_76:
      v10 = kCGImageMetadataTypeString;
LABEL_77:
      if (ArrayFromCFValue)
      {
        v56 = CGImageMetadataDefaultPrefixForNamespace(**(a2 + 24));
        v57 = CGImageMetadataTagCreate(**(a2 + 24), v56, **(a2 + 32), v10, ArrayFromCFValue);
        if (v57)
        {
          if (CFStringCompare(**a2, @"{IPTC}", 0))
          {
            v58 = 2;
          }

          else
          {
            v58 = 4;
          }

          CGImageMetadataTagSetSource(v57, v58);
          CGImageMetadataAddTag(*(*(*(a1 + 32) + 8) + 24), v57);
          CFRelease(v57);
        }

        CFRelease(ArrayFromCFValue);
        return;
      }

LABEL_84:
      v59 = CGImageMetadataDefaultPrefixForNamespace(**(a2 + 24));
      v60 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", v59, **(a2 + 32));
      if (v60)
      {
        TagWithPath = CGImageMetadataGetTagWithPath(*(*(*(a1 + 32) + 8) + 24), 0, v60);
        if (TagWithPath)
        {
          if (CFStringCompare(**a2, @"{IPTC}", 0))
          {
            v62 = 2;
          }

          else
          {
            v62 = 4;
          }

          CGImageMetadataTagSetSource(TagWithPath, v62);
        }

        CFRelease(v60);
      }

      if ((ArrayFromCFValue & 1) == 0)
      {
        CStringPtr = CFStringGetCStringPtr(**(a2 + 24), 0);
        v64 = CFStringGetCStringPtr(**(a2 + 32), 0);
        LogMetadata("CGImageMetadataCreateFromLegacyProps_block_invoke", 7043, "Unable to create a tag for schema = %s, property = %s\n", CStringPtr, v64);
      }

      return;
    case 0xB:
      StructureFromCFValue = CreateXMPFlashStructFromCFValue(Value);
LABEL_16:
      ArrayFromCFValue = StructureFromCFValue;
      v10 = kCGImageMetadataTypeStructure;
      goto LABEL_77;
    case 0xC:
      v21 = **(a2 + 8);
      if (v21 == @"Longitude")
      {
        v22 = 0;
        v47 = &kCGImagePropertyGPSLongitudeRef;
      }

      else if (v21 == @"DestLongitude")
      {
        v22 = 0;
        v47 = &kCGImagePropertyGPSDestLongitudeRef;
      }

      else if (v21 == @"Latitude")
      {
        v22 = 1;
        v47 = &kCGImagePropertyGPSLatitudeRef;
      }

      else
      {
        v22 = 1;
        if (v21 != @"DestLatitude")
        {
          ObjectForKeyGroup = 0;
          goto LABEL_74;
        }

        v47 = &kCGImagePropertyGPSDestLatitudeRef;
      }

      ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(*(a1 + 40), *v47, @"{GPS}");
LABEL_74:
      SimpleStringFromCFValue = CreateXMPGPSCoordinateFromCFValue(v14, ObjectForKeyGroup, v22);
LABEL_75:
      ArrayFromCFValue = SimpleStringFromCFValue;
      goto LABEL_76;
    case 0xD:
      SimpleStringFromCFValue = CreateGPSVersionStringFromArray(Value);
      goto LABEL_75;
    case 0xE:
      v16 = CFGetTypeID(Value);
      if (v16 == CFArrayGetTypeID() && CFArrayGetCount(v14) >= 1)
      {
        v17 = CGImageMetadataTagCreate(@"http://ns.adobe.com/exif/1.0/", @"exif", @"ISOSpeedRatings", kCGImageMetadataTypeArrayOrdered, v14);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
        v19 = CGImageMetadataTagCreate(@"http://cipa.jp/exif/1.0/", @"exifEX", @"PhotographicSensitivity", kCGImageMetadataTypeString, ValueAtIndex);
      }

      else
      {
        v44 = CFGetTypeID(v14);
        if (v44 != CFStringGetTypeID())
        {
          v45 = CFGetTypeID(v14);
          if (v45 != CFNumberGetTypeID())
          {
            v53 = 0;
            v52 = 0;
            goto LABEL_67;
          }
        }

        values[0] = v14;
        v46 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
        if (v46)
        {
          v17 = CGImageMetadataTagCreate(@"http://ns.adobe.com/exif/1.0/", @"exif", @"ISOSpeedRatings", kCGImageMetadataTypeArrayOrdered, v46);
          CFRelease(v46);
        }

        else
        {
          v17 = 0;
        }

        v19 = CGImageMetadataTagCreate(@"http://cipa.jp/exif/1.0/", @"exifEX", @"PhotographicSensitivity", kCGImageMetadataTypeString, v14);
      }

      v51 = v19;
      v52 = v17 != 0;
      if (v17)
      {
        CGImageMetadataTagSetSource(v17, 2);
        CGImageMetadataAddTag(*(*(*(a1 + 32) + 8) + 24), v17);
        CFRelease(v17);
      }

      if (v51)
      {
        CGImageMetadataTagSetSource(v51, 2);
        CGImageMetadataAddTag(*(*(*(a1 + 32) + 8) + 24), v51);
        CFRelease(v51);
        v53 = 1;
      }

      else
      {
        v53 = 0;
      }

LABEL_67:
      LOBYTE(ArrayFromCFValue) = v53 & v52;
      goto LABEL_84;
    default:
      v24 = *(a2 + 16);
      v25 = CFStringGetCStringPtr(**a2, 0);
      v26 = CFStringGetCStringPtr(**(a2 + 8), 0);
      LogMetadata("CGImageMetadataCreateFromLegacyProps_block_invoke", 6979, "Unhandled conversion from property type (%d) to tag type (%d) for {%s}:%s\n", v24, v13, v25, v26);
      goto LABEL_44;
  }
}

void sub_185E8AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t yylex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 144) = a1;
  if (!*(a2 + 72))
  {
    *(a2 + 72) = 1;
    v9 = *a2;
    if (*a2)
    {
      v9[2] = 0;
      *v9 = 0;
      *(v9 + 2) = 0;
    }

    if (!*(a2 + 76))
    {
      *(a2 + 76) = 1;
    }

    if (!*(a2 + 8))
    {
      *(a2 + 8) = *MEMORY[0x1E69E9850];
    }

    if (!*(a2 + 16))
    {
      *(a2 + 16) = *MEMORY[0x1E69E9858];
    }

    v10 = *(a2 + 40);
    if (!v10 || (v11 = *(a2 + 24), (v12 = *(v10 + 8 * v11)) == 0))
    {
      yyensure_buffer_stack(a2);
      buffer = yy_create_buffer(*(a2 + 8), 0x4000, a2);
      v11 = *(a2 + 24);
      *(*(a2 + 40) + 8 * v11) = buffer;
      v10 = *(a2 + 40);
      v12 = *(v10 + 8 * v11);
    }

    *(a2 + 52) = *(v12 + 32);
    v14 = *(v12 + 16);
    *(a2 + 64) = v14;
    *(a2 + 128) = v14;
    *(a2 + 8) = **(v10 + 8 * v11);
    *(a2 + 48) = *v14;
  }

  v96 = (a2 + 64);
  while (2)
  {
    v15 = *(a2 + 64);
    *v15 = *(a2 + 48);
    v16 = *(a2 + 76);
    v94 = v15;
    do
    {
LABEL_16:
      v17 = yy_ec[4 * *v15];
      if (((0xD84007uLL >> v16) & 1) == 0)
      {
        *(a2 + 104) = v16;
        *(a2 + 112) = v15;
      }

      v18 = v17 + yy_base[v16];
      if (v16 != yy_chk[v18])
      {
        v19 = v16;
        do
        {
          if ((0x104500uLL >> v19))
          {
            LOBYTE(v17) = yy_meta[4 * v17];
          }

          v19 = yy_def[v19];
          v18 = yy_base[v19] + v17;
        }

        while (yy_chk[v18] != v19);
      }

      v16 = yy_nxt[v18];
      ++v15;
    }

    while (v16 != 23);
LABEL_24:
    v20 = *(a2 + 104);
    v21 = (a2 + 112);
LABEL_25:
    v22 = *v21;
    v23 = yy_accept[v20];
    *(a2 + 128) = v94;
    *(a2 + 56) = v22 - v94;
    *(a2 + 48) = *v22;
    *v22 = 0;
    v97 = v22;
    *(a2 + 64) = v22;
    while (v23 == 9)
    {
      v24 = *(a2 + 128);
      *v97 = *(a2 + 48);
      v25 = *(a2 + 40);
      v26 = *(a2 + 24);
      v27 = *(v25 + 8 * v26);
      if (*(v27 + 60))
      {
        v28 = *(a2 + 52);
      }

      else
      {
        v28 = *(v27 + 32);
        *(a2 + 52) = v28;
        *v27 = *(a2 + 8);
        v27 = *(v25 + 8 * v26);
        *(v27 + 60) = 1;
      }

      v29 = *v96;
      v30 = *(v27 + 8);
      v31 = &v30[v28];
      if (*v96 <= v31)
      {
        *(a2 + 64) = *(a2 + 128) + ~v24 + v97;
        previous_state = yy_get_previous_state(a2);
        if (((0xD84007uLL >> previous_state) & 1) == 0)
        {
          v61 = *(a2 + 64);
          *(a2 + 104) = previous_state;
          *(a2 + 112) = v61;
        }

        v62 = yy_base[previous_state] + 1;
        if (previous_state != yy_chk[v62])
        {
          v63 = previous_state;
          do
          {
            v64 = yy_def[v63];
            v63 = v64;
          }

          while (v64 != yy_chk[yy_base[v64] + 1]);
          LODWORD(v62) = yy_base[v64] + 1;
        }

        v65 = yy_nxt[v62];
        v94 = *(a2 + 128);
        if (v62)
        {
          v66 = v65 == 23;
        }

        else
        {
          v66 = 1;
        }

        if (!v66)
        {
          v16 = v65;
          v15 = (*v96 + 1);
          *v96 = v15;
          goto LABEL_16;
        }

        goto LABEL_24;
      }

      if (v29 > (v31 + 1))
      {
        v90 = *MEMORY[0x1E69E9848];
        v91 = "fatal flex scanner internal error--end of buffer missed";
        goto LABEL_136;
      }

      v32 = *(a2 + 128);
      v33 = v29 - v32;
      if (!*(v27 + 56))
      {
        if (v33 != 1)
        {
          v59 = v28;
          goto LABEL_84;
        }

        goto LABEL_80;
      }

      v34 = v33 - 1;
      if (v33 >= 2)
      {
        v35 = v33 - 1;
        do
        {
          v36 = *v32++;
          *v30++ = v36;
          --v35;
        }

        while (v35);
        v27 = *(*(a2 + 40) + 8 * *(a2 + 24));
      }

      v95 = v33 - 1;
      v93 = v24;
      if (*(v27 + 60) == 2)
      {
        *(a2 + 52) = 0;
LABEL_39:
        *(v27 + 32) = 0;
        if (v34)
        {
          goto LABEL_40;
        }

        goto LABEL_74;
      }

      v92 = v34;
      v39 = ~v34;
      v40 = *(v27 + 24);
      v41 = v40 - v33;
      if (v40 - v33 <= 0)
      {
        v42 = *v96;
        while (*(v27 + 36))
        {
          v43 = *(v27 + 8);
          v44 = 2 * v40;
          v45 = v40 + (v40 >> 3);
          if (v44 >= 1)
          {
            v45 = v44;
          }

          *(v27 + 24) = v45;
          v46 = malloc_type_realloc(v43, v45 + 2, 0x4E3848DuLL);
          *(v27 + 8) = v46;
          if (!v46)
          {
            goto LABEL_135;
          }

          v42 = &v46[v42 - v43];
          *(a2 + 64) = v42;
          v27 = *(*(a2 + 40) + 8 * *(a2 + 24));
          v40 = *(v27 + 24);
          v41 = v40 + v39;
          if (v40 + v39 >= 1)
          {
            goto LABEL_50;
          }
        }

        *(v27 + 8) = 0;
LABEL_135:
        v90 = *MEMORY[0x1E69E9848];
        v91 = "fatal error - scanner input buffer overflow";
LABEL_136:
        fprintf(v90, "%s\n", v91);
        exit(2);
      }

LABEL_50:
      if (v41 >= 0x2000)
      {
        v47 = 0x2000;
      }

      else
      {
        v47 = v41;
      }

      if (!*(v27 + 40))
      {
        *__error() = 0;
        v50 = fread((*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v92), 1uLL, v47, *(a2 + 8));
        *(a2 + 52) = v50;
        if (v50)
        {
LABEL_68:
          v38 = 0;
          v27 = *(*(a2 + 40) + 8 * *(a2 + 24));
          *(v27 + 32) = v50;
          LODWORD(v37) = v50;
LABEL_72:
          v34 = v95;
          goto LABEL_75;
        }

        while (ferror(*(a2 + 8)))
        {
          if (*__error() != 4)
          {
            goto LABEL_139;
          }

          *__error() = 0;
          clearerr(*(a2 + 8));
          v50 = fread((*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v92), 1uLL, v47, *(a2 + 8));
          *(a2 + 52) = v50;
          if (v50)
          {
            goto LABEL_68;
          }
        }

        v27 = *(*(a2 + 40) + 8 * *(a2 + 24));
        v34 = v95;
        goto LABEL_39;
      }

      v37 = 0;
      while (1)
      {
        v48 = getc(*(a2 + 8));
        if (v48 == -1 || v48 == 10)
        {
          break;
        }

        *(*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v92 + v37++) = v48;
        if (v47 == v37)
        {
          v37 = v47;
          break;
        }
      }

      if (v48 == -1)
      {
        if (ferror(*(a2 + 8)))
        {
LABEL_139:
          v90 = *MEMORY[0x1E69E9848];
          v91 = "input in flex scanner failed";
          goto LABEL_136;
        }
      }

      else if (v48 == 10)
      {
        *(*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + v92 + v37) = 10;
        LODWORD(v37) = v37 + 1;
      }

      *(a2 + 52) = v37;
      v27 = *(*(a2 + 40) + 8 * *(a2 + 24));
      *(v27 + 32) = v37;
      if (v37)
      {
        v38 = 0;
        goto LABEL_72;
      }

      v34 = v95;
      if (v95)
      {
LABEL_40:
        LODWORD(v37) = 0;
        v38 = 2;
        *(v27 + 60) = 2;
        goto LABEL_75;
      }

LABEL_74:
      yyrestart(*(a2 + 8), a2);
      v34 = v95;
      LODWORD(v37) = *(a2 + 52);
      v27 = *(*(a2 + 40) + 8 * *(a2 + 24));
      v38 = 1;
LABEL_75:
      v51 = v37 + v34;
      if (*(v27 + 24) >= (v37 + v34))
      {
        v56 = v51;
        v55 = *(v27 + 8);
      }

      else
      {
        v52 = malloc_type_realloc(*(v27 + 8), v51 + (v37 >> 1), 0x4E3848DuLL);
        v53 = *(a2 + 40);
        v54 = *(a2 + 24);
        *(*(v53 + 8 * v54) + 8) = v52;
        v55 = *(*(v53 + 8 * v54) + 8);
        if (!v55)
        {
          v90 = *MEMORY[0x1E69E9848];
          v91 = "out of dynamic memory in yy_get_next_buffer()";
          goto LABEL_136;
        }

        v56 = *(a2 + 52) + v95;
        v51 = *(a2 + 52) + v95;
      }

      *(a2 + 52) = v51;
      *(v55 + v56) = 0;
      *(*(*(*(a2 + 40) + 8 * *(a2 + 24)) + 8) + *(a2 + 52) + 1) = 0;
      v57 = *(a2 + 40);
      v58 = *(a2 + 24);
      v32 = *(*(v57 + 8 * v58) + 8);
      *(a2 + 128) = v32;
      if (v38 != 1)
      {
        if (!v38)
        {
          *(a2 + 64) = &v32[~v93 + v97];
          v16 = yy_get_previous_state(a2);
          v15 = *(a2 + 64);
          v94 = *(a2 + 128);
          goto LABEL_16;
        }

        v30 = *(*(v57 + 8 * v58) + 8);
        v59 = *(a2 + 52);
LABEL_84:
        *(a2 + 64) = &v30[v59];
        v20 = yy_get_previous_state(a2);
        v94 = *(a2 + 128);
        v21 = (a2 + 64);
        goto LABEL_25;
      }

LABEL_80:
      *(a2 + 80) = 0;
      *(a2 + 64) = v32;
      v23 = (*(a2 + 76) - 1) / 2 + 10;
    }

    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          v86 = *a2;
          if (*a2)
          {
            v87 = *v86 + *(a2 + 56);
            v86[1] = *v86;
            v86[2] = v87 - 1;
            *v86 = v87;
          }

          return 261;
        }

        else
        {
          v76 = *a2;
          if (*a2)
          {
            v77 = *v76 + *(a2 + 56);
            v76[1] = *v76;
            v76[2] = v77 - 1;
            *v76 = v77;
          }

          return 262;
        }
      }

      else
      {
        if (v23 != 7)
        {
          if (v23 == 8)
          {
            v67 = *a2;
            v68 = *(a2 + 56);
            if (*a2)
            {
              v69 = *v67 + v68;
              v67[1] = *v67;
              v67[2] = v69 - 1;
              *v67 = v69;
            }

            fwrite(*(a2 + 128), v68, 1uLL, *(a2 + 16));
            continue;
          }

          if (v23 == 10)
          {
            return 0;
          }

          goto LABEL_137;
        }

        v80 = *a2;
        if (*a2)
        {
          v81 = *v80 + *(a2 + 56);
          v80[1] = *v80;
          v80[2] = v81 - 1;
          *v80 = v81;
        }

        lexerror(v80, "Unrecognized input: '%s'", a3, a4, a5, a6, a7, a8, *(a2 + 128));
        return 263;
      }
    }

    else
    {
      if (v23 <= 1)
      {
        if (!v23)
        {
          *v97 = *(a2 + 48);
          goto LABEL_24;
        }

        if (v23 == 1)
        {
          v78 = *a2;
          if (*a2)
          {
            v79 = *v78 + *(a2 + 56);
            v78[1] = *v78;
            v78[2] = v79 - 1;
            *v78 = v79;
          }

          **(a2 + 144) = malloc_type_calloc(1uLL, 0x30uLL, 0x103004087E73D75uLL);
          *(**(a2 + 144) + 8) = strdup(*(a2 + 128));
          return 257;
        }

LABEL_137:
        v90 = *MEMORY[0x1E69E9848];
        v91 = "fatal flex scanner internal error--no action found";
        goto LABEL_136;
      }

      if (v23 == 2)
      {
        v88 = *a2;
        if (*a2)
        {
          v89 = *v88 + *(a2 + 56);
          v88[1] = *v88;
          v88[2] = v89 - 1;
          *v88 = v89;
        }

        **(a2 + 144) = malloc_type_calloc(1uLL, 0x30uLL, 0x103004087E73D75uLL);
        *(**(a2 + 144) + 16) = strdup(*(a2 + 128));
        return 258;
      }

      else if (v23 == 3)
      {
        v82 = *a2;
        if (*a2)
        {
          v83 = *v82 + *(a2 + 56);
          v82[1] = *v82;
          v82[2] = v83 - 1;
          *v82 = v83;
        }

        **(a2 + 144) = malloc_type_calloc(1uLL, 0x30uLL, 0x103004087E73D75uLL);
        v84 = strtol((*(a2 + 128) + 1), 0, 10);
        v85 = *(a2 + 144);
        *(*v85 + 24) = v84;
        *(*v85 + 16) = strdup(*(a2 + 128));
        return 259;
      }

      else
      {
        v70 = *a2;
        if (*a2)
        {
          v71 = *v70 + *(a2 + 56);
          v70[1] = *v70;
          v70[2] = v71 - 1;
          *v70 = v71;
        }

        **(a2 + 144) = malloc_type_calloc(1uLL, 0x30uLL, 0x103004087E73D75uLL);
        v72 = *(a2 + 128);
        v73 = strdup(v72 + 1);
        v74 = *(a2 + 144);
        *(*v74 + 32) = v73;
        *(*(*v74 + 32) + strlen(v72) - 2) = 0;
        *(**(a2 + 144) + 16) = strdup(*(a2 + 128));
        return 260;
      }
    }
  }
}

void LogMetadata(const char *a1, int a2, const char *a3, ...)
{
  va_start(va, a3);
  IIOInitDebugFlags();
  if ((gIIODebugFlags & 0x1000000) != 0)
  {
    gImageIOLogProc(2, "ImageIO <Metadata>: ", a1, a2, a3, va);
  }
}

uint64_t yy_get_previous_state(uint64_t a1)
{
  v1 = *(a1 + 76);
  v2 = *(a1 + 128);
  v3 = *(a1 + 64);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[4 * *v2];
      }

      else
      {
        v4 = 1;
      }

      if (((0xD84007uLL >> v1) & 1) == 0)
      {
        *(a1 + 104) = v1;
        *(a1 + 112) = v2;
      }

      v5 = yy_base[v1] + v4;
      if (v1 != yy_chk[v5])
      {
        v1 = v1;
        do
        {
          if ((0x104500uLL >> v1))
          {
            v4 = yy_meta[4 * v4];
          }

          v1 = yy_def[v1];
          v5 = yy_base[v1] + v4;
        }

        while (yy_chk[v5] != v1);
      }

      v1 = yy_nxt[v5];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

uint64_t yygrowstack(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 > 0x1F3)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 2 * v2;
    if (v3 >= 0x1F4)
    {
      v4 = 500;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 500;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = malloc_type_realloc(v5, 2 * v4, 0x1000040BDFB0063uLL);
  if (v7)
  {
    v8 = v6 - v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = &v7[v8];
    v9 = malloc_type_realloc(*(a1 + 32), 8 * v4, 0x1032040A1E07149uLL);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *(a1 + 32) = v10;
      *(a1 + 40) = &v10[8 * (v8 >> 1)];
      *a1 = v4;
      *(a1 + 24) = *(a1 + 8) + 2 * v4 - 2;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

__CFString *CGImageMetadataNamespaceForDefaultPrefix(const __CFString *a1)
{
  if (CFStringCompare(a1, @"exif", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceExif;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"tiff", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceTIFF;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"xmp", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceXMPBasic;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"dc", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceDublinCore;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"photoshop", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespacePhotoshop;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"exifEX", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceExifEX;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"Iptc4xmpCore", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceIPTCCore;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"Iptc4xmpExt", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceIPTCExtension;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"iio", 0) == kCFCompareEqualTo)
  {
    v2 = kCGImageMetadataNamespaceImageIO;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"DICOM", 0) == kCFCompareEqualTo)
  {
    v2 = kCGImageMetadataNamespaceDICOM;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"mwg-rs", 0) == kCFCompareEqualTo)
  {
    v2 = kCGImageMetadataNamespaceMWGRegions;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"crs", 0) == kCFCompareEqualTo)
  {
    v2 = kCGImageMetadataNamespaceCameraRawSettings;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"aux", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceExifAux;
LABEL_29:
    result = *v2;
    if (*v2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (CFStringCompare(a1, @"xmpRights", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataNamespaceXMPRights;
    goto LABEL_29;
  }

LABEL_30:
  if (IIO_OSAppleInternalBuild())
  {
    os_unfair_lock_lock(&CGImageMetadataNamespaceForDefaultPrefix::unknownPrefixSet_lock);
    Mutable = CGImageMetadataNamespaceForDefaultPrefix::unknownPrefixSet;
    if (!CGImageMetadataNamespaceForDefaultPrefix::unknownPrefixSet)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9F8]);
      CGImageMetadataNamespaceForDefaultPrefix::unknownPrefixSet = Mutable;
    }

    if (!CFSetContainsValue(Mutable, a1))
    {
      IIOString::IIOString(v6, a1);
      v5 = IIOString::utf8String(v6);
      _cg_jpeg_mem_term("CGImageMetadataNamespaceForDefaultPrefix", 1283, "*** unknown prefix '%s'\n", v5);
      IIOString::~IIOString(v6);
      CFSetAddValue(CGImageMetadataNamespaceForDefaultPrefix::unknownPrefixSet, a1);
    }

    os_unfair_lock_unlock(&CGImageMetadataNamespaceForDefaultPrefix::unknownPrefixSet_lock);
  }

  return 0;
}

void sub_185E8BE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CFStringRef createPropertyPrefixFromCStrPrefix(char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v6.length = CFStringGetLength(v2) - 1;
  v6.location = 0;
  v4 = CFStringCreateWithSubstring(v1, v3, v6);
  CFRelease(v3);
  return v4;
}

void *CGImageMetadataNamespaceForPrefix(void *result, const __CFString *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    TypeID = CGImageMetadataGetTypeID();
    result = 0;
    if (a2)
    {
      if (v4 == TypeID)
      {
        v6 = CFGetTypeID(a2);
        if (v6 != CFStringGetTypeID())
        {
          return 0;
        }

        result = CGImageMetadataNamespaceForDefaultPrefix(a2);
        if (result)
        {
          return result;
        }

        v7 = v3[5];
        if (v7 && (v8 = CFGetTypeID(v7), v8 == CFDictionaryGetTypeID()))
        {
          v9 = OUTLINED_FUNCTION_12_0();
          result = CFDictionaryGetValue(v9, v10);
          if (result)
          {
            v11 = result;
            v12 = CFGetTypeID(result);
            if (v12 == CFStringGetTypeID())
            {
              return v11;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

__CFString *CGImageMetadataDefaultPrefixForNamespace(const __CFString *a1)
{
  if (CFStringCompare(a1, @"http://ns.adobe.com/exif/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixExif;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/tiff/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixTIFF;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/xap/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixXMPBasic;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/DICOM/", 0) == kCFCompareEqualTo)
  {
    v2 = kCGImageMetadataPrefixDICOM;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://purl.org/dc/elements/1.1/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixDublinCore;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/photoshop/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixPhotoshop;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://cipa.jp/exif/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixExifEX;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixIPTCCore;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://iptc.org/std/Iptc4xmpExt/2008-02-29/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixIPTCExtension;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.apple.com/ImageIO/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = xmpImageIOPrefix;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://www.metadataworkinggroup.com/schemas/regions/", 0) == kCFCompareEqualTo)
  {
    v2 = xmpMWGRegionsPrefix;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/camera-raw-settings/1.0/", 0) == kCFCompareEqualTo)
  {
    v2 = xmpCRSPrefix;
    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/exif/1.0/aux/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixExifAux;
LABEL_29:
    result = *v2;
    if (*v2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (CFStringCompare(a1, @"http://ns.adobe.com/xap/1.0/rights/", 0) == kCFCompareEqualTo)
  {
    v2 = &kCGImageMetadataPrefixXMPRights;
    goto LABEL_29;
  }

LABEL_30:
  IIOString::IIOString(v5, a1);
  v4 = IIOString::utf8String(v5);
  _cg_jpeg_mem_term("CGImageMetadataDefaultPrefixForNamespace", 1229, "*** unknown schema '%s'\n", v4);
  IIOString::~IIOString(v5);
  return 0;
}

void sub_185E8C2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

char *parse_metadata_path(char *result)
{
  if (result)
  {
    v1 = result;
    v7 = 0;
    v8 = 0;
    v9 = malloc_type_calloc(0x18uLL, 1uLL, 0x1010040B3F21DC8uLL);
    yylex_init_extra(v9, &v7);
    v8 = 0;
    v2 = yy_scan_string(v1, v7);
    if (yyparse(&v7))
    {
      if (v9)
      {
        v3 = *(v9 + 2) - *(v9 + 1);
        v4 = v3 & ~(v3 >> 31);
        result = malloc_type_malloc((v4 + 1), 0x100004077774924uLL);
        if (!result)
        {
          return result;
        }

        v5 = result;
        memset(result, 126, v4);
        v5[v4] = 0;
        LogMetadata("parse_metadata_path", 72, "Error occured '%s' at columns: %d:%d while parsing metadata path.\n%s\n%*s%s\n", *(v9 + 2), *(v9 + 1), *(v9 + 2), v1, *(v9 + 1) + 1, "^", v5);
        free(v5);
      }

      else
      {
        LogMetadata("parse_metadata_path", 77, "Error occured while parsing metadata path: '%s'", v1);
      }

      return 0;
    }

    else
    {
      yy_delete_buffer(v2, v7);
      v6 = v9;
      if (v9)
      {
        if (*(v9 + 2))
        {
          free(*(v9 + 2));
          v6 = v9;
        }

        free(v6);
      }

      yylex_destroy(v7);
      return v8;
    }
  }

  return result;
}

void yy_delete_buffer(void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a2 + 24));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1)
    {
      *(v3 + 8 * *(a2 + 24)) = 0;
    }

    if (*(a1 + 9))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

CFTypeID CGImageMetadataTagGetTypeID(void)
{
  if (CGImageMetadataTagGetTypeID::once != -1)
  {
    IIOMetadata_Tag::copyTagValue();
  }

  return CGImageMetadataTagGetTypeID::id;
}

CFStringRef IIOMetadata_Tag::copyTagValue(IIOMetadata_Tag *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, __CFString *cf, int a6)
{
  MutableCopy = cf;
  v10 = CFGetTypeID(cf);
  if (v10 == CFNullGetTypeID())
  {
    return MutableCopy;
  }

  v12 = CFGetTypeID(MutableCopy);
  if (v12 == CFStringGetTypeID())
  {
    v13 = *MEMORY[0x1E695E480];

    return CFStringCreateCopy(v13, MutableCopy);
  }

  v14 = CFGetTypeID(MutableCopy);
  if (v14 != CFNumberGetTypeID())
  {
    v17 = CFGetTypeID(MutableCopy);
    if (v17 == CFBooleanGetTypeID())
    {
      v15 = MutableCopy;
      v16 = 0;
      goto LABEL_11;
    }

    v18 = CFGetTypeID(MutableCopy);
    if (v18 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(MutableCopy);
      v20 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], Count, MutableCopy);
      if (Count >= 1)
      {
        for (i = 0; Count != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
          v23 = CFGetTypeID(ValueAtIndex);
          if (v23 == CFStringGetTypeID())
          {
            v24 = CFStringCreateWithFormat(v20, 0, @"[%ld]", i);
            if (!v24)
            {
              continue;
            }

            v25 = v24;
            v26 = CGImageMetadataTagCreate(a2, a3, v24, kCGImageMetadataTypeString, ValueAtIndex);
            CFRelease(v25);
            if (!v26)
            {
              continue;
            }
          }

          else
          {
            if (!ValueAtIndex || !a6)
            {
              continue;
            }

            v30 = CFGetTypeID(ValueAtIndex);
            if (CGImageMetadataTagGetTypeID::once != -1)
            {
              IIOMetadata_Tag::copyTagValue();
            }

            if (v30 != CGImageMetadataTagGetTypeID::id)
            {
              continue;
            }

            v31 = ValueAtIndex[3];
            if (!v31)
            {
              continue;
            }

            DeepCopy = IIOMetadata_Tag::createDeepCopy(v31, v27, v28, v29);
            if (!DeepCopy)
            {
              continue;
            }

            v26 = DeepCopy;
          }

          CFArraySetValueAtIndex(MutableCopy, i, v26);
          CFRelease(v26);
        }
      }

      return MutableCopy;
    }

    v33 = CFGetTypeID(MutableCopy);
    if (v33 != CFDictionaryGetTypeID())
    {
      v48 = CFCopyDescription(MutableCopy);
      IIOString::IIOString(v52, v48);
      v49 = IIOString::utf8String(v52);
      LogError("copyTagValue", 424, "*** ERROR: copyTagValue not handled for %s\n", v49);
      IIOString::~IIOString(v52);
      return 0;
    }

    v34 = CFDictionaryGetCount(MutableCopy);
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v34, MutableCopy);
    v35 = malloc_type_calloc(8uLL, v34, 0xC0040B8AA526DuLL);
    v36 = malloc_type_calloc(8uLL, v34, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(MutableCopy, v35, v36);
    v50 = v35;
    v51 = v36;
    if (v34 < 1)
    {
      if (v35)
      {
LABEL_49:
        free(v50);
      }

      if (v51)
      {
        free(v51);
      }

      return MutableCopy;
    }

    while (1)
    {
      v37 = *v35;
      v38 = *v36;
      v39 = CFGetTypeID(*v36);
      if (v39 != CFStringGetTypeID())
      {
        break;
      }

      v40 = CGImageMetadataTagCreate(a2, a3, v37, kCGImageMetadataTypeString, v38);
      if (v40)
      {
        goto LABEL_35;
      }

LABEL_45:
      ++v36;
      ++v35;
      if (!--v34)
      {
        goto LABEL_49;
      }
    }

    if (v38)
    {
      v42 = a6 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_45;
    }

    v46 = CFGetTypeID(v38);
    if (CGImageMetadataTagGetTypeID::once != -1)
    {
      IIOMetadata_Tag::copyTagValue();
    }

    if (v46 != CGImageMetadataTagGetTypeID::id)
    {
      goto LABEL_45;
    }

    v47 = v38[3];
    if (!v47)
    {
      goto LABEL_45;
    }

    v40 = IIOMetadata_Tag::createDeepCopy(v47, v43, v44, v45);
    if (!v40)
    {
      goto LABEL_45;
    }

LABEL_35:
    v41 = v40;
    CFDictionarySetValue(MutableCopy, v37, v40);
    CFRelease(v41);
    goto LABEL_45;
  }

  v15 = MutableCopy;
  v16 = 1;
LABEL_11:

  return CGImageMetadataCreateSimpleStringFromCFValue(v15, v16);
}

void sub_185E8C938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CGImageMetadataTagRef CGImageMetadataTagCreate(CFStringRef xmlns, CFStringRef prefix, CFStringRef name, CGImageMetadataType type, CFTypeRef value)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    IIOString::IIOString(v24, name);
    v10 = IIOString::utf8String(v24);
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCreate", 0, v10, -1, 0);
    IIOString::~IIOString(v24);
  }

  if (xmlns)
  {
    v11 = CFGetTypeID(xmlns);
    if (v11 == CFStringGetTypeID())
    {
      if (prefix)
      {
        v12 = CFGetTypeID(prefix);
        TypeID = CFStringGetTypeID();
        if (!name || v12 != TypeID)
        {
          return 0;
        }
      }

      else if (!name)
      {
        return 0;
      }

      v14 = CFGetTypeID(name);
      v15 = CFStringGetTypeID();
      if (value && v14 == v15)
      {
        v16 = CFGetTypeID(value);
        if (v16 == CFStringGetTypeID() || (v17 = CFGetTypeID(value), v17 == CFNumberGetTypeID()) || (v18 = CFGetTypeID(value), v18 == CFBooleanGetTypeID()) || (v19 = CFGetTypeID(value), v19 == CFArrayGetTypeID()) || (v20 = CFGetTypeID(value), v20 == CFNullGetTypeID()))
        {
          if (type > kCGImageMetadataTypeStructure)
          {
            return 0;
          }
        }

        else
        {
          v22 = CFGetTypeID(value);
          v23 = CFDictionaryGetTypeID();
          if (type > kCGImageMetadataTypeStructure || v22 != v23)
          {
            return 0;
          }
        }

        if (CGImageMetadataTagGetTypeID::once != -1)
        {
          CGImageMetadataTagCreate_cold_1();
        }

        *(_CFRuntimeCreateInstance() + 16) = 1;
        atomic_fetch_add_explicit(&gMDTCount, 1uLL, memory_order_relaxed);
        operator new();
      }
    }
  }

  return 0;
}

void sub_185E8CBA8(void *a1)
{
  MEMORY[0x186602850](v1, 0x10E1C40ED41123FLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E8CB58);
}

void sub_185E8CBDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIOMetadata_Tag::IIOMetadata_Tag(IIOMetadata_Tag *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, int a5, __CFString *a6)
{
  *this = &unk_1EF4DBFF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = -1;
  *(this + 6) = 0;
  v12 = (this + 48);
  *(this + 7) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0x100000000;
  v13 = *MEMORY[0x1E695E480];
  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  *(this + 2) = Copy;
  if (!a3)
  {
    a3 = CGImageMetadataDefaultPrefixForNamespace(Copy);
    if (!a3)
    {
LABEL_15:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  *(this + 3) = CFStringCreateCopy(v13, a3);
  *(this + 4) = CFStringCreateCopy(v13, a4);
  updated = IIOMetadata_Tag::updatePrefixFlag(this);
  if (a5)
  {
    goto LABEL_8;
  }

  v17 = CFGetTypeID(a6);
  updated = CFStringGetTypeID();
  if (v17 == updated || (v18 = CFGetTypeID(a6), updated = CFNumberGetTypeID(), v18 == updated) || (v19 = CFGetTypeID(a6), updated = CFBooleanGetTypeID(), v19 == updated))
  {
    a5 = 1;
LABEL_8:
    *(this + 10) = a5;
    goto LABEL_9;
  }

  v21 = CFGetTypeID(a6);
  updated = CFArrayGetTypeID();
  if (v21 == updated)
  {
    a5 = 3;
    goto LABEL_8;
  }

  v22 = CFGetTypeID(a6);
  updated = CFDictionaryGetTypeID();
  if (v22 == updated)
  {
    a5 = 6;
    goto LABEL_8;
  }

LABEL_9:
  v20 = IIOMetadata_Tag::copyTagValue(updated, a2, a3, v16, a6, 0);
  *v12 = v20;
  if (!v20)
  {
    goto LABEL_15;
  }

  *(this + 64) = 1;
}

const __CFString *IIOMetadata_Tag::updatePrefixFlag(IIOMetadata_Tag *this)
{
  result = *(this + 3);
  if (result)
  {
    result = CFStringCompare(result, @"exif", 0);
    if (!result)
    {
      v3 = 2;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"aux", 0);
    if (!result)
    {
      v3 = 4;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"http://cipa.jp/exif/1.0/", 0);
    if (!result)
    {
      v3 = 8;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"dc", 0);
    if (!result)
    {
      v3 = 16;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"DICOM", 0);
    if (!result)
    {
      v3 = 32;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"Iptc4xmpCore", 0);
    if (!result)
    {
      v3 = 64;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"Iptc4xmpExt", 0);
    if (!result)
    {
      v3 = 128;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"photoshop", 0);
    if (!result)
    {
      v3 = 256;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"tiff", 0);
    if (!result)
    {
      v3 = 512;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"xmp", 0);
    if (!result)
    {
      v3 = 1024;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"xmpRights", 0);
    if (!result)
    {
      v3 = 4096;
      goto LABEL_27;
    }

    result = CFStringCompare(*(this + 3), @"stDim", 0);
    if (!result)
    {
      v3 = 0x2000;
      goto LABEL_27;
    }
  }

  v3 = 1;
LABEL_27:
  *(this + 18) = v3;
  return result;
}

void *CGImageMetadataTagKeyCreate(const __CFString *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  TypeID = CFStringGetTypeID();
  v6 = 0;
  if (!a2 || v4 != TypeID)
  {
    return v6;
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFStringGetTypeID())
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x18uLL, 0x106004091AC2883uLL);
  if (v6)
  {
    v8 = *MEMORY[0x1E695E480];
    *v6 = CFStringCreateCopy(*MEMORY[0x1E695E480], a1);
    v6[1] = CFStringCreateCopy(v8, a2);
    *(v6 + 4) = 1;
  }

  return v6;
}

uint64_t CGImageMetadataTagKeyRetainCallback(uint64_t a1, uint64_t a2)
{
  result = a2;
  atomic_fetch_add((a2 + 16), 1u);
  return result;
}

uint64_t CGImageMetadataTagKeyHash(const void **a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *a1;
  if (!v2 || !a1[1])
  {
    return -1;
  }

  CFHash(v2);
  CFHash(a1[1]);
  return os_simple_hash();
}

uint64_t CGImageMetadataTagKeyEqual(CFTypeRef *a1, CFTypeRef *a2)
{
  result = CFEqual(a1[1], a2[1]);
  if (result)
  {
    return CFEqual(*a1, *a2) != 0;
  }

  return result;
}

BOOL CGImageIIMDigestsMatchOrMissing(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4 || CFStringCompare(v2, v3, 1uLL) == kCFCompareEqualTo;
}

BOOL CGImageMetadataSetValueWithPath(CGMutableImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path, CFTypeRef value)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataSetValueWithPath", 0, 0, -1, 0);
  }

  v95 = 0;
  v96 = &v95;
  v97 = 0x2000000000;
  v98 = 0;
  Source = CGImageSourceGetSource(parent);
  if (!metadata)
  {
    goto LABEL_4;
  }

  v8 = Source;
  v9 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataCopyTagWithPath_cold_1();
  }

  if (v9 != _MergedGlobals_1)
  {
    goto LABEL_4;
  }

  if (parent)
  {
    v10 = CFGetTypeID(parent);
    TypeID = CGImageMetadataTagGetTypeID();
    v87 = 0;
    v88 = 0;
    if (!path || v10 != TypeID)
    {
      goto LABEL_160;
    }
  }

  else if (!path)
  {
LABEL_4:
    v88 = 0;
    v87 = 0;
    goto LABEL_160;
  }

  v12 = CFGetTypeID(path);
  if (v12 != CFStringGetTypeID())
  {
    goto LABEL_4;
  }

  pthread_mutex_lock((metadata + 208));
  if (*(metadata + 200) == 1)
  {
    LogMetadata("CGImageMetadataSetValueWithPath", 1010, "Cannot mutate metadata while enumerating");
    pthread_mutex_unlock((metadata + 208));
    goto LABEL_4;
  }

  pthread_mutex_unlock((metadata + 208));
  pthread_mutex_lock((metadata + 72));
  TagWithPath = CGImageMetadataGetTagWithPath(metadata, parent, path);
  v85 = metadata;
  if (TagWithPath)
  {
    v87 = CGImageMetadataTagSetValue(TagWithPath, value);
    v88 = 0;
    v14 = 0;
    Mutable = 0;
    v82 = 0;
    PropertyPrefixFromCStrPrefix = 0;
    TopLevelTag = 0;
    cf = 0;
    goto LABEL_148;
  }

  v17 = *MEMORY[0x1E695E480];
  allocator = *MEMORY[0x1E695E480];
  if (parent)
  {
    v18 = CFStringCreateWithFormat(v17, 0, @"%@:%@", *(v8 + 3), *(v8 + 4));
    if (!v18)
    {
      v88 = 0;
      v14 = 0;
      Mutable = 0;
      v82 = 0;
      PropertyPrefixFromCStrPrefix = 0;
      TopLevelTag = 0;
      cf = 0;
      goto LABEL_176;
    }

    cf = IIOMetadata_Tag::createPathWithChildPath(v8, path);
    v19 = parse_metadata_pathString(v18);
    if (v19)
    {
      v20 = *(v19 + 5);
      if (v20)
      {
        v21 = 0;
        do
        {
          if ((*v20 & 0xFFFFFFFE) != 2)
          {
            break;
          }

          ++v21;
          v20 = *(v20 + 40);
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      freeNodes(v19);
    }

    else
    {
      v21 = 0;
    }

    CFRelease(v18);
    v22 = parse_metadata_pathString(cf);
  }

  else
  {
    cf = CFStringCreateCopy(v17, path);
    v21 = 0;
    v22 = parse_metadata_pathString(cf);
  }

  v88 = v22;
  v23 = v22;
  if (!v22)
  {
    v88 = 0;
LABEL_174:
    v14 = 0;
    Mutable = 0;
    v82 = 0;
    PropertyPrefixFromCStrPrefix = 0;
LABEL_175:
    TopLevelTag = 0;
LABEL_176:
    v87 = 0;
    goto LABEL_148;
  }

  v24 = *(v22 + 1);
  if (!v24 || !*(v23 + 2))
  {
    goto LABEL_174;
  }

  if (parent)
  {
    TopLevelTag = CFRetain(parent);
    v25 = CGImageSourceGetSource(TopLevelTag);
    if (v21 < 1)
    {
      v82 = 0;
      PropertyPrefixFromCStrPrefix = 0;
      v26 = v88;
    }

    else
    {
      v26 = v88;
      do
      {
        v26 = v26[5];
        --v21;
      }

      while (v21);
      v82 = 0;
      PropertyPrefixFromCStrPrefix = 0;
    }

    goto LABEL_55;
  }

  PropertyPrefixFromCStrPrefix = createPropertyPrefixFromCStrPrefix(v24);
  if (!PropertyPrefixFromCStrPrefix)
  {
    goto LABEL_174;
  }

  v82 = CFStringCreateWithCString(allocator, v88[2], 0x8000100u);
  v27 = CGImageMetadataNamespaceForPrefix(metadata, PropertyPrefixFromCStrPrefix);
  if (!v27)
  {
    LogMetadata("CGImageMetadataSetValueWithPath", 1089, "Could not obtain XMP namespace for prefix '%s'. Please ensure that the prefix has been registered with CGImageMetadataRegisterNamespaceForPrefix.", v88[1]);
    v14 = 0;
    Mutable = 0;
    goto LABEL_175;
  }

  TopLevelTag = CGImageMetadataGetTopLevelTag(metadata, v27, v82);
  v28 = CGImageSourceGetSource(TopLevelTag);
  if (TopLevelTag)
  {
    v25 = v28;
    CFRetain(TopLevelTag);
    v26 = v88;
    goto LABEL_55;
  }

  v29 = v88[5];
  if (v29)
  {
    v30 = *v29;
    switch(v30)
    {
      case 4:
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v31 = kCGImageMetadataTypeStructure;
        break;
      case 3:
        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v31 = kCGImageMetadataTypeAlternateText;
        break;
      case 2:
        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v31 = kCGImageMetadataTypeArrayOrdered;
        break;
      default:
        LogMetadata("CGImageMetadataSetValueWithPath", 1120, "Unable to create top-level property with type %d\n", v30);
        v14 = 0;
        Mutable = 0;
        goto LABEL_165;
    }

    if (Mutable)
    {
      TopLevelTag = CGImageMetadataTagCreate(v27, PropertyPrefixFromCStrPrefix, v82, v31, Mutable);
      v25 = CGImageSourceGetSource(TopLevelTag);
      CFRelease(Mutable);
      goto LABEL_53;
    }

    v14 = 0;
LABEL_165:
    TopLevelTag = 0;
    goto LABEL_147;
  }

  TopLevelTag = CGImageMetadataTagCreate(v27, PropertyPrefixFromCStrPrefix, v82, kCGImageMetadataTypeDefault, value);
  v25 = CGImageSourceGetSource(TopLevelTag);
LABEL_53:
  if (!TopLevelTag)
  {
LABEL_146:
    v14 = 0;
    Mutable = 0;
LABEL_147:
    v87 = 1;
    goto LABEL_148;
  }

  CGImageMetadataAddTag(metadata, TopLevelTag);
  v26 = v88;
LABEL_55:
  v32 = v26[5];
  if (v32)
  {
    v33 = TopLevelTag == 0;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    goto LABEL_146;
  }

  v87 = 0;
  while (1)
  {
    v34 = CFGetTypeID(TopLevelTag);
    if (v34 != CGImageMetadataTagGetTypeID())
    {
      v14 = 0;
      Mutable = 0;
      goto LABEL_148;
    }

    v35 = *(v32 + 1);
    if (v35)
    {
      Mutable = createPropertyPrefixFromCStrPrefix(v35);
    }

    else
    {
      Mutable = 0;
    }

    v36 = *(v32 + 2);
    if (v36)
    {
      v14 = CFStringCreateWithCString(allocator, v36, 0x8000100u);
    }

    else
    {
      v14 = 0;
    }

    v37 = *v32;
    if (*v32 <= 3)
    {
      if (v37 != 2)
      {
        if (v37 == 3)
        {
          if (CGImageMetadataTagGetType(TopLevelTag) != kCGImageMetadataTypeAlternateText)
          {
            goto LABEL_148;
          }

          v38 = CGImageMetadataTagGetValue(TopLevelTag);
          v39 = CFGetTypeID(v38);
          if (v39 != CFArrayGetTypeID())
          {
            goto LABEL_148;
          }

          v40 = CFStringCreateWithCString(allocator, *(v32 + 4), 0x8000100u);
          if (!v40)
          {
            goto LABEL_148;
          }

          if (*(v32 + 5))
          {
            LogMetadata("CGImageMetadataSetValueWithPath", 1325, "Language codes must be the last element in a path, all alternate-text array elements are strings and cannot have children.\n");
            CFRelease(v40);
            goto LABEL_148;
          }

          Namespace = CGImageMetadataTagGetNamespace(TopLevelTag);
          Prefix = CGImageMetadataTagGetPrefix(TopLevelTag);
          v43 = CFStringCreateWithFormat(allocator, 0, @"[%@]", v40);
          if (v43)
          {
            v44 = CGImageMetadataTagCreate(Namespace, Prefix, v43, kCGImageMetadataTypeString, value);
            v96[3] = v44;
            if (v44)
            {
              v45 = CGImageMetadataTagCreate(@"http://www.w3.org/XML/1998/namespace", @"xml", @"lang", kCGImageMetadataTypeString, v40);
              if (v45)
              {
                CGImageMetadataTagAppendQualifier(v85, v96[3], v45);
                CFArrayAppendValue(v38, v96[3]);
                CFRelease(v45);
              }
            }

            CFRelease(v43);
          }

          CFRelease(v40);
        }

        goto LABEL_140;
      }

      if (CGImageMetadataTagGetType(TopLevelTag) != kCGImageMetadataTypeArrayOrdered && CGImageMetadataTagGetType(TopLevelTag) != kCGImageMetadataTypeArrayUnordered && CGImageMetadataTagGetType(TopLevelTag) != kCGImageMetadataTypeAlternateArray)
      {
        goto LABEL_148;
      }

      v53 = CGImageMetadataTagGetValue(TopLevelTag);
      v54 = CFGetTypeID(v53);
      if (v54 != CFArrayGetTypeID())
      {
        goto LABEL_148;
      }

      Count = CFArrayGetCount(v53);
      v56 = *(v32 + 6);
      if (Count < v56)
      {
        LogMetadata("CGImageMetadataSetValueWithPath", 1242, "Cannot set array element at index %d, current array has %d element(s).", *(v32 + 6), Count);
        goto LABEL_148;
      }

      if (CFArrayGetCount(v53) <= v56)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v53, *(v32 + 6));
      }

      v65 = CGImageMetadataTagGetNamespace(TopLevelTag);
      v66 = CGImageMetadataTagGetPrefix(TopLevelTag);
      v67 = CFStringCreateWithFormat(allocator, 0, @"[%d]", *(v32 + 6));
      if (!v67)
      {
        goto LABEL_148;
      }

      if (ValueAtIndex)
      {
        v68 = CFGetTypeID(ValueAtIndex);
        if (v68 == CGImageMetadataTagGetTypeID())
        {
          v69 = CFRetain(ValueAtIndex);
          v96[3] = v69;
          if (!*(v32 + 5))
          {
            CGImageMetadataTagSetValue(v69, value);
          }

LABEL_139:
          CFRelease(v67);
          goto LABEL_140;
        }
      }

      v70 = *(v32 + 5);
      if (!v70)
      {
        v75 = CGImageMetadataTagCreate(v65, v66, v67, kCGImageMetadataTypeDefault, value);
        v96[3] = v75;
        goto LABEL_137;
      }

      v71 = *v70;
      switch(v71)
      {
        case 4:
          v72 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v73 = kCGImageMetadataTypeStructure;
          if (!v72)
          {
            goto LABEL_137;
          }

          break;
        case 3:
          v72 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v73 = kCGImageMetadataTypeAlternateText;
          if (!v72)
          {
            goto LABEL_137;
          }

          break;
        case 2:
          v72 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v73 = kCGImageMetadataTypeArrayOrdered;
          if (!v72)
          {
LABEL_137:
            v79 = v96[3];
            if (v79)
            {
              CFArraySetValueAtIndex(v53, *(v32 + 6), v79);
            }

            goto LABEL_139;
          }

          break;
        default:
          LogMetadata("CGImageMetadataSetValueWithPath", 1287, "Unable to create a property with type %d\n", v71);
          goto LABEL_137;
      }

      v78 = CGImageMetadataTagCreate(v65, v66, v67, v73, v72);
      v96[3] = v78;
      CFRelease(v72);
      goto LABEL_137;
    }

    if (v37 == 5)
    {
      break;
    }

    if (v37 == 4)
    {
      if (CGImageMetadataTagGetType(TopLevelTag) != kCGImageMetadataTypeStructure)
      {
        goto LABEL_148;
      }

      v46 = CGImageMetadataNamespaceForPrefix(v85, Mutable);
      v47 = CGImageMetadataTagGetValue(TopLevelTag);
      v48 = CFGetTypeID(v47);
      if (v48 != CFDictionaryGetTypeID() || !v14)
      {
        goto LABEL_148;
      }

      v49 = CFDictionaryGetValue(v47, v14);
      v50 = v49;
      if (!v49 || (v51 = CFGetTypeID(v49), v51 != CGImageMetadataTagGetTypeID()))
      {
        v61 = *(v32 + 5);
        if (!v61)
        {
          v74 = CGImageMetadataTagCreate(v46, Mutable, v14, kCGImageMetadataTypeDefault, value);
          v96[3] = v74;
          goto LABEL_130;
        }

        v62 = *v61;
        switch(v62)
        {
          case 4:
            v63 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v64 = kCGImageMetadataTypeStructure;
            if (!v63)
            {
              goto LABEL_130;
            }

            break;
          case 3:
            v63 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            v64 = kCGImageMetadataTypeAlternateText;
            if (!v63)
            {
              goto LABEL_130;
            }

            break;
          case 2:
            v63 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            v64 = kCGImageMetadataTypeArrayOrdered;
            if (!v63)
            {
LABEL_130:
              v77 = v96[3];
              if (v77)
              {
                CFDictionarySetValue(v47, v14, v77);
              }

              goto LABEL_140;
            }

            break;
          default:
            LogMetadata("CGImageMetadataSetValueWithPath", 1208, "Unable to create a property with type %d\n", v62);
            goto LABEL_130;
        }

        v76 = CGImageMetadataTagCreate(v46, Mutable, v14, v64, v63);
        v96[3] = v76;
        CFRelease(v63);
        goto LABEL_130;
      }

      v52 = CFRetain(v50);
      v96[3] = v52;
      if (!*(v32 + 5))
      {
        CGImageMetadataTagSetValue(v52, value);
      }
    }

LABEL_140:
    v32 = *(v32 + 5);
    CFRelease(TopLevelTag);
    TopLevelTag = v96[3];
    v96[3] = 0;
    v25 = CGImageSourceGetSource(TopLevelTag);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (!v32 || !TopLevelTag)
    {
      goto LABEL_146;
    }
  }

  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  if (*(v32 + 5))
  {
    LogMetadata("CGImageMetadataSetValueWithPath", 1356, "Only string qualifier values are currently supported.\n");
    goto LABEL_172;
  }

  v58 = *(v25 + 56);
  if (v58)
  {
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 0x40000000;
    v90[2] = __CGImageMetadataSetValueWithPath_block_invoke;
    v90[3] = &unk_1E6F09870;
    v90[6] = Mutable;
    v90[7] = v14;
    v90[4] = &v95;
    v90[5] = &v91;
    IIOArrayEnumerateUsingBlock(v58, v90);
    if (v92[3])
    {
      if (!*(v32 + 5))
      {
        CGImageMetadataTagSetValue(v96[3], value);
      }

      goto LABEL_104;
    }
  }

  v59 = CGImageMetadataNamespaceForPrefix(v85, Mutable);
  v60 = CGImageMetadataTagCreate(v59, Mutable, v14, kCGImageMetadataTypeDefault, value);
  v96[3] = v60;
  if (!v60)
  {
LABEL_104:
    _Block_object_dispose(&v91, 8);
    goto LABEL_140;
  }

  if (CGImageMetadataTagAppendQualifier(v85, TopLevelTag, v60))
  {
    v87 = 1;
    goto LABEL_104;
  }

  v87 = 0;
LABEL_172:
  _Block_object_dispose(&v91, 8);
LABEL_148:
  pthread_mutex_unlock((v85 + 72));
  if (TopLevelTag)
  {
    CFRelease(TopLevelTag);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (PropertyPrefixFromCStrPrefix)
  {
    CFRelease(PropertyPrefixFromCStrPrefix);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_160:
  v80 = v96[3];
  if (v80)
  {
    CFRelease(v80);
  }

  freeNodes(v88);
  _Block_object_dispose(&v95, 8);
  return v87 & 1;
}

uint64_t IIODictionaryIsMutable()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  if ([(NSString *)v1 isEqualToString:@"__NSDictionaryI"])
  {
    return 0;
  }

  if (![(NSString *)v1 isEqualToString:@"__NSDictionaryM"])
  {
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        abort();
      }

      return 0;
    }
  }

  return 1;
}

uint64_t __XMPMappingIteratePropertiesUsingBlock_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CGImageSourceGetSource(a3);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) |= *(result + 72);
  }

  return result;
}

void CGImageMetadataTagKeyRelease(void *a1)
{
  if (atomic_fetch_add(a1 + 4, 0xFFFFFFFF) == 1)
  {
    v3 = *a1;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 1);
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t GetIntegerFromPropertyValue(const __CFString *cf, SInt32 *a2)
{
  result = 0;
  if (cf && a2)
  {
    *a2 = 0;
    v5 = CFGetTypeID(cf);
    if ((v5 != CGImageMetadataTagGetTypeID() || (cf = *(CGImageSourceGetSource(cf) + 48)) != 0) && (v6 = CFGetTypeID(cf), v6 == CFStringGetTypeID()))
    {
      *a2 = CFStringGetIntValue(cf);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGImageMetadataTagGetSource(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 68);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IIOReadPlugin::setupImageProviderCallbackV1(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = IIOReadPlugin::prepareGeometry(a1, a2);
  if (!v3)
  {
    IIOImagePlus::setImageBlockProc(*(a1 + 16));
  }

  return v3;
}

uint64_t IIOReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 408) != 1)
  {
    v4 = *(a1 + 220);
    v5 = v4 >> 24;
    v6 = MEMORY[0x1E69E9830];
    v7 = (v4 >> 24) <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000 : __maskrune(v4 >> 24, 0x40000uLL);
    v8 = v7 ? v5 : 46;
    v9 = v4 << 8 >> 24;
    v10 = v9 <= 0x7F ? *(v6 + 4 * v9 + 60) & 0x40000 : __maskrune(v4 << 8 >> 24, 0x40000uLL);
    v11 = v10 ? v9 : 46;
    v12 = v4 >> 8;
    v13 = v12 <= 0x7F ? *(v6 + 4 * v12 + 60) & 0x40000 : __maskrune(v4 >> 8, 0x40000uLL);
    v14 = v13 ? v12 : 46;
    v15 = v4 <= 0x7F ? *(v6 + 4 * v4 + 60) & 0x40000 : __maskrune(v4, 0x40000uLL);
    v16 = v15 ? v4 : 46;
    _cg_jpeg_mem_term("setupCallback", 518, "*** '%c%c%c%c' plugin has to implement 'setupCallback' for non-version1 callbacks [%d]\n", v8, v11, v14, v16, *(a1 + 408));
    if (v4 != 1246774599)
    {
      return 4294967246;
    }
  }

  IIOReadPlugin::setupImageProviderCallbackV1(a1, a2);
  return 0;
}

uint64_t PNGReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t _cg_png_get_eXIf_1(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      if (a4)
      {
        if ((*(a2 + 8) & 0x10000) != 0)
        {
          v6 = *(a2 + 260);
          *a3 = v6;
          v7 = *(a2 + 264);
          if (v7 && v6 <= 0)
          {
            __break(0x5519u);
          }

          else
          {
            *a4 = v7;
            return 0x10000;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _cg_png_get_text_count(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 164);
    }
  }

  return result;
}

uint64_t PNGReadPlugin::HandlePNGMetadata(IIODictionary *a1, IIODictionary *a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = IIOSkipMetadata(a1);
  v62 = IIOSkipXMP_and_IPTC(a1);
  if ((v62 & 1) == 0)
  {
    ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageSourceXMPSidecar");
    if (ObjectForKey)
    {
      v11 = ObjectForKey;
      BytePtr = CFDataGetBytePtr(ObjectForKey);
      Length = CFDataGetLength(v11);
      MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(BytePtr, Length);
      CGImageMetadataMerge(a3, MetadataFromXMPSidecarData, 0);
      if (!MetadataFromXMPSidecarData)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  v61 = a3;
  v69 = 0;
  v68 = 0;
  text_count = _cg_png_get_text_count(a4, a5);
  if (text_count >= 1)
  {
    v16 = text_count;
    v17 = 0;
    while (1)
    {
      v66 = 0;
      __s1 = 0;
      v65 = 0;
      text_entry = _cg_png_get_text_entry(a4, a5, v17, &__s1, &v65, &v66);
      v19 = __s1;
      if (!strncmp(__s1, "Raw profile type exif", 0x15uLL) || !strncmp(v19, "Raw profile type iptc", 0x15uLL) || !strncmp(v19, "Raw profile type xmp", 0x14uLL) || !strncmp(v19, "Raw profile type icc", 0x14uLL) || !strncmp(v19, "Raw profile type icm", 0x14uLL))
      {
        break;
      }

      v20 = v66;
      if (v66)
      {
        if (!strncmp(v19, "XML:com.adobe.xmp", 0x11uLL))
        {
          if ((v62 & 1) == 0 && (!IIODictionary::containsKey(a1, @"kCGImageSourceSkipXMPIfLargerThanSize") || v20 <= IIODictionary::getUint32ForKey(a1, @"kCGImageSourceSkipXMPIfLargerThanSize")))
          {
            MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(text_entry, v20);
            CGImageMetadataMerge(v61, MetadataFromXMPBuffer, 0);
            if (MetadataFromXMPBuffer)
            {
              CFRelease(MetadataFromXMPBuffer);
            }
          }

          goto LABEL_33;
        }

        v21 = v65;
        v22 = a2;
        v23 = v19;
        v24 = text_entry;
        v25 = v20;
        goto LABEL_32;
      }

      v21 = v65;
      if (v65)
      {
        v22 = a2;
        v23 = v19;
        v24 = text_entry;
        v25 = 0;
LABEL_32:
        PNGReadPlugin::AddTextChunkToProperties(v22, v23, v24, v21, v25);
      }

LABEL_33:
      if (++v17 == v16)
      {
        goto LABEL_40;
      }
    }

    __endptr = 0;
    if (*text_entry != 10)
    {
      goto LABEL_33;
    }

    v26 = text_entry + 1;
    v27 = v65 - 1;
    do
    {
      v28 = v27;
      v29 = *v26;
      if (!*v26)
      {
        break;
      }

      ++v26;
      --v27;
    }

    while (v29 != 10);
    v30 = strtol(v26, &__endptr, 10);
    if (v30 > v28)
    {
      goto LABEL_33;
    }

    v31 = PNGReadPlugin::HexString2bin(__endptr, v30);
    if (!v31)
    {
      goto LABEL_33;
    }

    v32 = v31;
    v33 = __s1;
    if (!strncmp(__s1, "Raw profile type exif", 0x15uLL))
    {
      MetadataFromDatabuffer = CreateMetadataFromDatabuffer(v32, v30);
      if (!MetadataFromDatabuffer)
      {
LABEL_29:
        free(v32);
        goto LABEL_33;
      }
    }

    else
    {
      v34 = strncmp(v33, "Raw profile type xmp", 0x14uLL);
      v35 = v62;
      if (v34)
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_29;
      }

      MetadataFromDatabuffer = CreateMetadataFromXMPBuffer(v32, v30);
      if (!MetadataFromDatabuffer)
      {
        goto LABEL_29;
      }
    }

    v37 = MetadataFromDatabuffer;
    CGImageMetadataMerge(v61, MetadataFromDatabuffer, a1);
    CFRelease(v37);
    goto LABEL_29;
  }

LABEL_40:
  a3 = v61;
  if (_cg_png_get_eXIf_1(a4, a5, &v69, &v68))
  {
    v39 = CreateMetadataFromDatabuffer(v68, v69);
    if (v39)
    {
      MetadataFromXMPSidecarData = v39;
      if (v9)
      {
        TagWithPath = CGImageMetadataGetTagWithPath(v39, 0, @"tiff:Orientation");
        if (TagWithPath)
        {
          CGImageMetadataAddTag(v61, TagWithPath);
        }
      }

      else
      {
        CGImageMetadataMerge(v61, v39, a1);
      }

LABEL_46:
      CFRelease(MetadataFromXMPSidecarData);
    }
  }

LABEL_47:
  if (a3)
  {
    v41 = v9;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    v42 = a3[3];
    if (v42)
    {
      if (CFDictionaryGetCount(v42) >= 1)
      {
        v43 = CGImageMetadataGetTagWithPath(a3, 0, @"xmp:CreatorTool");
        if (v43)
        {
          Value = CGImageMetadataTagGetValue(v43);
          IIODictionary::setObjectForKeyGroup(a2, Value, @"Software", @"{PNG}");
        }

        StringValueWithPath = CGImageMetadataGetStringValueWithPath(a3, 0, @"exif:UserComment");
        if (!StringValueWithPath || CFStringCompare(StringValueWithPath, @"Screenshot", 0))
        {
          IIODictionary::removeObjectForKey(a2, @"{TIFF}");
        }

        TagMatchingImageProperty = CGImageMetadataGetTagMatchingImageProperty(a3, @"{IPTC}", @"Caption/Abstract");
        DefaultString = CGImageMetadataGetDefaultString(TagMatchingImageProperty);
        if (DefaultString)
        {
          IIODictionary::setObjectForKeyGroup(a2, DefaultString, @"Description", @"{PNG}");
        }

        v48 = CGImageMetadataGetTagMatchingImageProperty(a3, @"{IPTC}", @"CopyrightNotice");
        v49 = CGImageMetadataGetDefaultString(v48);
        if (v49)
        {
          IIODictionary::setObjectForKeyGroup(a2, v49, @"Copyright", @"{PNG}");
        }

        v50 = CGImageMetadataGetTagMatchingImageProperty(a3, @"{IPTC}", @"ObjectName");
        v51 = CGImageMetadataGetDefaultString(v50);
        if (v51)
        {
          IIODictionary::setObjectForKeyGroup(a2, v51, @"Title", @"{PNG}");
        }

        v52 = CGImageMetadataGetTagMatchingImageProperty(a3, @"{IPTC}", @"Byline");
        v53 = CGImageMetadataTagGetValue(v52);
        if (v53)
        {
          v54 = v53;
          v55 = CFGetTypeID(v53);
          if (v55 == CFStringGetTypeID())
          {
            v56 = a2;
            v57 = v54;
LABEL_70:
            IIODictionary::setObjectForKeyGroup(v56, v57, @"Author", @"{PNG}");
            return 0;
          }

          v58 = CFGetTypeID(v54);
          if (v58 == CFArrayGetTypeID() && CFArrayGetCount(v54) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v54, 0);
            v57 = CGImageMetadataTagGetValue(ValueAtIndex);
            v56 = a2;
            goto LABEL_70;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t IIO_Reader_PNG::compareOptions(IIO_Reader_PNG *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19, a2);
  memset(v18, 0, sizeof(v18));
  IIODictionary::IIODictionary(v18, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v19, @"kCGImageSourceSubsampleFactor");
  v6 = IIODictionary::getUint32ForKey(v18, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Uint32ForKey;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 == v8 && (BoolForKey = IIODictionary::getBoolForKey(v19, @"kCGImageSourceUseCoreImage"), BoolForKey == IIODictionary::getBoolForKey(v18, @"kCGImageSourceUseCoreImage")) && (ObjectForKey = IIODictionary::getObjectForKey(v19, @"kCGImageSourceXMPSidecar"), v11 = IIODictionary::getObjectForKey(v18, @"kCGImageSourceXMPSidecar"), (ObjectForKey != 0) == (v11 != 0)) && (!ObjectForKey || !v11 || CFEqual(ObjectForKey, v11)) && (v12 = IIOSkipMetadata(v19), IIOSkipMetadata(v18) & 1 | ((v12 & 1) == 0)))
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v14 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value && v14)
    {
      v15 = CFStringCompare(Value, v14, 0) == kCFCompareEqualTo;
    }

    else
    {
      v15 = (Value | v14) == 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  IIODictionary::~IIODictionary(v18);
  IIODictionary::~IIODictionary(v19);
  return v16;
}

void sub_185E8EB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t PNGReadPlugin::Read_user_chunkIDOT(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 48))
  {
    return 1;
  }

  io_ptr = _cg_png_get_io_ptr(a2);
  *(a1 + 57) = 0;
  v7 = *(a3 + 8);
  if (!v7 || *(a3 + 16) <= 7uLL)
  {
    *(a1 + 57) = 1;
LABEL_6:
    LogError("Read_user_chunkIDOT", 985, "invalid 'iDOT' chunk (count = %d)\n");
    goto LABEL_7;
  }

  v10 = bswap32(*v7);
  if ((v10 - 17) < 0xFFFFFFF1)
  {
    goto LABEL_6;
  }

  v11 = io_ptr;
  v12 = (12 * v10 + 4);
  v13 = malloc_type_malloc(v12, 0x100004052888210uLL);
  *(a1 + 48) = v13;
  *v13 = v10;
  if (*(a3 + 16) < v12)
  {
    *(a1 + 57) = 1;
  }

  v14 = IIO_Reader::minimumFileSize(v11);
  if ((*(a1 + 57) & 1) == 0)
  {
    height = _cg_png_get_height(a2);
    v16 = v7 + 7;
    v17 = v13 + 2;
    v18 = v10;
    while (1)
    {
      v19 = bswap32(*(v16 - 3));
      if (v19 > height)
      {
        break;
      }

      *(v17 - 1) = v19;
      v20 = bswap32(*(v16 + 1));
      v21 = v20 + v19;
      if (v20 > height || v21 > height)
      {
        break;
      }

      *v17 = v20;
      v23 = *(v16 + 5);
      v16 += 12;
      v17[1] = v14 - v12 - 8 + bswap32(v23);
      v17 += 3;
      if (!--v18)
      {
        goto LABEL_24;
      }
    }

    *(a1 + 57) = 1;
  }

LABEL_24:
  if (*(a1 + 57))
  {
    goto LABEL_8;
  }

  LODWORD(v30) = 0;
  if (IIOImageReadSession::getBytesAtOffset(v11, &v30, v14 + 4, 4) != 4)
  {
LABEL_7:
    *(a1 + 57) = 1;
LABEL_8:
    *(a1 + 56) = 1;
    v8 = *(a1 + 48);
    if (v8)
    {
      free(v8);
      *(a1 + 48) = 0;
      _cg_jpeg_mem_term("Read_user_chunkIDOT", 996, "PNG: invalid 'iDOT' chunk\n");
    }

    return 1;
  }

  if (v30 != 1413563465)
  {
    LogError("Read_user_chunkIDOT", 918, "invalid PNG file: extra chunks between iDOT and IDAT\n");
    goto LABEL_7;
  }

  if (*(a1 + 57))
  {
    goto LABEL_8;
  }

  Size = IIOImageReadSession::getSize(v11);
  v33 = 0;
  v32 = 0;
  IIOImageReadSession::getBytesAtOffset(v11, &v32, Size - 12, 12);
  if (v32 != 0x444E454900000000 || v33 != -2107620690)
  {
    LogError("Read_user_chunkIDOT", 935, "invalid PNG file: no valid iEnd chunk\n");
    *(a1 + 57) = 1;
    return 1;
  }

  v30 = 0;
  v31 = 0;
  if (v10)
  {
    v26 = 0;
    v27 = v13 + 3;
    v28 = 12 * v10;
    while (1)
    {
      v29 = v27[v26 / 4];
      if (v29 < 0xC)
      {
        break;
      }

      IIOImageReadSession::getBytesAtOffset(v11, &v30, v29 - 12, 16);
      if (HIDWORD(v31) != 1413563465)
      {
        LogWarning("Read_user_chunkIDOT", 958, "*** ERROR: invalid PNG file: iDOT doesn't point to valid IDAT chunk\n");
        break;
      }

      if (Size < bswap32(v31) + v29)
      {
        LogWarning("Read_user_chunkIDOT", 965, "*** ERROR: invalid PNG file: bad IDAT size\n");
        break;
      }

      if (v26 && v30 != -65536)
      {
        _cg_jpeg_mem_term("Read_user_chunkIDOT", 975, "*** ERROR: hacked PNG file\n");
        break;
      }

      v26 += 12;
      if (v28 == v26)
      {
        goto LABEL_47;
      }
    }

    *(a1 + 57) = 1;
  }

LABEL_47:
  if (*(a1 + 57))
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t PNGReadPlugin::Read_user_chunk_callback(void (**a1)(void), uint64_t a2)
{
  user_chunk_ptr = _cg_png_get_user_chunk_ptr(a1);
  if (*a2 != 1229088579)
  {
    switch(*a2)
    {
      case 0x544F4469:
        PNGReadPlugin::Read_user_chunkIDOT(user_chunk_ptr, a1, a2);
        break;
      case 0x44507061:
        PNGReadPlugin::Read_user_chunkapPD(user_chunk_ptr, v5, a2);
        break;
      case 0x50434963:
        if ((*(user_chunk_ptr + 25) & 1) == 0)
        {
          if (*(a2 + 16) == 4)
          {
            for (i = 0; i != 4; ++i)
            {
              *(user_chunk_ptr + 21 + i) = *(*(a2 + 8) + i);
            }

            v6 = 1;
            *(user_chunk_ptr + 25) = 1;
            return v6;
          }

          return 0;
        }

        break;
      default:
        return 0;
    }

    return 1;
  }

  return PNGReadPlugin::Read_user_chunkCgBI(user_chunk_ptr, a1, a2);
}

IIOImageRead *IIOImageReadSession::globalInfoForType(IIOImageReadSession *this, int a2)
{
  result = *(this + 4);
  if (result)
  {
    return IIOImageRead::globalInfoPtrForType(result, a2);
  }

  return result;
}

uint64_t IIOImageRead::globalInfoPtrForType(IIOImageRead *this, int a2)
{
  pthread_mutex_lock((this + 88));
  v4 = *(this + 19);
  v5 = *(this + 20);
  if (v4 == v5)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    while (a2 != 1684170528 && *(v4 + 4) != a2)
    {
      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v7 = *v4;
  }

  pthread_mutex_unlock((this + 88));
  return v7;
}

void IIONumber::IIONumber(IIONumber *this, double a2)
{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 13;
  *(this + 2) = 0;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
}

void png_handle_sRGB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    png_crc_finish(a1, a3);
    v5 = "out of place";
LABEL_8:

    png_chunk_benign_error(a1, v5);
    return;
  }

  if (a3 != 1)
  {
    png_crc_finish(a1, a3);
    v5 = "invalid";
    goto LABEL_8;
  }

  v8 = 0;
  png_crc_read(a1, &v8, 1u);
  if (!png_crc_finish(a1, 0))
  {
    v7 = *(a1 + 1274);
    if ((v7 & 0x80000000) == 0)
    {
      if ((v7 & 4) != 0)
      {
        *(a1 + 1274) = v7 | 0x8000;
        png_colorspace_sync(a1, a2);
        png_chunk_benign_error(a1, "too many profiles");
      }

      else if (a1 + 1200 > (a1 + 1276))
      {
        __break(0x5519u);
      }

      else
      {
        png_colorspace_set_sRGB(a1, a1 + 1200, v8);
        png_colorspace_sync(a1, a2);
      }
    }
  }
}

uint64_t png_colorspace_set_sRGB(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 74);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = a3;
  if (a3 >= 4)
  {
    v7 = a3;
    v8 = "invalid sRGB rendering intent";
LABEL_4:
    png_icc_profile_error(a1, a2, "sRGB", v7, v8);
    return 0;
  }

  if ((v3 & 4) != 0 && *(a2 + 72) != a3)
  {
    v7 = a3;
    v8 = "inconsistent rendering intents";
    goto LABEL_4;
  }

  if ((v3 & 0x20) != 0)
  {
    png_benign_error(a1, "duplicate sRGB information ignored");
    return 0;
  }

  if ((v3 & 2) != 0 && !png_colorspace_endpoints_match(&sRGB_xy, (a2 + 4), 100))
  {
    png_chunk_report(a1, "cHRM chunk does not match sRGB", 2);
  }

  png_colorspace_check_gamma(a1, a2, 45455, 2);
  *(a2 + 4) = sRGB_xy;
  *(a2 + 20) = unk_1862242CC;
  *(a2 + 36) = png_colorspace_set_sRGB_sRGB_XYZ;
  *(a2 + 72) = v4;
  v10 = *(a2 + 74);
  *(a2 + 68) = 95053;
  *(a2 + 52) = unk_1862242A8;
  *a2 = 45455;
  *(a2 + 74) = v10 | 0xE7;
  return 1;
}

uint64_t png_colorspace_check_gamma(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 74);
  if (v4)
  {
    if (!a3 || !*a2 || ((v5 = floor(*a2 * 100000.0 / a3 + 0.5), v5 <= 2147483650.0) ? (v6 = v5 < -2147483650.0) : (v6 = 1), !v6 ? (v7 = (v5 - 95000) >= 0x2711) : (v7 = 1), v7))
    {
      if (a4 == 2 || (v4 & 0x20) != 0)
      {
        v8 = a4 == 2;
        png_chunk_report(a1, "gamma value does not match sRGB", 2);
        return v8;
      }

      png_chunk_report(a1, "gamma value does not match libpng estimate", 0);
    }
  }

  return 1;
}

uint64_t png_reciprocal(int a1)
{
  v1 = 1.0e10 / a1 + 0.5;
  v2 = floor(v1);
  v3 = v2 < -2147483650.0 || v2 > 2147483650.0;
  v4 = vcvtmd_s64_f64(v1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t _cg_png_get_gAMA(uint64_t a1, uint64_t a2, double *a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      if (a3)
      {
        if (*(a2 + 134))
        {
          *a3 = *(a2 + 60) * 0.00001;
          return 1;
        }
      }
    }
  }

  return result;
}

CGColorSpaceRef PNGReadPlugin::Get_cHRM_colorspace(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  *a4 = 0.0;
  color_type = _cg_png_get_color_type(a2, a3);
  if (_cg_png_get_valid(a2, a3, 0x800u))
  {
    if ((color_type & 2) == 0)
    {
      v8 = MEMORY[0x1E695F128];
LABEL_24:
      v21 = *v8;

      return CGColorSpaceCreateWithName(v21);
    }

LABEL_23:
    v8 = MEMORY[0x1E695F1C0];
    goto LABEL_24;
  }

  if (_cg_png_get_valid(a2, a3, 4u) && _cg_png_get_valid(a2, a3, 1u))
  {
    v33 = 0.0;
    v34 = 0.0;
    v32 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    _cg_png_get_cHRM(a2, a3, &v33, &v32, &v31, &v30, &v29, &v28, &v27, &v26);
    _cg_png_get_gAMA(a2, a3, &v34);
    result = 0;
    if (v34 <= 0.0 || v33 <= 0.0 || v32 <= 0.0)
    {
      return result;
    }

    if ((color_type & 2) != 0 && v31 > 0.0 && v30 > 0.0 && v29 > 0.0 && v28 > 0.0 && v27 > 0.0 && v26 > 0.0)
    {
      v10 = v33;
      v11 = v32;
      v12 = v31;
      v13 = v30;
      v14 = v29;
      v15 = v28;
      v16 = v27;
      v17 = v26;
      v18 = 1.0 / v34;
      return CGColorSpaceCreateCalRGB(v10, v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (color_type != 3)
    {
      v23 = v33;
      v24 = v32;
      v25 = 1.0 / v34;
      return CGColorSpaceCreateCalGray(v23, v24, v25);
    }

    return 0;
  }

  if (!_cg_png_get_valid(a2, a3, 1u))
  {
    return 0;
  }

  _cg_png_get_gAMA(a2, a3, a4);
  v19 = *a4;
  if ((color_type & 2) != 0)
  {
    if (vabdd_f64(2.2, v19) >= 0.00003)
    {
      v22 = 1.0 / v19;
      return CGColorSpaceCreateCalRGB(0.3127, 0.329, 0.64, 0.33, 0.3, 0.6, 0.15, 0.06, v22);
    }

    goto LABEL_23;
  }

  v20 = 1.0 / v19;
  return CGColorSpaceCreateCalGray(0.3127, 0.329, v20);
}

uint64_t _cg_png_get_sRGB(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      if (a3)
      {
        if ((*(a2 + 8) & 0x800) != 0)
        {
          *a3 = *(a2 + 132);
          return 2048;
        }
      }
    }
  }

  return result;
}

uint64_t IIOImageSource::updateMemoryMapFlagForProtectionClass(uint64_t this, IIOString *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 48) == 1)
  {
    v2 = this;
    v3 = IIOString::utf8String(a2);
    v4[1] = 0;
    v4[2] = 0;
    memset(v5, 0, sizeof(v5));
    v4[0] = 0x4000000000000005;
    this = getattrlist(v3, v4, v5, 0x40uLL, 1u);
    if (!this && LODWORD(v5[0]) == 8 && (DWORD1(v5[0]) - 1) <= 1)
    {
      *(v2 + 48) = 0;
    }
  }

  return this;
}

uint64_t CGImageReadCreateWithURL(uint64_t a1, const __CFURL *a2, unsigned __int8 *a3, int a4, int a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10 = IIO_CFURLCopyResolvedFileSystemPath(a2);
    if (v10)
    {
      v11 = v10;
      bzero(&__s1, 0x400uLL);
      if (_CFStringGetFileSystemRepresentation())
      {
        v12 = IIOImageRead::CreateWithURL(a2, v11, &__s1, a3, a4, a5);
        CFRelease(v11);
        if (v12)
        {
          pthread_mutex_lock((v12 + 376));
          IIOImageRead::setISR(v12, a1);
          pthread_mutex_unlock((v12 + 376));
          return CGImageReadRefCreateWith_ImageRead(v12);
        }
      }

      else
      {
        LogError("CGImageReadCreateWithURL", 2383, "*** ERROR: cannot get URL path\n");
        CFRelease(v11);
      }
    }

    else
    {
      LogError("CGImageReadCreateWithURL", 2376, "*** ERROR: cannot resolve URL\n");
    }
  }

  return 0;
}

uint64_t IIOImageRead::CreateWithURL(IIOImageRead *this, const __CFURL *a2, __CFString *__s1, unsigned __int8 *a4, int a5, int a6)
{
  if (strstr(__s1, "/var/mnt/"))
  {
    v10 = 0;
  }

  else
  {
    v10 = a5;
  }

  v11 = open(__s1, 0, 0);
  kdebug_trace();
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog(">>> %s: opening file [%d] '%s'\n", "CreateWithURL", v11, __s1);
  }

  memset(&v23, 0, sizeof(v23));
  if (v11 < 0)
  {
    if (this)
    {
      v13 = CFCopyDescription(this);
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      IIOString::IIOString(v22, v13);
      v17 = IIOString::utf8String(v22);
      LogError("CreateWithURL", 342, "*** ERROR: err=%d (%s) - could not open '%s'\n", v14, v16, v17);
      IIOString::~IIOString(v22);
      CFRelease(v13);
    }

    else
    {
      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      LogError("CreateWithURL", 346, "*** ERROR: err=%d (%s) - could not open '%s'\n", v18, v20, __s1);
    }
  }

  else
  {
    v12 = fstat(v11, &v23);
    if ((v12 & 0x80000000) == 0 && (v23.st_mode & 0xF000) == 0x8000 && v23.st_size)
    {
      if (v10)
      {
        v12 = _CFDataCreateWithMappedFile(v11, __s1, &v23, a6);
      }

      if (IIOImageRead::CreateWithURL(__CFURL const*,__CFString const*,unsigned char *,BOOL,BOOL,BOOL)::onceToken != -1)
      {
        IIOImageRead::CreateWithURL();
      }

      if (IIOImageRead::CreateWithURL(__CFURL const*,__CFString const*,unsigned char *,BOOL,BOOL,BOOL)::useSystemPath == 1 || IIOXPCClient::CanCheckTrustedURL(v12) && (rootless_trusted_by_self_token(), rootless_verify_trusted_by_self_token()))
      {
        strncmp(__s1, "/System", 7uLL);
        kdebug_trace();
      }

      operator new();
    }

    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog("<<< %s: closing file [%d] '%s'\n", "CreateWithURL", v11, __s1);
    }

    kdebug_trace();
    close(v11);
  }

  return 0;
}

uint64_t IIOXPCClient::CanCheckTrustedURL(IIOXPCClient *this)
{
  if (IIOXPCClient::CanCheckTrustedURL(void)::onceToken != -1)
  {
    IIOXPCClient::CanCheckTrustedURL();
  }

  return IIOXPCClient::CanCheckTrustedURL(void)::canCheckTrustedURL;
}

CFTypeRef IIOImageRead::setURLPath(IIOImageRead *this, CFTypeRef cf)
{
  v4 = *(this + 7);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFRetain(cf);
  *(this + 7) = result;
  return result;
}

CFTypeRef IIOImageRead::setURL(IIOImageRead *this, CFTypeRef cf)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFRetain(cf);
  *(this + 6) = result;
  return result;
}

void *IIOImageSource::setHintReader(void *this, IIO_Reader *a2)
{
  this[12] = a2;
  if (a2)
  {
    v2 = this;
    if (!this[7])
    {
      v3 = IIO_Reader::utType(a2);
      this = CFRetain(v3);
      v2[7] = this;
    }
  }

  return this;
}

CFDataRef _CFDataCreateWithMappedFile(int a1, char *a2, stat *a3, int a4)
{
  st_size = a3->st_size;
  if (!ERROR_ImageIO_FileIsNotReadable(a1, a2))
  {
    return 0;
  }

  if (a4)
  {
    v9 = 16385;
  }

  else
  {
    v9 = 16386;
  }

  v10 = mmap(0, a3->st_size, 1, v9, a1, 0);
  if (v10 == -1)
  {
    v15 = *__error();
    v16 = __error();
    v17 = strerror(*v16);
    LogFault("_CFDataCreateWithMappedFile", 199, "could not mmap '%s':  error: %d (%s)\n", a2, v15, v17);
    return 0;
  }

  v11 = v10;
  kdebug_trace();
  context.version = 0;
  memset(&context.retain, 0, 40);
  context.info = st_size;
  context.deallocate = _mappedDeallocate;
  context.preferredSize = 0;
  v12 = *MEMORY[0x1E695E480];
  v13 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
  v14 = CFDataCreateWithBytesNoCopy(v12, v11, st_size, v13);
  CFRelease(v13);
  if ((gIIODebugFlags & 0x100000000000) != 0)
  {
    ImageIOLog("   ------------------------------------------------------\n");
    if ((gIIODebugFlags & 0x100000000000) != 0)
    {
      ImageIOLog("    %s:%d   mmap    prt: %p  size: %lld  <CFDataRef:%p>  path: '%s'\n", "_CFDataCreateWithMappedFile", 208, v11, a3->st_size, v14, a2);
      if ((gIIODebugFlags & 0x100000000000) != 0)
      {
        ImageIOLog("   ------------------------------------------------------\n");
      }
    }
  }

  return v14;
}

uint64_t ERROR_ImageIO_FileIsNotReadable(int a1, char *a2)
{
  v9 = a1;
  v8 = a2;
  __buf = 0;
  if (pread(a1, &__buf, 1uLL, 0) < 0)
  {
    v2 = v8;
    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    LogFault("ERROR_ImageIO_FileIsNotReadable", 132, "*** %s path: '%s' - cannot not read first byte of file - error: %d (%s)\n", "ERROR_ImageIO_FileIsNotReadable", v2, v3, v5);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

IIO_Reader *IIO_ReaderHandler::readerForUTType(IIO_ReaderHandler *this, const __CFString *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = IIO_Reader::utType(*v2);
    if (CFStringCompare(v5, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t IIOXPCClient::ProcessSupportsOOP(IIOXPCClient *this)
{
  if (IIO_XPCServer())
  {
    return 0;
  }

  if (IIOXPCClient::GetIIOXPCClient(void)::xpcClientCreate != -1)
  {
    __CGInitializeImageIO_block_invoke_2_cold_1();
  }

  return IIOIsOOPEnabled(0);
}

uint64_t ___ZN12IIOXPCClient18CanCheckTrustedURLEv_block_invoke(IIOXPCClient *a1)
{
  result = IIOXPCClient::ProcessSupportsOOP(a1);
  IIOXPCClient::CanCheckTrustedURL(void)::canCheckTrustedURL = result;
  if (result)
  {
    getpid();
    result = sandbox_check();
    IIOXPCClient::CanCheckTrustedURL(void)::canCheckTrustedURL = result == 0;
  }

  return result;
}

uint64_t IIOImageRead::IIOImageRead(uint64_t a1, const __CFData *a2, int a3, int a4, char a5, char a6)
{
  *a1 = &unk_1EF4DBAF8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 256) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  IIOImageRead::setup(a1, a3);
  if (gCopyInputData == 1)
  {
    *(a1 + 32) = CFDataCreateCopy(*MEMORY[0x1E695E480], a2);
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CFDataCreateCopy %p\n");
    }
  }

  else
  {
    *(a1 + 32) = CFRetain(a2);
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CFRetain %p\n");
    }
  }

  *(a1 + 71) = a5;
  *(a1 + 80) = CFDataGetLength(a2);
  *(a1 + 64) = a6;
  *(a1 + 65) = a6 ^ 1;
  *(a1 + 66) = 1;
  *(a1 + 67) = a4;
  *(a1 + 440) = a4;
  return a1;
}

void sub_185E90440(_Unwind_Exception *a1)
{
  v6 = v1[36];
  if (v6)
  {
    v1[37] = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(v2, *v4);
  v7 = *v3;
  if (*v3)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataTagGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageMetadataTagGetTypeID::id = result;
  return result;
}

const __CFString *___ZL27CreateMetadataFromDatablockP19IIOImageReadSessionPK6tagdefmmbPK8__CFDataj_block_invoke()
{
  result = malloc_type_malloc(0x108uLL, 0x2004093837F09uLL);
  v1 = result;
  if (result)
  {
    v2 = 0;
    v3 = &qword_1EF4D66E8;
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        result = *v4;
      }

      else
      {
        result = 0;
      }

      v5 = *v3;
      if (*v3 || (v5 = *(v3 - 1)) != 0)
      {
        v6 = 0;
        if (result && *v5)
        {
          result = CGImageMetadataTagKeyCreate(result, *v5);
          v6 = result;
        }
      }

      else
      {
        v6 = 0;
      }

      *(v1 + v2) = v6;
      v2 += 8;
      v3 += 7;
    }

    while (v2 != 264);
  }

  IFD0TagKeys = v1;
  return result;
}

const __CFString *___ZL27CreateMetadataFromDatablockP19IIOImageReadSessionPK6tagdefmmbPK8__CFDataj_block_invoke_3()
{
  result = malloc_type_malloc(0x260uLL, 0x2004093837F09uLL);
  v1 = result;
  if (result)
  {
    v2 = 0;
    v3 = &qword_1EF4D6E58;
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        result = *v4;
      }

      else
      {
        result = 0;
      }

      v5 = *v3;
      if (*v3 || (v5 = *(v3 - 1)) != 0)
      {
        v6 = 0;
        if (result && *v5)
        {
          result = CGImageMetadataTagKeyCreate(result, *v5);
          v6 = result;
        }
      }

      else
      {
        v6 = 0;
      }

      *(v1 + v2) = v6;
      v2 += 8;
      v3 += 7;
    }

    while (v2 != 608);
  }

  ExifTagKeys = v1;
  return result;
}

uint64_t PNGReadPlugin::AddOrientationToMetadata(uint64_t a1, uint64_t a2, CGImageMetadata *a3, unint64_t a4, uint64_t a5)
{
  text_count = _cg_png_get_text_count(a4, a5);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  if (text_count < 1)
  {
    goto LABEL_23;
  }

  v9 = text_count;
  v27 = a3;
  for (i = 0; i != v9; ++i)
  {
    __s1[0] = 0;
    v32 = 0;
    v33 = 0;
    text_entry = _cg_png_get_text_entry(a4, a5, i, __s1, &v32, &v33);
    v12 = __s1[0];
    if (!strncmp(__s1[0], "Raw profile type exif", 0x15uLL) || !strncmp(v12, "Raw profile type xmp", 0x14uLL))
    {
      __endptr = 0;
      if (*text_entry == 10)
      {
        v13 = text_entry + 1;
        v14 = v32 - 1;
        do
        {
          v15 = v14;
          v16 = *v13;
          if (!*v13)
          {
            break;
          }

          ++v13;
          --v14;
        }

        while (v16 != 10);
        v17 = strtol(v13, &__endptr, 10);
        if (v17 <= v15)
        {
          v18 = v17;
          v19 = PNGReadPlugin::HexString2bin(__endptr, v17);
          if (v19)
          {
            v20 = __s1[0];
            if (!strncmp(__s1[0], "Raw profile type exif", 0x15uLL))
            {
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 0x40000000;
              v30[2] = ___ZN13PNGReadPlugin24AddOrientationToMetadataEP13IIODictionaryS1_P15CGImageMetadataP14png_struct_defP12png_info_def_block_invoke;
              v30[3] = &unk_1E6EFC6E8;
              v30[4] = &v34;
              EnumerateExifDataUsingBlock(v19, v18, v30);
            }

            else if (!strncmp(v20, "Raw profile type xmp", 0x14uLL) && !*(v35 + 6))
            {
              v21 = IIOGetOrientationFromXMPData(v19, v18);
              *(v35 + 6) = v21;
            }

            free(v19);
          }
        }
      }
    }

    v22 = v33;
    if (v33 && !strncmp(__s1[0], "XML:com.adobe.xmp", 0x11uLL) && !*(v35 + 6))
    {
      v23 = IIOGetOrientationFromXMPData(text_entry, v22);
      *(v35 + 6) = v23;
    }
  }

  v24 = *(v35 + 6);
  a3 = v27;
  if (!v24)
  {
LABEL_23:
    LODWORD(v33) = 0;
    __s1[0] = 0;
    if (_cg_png_get_eXIf_1(a4, a5, &v33, __s1))
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = ___ZN13PNGReadPlugin24AddOrientationToMetadataEP13IIODictionaryS1_P15CGImageMetadataP14png_struct_defP12png_info_def_block_invoke_2;
      v29[3] = &unk_1E6EFC710;
      v29[4] = &v34;
      EnumerateExifDataUsingBlock(__s1[0], v33, v29);
    }

    v24 = *(v35 + 6);
  }

  if ((v24 - 1) <= 7)
  {
    IIONumber::IIONumber(__s1, v24);
    v25 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"Orientation", kCGImageMetadataTypeDefault, __s1[2]);
    IIONumber::~IIONumber(__s1);
    if (v25)
    {
      CGImageMetadataSetTagWithPath(a3, 0, @"tiff:Orientation", v25);
      CFRelease(v25);
    }
  }

  _Block_object_dispose(&v34, 8);
  return 0;
}

void sub_185E9097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Block_object_dispose((v4 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13PNGReadPlugin24AddOrientationToMetadataEP13IIODictionaryS1_P15CGImageMetadataP14png_struct_defP12png_info_def_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a2 + 8) == 274)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + 16);
    *a4 = 1;
  }

  return result;
}

void png_handle_eXIf(_BYTE *a1, uint64_t a2, size_t size)
{
  if ((a1[76] & 1) == 0)
  {
    goto LABEL_33;
  }

  if (size <= 1)
  {
    png_crc_finish(a1, size);
    v5 = "too short";
LABEL_26:

    png_chunk_benign_error(a1, v5);
    return;
  }

  if (!a2 || (*(a2 + 10) & 1) != 0)
  {
    png_crc_finish(a1, size);
    v5 = "duplicate";
    goto LABEL_26;
  }

  *(a2 + 340) |= 0x8000u;
  v7 = png_malloc_warn(a1, size);
  v8 = &v7[size];
  if (!v7)
  {
    v8 = 0;
  }

  *(a2 + 272) = v7;
  *(a2 + 280) = v8;
  if (!v7)
  {
    png_crc_finish(a1, size);
    v5 = "out of memory";
    goto LABEL_26;
  }

  v9 = 0;
  while (1)
  {
    v18 = 0;
    png_crc_read(a1, &v18, 1u);
    v10 = *(a2 + 272);
    v11 = (v10 + v9);
    v12 = v10 + v9 < *(a2 + 280) && v11 >= v10;
    if (!v12)
    {
      goto LABEL_32;
    }

    v13 = v18;
    *v11 = v18;
    if (v9 == 1)
    {
      if ((v13 | 4) != 0x4D)
      {
        break;
      }

      v14 = *(a2 + 272);
      if (v14 >= *(a2 + 280))
      {
        goto LABEL_32;
      }

      if (*v14 != v13)
      {
        break;
      }
    }

    if (size == ++v9)
    {
      if (png_crc_finish(a1, 0))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 272);
      v16 = *(a2 + 280);
      v12 = v16 >= v15;
      v17 = v16 - v15;
      if (v12 && v17 >= size)
      {
        _cg_png_set_eXIf_1(a1, a2, size, v15);
        goto LABEL_31;
      }

LABEL_32:
      __break(0x5519u);
LABEL_33:
      png_chunk_error(a1, "missing IHDR");
    }
  }

  png_crc_finish(a1, (size - 2));
  png_chunk_benign_error(a1, "incorrect byte-order specifier");
LABEL_31:
  png_free(a1, *(a2 + 272));
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
}

void _cg_png_set_eXIf_1(_BYTE *a1, uint64_t a2, size_t size, const void *a4)
{
  if (a1 && a2 && (a1[77] & 0x40) == 0)
  {
    v7 = size;
    v8 = size;
    v9 = png_malloc_warn(a1, size);
    if (v9)
    {
      v10 = v9;
      memcpy(v9, a4, v8);
      if (v10 <= &v10[v8])
      {
        png_free_data(a1, a2, 0x8000u, 0);
        if ((v7 & 0x80000000) == 0)
        {
          *(a2 + 260) = v7;
          *(a2 + 264) = v10;
          *(a2 + 340) |= 0x8000u;
          *(a2 + 8) |= 0x10000u;
          return;
        }
      }

LABEL_13:
      __break(0x5519u);
      return;
    }

    if ((*(a2 + 260) & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    *(a2 + 260) = 0;

    png_warning(a1, "Insufficient memory for eXIf chunk data");
  }
}

void IIOImageProviderInfo::ReleaseInfo(IIOImageProviderInfo *this, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if ((gIIODebugFlags & 0xC000) != 0)
    {
      *__str = 0u;
      v11 = 0u;
      v3 = *this;
      if (*this)
      {
        v3 = v3[2];
      }

      snprintf(__str, 0x20uLL, "(%p)", v3);
      if (gIIODebugFlags >> 14)
      {
        ImageIODebugOptions(gIIODebugFlags >> 14, "S", "_CGImageProviderRelease", 0, __str, -1, 0);
      }
    }

    if (*this)
    {
      Property = CGImageProviderGetProperty();
      if (Property)
      {
        memset(__str, 0, sizeof(__str));
        *&v11 = 0;
        IIOArray::IIOArray(__str, Property);
        for (i = 0; i < IIOArray::getCount(__str); ++i)
        {
          ObjectAtIndex = IIOArray::getObjectAtIndex(__str, i);
          memset(v9, 0, sizeof(v9));
          IIODictionary::IIODictionary(v9, ObjectAtIndex);
          Uint32ForKey = IIODictionary::getUint32ForKey(v9, @"iosurface_plane_datasize");
          Uint64ForKey = IIODictionary::getUint64ForKey(v9, @"iosurface_plane_baseAddress");
          if (Uint64ForKey)
          {
            if (Uint32ForKey)
            {
              _ImageIO_Free(Uint64ForKey, Uint32ForKey);
            }
          }

          IIODictionary::~IIODictionary(v9);
        }

        IIOArray::~IIOArray(__str);
      }

      if (*this)
      {
        (*(**this + 8))(*this);
      }
    }

    free(this);
  }
}

void IIOImageProviderInfo::~IIOImageProviderInfo(IIOImageProviderInfo *this)
{
  IIOImageProviderInfo::~IIOImageProviderInfo(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D5368;
  v2 = (this + 152);
  pthread_mutex_lock((this + 152));
  v4 = *(this + 54);
  if (v4 >= 4)
  {
    *&v3 = _cg_jpeg_mem_term("~IIOImageProviderInfo", 1781, "*** unknown imageProvider callback version [%d]\n", *(this + 54)).n128_u64[0];
    goto LABEL_5;
  }

  v5 = qword_1862091F0[v4];
  v6 = *(this + v5);
  *(this + v5) = 0;
  if (!v6)
  {
LABEL_5:
    LogWarning("~IIOImageProviderInfo", 1794, "$$$ ImageProviderReleaseInfoCallback: cookie without releaseInfo - leaking\n", v3);
    goto LABEL_6;
  }

  v6(*(this + 15));
LABEL_6:
  pthread_mutex_unlock(v2);
  pthread_mutex_destroy(v2);
}

void IIOReadPlugin::ReleaseInfo(IIOReadPlugin *this, void *a2)
{
  if (this)
  {
    v3 = *this;
    if (v3)
    {
      CFRelease(v3);
    }

    *this = 0;
    v4 = *(this + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4, a2);
    }

    free(this);
  }
}

void IIOImagePlus::~IIOImagePlus(IIOImagePlus *this)
{
  *this = &unk_1EF4D5348;
  pthread_mutex_lock(&ipGeomLock);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    CGColorSpaceRelease(v2);
  }

  pthread_mutex_unlock(&ipGeomLock);
  v3 = *(this + 15);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 15) = 0;
  v4 = *(this + 16);
  if (v4)
  {
    CFRelease(v4);
    *(this + 16) = 0;
  }

  v5 = *(this + 20);
  if (v5)
  {
    CFRelease(v5);
    *(this + 20) = 0;
  }

  *(this + 19) = 0;
  *(this + 17) = 0;
  if ((*(this + 200) & 0x20) != 0)
  {
    v6 = CGImageReadSessionGetRead(*(this + 3));
    if (v6)
    {
      IIOImageRead::removeCacheKey(v6, *(this + 27));
    }
  }

  v7 = *(this + 3);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    CGPathRelease(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 26) = 0;
}

{
  IIOImagePlus::~IIOImagePlus(this);

  JUMPOUT(0x186602850);
}

uint64_t _CGImagePlusFinalize(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  atomic_fetch_add_explicit(&gImagePlusCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0u;
    v5 = 0u;
    v2 = a1[3] ? IIOLookupISR() : 0;
    snprintf(__str, 0x20uLL, "(%p)", a1);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "_CGImagePlusFinalize", v2, __str, -1, 0);
    }
  }

  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
    a1[3] = 0;
  }

  return result;
}

void IIOReadPlugin::~IIOReadPlugin(IIOReadPlugin *this)
{
  *this = &unk_1EF4D88F0;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 4);
    if (!v2 || ((*(*v2 + 8))(v2), (*(this + 40) & 1) != 0))
    {
      v3 = *(this + 3);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }
  }

  v4 = *(this + 20);
  if (v4)
  {
    CGColorSpaceRelease(v4);
    *(this + 20) = 0;
  }

  v5 = *(this + 21);
  if (v5)
  {
    CGColorSpaceRelease(v5);
    *(this + 21) = 0;
  }

  v6 = *(this + 22);
  if (v6)
  {
    CFRelease(v6);
    *(this + 22) = 0;
  }

  v7 = *(this + 12);
  if (v7)
  {
    free(v7);
  }

  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
}

{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

void AppleJPEGReadPlugin::~AppleJPEGReadPlugin(AppleJPEGReadPlugin *this)
{
  AppleJPEGReadPlugin::~AppleJPEGReadPlugin(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DBDB8;
  applejpeg_decode_destroy();
  *(this + 66) = 0;
  v2 = *(this + 82);
  if (v2)
  {
    free(v2);
    *(this + 82) = 0;
  }

  JPEGReadPlugin::~JPEGReadPlugin(this);
}

void JPEGReadPlugin::~JPEGReadPlugin(JPEGReadPlugin *this)
{
  *this = &unk_1EF4D5868;
  v2 = *(this + 58);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 58) = 0;

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  JPEGReadPlugin::~JPEGReadPlugin(this);

  JUMPOUT(0x186602850);
}

const char *IIOLoadCoreVideoSymbols(void)
{
  v95 = *MEMORY[0x1E69E9840];
  strcpy(__path, "/System/Library/Frameworks/CoreVideo.framework/CoreVideo");
  v0 = dlopen(__path, 257);
  if (v0)
  {
    v1 = v0;
    gFunc_CVPixelBufferCreateWithBytes = dlsym(v0, "CVPixelBufferCreateWithBytes");
    if (!gFunc_CVPixelBufferCreateWithBytes)
    {
      v2 = dlerror();
      printf("❌  failed to load 'CVPixelBufferCreateWithBytes' [%s]\n", v2);
    }

    gFunc_CVPixelBufferCreateWithPlanarBytes = dlsym(v1, "CVPixelBufferCreateWithPlanarBytes");
    if (!gFunc_CVPixelBufferCreateWithPlanarBytes)
    {
      v3 = dlerror();
      printf("❌  failed to load 'CVPixelBufferCreateWithPlanarBytes' [%s]\n", v3);
    }

    gFunc_CVPixelBufferRelease = dlsym(v1, "CVPixelBufferRelease");
    if (!gFunc_CVPixelBufferRelease)
    {
      v4 = dlerror();
      printf("❌  failed to load 'CVPixelBufferRelease' [%s]\n", v4);
    }

    gFunc_CVPixelBufferRelease = dlsym(v1, "CVPixelBufferRelease");
    if (!gFunc_CVPixelBufferRelease)
    {
      v5 = dlerror();
      printf("❌  failed to load 'CVPixelBufferRelease' [%s]\n", v5);
    }

    gFunc_CVPixelBufferLockBaseAddress = dlsym(v1, "CVPixelBufferLockBaseAddress");
    if (!gFunc_CVPixelBufferLockBaseAddress)
    {
      v6 = dlerror();
      printf("❌  failed to load 'CVPixelBufferLockBaseAddress' [%s]\n", v6);
    }

    gFunc_CVPixelBufferUnlockBaseAddress = dlsym(v1, "CVPixelBufferUnlockBaseAddress");
    if (!gFunc_CVPixelBufferUnlockBaseAddress)
    {
      v7 = dlerror();
      printf("❌  failed to load 'CVPixelBufferUnlockBaseAddress' [%s]\n", v7);
    }

    gFunc_CVPixelBufferGetWidth = dlsym(v1, "CVPixelBufferGetWidth");
    if (!gFunc_CVPixelBufferGetWidth)
    {
      v8 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetWidth' [%s]\n", v8);
    }

    gFunc_CVPixelBufferGetHeight = dlsym(v1, "CVPixelBufferGetHeight");
    if (!gFunc_CVPixelBufferGetHeight)
    {
      v9 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetHeight' [%s]\n", v9);
    }

    gFunc_CVPixelBufferGetIOSurface = dlsym(v1, "CVPixelBufferGetIOSurface");
    if (!gFunc_CVPixelBufferGetIOSurface)
    {
      v10 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetIOSurface' [%s]\n", v10);
    }

    gFunc_CVPixelBufferGetPixelFormatType = dlsym(v1, "CVPixelBufferGetPixelFormatType");
    if (!gFunc_CVPixelBufferGetPixelFormatType)
    {
      v11 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetPixelFormatType' [%s]\n", v11);
    }

    gFunc_CVPixelBufferGetBaseAddress = dlsym(v1, "CVPixelBufferGetBaseAddress");
    if (!gFunc_CVPixelBufferGetBaseAddress)
    {
      v12 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetBaseAddress' [%s]\n", v12);
    }

    gFunc_CVPixelBufferGetBytesPerRow = dlsym(v1, "CVPixelBufferGetBytesPerRow");
    if (!gFunc_CVPixelBufferGetBytesPerRow)
    {
      v13 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetBytesPerRow' [%s]\n", v13);
    }

    gFunc_CVPixelBufferGetDataSize = dlsym(v1, "CVPixelBufferGetDataSize");
    if (!gFunc_CVPixelBufferGetDataSize)
    {
      v14 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetDataSize' [%s]\n", v14);
    }

    gFunc_CVPixelBufferIsPlanar = dlsym(v1, "CVPixelBufferIsPlanar");
    if (!gFunc_CVPixelBufferIsPlanar)
    {
      v15 = dlerror();
      printf("❌  failed to load 'CVPixelBufferIsPlanar' [%s]\n", v15);
    }

    gFunc_CVBufferSetAttachment = dlsym(v1, "CVBufferSetAttachment");
    if (!gFunc_CVBufferSetAttachment)
    {
      v16 = dlerror();
      printf("❌  failed to load 'CVBufferSetAttachment' [%s]\n", v16);
    }

    gFunc_CVPixelBufferCreateWithIOSurface = dlsym(v1, "CVPixelBufferCreateWithIOSurface");
    if (!gFunc_CVPixelBufferCreateWithIOSurface)
    {
      v17 = dlerror();
      printf("❌  failed to load 'CVPixelBufferCreateWithIOSurface' [%s]\n", v17);
    }

    gFunc_CVBufferCopyAttachment = dlsym(v1, "CVBufferCopyAttachment");
    if (!gFunc_CVBufferCopyAttachment)
    {
      v18 = dlerror();
      printf("❌  failed to load 'CVBufferCopyAttachment' [%s]\n", v18);
    }

    gFunc_CVBufferCopyAttachments = dlsym(v1, "CVBufferCopyAttachments");
    if (!gFunc_CVBufferCopyAttachments)
    {
      v19 = dlerror();
      printf("❌  failed to load 'CVBufferCopyAttachments' [%s]\n", v19);
    }

    gFunc_CVPixelBufferCreate = dlsym(v1, "CVPixelBufferCreate");
    if (!gFunc_CVPixelBufferCreate)
    {
      v20 = dlerror();
      printf("❌  failed to load 'CVPixelBufferCreate' [%s]\n", v20);
    }

    gFunc_CVImageBufferCreateColorSpaceFromAttachments = dlsym(v1, "CVImageBufferCreateColorSpaceFromAttachments");
    if (!gFunc_CVImageBufferCreateColorSpaceFromAttachments)
    {
      v21 = dlerror();
      printf("❌  failed to load 'CVImageBufferCreateColorSpaceFromAttachments' [%s]\n", v21);
    }

    gFunc_CVImageBufferGetColorSpace = dlsym(v1, "CVImageBufferGetColorSpace");
    if (!gFunc_CVImageBufferGetColorSpace)
    {
      v22 = dlerror();
      printf("❌  failed to load 'CVImageBufferGetColorSpace' [%s]\n", v22);
    }

    gFunc_CVImageBufferSetColorSpace = dlsym(v1, "CVImageBufferSetColorSpace");
    if (!gFunc_CVImageBufferSetColorSpace)
    {
      v23 = dlerror();
      printf("❌  failed to load 'CVImageBufferSetColorSpace' [%s]\n", v23);
    }

    gFunc_CVImageBufferGetPixelFormatType = dlsym(v1, "CVImageBufferGetPixelFormatType");
    if (!gFunc_CVImageBufferGetPixelFormatType)
    {
      v24 = dlerror();
      printf("❌  failed to load 'CVImageBufferGetPixelFormatType' [%s]\n", v24);
    }

    gFunc_CVMetalTextureCacheCreate = dlsym(v1, "CVMetalTextureCacheCreate");
    if (!gFunc_CVMetalTextureCacheCreate)
    {
      v25 = dlerror();
      printf("❌  failed to load 'CVMetalTextureCacheCreate' [%s]\n", v25);
    }

    gFunc_CVMetalTextureCacheCreateTextureFromImage = dlsym(v1, "CVMetalTextureCacheCreateTextureFromImage");
    if (!gFunc_CVMetalTextureCacheCreateTextureFromImage)
    {
      v26 = dlerror();
      printf("❌  failed to load 'CVMetalTextureCacheCreateTextureFromImage' [%s]\n", v26);
    }

    gFunc_CVMetalTextureGetTexture = dlsym(v1, "CVMetalTextureGetTexture");
    if (!gFunc_CVMetalTextureGetTexture)
    {
      v27 = dlerror();
      printf("❌  failed to load 'CVMetalTextureGetTexture' [%s]\n", v27);
    }

    gFunc_CVMetalTextureCacheFlush = dlsym(v1, "CVMetalTextureCacheFlush");
    if (!gFunc_CVMetalTextureCacheFlush)
    {
      v28 = dlerror();
      printf("❌  failed to load 'CVMetalTextureCacheFlush' [%s]\n", v28);
    }

    gFunc_CVPixelBufferGetHeightOfPlane = dlsym(v1, "CVPixelBufferGetHeightOfPlane");
    if (!gFunc_CVPixelBufferGetHeightOfPlane)
    {
      v29 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetHeightOfPlane' [%s]\n", v29);
    }

    gFunc_CVPixelBufferGetWidthOfPlane = dlsym(v1, "CVPixelBufferGetWidthOfPlane");
    if (!gFunc_CVPixelBufferGetWidthOfPlane)
    {
      v30 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetWidthOfPlane' [%s]\n", v30);
    }

    gFunc_CVPixelBufferGetBytesPerRowOfPlane = dlsym(v1, "CVPixelBufferGetBytesPerRowOfPlane");
    if (!gFunc_CVPixelBufferGetBytesPerRowOfPlane)
    {
      v31 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetBytesPerRowOfPlane' [%s]\n", v31);
    }

    gFunc_CVPixelBufferGetBaseAddressOfPlane = dlsym(v1, "CVPixelBufferGetBaseAddressOfPlane");
    if (!gFunc_CVPixelBufferGetBaseAddressOfPlane)
    {
      v32 = dlerror();
      printf("❌  failed to load 'CVPixelBufferGetBaseAddressOfPlane' [%s]\n", v32);
    }

    gFunc_CVPixelBufferRetain = dlsym(v1, "CVPixelBufferRetain");
    if (!gFunc_CVPixelBufferRetain)
    {
      v33 = dlerror();
      printf("❌  failed to load 'CVPixelBufferRetain' [%s]\n", v33);
    }

    gFunc_CVPixelFormatDescriptionCreateWithPixelFormatType = dlsym(v1, "CVPixelFormatDescriptionCreateWithPixelFormatType");
    if (!gFunc_CVPixelFormatDescriptionCreateWithPixelFormatType)
    {
      v34 = dlerror();
      printf("❌  failed to load 'CVPixelFormatDescriptionCreateWithPixelFormatType' [%s]\n", v34);
    }

    gFunc_CVColorPrimariesGetStringForIntegerCodePoint = dlsym(v1, "CVColorPrimariesGetStringForIntegerCodePoint");
    if (!gFunc_CVColorPrimariesGetStringForIntegerCodePoint)
    {
      v35 = dlerror();
      printf("❌  failed to load 'CVColorPrimariesGetStringForIntegerCodePoint' [%s]\n", v35);
    }

    gFunc_CVTransferFunctionGetStringForIntegerCodePoint = dlsym(v1, "CVTransferFunctionGetStringForIntegerCodePoint");
    if (!gFunc_CVTransferFunctionGetStringForIntegerCodePoint)
    {
      v36 = dlerror();
      printf("❌  failed to load 'CVTransferFunctionGetStringForIntegerCodePoint' [%s]\n", v36);
    }

    gFunc_CVYCbCrMatrixGetStringForIntegerCodePoint = dlsym(v1, "CVYCbCrMatrixGetStringForIntegerCodePoint");
    if (!gFunc_CVYCbCrMatrixGetStringForIntegerCodePoint)
    {
      v37 = dlerror();
      printf("❌  failed to load 'CVYCbCrMatrixGetStringForIntegerCodePoint' [%s]\n", v37);
    }

    gFunc_CVYCbCrMatrixGetIntegerCodePointForString = dlsym(v1, "CVYCbCrMatrixGetIntegerCodePointForString");
    if (!gFunc_CVYCbCrMatrixGetIntegerCodePointForString)
    {
      v38 = dlerror();
      printf("❌  failed to load 'CVYCbCrMatrixGetIntegerCodePointForString' [%s]\n", v38);
    }

    gIIO_kCVImageBufferAlphaChannelIsOpaque = dlsym(v1, "kCVImageBufferAlphaChannelIsOpaque");
    if (!gIIO_kCVImageBufferAlphaChannelIsOpaque)
    {
      v39 = dlerror();
      printf("❌  failed to load 'kCVImageBufferAlphaChannelIsOpaque' [%s]\n", v39);
    }

    gIIO_kCVImageBufferAlphaChannelModeKey = dlsym(v1, "kCVImageBufferAlphaChannelModeKey");
    if (!gIIO_kCVImageBufferAlphaChannelModeKey)
    {
      v40 = dlerror();
      printf("❌  failed to load 'kCVImageBufferAlphaChannelModeKey' [%s]\n", v40);
    }

    gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha = dlsym(v1, "kCVImageBufferAlphaChannelMode_StraightAlpha");
    if (!gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha)
    {
      v41 = dlerror();
      printf("❌  failed to load 'kCVImageBufferAlphaChannelMode_StraightAlpha' [%s]\n", v41);
    }

    gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha = dlsym(v1, "kCVImageBufferAlphaChannelMode_PremultipliedAlpha");
    if (!gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha)
    {
      v42 = dlerror();
      printf("❌  failed to load 'kCVImageBufferAlphaChannelMode_PremultipliedAlpha' [%s]\n", v42);
    }

    gIIO_kCVImageBufferCGColorSpaceKey = dlsym(v1, "kCVImageBufferCGColorSpaceKey");
    if (!gIIO_kCVImageBufferCGColorSpaceKey)
    {
      v43 = dlerror();
      printf("❌  failed to load 'kCVImageBufferCGColorSpaceKey' [%s]\n", v43);
    }

    gIIO_kCVPixelBufferPixelFormatTypeKey = dlsym(v1, "kCVPixelBufferPixelFormatTypeKey");
    if (!gIIO_kCVPixelBufferPixelFormatTypeKey)
    {
      v44 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferPixelFormatTypeKey' [%s]\n", v44);
    }

    gIIO_kCVPixelBufferPixelFormatDescriptionKey = dlsym(v1, "kCVPixelBufferPixelFormatDescriptionKey");
    if (!gIIO_kCVPixelBufferPixelFormatDescriptionKey)
    {
      v45 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferPixelFormatDescriptionKey' [%s]\n", v45);
    }

    gIIO_kCVPixelFormatConstant = dlsym(v1, "kCVPixelFormatConstant");
    if (!gIIO_kCVPixelFormatConstant)
    {
      v46 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatConstant' [%s]\n", v46);
    }

    gIIO_kCVPixelFormatBitsPerBlock = dlsym(v1, "kCVPixelFormatBitsPerBlock");
    if (!gIIO_kCVPixelFormatBitsPerBlock)
    {
      v47 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatBitsPerBlock' [%s]\n", v47);
    }

    gIIO_kCVPixelBufferWidthKey = dlsym(v1, "kCVPixelBufferWidthKey");
    if (!gIIO_kCVPixelBufferWidthKey)
    {
      v48 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferWidthKey' [%s]\n", v48);
    }

    gIIO_kCVPixelBufferHeightKey = dlsym(v1, "kCVPixelBufferHeightKey");
    if (!gIIO_kCVPixelBufferHeightKey)
    {
      v49 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferHeightKey' [%s]\n", v49);
    }

    gIIO_kCVPixelBufferBytesPerRowAlignmentKey = dlsym(v1, "kCVPixelBufferBytesPerRowAlignmentKey");
    if (!gIIO_kCVPixelBufferBytesPerRowAlignmentKey)
    {
      v50 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferBytesPerRowAlignmentKey' [%s]\n", v50);
    }

    gIIO_kCVImageBufferYCbCrMatrixKey = dlsym(v1, "kCVImageBufferYCbCrMatrixKey");
    if (!gIIO_kCVImageBufferYCbCrMatrixKey)
    {
      v51 = dlerror();
      printf("❌  failed to load 'kCVImageBufferYCbCrMatrixKey' [%s]\n", v51);
    }

    gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020 = dlsym(v1, "kCVImageBufferYCbCrMatrix_ITU_R_2020");
    if (!gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020)
    {
      v52 = dlerror();
      printf("❌  failed to load 'kCVImageBufferYCbCrMatrix_ITU_R_2020' [%s]\n", v52);
    }

    gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4 = dlsym(v1, "kCVImageBufferYCbCrMatrix_ITU_R_601_4");
    if (!gIIO_kCVImageBufferYCbCrMatrix_ITU_R_601_4)
    {
      v53 = dlerror();
      printf("❌  failed to load 'kCVImageBufferYCbCrMatrix_ITU_R_601_4' [%s]\n", v53);
    }

    gIIO_kCVImageBufferYCbCrMatrix_ITU_R_709_2 = dlsym(v1, "kCVImageBufferYCbCrMatrix_ITU_R_709_2");
    if (!gIIO_kCVImageBufferYCbCrMatrix_ITU_R_709_2)
    {
      v54 = dlerror();
      printf("❌  failed to load 'kCVImageBufferYCbCrMatrix_ITU_R_709_2' [%s]\n", v54);
    }

    gIIO_kCVPixelFormatContainsRGB = dlsym(v1, "kCVPixelFormatContainsRGB");
    if (!gIIO_kCVPixelFormatContainsRGB)
    {
      v55 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatContainsRGB' [%s]\n", v55);
    }

    gIIO_kCVPixelFormatContainsYCbCr = dlsym(v1, "kCVPixelFormatContainsYCbCr");
    if (!gIIO_kCVPixelFormatContainsYCbCr)
    {
      v56 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatContainsYCbCr' [%s]\n", v56);
    }

    gIIO_kCVPixelFormatContainsGrayscale = dlsym(v1, "kCVPixelFormatContainsGrayscale");
    if (!gIIO_kCVPixelFormatContainsGrayscale)
    {
      v57 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatContainsGrayscale' [%s]\n", v57);
    }

    gIIO_kCVPixelFormatHorizontalSubsampling = dlsym(v1, "kCVPixelFormatHorizontalSubsampling");
    if (!gIIO_kCVPixelFormatHorizontalSubsampling)
    {
      v58 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatHorizontalSubsampling' [%s]\n", v58);
    }

    gIIO_kCVPixelFormatVerticalSubsampling = dlsym(v1, "kCVPixelFormatVerticalSubsampling");
    if (!gIIO_kCVPixelFormatVerticalSubsampling)
    {
      v59 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatVerticalSubsampling' [%s]\n", v59);
    }

    gIIO_kCVImageBufferAmbientViewingEnvironmentKey = dlsym(v1, "kCVImageBufferAmbientViewingEnvironmentKey");
    if (!gIIO_kCVImageBufferAmbientViewingEnvironmentKey)
    {
      v60 = dlerror();
      printf("❌  failed to load 'kCVImageBufferAmbientViewingEnvironmentKey' [%s]\n", v60);
    }

    gIIO_kCVImageBufferChromaLocationBottomFieldKey = dlsym(v1, "kCVImageBufferChromaLocationBottomFieldKey");
    if (!gIIO_kCVImageBufferChromaLocationBottomFieldKey)
    {
      v61 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocationBottomFieldKey' [%s]\n", v61);
    }

    gIIO_kCVImageBufferChromaLocationTopFieldKey = dlsym(v1, "kCVImageBufferChromaLocationTopFieldKey");
    if (!gIIO_kCVImageBufferChromaLocationTopFieldKey)
    {
      v62 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocationTopFieldKey' [%s]\n", v62);
    }

    gIIO_kCVImageBufferChromaLocation_Bottom = dlsym(v1, "kCVImageBufferChromaLocation_Bottom");
    if (!gIIO_kCVImageBufferChromaLocation_Bottom)
    {
      v63 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_Bottom' [%s]\n", v63);
    }

    gIIO_kCVImageBufferChromaLocation_BottomLeft = dlsym(v1, "kCVImageBufferChromaLocation_BottomLeft");
    if (!gIIO_kCVImageBufferChromaLocation_BottomLeft)
    {
      v64 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_BottomLeft' [%s]\n", v64);
    }

    gIIO_kCVImageBufferChromaLocation_Center = dlsym(v1, "kCVImageBufferChromaLocation_Center");
    if (!gIIO_kCVImageBufferChromaLocation_Center)
    {
      v65 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_Center' [%s]\n", v65);
    }

    gIIO_kCVImageBufferChromaLocation_DV420 = dlsym(v1, "kCVImageBufferChromaLocation_DV420");
    if (!gIIO_kCVImageBufferChromaLocation_DV420)
    {
      v66 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_DV420' [%s]\n", v66);
    }

    gIIO_kCVImageBufferChromaLocation_Left = dlsym(v1, "kCVImageBufferChromaLocation_Left");
    if (!gIIO_kCVImageBufferChromaLocation_Left)
    {
      v67 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_Left' [%s]\n", v67);
    }

    gIIO_kCVImageBufferChromaLocation_Top = dlsym(v1, "kCVImageBufferChromaLocation_Top");
    if (!gIIO_kCVImageBufferChromaLocation_Top)
    {
      v68 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_Top' [%s]\n", v68);
    }

    gIIO_kCVImageBufferChromaLocation_TopLeft = dlsym(v1, "kCVImageBufferChromaLocation_TopLeft");
    if (!gIIO_kCVImageBufferChromaLocation_TopLeft)
    {
      v69 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaLocation_TopLeft' [%s]\n", v69);
    }

    gIIO_kCVImageBufferChromaSubsamplingKey = dlsym(v1, "kCVImageBufferChromaSubsamplingKey");
    if (!gIIO_kCVImageBufferChromaSubsamplingKey)
    {
      v70 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaSubsamplingKey' [%s]\n", v70);
    }

    gIIO_kCVImageBufferChromaSubsampling_411 = dlsym(v1, "kCVImageBufferChromaSubsampling_411");
    if (!gIIO_kCVImageBufferChromaSubsampling_411)
    {
      v71 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaSubsampling_411' [%s]\n", v71);
    }

    gIIO_kCVImageBufferChromaSubsampling_420 = dlsym(v1, "kCVImageBufferChromaSubsampling_420");
    if (!gIIO_kCVImageBufferChromaSubsampling_420)
    {
      v72 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaSubsampling_420' [%s]\n", v72);
    }

    gIIO_kCVImageBufferChromaSubsampling_422 = dlsym(v1, "kCVImageBufferChromaSubsampling_422");
    if (!gIIO_kCVImageBufferChromaSubsampling_422)
    {
      v73 = dlerror();
      printf("❌  failed to load 'kCVImageBufferChromaSubsampling_422' [%s]\n", v73);
    }

    gIIO_kCVImageBufferColorPrimariesKey = dlsym(v1, "kCVImageBufferColorPrimariesKey");
    if (!gIIO_kCVImageBufferColorPrimariesKey)
    {
      v74 = dlerror();
      printf("❌  failed to load 'kCVImageBufferColorPrimariesKey' [%s]\n", v74);
    }

    gIIO_kCVImageBufferColorPrimaries_ITU_R_709_2 = dlsym(v1, "kCVImageBufferColorPrimaries_ITU_R_709_2");
    if (!gIIO_kCVImageBufferColorPrimaries_ITU_R_709_2)
    {
      v75 = dlerror();
      printf("❌  failed to load 'kCVImageBufferColorPrimaries_ITU_R_709_2' [%s]\n", v75);
    }

    gIIO_kCVPixelBufferIOSurfacePropertiesKey = dlsym(v1, "kCVPixelBufferIOSurfacePropertiesKey");
    if (!gIIO_kCVPixelBufferIOSurfacePropertiesKey)
    {
      v76 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferIOSurfacePropertiesKey' [%s]\n", v76);
    }

    gIIO_kCVPixelBufferMetalCompatibilityKey = dlsym(v1, "kCVPixelBufferMetalCompatibilityKey");
    if (!gIIO_kCVPixelBufferMetalCompatibilityKey)
    {
      v77 = dlerror();
      printf("❌  failed to load 'kCVPixelBufferMetalCompatibilityKey' [%s]\n", v77);
    }

    gIIO_kCVImageBufferContentLightLevelInfoKey = dlsym(v1, "kCVImageBufferContentLightLevelInfoKey");
    if (!gIIO_kCVImageBufferContentLightLevelInfoKey)
    {
      v78 = dlerror();
      printf("❌  failed to load 'kCVImageBufferContentLightLevelInfoKey' [%s]\n", v78);
    }

    gIIO_kCVImageBufferGammaLevelKey = dlsym(v1, "kCVImageBufferGammaLevelKey");
    if (!gIIO_kCVImageBufferGammaLevelKey)
    {
      v79 = dlerror();
      printf("❌  failed to load 'kCVImageBufferGammaLevelKey' [%s]\n", v79);
    }

    gIIO_kCVImageBufferMasteringDisplayColorVolumeKey = dlsym(v1, "kCVImageBufferMasteringDisplayColorVolumeKey");
    if (!gIIO_kCVImageBufferMasteringDisplayColorVolumeKey)
    {
      v80 = dlerror();
      printf("❌  failed to load 'kCVImageBufferMasteringDisplayColorVolumeKey' [%s]\n", v80);
    }

    gIIO_kCVImageBufferTransferFunctionKey = dlsym(v1, "kCVImageBufferTransferFunctionKey");
    if (!gIIO_kCVImageBufferTransferFunctionKey)
    {
      v81 = dlerror();
      printf("❌  failed to load 'kCVImageBufferTransferFunctionKey' [%s]\n", v81);
    }

    gIIO_kCVImageBufferTransferFunction_UseGamma = dlsym(v1, "kCVImageBufferTransferFunction_UseGamma");
    if (!gIIO_kCVImageBufferTransferFunction_UseGamma)
    {
      v82 = dlerror();
      printf("❌  failed to load 'kCVImageBufferTransferFunction_UseGamma' [%s]\n", v82);
    }

    gIIO_kCVImageBufferTransferFunction_ITU_R_2100_HLG = dlsym(v1, "kCVImageBufferTransferFunction_ITU_R_2100_HLG");
    if (!gIIO_kCVImageBufferTransferFunction_ITU_R_2100_HLG)
    {
      v83 = dlerror();
      printf("❌  failed to load 'kCVImageBufferTransferFunction_ITU_R_2100_HLG' [%s]\n", v83);
    }

    gIIO_kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ = dlsym(v1, "kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ");
    if (!gIIO_kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ)
    {
      v84 = dlerror();
      printf("❌  failed to load 'kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ' [%s]\n", v84);
    }

    gIIO_kCVPixelFormatPlanes = dlsym(v1, "kCVPixelFormatPlanes");
    if (!gIIO_kCVPixelFormatPlanes)
    {
      v85 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatPlanes' [%s]\n", v85);
    }

    gIIO_kCVPixelFormatBitsPerComponent = dlsym(v1, "kCVPixelFormatBitsPerComponent");
    if (!gIIO_kCVPixelFormatBitsPerComponent)
    {
      v86 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatBitsPerComponent' [%s]\n", v86);
    }

    gIIO_kCVPixelFormatComponentRange = dlsym(v1, "kCVPixelFormatComponentRange");
    if (!gIIO_kCVPixelFormatComponentRange)
    {
      v87 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatComponentRange' [%s]\n", v87);
    }

    gIIO_kCVPixelFormatComponentRange_FullRange = dlsym(v1, "kCVPixelFormatComponentRange_FullRange");
    if (!gIIO_kCVPixelFormatComponentRange_FullRange)
    {
      v88 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatComponentRange_FullRange' [%s]\n", v88);
    }

    gIIO_kCVPixelFormatComponentRange_VideoRange = dlsym(v1, "kCVPixelFormatComponentRange_VideoRange");
    if (!gIIO_kCVPixelFormatComponentRange_VideoRange)
    {
      v89 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatComponentRange_VideoRange' [%s]\n", v89);
    }

    gIIO_kCVPixelFormatContainsAlpha = dlsym(v1, "kCVPixelFormatContainsAlpha");
    if (!gIIO_kCVPixelFormatContainsAlpha)
    {
      v90 = dlerror();
      printf("❌  failed to load 'kCVPixelFormatContainsAlpha' [%s]\n", v90);
    }

    result = dlsym(v1, "kCVMetalTextureCacheMaximumTextureAgeKey");
    gIIO_kCVMetalTextureCacheMaximumTextureAgeKey = result;
    if (!result)
    {
      v92 = dlerror();
      return printf("❌  failed to load 'kCVMetalTextureCacheMaximumTextureAgeKey' [%s]\n", v92);
    }
  }

  else
  {
    v93 = dlerror();
    return LogError("IIOLoadCoreVideoSymbols", 238, "❌  Failed to load %s  [%s]\n", __path, v93);
  }

  return result;
}