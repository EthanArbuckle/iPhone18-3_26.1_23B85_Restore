@interface NSData(SCNExtensions)
- (id)_operateOnDataUsingCompressionAlgorithm:()SCNExtensions operation:;
- (id)scn_indexedDataDecodingDeltaWithBytesPerIndex:()SCNExtensions;
- (id)scn_indexedDataDecodingHighWatermarkWithBytesPerIndex:()SCNExtensions;
- (id)scn_indexedDataEncodingDeltaWithBytesPerIndex:()SCNExtensions;
- (id)scn_indexedDataEncodingHighWatermarkWithBytesPerIndex:()SCNExtensions;
- (uint64_t)scn_indexedDataDecodingTrianglePairsWithBytesPerIndex:()SCNExtensions;
- (uint64_t)scn_indexedDataEncodingTrianglePairsWithBytesPerIndex:()SCNExtensions;
@end

@implementation NSData(SCNExtensions)

- (id)_operateOnDataUsingCompressionAlgorithm:()SCNExtensions operation:
{
  if (![a1 length])
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  if (a4)
  {
    if (a4 != COMPRESSION_STREAM_DECODE)
    {
      return 0;
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (compression_stream_init(&v12, a4, a3) == COMPRESSION_STATUS_ERROR)
  {
    return 0;
  }

  v12.src_ptr = [a1 bytes];
  v12.src_size = [a1 length];
  v8 = malloc_type_malloc(0x1000uLL, 0x5A2A09E9uLL);
  v12.dst_ptr = v8;
  v12.dst_size = 4096;
  v9 = objc_opt_new();
  while (1)
  {
    v10 = compression_stream_process(&v12, v7);
    if (v10)
    {
      break;
    }

    if (!v12.dst_size)
    {
      [v9 appendBytes:v8 length:4096];
      v12.dst_ptr = v8;
      v12.dst_size = 4096;
    }
  }

  if (v10 == COMPRESSION_STATUS_ERROR)
  {
    free(v8);
    return 0;
  }

  if (v10 == COMPRESSION_STATUS_END && v12.dst_ptr > v8)
  {
    [v9 appendBytes:v8 length:v12.dst_ptr - v8];
  }

  compression_stream_destroy(&v12);
  free(v8);
  [v9 setLength:{objc_msgSend(v9, "length")}];
  return v9;
}

- (id)scn_indexedDataEncodingHighWatermarkWithBytesPerIndex:()SCNExtensions
{
  v5 = [a1 mutableCopy];
  switch(a3)
  {
    case 4:
      v24 = [a1 bytes];
      v25 = [v5 bytes];
      v26 = *v24;
      *v25 = *v24;
      v27 = [a1 length];
      if (v27 >= 8)
      {
        v28 = (v27 >> 2) - 1;
        v29 = v25 + 1;
        v30 = v24 + 1;
        do
        {
          *v29++ = v26 - *v30;
          v32 = *v30++;
          v31 = v32;
          if (v32 > v26)
          {
            v26 = v31;
          }

          --v28;
        }

        while (v28);
      }

      break;
    case 2:
      v15 = [a1 bytes];
      v16 = [v5 bytes];
      v17 = *v15;
      *v16 = *v15;
      v18 = [a1 length];
      if (v18 >= 4)
      {
        v19 = (v18 >> 1) - 1;
        v20 = v16 + 1;
        v21 = v15 + 1;
        do
        {
          *v20++ = v17 - *v21;
          v23 = *v21++;
          v22 = v23;
          if (v23 > v17)
          {
            v17 = v22;
          }

          --v19;
        }

        while (v19);
      }

      break;
    case 1:
      v6 = [a1 bytes];
      v7 = [v5 bytes];
      v8 = *v6;
      *v7 = *v6;
      v9 = [a1 length];
      if (v9 >= 2)
      {
        v10 = v9 - 1;
        v11 = v7 + 1;
        v12 = v6 + 1;
        do
        {
          *v11++ = v8 - *v12;
          v14 = *v12++;
          v13 = v14;
          if (v14 > v8)
          {
            v8 = v13;
          }

          --v10;
        }

        while (v10);
      }

      break;
    default:
      [NSData(SCNExtensions) scn_indexedDataEncodingHighWatermarkWithBytesPerIndex:];
  }

  return v5;
}

- (id)scn_indexedDataDecodingHighWatermarkWithBytesPerIndex:()SCNExtensions
{
  v5 = [a1 mutableCopy];
  switch(a3)
  {
    case 4:
      v24 = [a1 bytes];
      v25 = [v5 bytes];
      v26 = *v24;
      *v25 = *v24;
      v27 = [a1 length];
      if (v27 >= 8)
      {
        v28 = (v27 >> 2) - 1;
        v29 = v25 + 1;
        v30 = (v24 + 1);
        do
        {
          v31 = *v30++;
          v32 = v26 - v31;
          *v29++ = v26 - v31;
          if (v26 - v31 > v26)
          {
            v26 = v32;
          }

          --v28;
        }

        while (v28);
      }

      break;
    case 2:
      v15 = [a1 bytes];
      v16 = [v5 bytes];
      v17 = *v15;
      *v16 = *v15;
      v18 = [a1 length];
      if (v18 >= 4)
      {
        v19 = (v18 >> 1) - 1;
        v20 = v16 + 1;
        v21 = (v15 + 1);
        do
        {
          v22 = *v21++;
          v23 = (v17 - v22);
          *v20++ = v17 - v22;
          if (v23 > v17)
          {
            v17 = v23;
          }

          --v19;
        }

        while (v19);
      }

      break;
    case 1:
      v6 = [a1 bytes];
      v7 = [v5 bytes];
      v8 = *v6;
      *v7 = *v6;
      v9 = [a1 length];
      if (v9 >= 2)
      {
        v10 = v9 - 1;
        v11 = v7 + 1;
        v12 = (v6 + 1);
        do
        {
          v13 = *v12++;
          v14 = (v8 - v13);
          *v11++ = v8 - v13;
          if (v14 > v8)
          {
            v8 = v14;
          }

          --v10;
        }

        while (v10);
      }

      break;
    default:
      [NSData(SCNExtensions) scn_indexedDataDecodingHighWatermarkWithBytesPerIndex:];
  }

  return v5;
}

- (id)scn_indexedDataEncodingDeltaWithBytesPerIndex:()SCNExtensions
{
  v5 = [a1 mutableCopy];
  switch(a3)
  {
    case 4:
      v18 = [a1 bytes];
      v19 = [v5 bytes];
      *v19 = *v18;
      v20 = [a1 length];
      if (v20 >= 8)
      {
        v21 = (v20 >> 2) - 1;
        v22 = v19 + 1;
        v23 = v18 + 1;
        do
        {
          *v22++ = *v23 - *(v23 - 1);
          ++v23;
          --v21;
        }

        while (v21);
      }

      break;
    case 2:
      v12 = [a1 bytes];
      v13 = [v5 bytes];
      *v13 = *v12;
      v14 = [a1 length];
      if (v14 >= 4)
      {
        v15 = (v14 >> 1) - 1;
        v16 = v13 + 1;
        v17 = v12 + 1;
        do
        {
          *v16++ = *v17 - *(v17 - 1);
          ++v17;
          --v15;
        }

        while (v15);
      }

      break;
    case 1:
      v6 = [a1 bytes];
      v7 = [v5 bytes];
      *v7 = *v6;
      v8 = [a1 length];
      if (v8 >= 2)
      {
        v9 = v8 - 1;
        v10 = v7 + 1;
        v11 = v6 + 1;
        do
        {
          *v10++ = *v11 - *(v11 - 1);
          ++v11;
          --v9;
        }

        while (v9);
      }

      break;
    default:
      [NSData(SCNExtensions) scn_indexedDataEncodingDeltaWithBytesPerIndex:];
  }

  return v5;
}

- (id)scn_indexedDataDecodingDeltaWithBytesPerIndex:()SCNExtensions
{
  v5 = [a1 mutableCopy];
  switch(a3)
  {
    case 4:
      v24 = [a1 bytes];
      v25 = [v5 bytes];
      *v25 = *v24;
      v26 = [a1 length];
      if (v26 >= 8)
      {
        v29 = *v25;
        v28 = v25 + 1;
        v27 = v29;
        v30 = (v26 >> 2) - 1;
        v31 = v24 + 1;
        do
        {
          v32 = *v31++;
          v27 += v32;
          *v28++ = v27;
          --v30;
        }

        while (v30);
      }

      break;
    case 2:
      v15 = [a1 bytes];
      v16 = [v5 bytes];
      *v16 = *v15;
      v17 = [a1 length];
      if (v17 >= 4)
      {
        v20 = *v16;
        v19 = v16 + 1;
        v18 = v20;
        v21 = (v17 >> 1) - 1;
        v22 = v15 + 1;
        do
        {
          v23 = *v22++;
          v18 += v23;
          *v19++ = v18;
          --v21;
        }

        while (v21);
      }

      break;
    case 1:
      v6 = [a1 bytes];
      v7 = [v5 bytes];
      *v7 = *v6;
      v8 = [a1 length];
      if (v8 >= 2)
      {
        v11 = *v7;
        v10 = v7 + 1;
        v9 = v11;
        v12 = v8 - 1;
        v13 = v6 + 1;
        do
        {
          v14 = *v13++;
          v9 += v14;
          *v10++ = v9;
          --v12;
        }

        while (v12);
      }

      break;
    default:
      [NSData(SCNExtensions) scn_indexedDataDecodingDeltaWithBytesPerIndex:];
  }

  return v5;
}

- (uint64_t)scn_indexedDataEncodingTrianglePairsWithBytesPerIndex:()SCNExtensions
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [a1 bytes];
  v6 = [a1 length];
  v7 = v6 / a3;
  v8 = malloc_type_malloc(v6 / a3 * a3, 0x100004077774924uLL);
  v9 = v8;
  v10 = v8;
  if (v6 >= a3)
  {
    v11 = 0;
    v10 = v8;
    do
    {
      v12 = v11 + 3;
      v13 = v11 * a3;
      if (v11 + 3 >= v7)
      {
        goto LABEL_18;
      }

      v14 = (v5 + v13);
      switch(a3)
      {
        case 4uLL:
          v15 = *v14;
          v16 = *(v14 + 1);
          HIDWORD(v44) = *v14;
          LODWORD(v45) = v16;
          v17 = *(v14 + 2);
          break;
        case 2uLL:
          v15 = *v14;
          v16 = v14[1];
          HIDWORD(v44) = v15;
          LODWORD(v45) = v16;
          v17 = v14[2];
          break;
        case 1uLL:
          v15 = *v14;
          v16 = *(v14 + 1);
          HIDWORD(v44) = v15;
          LODWORD(v45) = v16;
          v17 = *(v14 + 2);
          break;
        default:
          goto LABEL_18;
      }

      HIDWORD(v45) = v17;
      if (v15 != v16 && v17 != v15 && v16 != v17)
      {
        v23 = (v5 + v12 * a3);
        if (a3 == 4)
        {
          v43 = *v23;
          v25 = *(v23 + 2);
        }

        else if (a3 == 2)
        {
          v26 = v23[1];
          LODWORD(v43) = *v23;
          HIDWORD(v43) = v26;
          v25 = v23[2];
        }

        else
        {
          v24 = *(v23 + 1);
          LODWORD(v43) = *v23;
          HIDWORD(v43) = v24;
          v25 = *(v23 + 2);
        }

        v27 = 0;
        LODWORD(v44) = v25;
        v28 = 1;
LABEL_29:
        v29 = 0;
        v30 = v27;
        v31 = *(&v44 + ++v27);
        if (v27 == 3)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 + 1;
        }

        v33 = *(&v44 + v32 + 1);
        while (1)
        {
          v34 = v29 + 1;
          if (*(&v43 + v29) == v33)
          {
            v35 = v29 == 2 ? 0 : v29 + 1;
            if (*(&v43 + v35) == v31)
            {
              break;
            }
          }

          ++v29;
          if (v34 == 3)
          {
            v28 = v30 < 2;
            if (v27 != 3)
            {
              goto LABEL_29;
            }

            goto LABEL_18;
          }
        }

        v36 = (v30 - 1);
        if (!v30)
        {
          v36 = 2;
        }

        v37 = *(&v44 + v36 + 1);
        if (v29)
        {
          v38 = (v29 - 1);
        }

        else
        {
          v38 = 2;
        }

        v39 = *(&v43 + v38);
        if (v31 >= v33)
        {
          if (a3 == 4)
          {
            *v10 = v33;
            *(v10 + 1) = v31;
            *(v10 + 2) = v39;
            *(v10 + 3) = v37;
            if (!v28)
            {
              goto LABEL_60;
            }
          }

          else if (a3 == 2)
          {
            *v10 = v33;
            *(v10 + 1) = v31;
            *(v10 + 2) = v39;
            *(v10 + 3) = v37;
            if (!v28)
            {
              goto LABEL_58;
            }
          }

          else
          {
            *v10 = v33;
            v10[1] = v31;
            v10[2] = v39;
            v10[3] = v37;
            if (!v28)
            {
              goto LABEL_21;
            }
          }
        }

        else if (a3 == 4)
        {
          *v10 = v31;
          *(v10 + 1) = v33;
          *(v10 + 2) = v37;
          *(v10 + 3) = v39;
          if (!v28)
          {
            goto LABEL_60;
          }
        }

        else if (a3 == 2)
        {
          *v10 = v31;
          *(v10 + 1) = v33;
          *(v10 + 2) = v37;
          *(v10 + 3) = v39;
          if (!v28)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *v10 = v31;
          v10[1] = v33;
          v10[2] = v37;
          v10[3] = v39;
          if (!v28)
          {
            goto LABEL_21;
          }
        }

        v12 = v11 + 6;
        v40 = 4 * a3;
        goto LABEL_82;
      }

LABEL_18:
      v14 = (v5 + v13);
      switch(a3)
      {
        case 4uLL:
LABEL_60:
          v20 = *v14;
          v21 = *(v14 + 1);
          v22 = *(v14 + 2);
          break;
        case 2uLL:
LABEL_58:
          v20 = *v14;
          v21 = v14[1];
          v22 = v14[2];
          break;
        case 1uLL:
LABEL_21:
          v20 = *v14;
          v21 = *(v14 + 1);
          v22 = *(v14 + 2);
          break;
        default:
          v22 = 0;
          v20 = 0;
          v21 = 0;
LABEL_66:
          switch(a3)
          {
            case 4uLL:
              *v10 = v20;
              *(v10 + 1) = v21;
              v40 = 12;
              *(v10 + 2) = v22;
              break;
            case 2uLL:
              *v10 = v20;
              *(v10 + 1) = v21;
              v40 = 6;
              *(v10 + 2) = v22;
              break;
            case 1uLL:
              *v10 = v20;
              v10[1] = v21;
              v40 = 3;
              v10[2] = v22;
              break;
            default:
              v40 = 3 * a3;
              break;
          }

          goto LABEL_82;
      }

      if (v20 >= v21)
      {
        goto LABEL_66;
      }

      if (v21 >= v22)
      {
        if (a3 == 4)
        {
          *v10 = v21;
          *(v10 + 1) = v22;
          v40 = 12;
          *(v10 + 2) = v20;
        }

        else if (a3 == 2)
        {
          *v10 = v21;
          *(v10 + 1) = v22;
          v40 = 6;
          *(v10 + 2) = v20;
        }

        else
        {
          *v10 = v21;
          v10[1] = v22;
          v40 = 3;
          v10[2] = v20;
        }
      }

      else if (a3 == 4)
      {
        *v10 = v22;
        *(v10 + 1) = v20;
        v40 = 12;
        *(v10 + 2) = v21;
      }

      else if (a3 == 2)
      {
        *v10 = v22;
        *(v10 + 1) = v20;
        v40 = 6;
        *(v10 + 2) = v21;
      }

      else
      {
        *v10 = v22;
        v10[1] = v20;
        v40 = 3;
        v10[2] = v21;
      }

LABEL_82:
      v10 += v40;
      v11 = v12;
    }

    while (v12 < v7);
  }

  v41 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:{v10 - v9, v43, v44, v45}];
  free(v9);
  return v41;
}

- (uint64_t)scn_indexedDataDecodingTrianglePairsWithBytesPerIndex:()SCNExtensions
{
  v5 = [a1 bytes];
  v6 = [a1 length];
  v7 = malloc_type_malloc((((3 * (v6 / a3)) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * a3, 0x100004077774924uLL);
  v8 = v7;
  v9 = v7;
  if (v6 >= a3)
  {
    v10 = 0;
    v11 = 3 * a3;
    v9 = v7;
    do
    {
      v12 = (v5 + v10 * a3);
      switch(a3)
      {
        case 1uLL:
          v13 = *v12;
          v15 = v12[1];
          v17 = v12[2];
          *v9 = v13;
          v9[1] = v15;
          v9[2] = v17;
          break;
        case 2uLL:
          v13 = *v12;
          v15 = *(v12 + 1);
          v16 = *(v12 + 2);
          *v9 = v13;
          *(v9 + 1) = v15;
          *(v9 + 2) = v16;
          break;
        case 4uLL:
          v13 = *v12;
          v14 = *(v12 + 4);
          *v9 = *v12;
          *(v9 + 4) = v14;
          v15 = v14;
          break;
        default:
          v18 = v10 + 3;
LABEL_17:
          v9 += v11;
          goto LABEL_18;
      }

      v18 = v10 + 3;
      v9 += v11;
      if (v13 < v15)
      {
        v19 = v18 * a3;
        if (a3 == 4)
        {
          v22 = *(v5 + v19);
          *v9 = v13;
          *(v9 + 1) = v22;
          *(v9 + 2) = v15;
        }

        else if (a3 == 2)
        {
          v21 = *(v5 + v19);
          *v9 = v13;
          *(v9 + 1) = v21;
          *(v9 + 2) = v15;
        }

        else
        {
          v20 = *(v5 + v19);
          *v9 = v13;
          v9[1] = v20;
          v9[2] = v15;
        }

        v18 = v10 + 4;
        goto LABEL_17;
      }

LABEL_18:
      v10 = v18;
    }

    while (v18 < v6 / a3);
  }

  v23 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:v9 - v7];
  free(v8);
  return v23;
}

@end