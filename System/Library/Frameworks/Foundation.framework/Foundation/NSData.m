@interface NSData
@end

@implementation NSData

uint64_t __28__NSData_NSData___isCompact__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) length];
  if (a4 != result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a5 = 1;
  return result;
}

uint64_t __32__NSData_NSData__isEqualToData___block_invoke(void *a1, const void *a2, uint64_t a3, size_t __n, _BYTE *a5)
{
  v7 = a1[5];
  if (!v7)
  {
    v7 = a1[6];
  }

  result = memcmp((v7 + a3), a2, __n);
  if (result)
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

  *a5 = *(*(a1[4] + 8) + 24) ^ 1;
  return result;
}

uint64_t __32__NSData_NSData__isEqualToData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9[8] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__NSData_NSData__isEqualToData___block_invoke_3;
  v9[3] = &unk_1E69F2AE8;
  v9[6] = a4;
  v9[7] = a2;
  v9[4] = *(a1 + 40);
  v9[5] = a3;
  result = [v7 enumerateByteRangesUsingBlock:v9];
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

void *__32__NSData_NSData__isEqualToData___block_invoke_3(void *result, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = result;
  v7 = result[5];
  v8 = result[6] + v7;
  if (v8 <= a3)
  {
    *a5 = 1;
    v9 = result[5];
    v8 = v9 + result[6];
  }

  else
  {
    v9 = result[5];
  }

  if (v8 >= a3 + a4)
  {
    v10 = a3 + a4;
  }

  else
  {
    v10 = v8;
  }

  if (a3 <= v9 && v9 < a3 + a4)
  {
    v13 = v10 - v9;
    if (v10 == v9)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v9 <= a3 && a3 < v8)
  {
    v13 = v10 - a3;
    v9 = a3;
    if (v10 != a3)
    {
LABEL_19:
      v14 = v9 - a3;
      v15 = v9 - v7;
      v16 = a3 >= v7;
      if (a3 >= v7)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14;
      }

      result = memcmp((result[7] + v17), (a2 + v18), v13);
      *(*(v6[4] + 8) + 24) = result == 0;
      *a5 = *(*(v6[4] + 8) + 24) ^ 1;
    }
  }

  return result;
}

uint64_t __55__NSData_NSData___initWithBase64EncodedObject_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) _decodeBase64EncodedCharacterBuffer:a2 length:a4 options:*(a1 + 48) buffer:*(a1 + 56) bufferLength:*(a1 + 64) state:*(*(a1 + 40) + 8) + 32];
  if ((result & 1) == 0)
  {
    *a5 = 1;
  }

  return result;
}

void *__54__NSData_NSData___base64EncodingAsString_withOptions___block_invoke(void *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a2++;
    v4 = v5;
    v6 = *(*(result[4] + 8) + 24) % 3uLL;
    if (v6 == 2)
    {
      v9 = _base64EncodingAsString_withOptions__DataEncodeTable[((v4 | (*(*(result[7] + 8) + 24) << 8)) >> 6) & 0x3F];
      v10 = result[10];
      v11 = *(result[6] + 8);
      v12 = *(v11 + 24);
      *(v11 + 24) = v12 + 1;
      *(v10 + v12) = v9;
      v8 = &_base64EncodingAsString_withOptions__DataEncodeTable[v4 & 0x3F];
      v7 = result[6];
    }

    else if (v6 == 1)
    {
      v7 = result[6];
      v8 = &_base64EncodingAsString_withOptions__DataEncodeTable[((v4 | (*(*(result[7] + 8) + 24) << 8)) >> 4) & 0x3F];
    }

    else
    {
      v7 = result[6];
      if (result[8])
      {
        v13 = *(*(result[5] + 8) + 24);
        v14 = *(v7 + 8);
        if (v13 == *(v14 + 24))
        {
          v15 = result[9];
          if ((v15 & 0x10) != 0)
          {
            v16 = result[10];
            *(v14 + 24) = v13 + 1;
            *(v16 + v13) = 13;
            v15 = result[9];
            v7 = result[6];
          }

          if ((v15 & 0x20) != 0)
          {
            v17 = result[10];
            v18 = *(v7 + 8);
            v19 = *(v18 + 24);
            *(v18 + 24) = v19 + 1;
            *(v17 + v19) = 10;
            v7 = result[6];
          }

          *(*(result[5] + 8) + 24) = result[8] + *(*(v7 + 8) + 24);
          v7 = result[6];
        }
      }

      v8 = &_base64EncodingAsString_withOptions__DataEncodeTable[v4 >> 2];
    }

    v20 = *v8;
    v21 = result[10];
    v22 = *(v7 + 8);
    v23 = *(v22 + 24);
    *(v22 + 24) = v23 + 1;
    *(v21 + v23) = v20;
    *(*(result[7] + 8) + 24) = v4;
    ++*(*(result[4] + 8) + 24);
  }

  return result;
}

uint64_t __84__NSData_NSDataCompression___produceDataWithCompressionOperation_algorithm_handler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) appendBytes:a2 length:a3];
    }
  }

  return result;
}

uint64_t __84__NSData_NSDataCompression___produceDataWithCompressionOperation_algorithm_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) processBytes:a2 size:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __78__NSData_NSDataCompression___decompressedDataUsingCompressionAlgorithm_error___block_invoke(uint64_t result, void *a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [a2 bytes];
    v6 = [a2 length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__NSData_NSDataCompression___decompressedDataUsingCompressionAlgorithm_error___block_invoke_2;
    v7[3] = &unk_1E69F2A70;
    v7[4] = a2;
    result = [v4 initWithBytesNoCopy:v5 length:v6 deallocator:v7];
    *(*(*(v3 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t __76__NSData_NSDataCompression___compressedDataUsingCompressionAlgorithm_error___block_invoke(uint64_t result, void *a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [a2 bytes];
    v6 = [a2 length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__NSData_NSDataCompression___compressedDataUsingCompressionAlgorithm_error___block_invoke_2;
    v7[3] = &unk_1E69F2A70;
    v7[4] = a2;
    result = [v4 initWithBytesNoCopy:v5 length:v6 deallocator:v7];
    *(*(*(v3 + 32) + 8) + 40) = result;
  }

  return result;
}

@end