@interface DepthWrapperDecoder
@end

@implementation DepthWrapperDecoder

void __DepthWrapperDecoder_DecodeFrame_block_invoke(uint64_t a1, uint64_t a2, int a3, __CVBuffer *a4)
{
  v4 = a2;
  v6 = 0;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  pixelBufferOut = 0;
  v8 = a3 & 0xFFFFFFFE;
  if (*(a1 + 56))
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  if (!a2 && v7)
  {
    v11 = *MEMORY[0x1E695E480];
    PixelBufferPool = VTDecoderSessionGetPixelBufferPool(*(*(a1 + 32) + 8));
    v13 = CVPixelBufferPoolCreatePixelBuffer(v11, PixelBufferPool, &pixelBufferOut);
    v6 = pixelBufferOut;
    if (v13)
    {
      v4 = v13;
    }

    else
    {
      VTVideoDecoderGetCMBaseObject(*(a1 + 40));
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      Width = CVPixelBufferGetWidth(a4);
      Height = CVPixelBufferGetHeight(a4);
      CVPixelBufferLockBaseAddress(a4, 1uLL);
      CVPixelBufferLockBaseAddress(v6, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a4);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      v19 = CVPixelBufferGetBaseAddress(v6);
      v20 = CVPixelBufferGetBytesPerRow(v6);
      if (Height)
      {
        v21 = 0;
        v22 = *(DerivedStorage + 72);
        do
        {
          if (Width)
          {
            for (i = 0; i != Width; ++i)
            {
              *&v19[2 * i] = *(v22 + ((BaseAddress[i] >> 5) & 0x7FE));
            }
          }

          BaseAddress = (BaseAddress + BytesPerRow);
          v19 += v20;
          ++v21;
        }

        while (v21 != Height);
      }

      CVPixelBufferUnlockBaseAddress(v7, 1uLL);
      CVPixelBufferUnlockBaseAddress(v6, 0);
      v4 = 0;
      v6 = pixelBufferOut;
    }
  }

  depthdecoder_emitDecodedFrame(*(a1 + 40), *(a1 + 48), v4, v9, v6);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }
}

@end