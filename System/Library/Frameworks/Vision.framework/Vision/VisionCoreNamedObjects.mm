@interface VisionCoreNamedObjects
@end

@implementation VisionCoreNamedObjects

uint64_t __105__VisionCoreNamedObjects_VNInternalAdditions__VNEnumerateFloatValuesAtIndexes_asTensor_usingBlock_error___block_invoke(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  v7 = [a2 bytes];
  v8 = *(a1 + 56);
  src.data = 0;
  std::vector<unsigned long>::vector[abi:ne200100](__p, v8);
  v18 = 0;
  v9 = [*(a1 + 32) firstIndex];
  v16 = vdupq_n_s64(1uLL);
  while (1)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 1;
      goto LABEL_18;
    }

    *(__p[0] + *(a1 + 64)) = v9;
    v17 = 0;
    if (([*(a1 + 40) getByteOffset:&v17 forPosition:? rank:? error:?] & 1) == 0)
    {
      break;
    }

    v11 = *(a1 + 72);
    if (v11 == 65552)
    {
      src.data = (v7 + v17);
      *&src.height = v16;
      src.rowBytes = 2;
      v21 = 2143289344;
      dest.data = &v21;
      *&dest.height = v16;
      dest.rowBytes = 4;
      vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
      v10.n128_u32[0] = v21;
    }

    else
    {
      if (v11 != 65568)
      {
        if (a3)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot interpret %@ as float values", *(a1 + 40)];
          *a3 = [VNError errorForDataUnavailableWithLocalizedDescription:v14];
        }

        break;
      }

      v10.n128_u32[0] = *(v7 + v17);
    }

    v12 = (*(*(a1 + 48) + 16))(v10);
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      if (a3)
      {
        v13 = v13;
        *a3 = v13;
      }

LABEL_14:

      goto LABEL_18;
    }

    if (v18)
    {
      goto LABEL_14;
    }

    v9 = [*(a1 + 32) indexGreaterThanIndex:v9];
  }

  v12 = 0;
LABEL_18:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

@end