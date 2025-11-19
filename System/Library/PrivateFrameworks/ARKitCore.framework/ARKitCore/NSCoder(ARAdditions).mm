@interface NSCoder(ARAdditions)
- (__n128)ar_decodeMatrix3x3ForKey:()ARAdditions;
- (__n128)ar_decodeMatrix4x3ForKey:()ARAdditions;
- (__n128)ar_decodeMatrix4x4ForKey:()ARAdditions;
- (__n128)ar_decodeVector3ForKey:()ARAdditions;
- (double)ar_decodeVector2ForKey:()ARAdditions;
- (id)_ar_decodeDataNoCopyForKey:()ARAdditions;
- (id)_ar_decodeDataNoCopyWithFallbackForKey:()ARAdditions;
- (uint64_t)ar_encodeMatrix3x3:()ARAdditions forKey:;
- (uint64_t)ar_encodeMatrix4x3:()ARAdditions forKey:;
- (uint64_t)ar_encodeMatrix4x4:()ARAdditions forKey:;
- (void)ar_decodeCMRotationMatrixForKey:()ARAdditions;
@end

@implementation NSCoder(ARAdditions)

- (id)_ar_decodeDataNoCopyForKey:()ARAdditions
{
  v7 = 0;
  v3 = [a1 decodeBytesForKey:a3 returnedLength:&v7];
  if (v3)
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);
    v3 = [v5 initWithBytesNoCopy:v4 length:v7 freeWhenDone:0];
  }

  return v3;
}

- (id)_ar_decodeDataNoCopyWithFallbackForKey:()ARAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 decodingFailurePolicy])
  {
    v5 = [a1 _ar_decodeDataNoCopyForKey:v4];
    if (!v5)
    {
      v6 = [a1 error];

      if (v6)
      {
        v7 = _ARLogGeneral_44();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = [a1 error];
          v12 = 138544130;
          v13 = v9;
          v14 = 2048;
          v15 = a1;
          v16 = 2114;
          v17 = v4;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_FAULT, "%{public}@ <%p>: Failed to decode bytes for key %{public}@ and decoder is not configured to raise exceptions, error = %@", &v12, 0x2Au);
        }
      }
    }
  }

  else
  {
    v5 = [a1 _ar_decodeDataNoCopyForKey:v4];
  }

  return v5;
}

- (double)ar_decodeVector2ForKey:()ARAdditions
{
  v1 = [a1 _ar_decodeDataNoCopyWithFallbackForKey:?];
  v2 = ARVector2FromNSData(v1);

  return v2;
}

- (__n128)ar_decodeVector3ForKey:()ARAdditions
{
  v1 = [a1 _ar_decodeDataNoCopyWithFallbackForKey:?];
  *&v2 = ARVector3FromNSData(v1);
  v4 = v2;

  return v4;
}

- (uint64_t)ar_encodeMatrix3x3:()ARAdditions forKey:
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  return [a1 encodeBytes:v7 length:48 forKey:a6];
}

- (__n128)ar_decodeMatrix3x3ForKey:()ARAdditions
{
  v1 = [a1 _ar_decodeDataNoCopyWithFallbackForKey:?];
  *&v2 = ARMatrix3x3FromNSData(v1);
  v4 = v2;

  return v4;
}

- (uint64_t)ar_encodeMatrix4x4:()ARAdditions forKey:
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  return [a1 encodeBytes:v8 length:64 forKey:a7];
}

- (__n128)ar_decodeMatrix4x4ForKey:()ARAdditions
{
  v4 = a3;
  if ([a1 containsValueForKey:v4])
  {
    v5 = [a1 _ar_decodeDataNoCopyWithFallbackForKey:v4];
    *&v6 = ARMatrix4x4FromNSData(v5);
    v8 = v6;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9B18];
  }

  return v8;
}

- (uint64_t)ar_encodeMatrix4x3:()ARAdditions forKey:
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  return [a1 encodeBytes:v8 length:64 forKey:a7];
}

- (__n128)ar_decodeMatrix4x3ForKey:()ARAdditions
{
  v1 = [a1 _ar_decodeDataNoCopyWithFallbackForKey:?];
  *&v2 = ARMatrix4x3FromNSData(v1);
  v4 = v2;

  return v4;
}

- (void)ar_decodeCMRotationMatrixForKey:()ARAdditions
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v6 = [a1 _ar_decodeDataNoCopyWithFallbackForKey:?];
  if ([v6 length] == 72)
  {
    v3 = [v6 bytes];
    v4 = *(v3 + 48);
    *(a2 + 32) = *(v3 + 32);
    *(a2 + 48) = v4;
    *(a2 + 64) = *(v3 + 64);
    v5 = *(v3 + 16);
    *a2 = *v3;
    *(a2 + 16) = v5;
  }
}

@end