@interface C3DRendererContextFillTextureWithImage
@end

@implementation C3DRendererContextFillTextureWithImage

void ___C3DRendererContextFillTextureWithImage_block_invoke(uint64_t a1, int a2, CFArrayRef theArray, GLenum target, __n128 a5)
{
  if (target - 34075 <= 0xFFFFFFF9)
  {
    if (*(a1 + 32) <= 1)
    {
      v8 = 9729;
    }

    else
    {
      v8 = 9985;
    }

    glTexParameteri(target, 0x2801u, v8);
  }

  v9 = 0;
  a5.n128_u64[0] = vcvt_s32_f32(*(a1 + 40));
  v23 = a5;
  while (1)
  {
    v10 = *(a1 + 32);
    v11 = v9 >= v10 ? v10 - 1 : v9;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    pixels = CFDataGetBytePtr(ValueAtIndex);
    Length = CFDataGetLength(ValueAtIndex);
    v15 = *(a1 + 48);
    if (*v15)
    {
      glCompressedTexImage2D(target, v9, v15[6], v23.n128_i32[0], v23.n128_i32[1], 0, Length, pixels);
    }

    else
    {
      v16 = v15[6];
      v17 = *(a1 + 56);
      if (v17)
      {
        v18 = *(v17 + 16);
        v19 = v16 == 32856 ? 6408 : v16;
        v20 = v18 == 1 ? 3317 : 3314;
        if (v18 == 1)
        {
          v16 = v19;
        }
      }

      else
      {
        v20 = 3314;
      }

      glPixelStorei(v20, v23.n128_i32[1]);
      glTexImage2D(target, v9, v16, v23.n128_i32[0], v23.n128_i32[1], 0, *(*(a1 + 48) + 28), *(*(a1 + 48) + 32), pixels);
    }

    v21 = vmvn_s8(vceq_s32(v23.n128_u64[0], 0x100000001));
    if (((v21.i32[0] | v21.i32[1]) & 1) == 0)
    {
      break;
    }

    v22.n128_u64[1] = v23.n128_u64[1];
    v22.n128_u64[0] = vmax_s32(vshr_n_s32(v23.n128_u64[0], 1uLL), 0x100000001);
    v23 = v22;
    ++v9;
  }
}

void ___C3DRendererContextFillTextureWithImage_block_invoke_52(uint64_t a1, GLenum target, const GLvoid *a3)
{
  glTexImage2D(target, 0, *(a1 + 56), *(a1 + 32), *(a1 + 40), 0, *(a1 + 60), *(a1 + 64), 0);
  glTexSubImage2D(target, 0, 0, 0, *(a1 + 32), *(a1 + 40), *(a1 + 60), *(a1 + 64), a3);
  if (*(a1 + 68) == 1)
  {
    glGenerateMipmap(target);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 40) * *(a1 + 32);
    *(v6 + 276) += v7 * C3DGLTextureTypePixelSize(*(a1 + 60), *(a1 + 64));
  }
}

@end