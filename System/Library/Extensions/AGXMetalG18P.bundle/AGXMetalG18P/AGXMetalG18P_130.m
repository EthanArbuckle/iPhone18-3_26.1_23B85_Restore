uint64_t (*AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getDetwiddleFunc(uint64_t a1))(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v1 = *(a1 + 16);
  v2 = agxsTwiddleAddressPVRTC2<false,(TwiddleOrder)1>;
  switch(*(a1 + 32))
  {
    case 0x82:
    case 0x83:
    case 0x8CLL:
    case 0x8DLL:
    case 0xAALL:
    case 0xACLL:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
      return agxsTwiddleAddressCompressed<false,4u,4u,8ul,(TwiddleOrder)1>;
    case 0x84:
    case 0x85:
    case 0x86:
    case 0x87:
    case 0x8ELL:
    case 0x8FLL:
    case 0x96:
    case 0x97:
    case 0x98:
    case 0x99:
    case 0xAELL:
    case 0xB0:
    case 0xB2:
    case 0xB3:
    case 0xBALL:
    case 0xCCLL:
    case 0xDELL:
      return agxsTwiddleAddressCompressed<false,4u,4u,16ul,(TwiddleOrder)1>;
    case 0xA0:
    case 0xA1:
    case 0xA4:
    case 0xA5:
      return v2;
    case 0xA2:
    case 0xA3:
    case 0xA6:
    case 0xA7:
      return agxsTwiddleAddressPVRTC4<false,(TwiddleOrder)1>;
    case 0xB9:
    case 0xCBLL:
    case 0xDDLL:
      return agxsTwiddleAddressCompressed<false,4u,2u,16ul,(TwiddleOrder)1>;
    case 0xBBLL:
    case 0xCDLL:
    case 0xDFLL:
      return agxsTwiddleAddressCompressed<false,5u,4u,16ul,(TwiddleOrder)1>;
    case 0xBCLL:
    case 0xCELL:
    case 0xE0:
      return agxsTwiddleAddressCompressed<false,5u,5u,16ul,(TwiddleOrder)1>;
    case 0xBDLL:
    case 0xCFLL:
    case 0xE1:
      return agxsTwiddleAddressCompressed<false,6u,5u,16ul,(TwiddleOrder)1>;
    case 0xBELL:
    case 0xD0:
    case 0xE2:
      return agxsTwiddleAddressCompressed<false,6u,6u,16ul,(TwiddleOrder)1>;
    case 0xBFLL:
    case 0xD1:
    case 0xE3:
      return agxsTwiddleAddressCompressed<false,8u,4u,16ul,(TwiddleOrder)1>;
    case 0xC0:
    case 0xD2:
    case 0xE4:
      return agxsTwiddleAddressCompressed<false,8u,5u,16ul,(TwiddleOrder)1>;
    case 0xC1:
    case 0xD3:
    case 0xE5:
      return agxsTwiddleAddressCompressed<false,8u,6u,16ul,(TwiddleOrder)1>;
    case 0xC2:
    case 0xD4:
    case 0xE6:
      return agxsTwiddleAddressCompressed<false,8u,8u,16ul,(TwiddleOrder)1>;
    case 0xC3:
    case 0xD5:
    case 0xE7:
      return agxsTwiddleAddressCompressed<false,10u,5u,16ul,(TwiddleOrder)1>;
    case 0xC4:
    case 0xD6:
    case 0xE8:
      return agxsTwiddleAddressCompressed<false,10u,6u,16ul,(TwiddleOrder)1>;
    case 0xC5:
    case 0xD7:
    case 0xE9:
      return agxsTwiddleAddressCompressed<false,10u,8u,16ul,(TwiddleOrder)1>;
    case 0xC6:
    case 0xD8:
    case 0xEALL:
      return agxsTwiddleAddressCompressed<false,10u,10u,16ul,(TwiddleOrder)1>;
    case 0xC7:
    case 0xD9:
    case 0xEBLL:
      return agxsTwiddleAddressCompressed<false,12u,10u,16ul,(TwiddleOrder)1>;
    case 0xC8:
    case 0xDALL:
    case 0xECLL:
      return agxsTwiddleAddressCompressed<false,12u,12u,16ul,(TwiddleOrder)1>;
    default:
      v2 = 0;
      v4 = *(*(a1 + 208) + 88);
      if (v4 > 3)
      {
        if (v4 == 4)
        {
          v5 = *(a1 + 112) - 1;
          if (v5 < 8)
          {
            v6 = off_2A23FA468;
            return v6[v5];
          }

          return 0;
        }

        if (v4 != 8)
        {
          if (v4 == 16)
          {
            v5 = *(a1 + 112) - 1;
            if (v5 < 8)
            {
              v6 = off_2A23FA4E8;
              return v6[v5];
            }

            return 0;
          }

          return v2;
        }

        v5 = *(a1 + 112) - 1;
        if (v5 < 8)
        {
          v6 = off_2A23FA4A8;
          return v6[v5];
        }

        return 0;
      }

      if (v4 == 1)
      {
        v5 = *(a1 + 112) - 1;
        if (v5 < 8)
        {
          v6 = off_2A23FA428;
          return v6[v5];
        }

        return 0;
      }

      if (v4 != 2)
      {
        return v2;
      }

      v2 = 0;
      v7 = *(a1 + 112);
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          if (v1 == 1)
          {
            return agxsTwiddleAddressZ<AGXSConverterPassThru<false,2ul,4u,(TwiddleOrder)1>>;
          }

          else
          {
            return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,4u,(TwiddleOrder)1>>;
          }
        }

        else
        {
          if (v7 != 8)
          {
            return v2;
          }

          if (v1 == 1)
          {
            return agxsTwiddleAddressZ<AGXSConverterPassThru<false,2ul,8u,(TwiddleOrder)1>>;
          }

          else
          {
            return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,8u,(TwiddleOrder)1>>;
          }
        }
      }

      else if (v7 == 1)
      {
        if (v1 == 1)
        {
          return agxsTwiddleAddressZ<AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>>;
        }

        else
        {
          return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>>;
        }
      }

      else
      {
        if (v7 != 2)
        {
          return v2;
        }

        if (v1 == 1)
        {
          return agxsTwiddleAddressZ<AGXSConverterPassThru<false,2ul,2u,(TwiddleOrder)1>>;
        }

        else
        {
          return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,2u,(TwiddleOrder)1>>;
        }
      }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::readCompressedRegion2D<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = a3;
  v14 = *(a1 + 32);
  if (v14 == 260)
  {
    v15 = 252;
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v16 = *(a1 + 396);
  if (v16 == 3)
  {
    if (*(a1 + 584))
    {
      if (*(a1 + 168))
      {
        CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
        IOSurfaceGetCompressedTileHeightOfPlane();
        v18 = CompressedTileWidthOfPlane;
        v12 = a3;
        if (v18 == 32)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v30 = *(a1 + 208);
        v664 = 0;
        memset(v663, 0, sizeof(v663));
        InterchangeTiledMemory::getPlaneInfo(v663, 0, v14, *(v30 + 49));
        if (LOBYTE(v663[0]) == 32)
        {
LABEL_8:
          if (v14 <= 24)
          {
            if (v14 <= 13)
            {
              if (v14 > 10)
              {
                if (v14 == 11)
                {
                  CompressionCodecConfig = getCompressionCodecConfig(*(a1 + 56));
                  if (CompressionCodecConfig > 1)
                  {
LABEL_157:
                    if (CompressionCodecConfig == 2)
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    }

                    else if (CompressionCodecConfig == 3)
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    }

                    else
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    }

                    return;
                  }

                  if (!CompressionCodecConfig)
                  {
LABEL_169:
                    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    return;
                  }

LABEL_246:
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                  return;
                }

LABEL_156:
                CompressionCodecConfig = getCompressionCodecConfig(*(a1 + 56));
                if (CompressionCodecConfig > 1)
                {
                  goto LABEL_157;
                }

                if (!CompressionCodecConfig)
                {
                  goto LABEL_169;
                }

                goto LABEL_246;
              }

              if (v14 == 1 || v14 == 10)
              {
                goto LABEL_156;
              }

              return;
            }

            if (v14 <= 21)
            {
              if (v14 == 14)
              {
                goto LABEL_156;
              }

              if (v14 != 20)
              {
                return;
              }
            }

LABEL_152:
            v68 = getCompressionCodecConfig(*(a1 + 56));
            if (v68 <= 1)
            {
              if (v68)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v68 == 2)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v68 == 3)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          }

          if (v14 > 605)
          {
            if (v14 <= 642)
            {
              if (v14 != 606 && v14 != 642)
              {
                return;
              }
            }

            else if (v14 != 643)
            {
              if (v14 != 646 && v14 != 647)
              {
                return;
              }

LABEL_86:
              v43 = getCompressionCodecConfig(*(a1 + 56));
              if (v43 <= 1)
              {
                if (v43)
                {
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                }

                else
                {
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                }
              }

              else if (v43 == 2)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else if (v43 == 3)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              return;
            }
          }

          else if (v14 <= 576)
          {
            if (v14 == 25)
            {
              goto LABEL_152;
            }

            if (v14 != 576)
            {
              return;
            }
          }

          else if (v14 != 577)
          {
            if (v14 != 603 && v14 != 604)
            {
              return;
            }

            goto LABEL_86;
          }

          v70 = getCompressionCodecConfig(*(a1 + 56));
          if (v70 <= 1)
          {
            if (v70)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v70 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (v70 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        }
      }
    }

    switch(v14)
    {
      case 1:
      case 10:
      case 11:
      case 13:
        v64 = getCompressionCodecConfig(*(a1 + 56));
        if (v64 <= 1)
        {
          if (v64)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v64 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v64 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 12:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 21:
      case 26:
      case 27:
      case 28:
      case 29:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 92:
      case 93:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 111:
        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v31 = getCompressionCodecConfig(*(a1 + 56));
        if (v31 <= 1)
        {
          if (v31)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v31 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v31 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v62 = getCompressionCodecConfig(*(a1 + 56));
        if (v62 <= 1)
        {
          if (v62)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v62 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v62 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 60:
      case 62:
      case 64:
      case 65:
        v65 = getCompressionCodecConfig(*(a1 + 56));
        if (v65 > 1)
        {
          goto LABEL_252;
        }

        if (v65)
        {
          goto LABEL_415;
        }

        goto LABEL_134;
      case 63:
        v65 = getCompressionCodecConfig(*(a1 + 56));
        if (v65 <= 1)
        {
          if (v65)
          {
LABEL_415:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_134:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else
        {
LABEL_252:
          if (v65 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (v65 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 70:
      case 71:
      case 80:
      case 81:
        v63 = getCompressionCodecConfig(*(a1 + 56));
        if (v63 <= 1)
        {
          if (v63)
          {
            goto LABEL_241;
          }

          goto LABEL_210;
        }

        if (v63 == 2)
        {
          goto LABEL_237;
        }

        if (v63 != 3)
        {
          goto LABEL_141;
        }

        goto LABEL_127;
      case 72:
      case 73:
      case 74:
        v67 = getCompressionCodecConfig(*(a1 + 56));
        if (v67 <= 1)
        {
          if (v67)
          {
LABEL_241:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_210:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v67 == 2)
        {
LABEL_237:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v67 == 3)
        {
LABEL_127:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
LABEL_141:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        break;
      case 90:
      case 91:
      case 94:
LABEL_76:
        v42 = getCompressionCodecConfig(*(a1 + 56));
        if (v42 <= 1)
        {
          if (v42)
          {
LABEL_293:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_143:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v42 == 2)
        {
LABEL_208:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v42 == 3)
        {
LABEL_79:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
LABEL_199:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 114:
        v66 = getCompressionCodecConfig(*(a1 + 56));
        if (v66 > 1)
        {
          goto LABEL_256;
        }

        if (!v66)
        {
          goto LABEL_137;
        }

        goto LABEL_417;
      case 115:
        v66 = getCompressionCodecConfig(*(a1 + 56));
        if (v66 <= 1)
        {
          if (v66)
          {
LABEL_417:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_137:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else
        {
LABEL_256:
          if (v66 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (v66 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      default:
        switch(v14)
        {
          case 552:
          case 553:
            v71 = getCompressionCodecConfig(*(a1 + 56));
            if (v71 <= 1)
            {
              if (v71)
              {
                goto LABEL_283;
              }

              goto LABEL_201;
            }

            if (v71 == 2)
            {
              goto LABEL_277;
            }

            if (v71 != 3)
            {
              goto LABEL_282;
            }

            goto LABEL_50;
          case 554:
          case 555:
          case 586:
          case 587:
            goto LABEL_76;
          case 578:
          case 579:
            v73 = getCompressionCodecConfig(*(a1 + 56));
            if (v73 <= 1)
            {
              if (v73)
              {
                goto LABEL_429;
              }

              goto LABEL_295;
            }

            if (v73 == 2)
            {
              goto LABEL_427;
            }

            if (v73 != 3)
            {
              goto LABEL_428;
            }

            goto LABEL_205;
          case 605:
            v75 = getCompressionCodecConfig(*(a1 + 56));
            if (v75 <= 1)
            {
              if (v75)
              {
                goto LABEL_652;
              }

              goto LABEL_421;
            }

            if (v75 == 2)
            {
              goto LABEL_649;
            }

            if (v75 != 3)
            {
              goto LABEL_651;
            }

            goto LABEL_276;
          case 628:
          case 629:
            v72 = getCompressionCodecConfig(*(a1 + 56));
            if (v72 <= 1)
            {
              if (!v72)
              {
                goto LABEL_143;
              }

              goto LABEL_293;
            }

            if (v72 == 2)
            {
              goto LABEL_208;
            }

            if (v72 == 3)
            {
              goto LABEL_79;
            }

            break;
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
            v32 = getCompressionCodecConfig(*(a1 + 56));
            if (v32 <= 1)
            {
              if (v32)
              {
LABEL_283:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
LABEL_201:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v32 == 2)
            {
LABEL_277:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v32 == 3)
            {
LABEL_50:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_282:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          case 644:
            v74 = getCompressionCodecConfig(*(a1 + 56));
            if (v74 <= 1)
            {
              if (v74)
              {
LABEL_429:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
LABEL_295:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v74 == 2)
            {
LABEL_427:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v74 == 3)
            {
LABEL_205:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_428:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          case 648:
            v76 = getCompressionCodecConfig(*(a1 + 56));
            if (v76 <= 1)
            {
              if (v76)
              {
LABEL_652:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
LABEL_421:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v76 == 2)
            {
LABEL_649:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v76 == 3)
            {
LABEL_276:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_651:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          default:
            return;
        }

        goto LABEL_199;
    }

    return;
  }

  v19 = *(a1 + 57);
  v20 = *(a1 + 112);
  if (v19 == 3)
  {
    if (v20 > 3)
    {
      if (v20 == 4)
      {
        switch(v14)
        {
          case 1:
            if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
            {
              goto LABEL_1112;
            }

            break;
          case 10:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 11:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 12:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 13:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 14:
            if (v16 != 1)
            {
LABEL_1111:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {
LABEL_1112:

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 20:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 22:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 23:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 24:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 25:
            if (v16 != 1)
            {
LABEL_1127:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 30:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 31:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 32:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 33:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 34:
            if (v16 != 1)
            {
LABEL_1143:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 53:
            if (v16 != 1)
            {
              goto LABEL_1176;
            }

            break;
          case 54:
            if (v16 != 1)
            {
              goto LABEL_1176;
            }

            break;
          case 55:
            if (v16 != 1)
            {
LABEL_1176:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 60:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 62:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 63:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 64:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 65:
            if (v16 != 1)
            {
LABEL_1157:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 70:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 71:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 72:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 73:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 74:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 80:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 81:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 84:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 85:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 90:
            if (v16 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 91:
            if (v16 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 94:
            if (v16 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 103:
            if (v16 != 1)
            {
              goto LABEL_1093;
            }

            break;
          case 104:
            if (v16 != 1)
            {
              goto LABEL_1093;
            }

            break;
          case 105:
            if (v16 != 1)
            {
LABEL_1093:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 110:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 112:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 113:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 114:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 115:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 123:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 124:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 125:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 300:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 301:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 302:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 303:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 304:
            if (v16 != 1)
            {
LABEL_1230:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 313:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 314:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 315:
            if (v16 != 1)
            {
LABEL_1220:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 323:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 324:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 325:
            if (v16 != 1)
            {
LABEL_1186:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 554:
            if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
            {
              goto LABEL_1241;
            }

            break;
          case 555:
            if (v16 != 1)
            {
LABEL_1240:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {
LABEL_1241:

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          default:
            return;
        }
      }

      else if (v20 == 8)
      {
        switch(v14)
        {
          case 1:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 10:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 11:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 12:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 13:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 14:
            if (v16 != 1)
            {
LABEL_1104:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 20:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 22:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 23:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 24:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 25:
            if (v16 != 1)
            {
LABEL_1118:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 30:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 31:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 32:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 33:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 34:
            if (v16 != 1)
            {
LABEL_1138:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 53:
            if (v16 != 1)
            {
              goto LABEL_1171;
            }

            break;
          case 54:
            if (v16 != 1)
            {
              goto LABEL_1171;
            }

            break;
          case 55:
            if (v16 != 1)
            {
LABEL_1171:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 60:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 62:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 63:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 64:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 65:
            if (v16 != 1)
            {
LABEL_1150:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 70:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 71:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 72:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 73:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 74:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 80:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 81:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 84:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 85:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 90:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 91:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 94:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 103:
            if (v16 != 1)
            {
              goto LABEL_1082;
            }

            break;
          case 104:
            if (v16 != 1)
            {
              goto LABEL_1082;
            }

            break;
          case 105:
            if (v16 != 1)
            {
LABEL_1082:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 110:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 112:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 113:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 114:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 115:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 123:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 124:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 125:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 300:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 301:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 302:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 303:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 304:
            if (v16 != 1)
            {
LABEL_1225:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 313:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 314:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 315:
            if (v16 != 1)
            {
LABEL_1215:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 323:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 324:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 325:
            if (v16 != 1)
            {
LABEL_1181:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 554:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 555:
            if (v16 != 1)
            {
LABEL_1235:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          default:
            return;
        }
      }
    }

    else if (v20 == 1)
    {
      switch(v14)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 53:
        case 54:
        case 55:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 84:
        case 85:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 90:
        case 91:
        case 94:
        case 554:
        case 555:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 103:
        case 104:
        case 105:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        default:
          return;
      }
    }

    else if (v20 == 2)
    {
      switch(v14)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 53:
        case 54:
        case 55:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 84:
        case 85:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 90:
        case 91:
        case 94:
        case 554:
        case 555:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 103:
        case 104:
        case 105:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        default:
          return;
      }
    }
  }

  else if (v19 == 1)
  {
    if (v20 > 3)
    {
      if (v20 == 4)
      {
        if (v14 <= 637)
        {
          if (v14 != 552 && v14 != 553 && v14 != 637)
          {
            return;
          }
        }

        else if (v14 > 640 && v14 != 641)
        {
          return;
        }

        if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }
      }

      else
      {
        if (v20 != 8)
        {
          return;
        }

        if (v14 <= 637)
        {
          if (v14 != 552 && v14 != 553 && v14 != 637)
          {
            return;
          }
        }

        else if (v14 > 640 && v14 != 641)
        {
          return;
        }

        if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }
      }
    }

    else if (v20 == 1)
    {
      if (v14 <= 637)
      {
        if (v14 != 552 && v14 != 553 && v14 != 637)
        {
          return;
        }
      }

      else if (v14 > 640 && v14 != 641)
      {
        return;
      }

      if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
      {

        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
      }
    }

    else
    {
      if (v20 != 2)
      {
        return;
      }

      if (v14 <= 637)
      {
        if (v14 != 552 && v14 != 553 && v14 != 637)
        {
          return;
        }
      }

      else if (v14 > 640 && v14 != 641)
      {
        return;
      }

      if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
      {

        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
      }
    }
  }

  else if (v20 > 3)
  {
    if (v20 == 4)
    {
      switch(v15)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v126 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v126 == 4)
            {
              v450 = a1;
              v451 = v12;
              v452 = a2;
              v453 = a4;
              v454 = a5;
              v455 = a6;
              v456 = a7;
              v457 = a8;

              goto LABEL_1466;
            }

            if (!v126)
            {
              v127 = a1;
              v128 = v12;
              v129 = a2;
              v130 = a4;
              v131 = a5;
              v132 = a6;
              v133 = a7;
              v134 = a8;

              goto LABEL_441;
            }
          }

          else
          {
            if (v126 == 4)
            {
              goto LABEL_1749;
            }

            if (!v126)
            {
              goto LABEL_1746;
            }
          }

          return;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          v192 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_883;
          }

          if (v192 == 4)
          {
            v536 = a1;
            v537 = v12;
            v538 = a2;
            v539 = a4;
            v540 = a5;
            v541 = a6;
            v542 = a7;
            v543 = a8;

            goto LABEL_1786;
          }

          if (!v192)
          {
            v193 = a1;
            v194 = v12;
            v195 = a2;
            v196 = a4;
            v197 = a5;
            v198 = a6;
            v199 = a7;
            v200 = a8;

            goto LABEL_501;
          }

          return;
        case 26:
        case 250:
          v192 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_883:
            if (v192 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v192)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v192 == 4)
          {
            v536 = a1;
            v537 = v12;
            v538 = a2;
            v539 = a4;
            v540 = a5;
            v541 = a6;
            v542 = a7;
            v543 = a8;

LABEL_1786:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v536, v537, v538, v539, v540, v541, v542, v543, a9, a10, a11, a12);
          }

          else if (!v192)
          {
            v193 = a1;
            v194 = v12;
            v195 = a2;
            v196 = a4;
            v197 = a5;
            v198 = a6;
            v199 = a7;
            v200 = a8;

LABEL_501:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v193, v194, v195, v196, v197, v198, v199, v200, a9, a10, a11, a12);
          }

          return;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          v227 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v227 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v227)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v227 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v227)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 40:
          v501 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v501 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v501)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v501 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v501)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 41:
          v437 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v437 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v437)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v437 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v437)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 42:
          v441 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v441 != 4)
            {
              goto LABEL_1433;
            }

            goto LABEL_1504;
          }

          if (v441 == 4)
          {
            goto LABEL_2066;
          }

          if (!v441)
          {
            v608 = a1;
            v609 = v12;
            v610 = a2;
            v611 = a4;
            v612 = a5;
            v613 = a6;
            v614 = a7;
            v615 = a8;

            goto LABEL_1906;
          }

          return;
        case 43:
          v509 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v509 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v509)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v509 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v509)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 44:
          v441 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v441 == 4)
            {
LABEL_1504:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_1433:
              if (!v441)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v441 == 4)
          {
LABEL_2066:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v441)
          {
            v608 = a1;
            v609 = v12;
            v610 = a2;
            v611 = a4;
            v612 = a5;
            v613 = a6;
            v614 = a7;
            v615 = a8;

LABEL_1906:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v608, v609, v610, v611, v612, v613, v614, v615, a9, a10, a11, a12);
          }

          return;
        case 53:
        case 54:
        case 55:
          v281 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v281 != 4)
            {
              goto LABEL_1646;
            }

            v282 = a1;
            v283 = v12;
            v284 = a2;
            v285 = a4;
            v286 = a5;
            v287 = a6;
            v288 = a7;
            v289 = a8;

            goto LABEL_680;
          }

          if (v281 == 4)
          {
            v640 = a1;
            v641 = v12;
            v642 = a2;
            v643 = a4;
            v644 = a5;
            v645 = a6;
            v646 = a7;
            v647 = a8;

            goto LABEL_1921;
          }

          if (!v281)
          {
            goto LABEL_2030;
          }

          return;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          v204 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v204 != 4)
            {
              goto LABEL_522;
            }

            v490 = a1;
            v491 = v12;
            v492 = a2;
            v493 = a4;
            v494 = a5;
            v495 = a6;
            v496 = a7;
            v497 = a8;

            goto LABEL_1536;
          }

          if (v204 == 4)
          {
            v576 = a1;
            v577 = v12;
            v578 = a2;
            v579 = a4;
            v580 = a5;
            v581 = a6;
            v582 = a7;
            v583 = a8;

            goto LABEL_1813;
          }

          if (!v204)
          {
            goto LABEL_743;
          }

          return;
        case 66:
          v204 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v204 == 4)
            {
              v490 = a1;
              v491 = v12;
              v492 = a2;
              v493 = a4;
              v494 = a5;
              v495 = a6;
              v496 = a7;
              v497 = a8;

LABEL_1536:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v490, v491, v492, v493, v494, v495, v496, v497, a9, a10, a11, a12);
            }

            else
            {
LABEL_522:
              if (!v204)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v204 == 4)
          {
            v576 = a1;
            v577 = v12;
            v578 = a2;
            v579 = a4;
            v580 = a5;
            v581 = a6;
            v582 = a7;
            v583 = a8;

LABEL_1813:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v576, v577, v578, v579, v580, v581, v582, v583, a9, a10, a11, a12);
          }

          else if (!v204)
          {
LABEL_743:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          v53 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v53 == 4)
            {
              goto LABEL_834;
            }

            if (!v53)
            {
              v54 = a1;
              v55 = v12;
              v56 = a2;
              v57 = a4;
              v58 = a5;
              v59 = a6;
              v60 = a7;
              v61 = a8;

              goto LABEL_119;
            }
          }

          else
          {
            if (v53 == 4)
            {
              v316 = a1;
              v317 = v12;
              v318 = a2;
              v319 = a4;
              v320 = a5;
              v321 = a6;
              v322 = a7;
              v323 = a8;

              goto LABEL_905;
            }

            if (!v53)
            {
              goto LABEL_573;
            }
          }

          return;
        case 80:
        case 81:
          v295 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_829;
          }

          if (v295 == 4)
          {
            goto LABEL_1847;
          }

          if (!v295)
          {
LABEL_573:
            v236 = a1;
            v237 = v12;
            v238 = a2;
            v239 = a4;
            v240 = a5;
            v241 = a6;
            v242 = a7;
            v243 = a8;

            goto LABEL_575;
          }

          return;
        case 84:
        case 85:
          v295 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_829:
            if (v295 == 4)
            {
LABEL_834:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v295)
            {
              v54 = a1;
              v55 = v12;
              v56 = a2;
              v57 = a4;
              v58 = a5;
              v59 = a6;
              v60 = a7;
              v61 = a8;

LABEL_119:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
            }
          }

          else if (v295 == 4)
          {
LABEL_1847:
            v316 = a1;
            v317 = v12;
            v318 = a2;
            v319 = a4;
            v320 = a5;
            v321 = a6;
            v322 = a7;
            v323 = a8;

LABEL_905:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v316, v317, v318, v319, v320, v321, v322, v323, a9, a10, a11, a12);
          }

          else if (!v295)
          {
            v236 = a1;
            v237 = v12;
            v238 = a2;
            v239 = a4;
            v240 = a5;
            v241 = a6;
            v242 = a7;
            v243 = a8;

LABEL_575:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v236, v237, v238, v239, v240, v241, v242, v243, a9, a10, a11, a12);
          }

          return;
        case 90:
        case 91:
          v156 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_850;
          }

          if (v156 == 4)
          {
            goto LABEL_1458;
          }

          if (!v156)
          {
            goto LABEL_1455;
          }

          return;
        case 92:
          v505 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v505 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v505)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v505 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v505)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 93:
          v423 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v423 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v423)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v423 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v423)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 94:
        case 586:
        case 587:
        case 628:
        case 629:
          v156 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_850;
          }

          if (v156 == 4)
          {
            goto LABEL_1458;
          }

          if (!v156)
          {
            v157 = a1;
            v158 = v12;
            v159 = a2;
            v160 = a4;
            v161 = a5;
            v162 = a6;
            v163 = a7;
            v164 = a8;

            goto LABEL_477;
          }

          return;
        case 103:
        case 104:
          v297 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1684;
          }

          if (v297 != 4)
          {
            goto LABEL_1680;
          }

          v298 = a1;
          v299 = v12;
          v300 = a2;
          v301 = a4;
          v302 = a5;
          v303 = a6;
          v304 = a7;
          v305 = a8;

          goto LABEL_863;
        case 105:
          v297 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v297 == 4)
            {
              v298 = a1;
              v299 = v12;
              v300 = a2;
              v301 = a4;
              v302 = a5;
              v303 = a6;
              v304 = a7;
              v305 = a8;

LABEL_863:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v298, v299, v300, v301, v302, v303, v304, v305, a9, a10, a11, a12);
            }

            else
            {
LABEL_1680:
              if (!v297)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1684:
            if (v297 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v297)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          v86 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v86 == 4)
            {
              v356 = a1;
              v357 = v12;
              v358 = a2;
              v359 = a4;
              v360 = a5;
              v361 = a6;
              v362 = a7;
              v363 = a8;

              goto LABEL_1258;
            }

            if (v86)
            {
              return;
            }

            v87 = a1;
            v88 = v12;
            v89 = a2;
            v90 = a4;
            v91 = a5;
            v92 = a6;
            v93 = a7;
            v94 = a8;

            goto LABEL_337;
          }

          if (v86 == 4)
          {
            v372 = a1;
            v373 = v12;
            v374 = a2;
            v375 = a4;
            v376 = a5;
            v377 = a6;
            v378 = a7;
            v379 = a8;

            goto LABEL_1264;
          }

          if (v86)
          {
            return;
          }

          goto LABEL_615;
        case 116:
          v433 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1775;
          }

          if (v433 != 4)
          {
            goto LABEL_1361;
          }

          goto LABEL_1772;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          v137 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v137 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v137)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v137 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v137)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 252:
          v281 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v281 == 4)
            {
              v282 = a1;
              v283 = v12;
              v284 = a2;
              v285 = a4;
              v286 = a5;
              v287 = a6;
              v288 = a7;
              v289 = a8;

LABEL_680:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v282, v283, v284, v285, v286, v287, v288, v289, a9, a10, a11, a12);
            }

            else
            {
LABEL_1646:
              if (!v281)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v281 == 4)
          {
            v640 = a1;
            v641 = v12;
            v642 = a2;
            v643 = a4;
            v644 = a5;
            v645 = a6;
            v646 = a7;
            v647 = a8;

LABEL_1921:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v640, v641, v642, v643, v644, v645, v646, v647, a9, a10, a11, a12);
          }

          else if (!v281)
          {
LABEL_2030:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 253:
          v511 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1744;
          }

          if (v511 == 4)
          {
            goto LABEL_1741;
          }

          goto LABEL_1697;
        case 261:
          v511 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v511 == 4)
            {
LABEL_1741:
              v450 = a1;
              v451 = v12;
              v452 = a2;
              v453 = a4;
              v454 = a5;
              v455 = a6;
              v456 = a7;
              v457 = a8;

LABEL_1466:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v450, v451, v452, v453, v454, v455, v456, v457, a9, a10, a11, a12);
            }

            else
            {
LABEL_1697:
              if (!v511)
              {
                v127 = a1;
                v128 = v12;
                v129 = a2;
                v130 = a4;
                v131 = a5;
                v132 = a6;
                v133 = a7;
                v134 = a8;

LABEL_441:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1744:
            if (v511 == 4)
            {
LABEL_1749:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v511)
            {
LABEL_1746:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 552:
        case 553:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
          v98 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v98 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v98)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v98 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v98)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 554:
        case 555:
          v156 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_850:
            if (v156 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v156)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v156 == 4)
          {
LABEL_1458:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v156)
          {
LABEL_1455:
            v157 = a1;
            v158 = v12;
            v159 = a2;
            v160 = a4;
            v161 = a5;
            v162 = a6;
            v163 = a7;
            v164 = a8;

LABEL_477:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v157, v158, v159, v160, v161, v162, v163, v164, a9, a10, a11, a12);
          }

          return;
        case 556:
          v433 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v433 == 4)
            {
LABEL_1772:
              v356 = a1;
              v357 = v12;
              v358 = a2;
              v359 = a4;
              v360 = a5;
              v361 = a6;
              v362 = a7;
              v363 = a8;

LABEL_1258:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v356, v357, v358, v359, v360, v361, v362, v363, a9, a10, a11, a12);
            }

            else
            {
LABEL_1361:
              if (!v433)
              {
                v87 = a1;
                v88 = v12;
                v89 = a2;
                v90 = a4;
                v91 = a5;
                v92 = a6;
                v93 = a7;
                v94 = a8;

LABEL_337:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1775:
            if (v433 == 4)
            {
              v372 = a1;
              v373 = v12;
              v374 = a2;
              v375 = a4;
              v376 = a5;
              v377 = a6;
              v378 = a7;
              v379 = a8;

LABEL_1264:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v372, v373, v374, v375, v376, v377, v378, v379, a9, a10, a11, a12);
            }

            else if (!v433)
            {
LABEL_615:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          break;
        default:
          return;
      }
    }

    else if (v20 == 8)
    {
      switch(v15)
      {
        case 1:
          v205 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v205 != 4)
            {
              goto LABEL_528;
            }

            v404 = a1;
            v405 = v12;
            v406 = a2;
            v407 = a4;
            v408 = a5;
            v409 = a6;
            v410 = a7;
            v411 = a8;

            goto LABEL_1312;
          }

          if (v205 == 4)
          {
            v584 = a1;
            v585 = v12;
            v586 = a2;
            v587 = a4;
            v588 = a5;
            v589 = a6;
            v590 = a7;
            v591 = a8;

            goto LABEL_1816;
          }

          if (!v205)
          {
            goto LABEL_1932;
          }

          return;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v205 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v205 == 4)
            {
              goto LABEL_1310;
            }

LABEL_528:
            if (!v205)
            {
              v206 = a1;
              v207 = v12;
              v208 = a2;
              v209 = a4;
              v210 = a5;
              v211 = a6;
              v212 = a7;
              v213 = a8;

              goto LABEL_531;
            }
          }

          else
          {
            if (v205 == 4)
            {
              v584 = a1;
              v585 = v12;
              v586 = a2;
              v587 = a4;
              v588 = a5;
              v589 = a6;
              v590 = a7;
              v591 = a8;

              goto LABEL_1816;
            }

            if (!v205)
            {
              goto LABEL_1932;
            }
          }

          return;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          v174 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_871;
          }

          if (v174 == 4)
          {
            v528 = a1;
            v529 = v12;
            v530 = a2;
            v531 = a4;
            v532 = a5;
            v533 = a6;
            v534 = a7;
            v535 = a8;

            goto LABEL_1783;
          }

          if (!v174)
          {
            v175 = a1;
            v176 = v12;
            v177 = a2;
            v178 = a4;
            v179 = a5;
            v180 = a6;
            v181 = a7;
            v182 = a8;

            goto LABEL_489;
          }

          return;
        case 26:
        case 250:
          v174 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_871:
            if (v174 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v174)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v174 == 4)
          {
            v528 = a1;
            v529 = v12;
            v530 = a2;
            v531 = a4;
            v532 = a5;
            v533 = a6;
            v534 = a7;
            v535 = a8;

LABEL_1783:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v528, v529, v530, v531, v532, v533, v534, v535, a9, a10, a11, a12);
          }

          else if (!v174)
          {
            v175 = a1;
            v176 = v12;
            v177 = a2;
            v178 = a4;
            v179 = a5;
            v180 = a6;
            v181 = a7;
            v182 = a8;

LABEL_489:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v175, v176, v177, v178, v179, v180, v181, v182, a9, a10, a11, a12);
          }

          return;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          v225 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v225 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v225)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v225 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v225)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 40:
          v499 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v499 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v499)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v499 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v499)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 41:
          v435 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v435 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v435)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v435 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v435)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 42:
          v439 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1487;
          }

          if (v439 != 4)
          {
            goto LABEL_1421;
          }

          goto LABEL_1484;
        case 43:
          v507 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v507 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v507)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v507 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v507)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 44:
          v439 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v439 == 4)
            {
LABEL_1484:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_1421:
              if (!v439)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1487:
            if (v439 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v439)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 53:
          v296 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_1468;
          }

          if (v296 == 4)
          {
            v648 = a1;
            v649 = v12;
            v650 = a2;
            v651 = a4;
            v652 = a5;
            v653 = a6;
            v654 = a7;
            v655 = a8;

            goto LABEL_2071;
          }

          if (!v296)
          {
            goto LABEL_2020;
          }

          return;
        case 54:
        case 55:
          v296 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_1468:
            if (v296 != 4)
            {
              goto LABEL_1634;
            }

            v458 = a1;
            v459 = v12;
            v460 = a2;
            v461 = a4;
            v462 = a5;
            v463 = a6;
            v464 = a7;
            v465 = a8;

            goto LABEL_1471;
          }

          if (v296 == 4)
          {
            v648 = a1;
            v649 = v12;
            v650 = a2;
            v651 = a4;
            v652 = a5;
            v653 = a6;
            v654 = a7;
            v655 = a8;

            goto LABEL_2071;
          }

          if (!v296)
          {
            goto LABEL_2020;
          }

          return;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          v202 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v202 != 4)
            {
              goto LABEL_510;
            }

            v474 = a1;
            v475 = v12;
            v476 = a2;
            v477 = a4;
            v478 = a5;
            v479 = a6;
            v480 = a7;
            v481 = a8;

            goto LABEL_1526;
          }

          if (v202 == 4)
          {
            v560 = a1;
            v561 = v12;
            v562 = a2;
            v563 = a4;
            v564 = a5;
            v565 = a6;
            v566 = a7;
            v567 = a8;

            goto LABEL_1801;
          }

          if (v202)
          {
            return;
          }

          goto LABEL_733;
        case 66:
          v202 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v202 == 4)
            {
              v474 = a1;
              v475 = v12;
              v476 = a2;
              v477 = a4;
              v478 = a5;
              v479 = a6;
              v480 = a7;
              v481 = a8;

LABEL_1526:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v474, v475, v476, v477, v478, v479, v480, v481, a9, a10, a11, a12);
            }

            else
            {
LABEL_510:
              if (!v202)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v202 == 4)
          {
            v560 = a1;
            v561 = v12;
            v562 = a2;
            v563 = a4;
            v564 = a5;
            v565 = a6;
            v566 = a7;
            v567 = a8;

LABEL_1801:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v560, v561, v562, v563, v564, v565, v566, v567, a9, a10, a11, a12);
          }

          else if (!v202)
          {
LABEL_733:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 302:
        case 303:
        case 304:
          v33 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_65;
          }

          if (v33 != 4)
          {
            goto LABEL_619;
          }

          v380 = a1;
          v381 = v12;
          v382 = a2;
          v383 = a4;
          v384 = a5;
          v385 = a6;
          v386 = a7;
          v387 = a8;

          goto LABEL_1267;
        case 80:
        case 81:
          v253 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_811;
          }

          if (v253 == 4)
          {
            goto LABEL_1717;
          }

          if (!v253)
          {
            goto LABEL_1399;
          }

          return;
        case 84:
        case 85:
        case 301:
          v253 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_811:
            if (v253 == 4)
            {
              goto LABEL_816;
            }

            if (!v253)
            {
              v34 = a1;
              v35 = v12;
              v36 = a2;
              v37 = a4;
              v38 = a5;
              v39 = a6;
              v40 = a7;
              v41 = a8;

              goto LABEL_69;
            }
          }

          else
          {
            if (v253 == 4)
            {
              goto LABEL_1717;
            }

            if (!v253)
            {
              goto LABEL_1399;
            }
          }

          return;
        case 90:
        case 91:
          v138 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_838;
          }

          if (v138 == 4)
          {
            goto LABEL_1442;
          }

          if (!v138)
          {
            goto LABEL_1439;
          }

          return;
        case 92:
          v503 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v503 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v503)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v503 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v503)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 93:
          v421 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v421 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v421)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v421 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v421)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 94:
        case 586:
        case 587:
        case 628:
        case 629:
          v138 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_838;
          }

          if (v138 == 4)
          {
            goto LABEL_1442;
          }

          if (v138)
          {
            return;
          }

          v139 = a1;
          v140 = v12;
          v141 = a2;
          v142 = a4;
          v143 = a5;
          v144 = a6;
          v145 = a7;
          v146 = a8;

          goto LABEL_465;
        case 103:
        case 104:
        case 105:
          v291 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v291 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v291)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v291 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v291)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          v77 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v77 == 4)
            {
              v340 = a1;
              v341 = v12;
              v342 = a2;
              v343 = a4;
              v344 = a5;
              v345 = a6;
              v346 = a7;
              v347 = a8;

              goto LABEL_1252;
            }

            if (v77)
            {
              return;
            }

            v78 = a1;
            v79 = v12;
            v80 = a2;
            v81 = a4;
            v82 = a5;
            v83 = a6;
            v84 = a7;
            v85 = a8;

            goto LABEL_331;
          }

          if (v77 == 4)
          {
            v348 = a1;
            v349 = v12;
            v350 = a2;
            v351 = a4;
            v352 = a5;
            v353 = a6;
            v354 = a7;
            v355 = a8;

            goto LABEL_1255;
          }

          if (v77)
          {
            return;
          }

          goto LABEL_610;
        case 116:
          v432 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1757;
          }

          if (v432 != 4)
          {
            goto LABEL_1349;
          }

          goto LABEL_1754;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          v136 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v136 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v136)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v136 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v136)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 252:
          v296 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v296 == 4)
            {
              v458 = a1;
              v459 = v12;
              v460 = a2;
              v461 = a4;
              v462 = a5;
              v463 = a6;
              v464 = a7;
              v465 = a8;

LABEL_1471:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v458, v459, v460, v461, v462, v463, v464, v465, a9, a10, a11, a12);
            }

            else
            {
LABEL_1634:
              if (!v296)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v296 == 4)
          {
            v648 = a1;
            v649 = v12;
            v650 = a2;
            v651 = a4;
            v652 = a5;
            v653 = a6;
            v654 = a7;
            v655 = a8;

LABEL_2071:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v648, v649, v650, v651, v652, v653, v654, v655, a9, a10, a11, a12);
          }

          else if (!v296)
          {
LABEL_2020:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 253:
        case 261:
          v306 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v306 == 4)
            {
LABEL_1310:
              v404 = a1;
              v405 = v12;
              v406 = a2;
              v407 = a4;
              v408 = a5;
              v409 = a6;
              v410 = a7;
              v411 = a8;

LABEL_1312:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v404, v405, v406, v407, v408, v409, v410, v411, a9, a10, a11, a12);
            }

            else if (!v306)
            {
              v206 = a1;
              v207 = v12;
              v208 = a2;
              v209 = a4;
              v210 = a5;
              v211 = a6;
              v212 = a7;
              v213 = a8;

LABEL_531:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v206, v207, v208, v209, v210, v211, v212, v213, a9, a10, a11, a12);
            }
          }

          else if (v306 == 4)
          {
            v584 = a1;
            v585 = v12;
            v586 = a2;
            v587 = a4;
            v588 = a5;
            v589 = a6;
            v590 = a7;
            v591 = a8;

LABEL_1816:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v584, v585, v586, v587, v588, v589, v590, v591, a9, a10, a11, a12);
          }

          else if (!v306)
          {
LABEL_1932:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 300:
          v33 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_65:
            if (v33 == 4)
            {
LABEL_816:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v33)
            {
              v34 = a1;
              v35 = v12;
              v36 = a2;
              v37 = a4;
              v38 = a5;
              v39 = a6;
              v40 = a7;
              v41 = a8;

LABEL_69:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
            }
          }

          else if (v33 == 4)
          {
LABEL_1717:
            v380 = a1;
            v381 = v12;
            v382 = a2;
            v383 = a4;
            v384 = a5;
            v385 = a6;
            v386 = a7;
            v387 = a8;

LABEL_1267:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v380, v381, v382, v383, v384, v385, v386, v387, a9, a10, a11, a12);
          }

          else
          {
LABEL_619:
            if (!v33)
            {
LABEL_1399:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 552:
        case 553:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
          v96 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v96 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v96)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v96 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v96)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 554:
        case 555:
          v138 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_838:
            if (v138 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v138)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v138 == 4)
          {
LABEL_1442:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v138)
          {
LABEL_1439:
            v139 = a1;
            v140 = v12;
            v141 = a2;
            v142 = a4;
            v143 = a5;
            v144 = a6;
            v145 = a7;
            v146 = a8;

LABEL_465:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12);
          }

          return;
        case 556:
          v432 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v432 == 4)
            {
LABEL_1754:
              v340 = a1;
              v341 = v12;
              v342 = a2;
              v343 = a4;
              v344 = a5;
              v345 = a6;
              v346 = a7;
              v347 = a8;

LABEL_1252:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v340, v341, v342, v343, v344, v345, v346, v347, a9, a10, a11, a12);
            }

            else
            {
LABEL_1349:
              if (!v432)
              {
                v78 = a1;
                v79 = v12;
                v80 = a2;
                v81 = a4;
                v82 = a5;
                v83 = a6;
                v84 = a7;
                v85 = a8;

LABEL_331:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1757:
            if (v432 == 4)
            {
              v348 = a1;
              v349 = v12;
              v350 = a2;
              v351 = a4;
              v352 = a5;
              v353 = a6;
              v354 = a7;
              v355 = a8;

LABEL_1255:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v348, v349, v350, v351, v352, v353, v354, v355, a9, a10, a11, a12);
            }

            else if (!v432)
            {
LABEL_610:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          break;
        default:
          return;
      }
    }
  }

  else if (v20 == 1)
  {
    switch(v15)
    {
      case 1:
        v214 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v214 != 4)
          {
            goto LABEL_534;
          }

          v412 = a1;
          v413 = v12;
          v414 = a2;
          v415 = a4;
          v416 = a5;
          v417 = a6;
          v418 = a7;
          v419 = a8;

          goto LABEL_1315;
        }

        if (v214 == 4)
        {
          v592 = a1;
          v593 = v12;
          v594 = a2;
          v595 = a4;
          v596 = a5;
          v597 = a6;
          v598 = a7;
          v599 = a8;

          goto LABEL_1819;
        }

        if (!v214)
        {
          goto LABEL_1937;
        }

        return;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        v214 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v214 == 4)
          {
            goto LABEL_1313;
          }

LABEL_534:
          if (!v214)
          {
            v215 = a1;
            v216 = v12;
            v217 = a2;
            v218 = a4;
            v219 = a5;
            v220 = a6;
            v221 = a7;
            v222 = a8;

            goto LABEL_537;
          }
        }

        else
        {
          if (v214 == 4)
          {
            v592 = a1;
            v593 = v12;
            v594 = a2;
            v595 = a4;
            v596 = a5;
            v597 = a6;
            v598 = a7;
            v599 = a8;

            goto LABEL_1819;
          }

          if (!v214)
          {
            goto LABEL_1937;
          }
        }

        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v183 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_877;
        }

        if (v183 == 4)
        {
          v544 = a1;
          v545 = v12;
          v546 = a2;
          v547 = a4;
          v548 = a5;
          v549 = a6;
          v550 = a7;
          v551 = a8;

          goto LABEL_1789;
        }

        if (!v183)
        {
          v184 = a1;
          v185 = v12;
          v186 = a2;
          v187 = a4;
          v188 = a5;
          v189 = a6;
          v190 = a7;
          v191 = a8;

          goto LABEL_495;
        }

        return;
      case 26:
      case 250:
        v183 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_877:
          if (v183 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v183)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v183 == 4)
        {
          v544 = a1;
          v545 = v12;
          v546 = a2;
          v547 = a4;
          v548 = a5;
          v549 = a6;
          v550 = a7;
          v551 = a8;

LABEL_1789:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v544, v545, v546, v547, v548, v549, v550, v551, a9, a10, a11, a12);
        }

        else if (!v183)
        {
          v184 = a1;
          v185 = v12;
          v186 = a2;
          v187 = a4;
          v188 = a5;
          v189 = a6;
          v190 = a7;
          v191 = a8;

LABEL_495:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v184, v185, v186, v187, v188, v189, v190, v191, a9, a10, a11, a12);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v226 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v226 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v226)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v226 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v226)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 40:
        v500 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v500 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v500)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v500 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v500)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 41:
        v436 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v436 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v436)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v436 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v436)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 42:
        v440 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1497;
        }

        if (v440 != 4)
        {
          goto LABEL_1427;
        }

        goto LABEL_1494;
      case 43:
        v508 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v508 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v508)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v508 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v508)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 44:
        v440 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v440 == 4)
          {
LABEL_1494:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_1427:
            if (!v440)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1497:
          if (v440 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v440)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 53:
      case 54:
      case 55:
        v272 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v272 != 4)
          {
            goto LABEL_1640;
          }

          v273 = a1;
          v274 = v12;
          v275 = a2;
          v276 = a4;
          v277 = a5;
          v278 = a6;
          v279 = a7;
          v280 = a8;

          goto LABEL_675;
        }

        if (v272 == 4)
        {
          v632 = a1;
          v633 = v12;
          v634 = a2;
          v635 = a4;
          v636 = a5;
          v637 = a6;
          v638 = a7;
          v639 = a8;

          goto LABEL_1918;
        }

        if (!v272)
        {
          goto LABEL_2025;
        }

        return;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
        v203 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v203 != 4)
          {
            goto LABEL_516;
          }

          v482 = a1;
          v483 = v12;
          v484 = a2;
          v485 = a4;
          v486 = a5;
          v487 = a6;
          v488 = a7;
          v489 = a8;

          goto LABEL_1531;
        }

        if (v203 == 4)
        {
          v568 = a1;
          v569 = v12;
          v570 = a2;
          v571 = a4;
          v572 = a5;
          v573 = a6;
          v574 = a7;
          v575 = a8;

          goto LABEL_1810;
        }

        if (v203)
        {
          return;
        }

        goto LABEL_738;
      case 66:
        v203 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v203 == 4)
          {
            v482 = a1;
            v483 = v12;
            v484 = a2;
            v485 = a4;
            v486 = a5;
            v487 = a6;
            v488 = a7;
            v489 = a8;

LABEL_1531:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v482, v483, v484, v485, v486, v487, v488, v489, a9, a10, a11, a12);
          }

          else
          {
LABEL_516:
            if (!v203)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v203 == 4)
        {
          v568 = a1;
          v569 = v12;
          v570 = a2;
          v571 = a4;
          v572 = a5;
          v573 = a6;
          v574 = a7;
          v575 = a8;

LABEL_1810:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v568, v569, v570, v571, v572, v573, v574, v575, a9, a10, a11, a12);
        }

        else if (!v203)
        {
LABEL_738:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
        v223 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_820;
        }

        if (v223 == 4)
        {
          goto LABEL_1407;
        }

        if (v223)
        {
          return;
        }

        goto LABEL_1404;
      case 80:
      case 81:
        v223 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          if (v223 == 4)
          {
LABEL_1407:
            v388 = a1;
            v389 = v12;
            v390 = a2;
            v391 = a4;
            v392 = a5;
            v393 = a6;
            v394 = a7;
            v395 = a8;

            goto LABEL_1306;
          }

          if (v223)
          {
            return;
          }

          goto LABEL_1404;
        }

LABEL_820:
        if (v223 == 4)
        {
          goto LABEL_825;
        }

        if (!v223)
        {
          v45 = a1;
          v46 = v12;
          v47 = a2;
          v48 = a4;
          v49 = a5;
          v50 = a6;
          v51 = a7;
          v52 = a8;

          goto LABEL_112;
        }

        return;
      case 84:
      case 85:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        v44 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v44 == 4)
          {
LABEL_825:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v44)
          {
            v45 = a1;
            v46 = v12;
            v47 = a2;
            v48 = a4;
            v49 = a5;
            v50 = a6;
            v51 = a7;
            v52 = a8;

LABEL_112:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
          }
        }

        else if (v44 == 4)
        {
          v388 = a1;
          v389 = v12;
          v390 = a2;
          v391 = a4;
          v392 = a5;
          v393 = a6;
          v394 = a7;
          v395 = a8;

LABEL_1306:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v388, v389, v390, v391, v392, v393, v394, v395, a9, a10, a11, a12);
        }

        else if (!v44)
        {
LABEL_1404:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 90:
      case 91:
        v147 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_844;
        }

        if (v147 == 4)
        {
          goto LABEL_1450;
        }

        if (!v147)
        {
          goto LABEL_1447;
        }

        return;
      case 92:
        v504 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v504 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v504)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v504 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v504)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 93:
        v422 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v422 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v422)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v422 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v422)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 94:
      case 586:
      case 587:
      case 628:
      case 629:
        v147 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_844;
        }

        if (v147 == 4)
        {
          goto LABEL_1450;
        }

        if (v147)
        {
          return;
        }

        v148 = a1;
        v149 = v12;
        v150 = a2;
        v151 = a4;
        v152 = a5;
        v153 = a6;
        v154 = a7;
        v155 = a8;

        goto LABEL_471;
      case 103:
      case 104:
      case 105:
        v292 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v292 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v292)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v292 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v292)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 314:
      case 315:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_409;
        }

        if (v108 == 4)
        {
          v396 = a1;
          v397 = v12;
          v398 = a2;
          v399 = a4;
          v400 = a5;
          v401 = a6;
          v402 = a7;
          v403 = a8;

          goto LABEL_1309;
        }

        if (!v108)
        {
          goto LABEL_1767;
        }

        return;
      case 116:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1765;
        }

        if (v108 != 4)
        {
          goto LABEL_1355;
        }

        goto LABEL_1762;
      case 123:
      case 124:
      case 125:
        v254 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v254 == 4)
          {
            goto LABEL_1555;
          }

          if (!v254)
          {
            v255 = a1;
            v256 = v12;
            v257 = a2;
            v258 = a4;
            v259 = a5;
            v260 = a6;
            v261 = a7;
            v262 = a8;

            goto LABEL_665;
          }
        }

        else
        {
          if (v254 == 4)
          {
            v616 = a1;
            v617 = v12;
            v618 = a2;
            v619 = a4;
            v620 = a5;
            v621 = a6;
            v622 = a7;
            v623 = a8;

            goto LABEL_1912;
          }

          if (!v254)
          {
            goto LABEL_944;
          }
        }

        return;
      case 252:
        v272 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v272 == 4)
          {
            v273 = a1;
            v274 = v12;
            v275 = a2;
            v276 = a4;
            v277 = a5;
            v278 = a6;
            v279 = a7;
            v280 = a8;

LABEL_675:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v273, v274, v275, v276, v277, v278, v279, v280, a9, a10, a11, a12);
          }

          else
          {
LABEL_1640:
            if (!v272)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v272 == 4)
        {
          v632 = a1;
          v633 = v12;
          v634 = a2;
          v635 = a4;
          v636 = a5;
          v637 = a6;
          v638 = a7;
          v639 = a8;

LABEL_1918:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v632, v633, v634, v635, v636, v637, v638, v639, a9, a10, a11, a12);
        }

        else if (!v272)
        {
LABEL_2025:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 253:
      case 261:
        v307 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v307 == 4)
          {
LABEL_1313:
            v412 = a1;
            v413 = v12;
            v414 = a2;
            v415 = a4;
            v416 = a5;
            v417 = a6;
            v418 = a7;
            v419 = a8;

LABEL_1315:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v412, v413, v414, v415, v416, v417, v418, v419, a9, a10, a11, a12);
          }

          else if (!v307)
          {
            v215 = a1;
            v216 = v12;
            v217 = a2;
            v218 = a4;
            v219 = a5;
            v220 = a6;
            v221 = a7;
            v222 = a8;

LABEL_537:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v215, v216, v217, v218, v219, v220, v221, v222, a9, a10, a11, a12);
          }
        }

        else if (v307 == 4)
        {
          v592 = a1;
          v593 = v12;
          v594 = a2;
          v595 = a4;
          v596 = a5;
          v597 = a6;
          v598 = a7;
          v599 = a8;

LABEL_1819:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v592, v593, v594, v595, v596, v597, v598, v599, a9, a10, a11, a12);
        }

        else if (!v307)
        {
LABEL_1937:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 313:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1765;
        }

LABEL_409:
        if (v108 == 4)
        {
          v364 = a1;
          v365 = v12;
          v366 = a2;
          v367 = a4;
          v368 = a5;
          v369 = a6;
          v370 = a7;
          v371 = a8;

          goto LABEL_1261;
        }

        if (v108)
        {
          return;
        }

        v109 = a1;
        v110 = v12;
        v111 = a2;
        v112 = a4;
        v113 = a5;
        v114 = a6;
        v115 = a7;
        v116 = a8;

        goto LABEL_413;
      case 323:
      case 324:
      case 325:
        v293 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v293 == 4)
          {
LABEL_1555:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v293)
          {
            v255 = a1;
            v256 = v12;
            v257 = a2;
            v258 = a4;
            v259 = a5;
            v260 = a6;
            v261 = a7;
            v262 = a8;

LABEL_665:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v255, v256, v257, v258, v259, v260, v261, v262, a9, a10, a11, a12);
          }
        }

        else if (v293 == 4)
        {
          v616 = a1;
          v617 = v12;
          v618 = a2;
          v619 = a4;
          v620 = a5;
          v621 = a6;
          v622 = a7;
          v623 = a8;

LABEL_1912:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v616, v617, v618, v619, v620, v621, v622, v623, a9, a10, a11, a12);
        }

        else if (!v293)
        {
LABEL_944:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 552:
      case 553:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        v97 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v97 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v97)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v97 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v97)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 554:
      case 555:
        v147 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_844:
          if (v147 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v147)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v147 == 4)
        {
LABEL_1450:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v147)
        {
LABEL_1447:
          v148 = a1;
          v149 = v12;
          v150 = a2;
          v151 = a4;
          v152 = a5;
          v153 = a6;
          v154 = a7;
          v155 = a8;

LABEL_471:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v148, v149, v150, v151, v152, v153, v154, v155, a9, a10, a11, a12);
        }

        return;
      case 556:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v108 == 4)
          {
LABEL_1762:
            v364 = a1;
            v365 = v12;
            v366 = a2;
            v367 = a4;
            v368 = a5;
            v369 = a6;
            v370 = a7;
            v371 = a8;

LABEL_1261:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v364, v365, v366, v367, v368, v369, v370, v371, a9, a10, a11, a12);
          }

          else
          {
LABEL_1355:
            if (!v108)
            {
              v109 = a1;
              v110 = v12;
              v111 = a2;
              v112 = a4;
              v113 = a5;
              v114 = a6;
              v115 = a7;
              v116 = a8;

LABEL_413:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1765:
          if (v108 == 4)
          {
            v396 = a1;
            v397 = v12;
            v398 = a2;
            v399 = a4;
            v400 = a5;
            v401 = a6;
            v402 = a7;
            v403 = a8;

LABEL_1309:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v396, v397, v398, v399, v400, v401, v402, v403, a9, a10, a11, a12);
          }

          else if (!v108)
          {
LABEL_1767:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        break;
      default:
        return;
    }
  }

  else if (v20 == 2)
  {
    switch(v15)
    {
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        v117 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v117 == 4)
          {
            v442 = a1;
            v443 = v12;
            v444 = a2;
            v445 = a4;
            v446 = a5;
            v447 = a6;
            v448 = a7;
            v449 = a8;

            goto LABEL_1463;
          }

          if (!v117)
          {
            v118 = a1;
            v119 = v12;
            v120 = a2;
            v121 = a4;
            v122 = a5;
            v123 = a6;
            v124 = a7;
            v125 = a8;

            goto LABEL_435;
          }
        }

        else
        {
          if (v117 == 4)
          {
            goto LABEL_1736;
          }

          if (!v117)
          {
            goto LABEL_1733;
          }
        }

        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v165 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_865;
        }

        if (v165 == 4)
        {
          v520 = a1;
          v521 = v12;
          v522 = a2;
          v523 = a4;
          v524 = a5;
          v525 = a6;
          v526 = a7;
          v527 = a8;

          goto LABEL_1780;
        }

        if (!v165)
        {
          v166 = a1;
          v167 = v12;
          v168 = a2;
          v169 = a4;
          v170 = a5;
          v171 = a6;
          v172 = a7;
          v173 = a8;

          goto LABEL_483;
        }

        return;
      case 26:
      case 250:
        v165 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_865:
          if (v165 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v165)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v165 == 4)
        {
          v520 = a1;
          v521 = v12;
          v522 = a2;
          v523 = a4;
          v524 = a5;
          v525 = a6;
          v526 = a7;
          v527 = a8;

LABEL_1780:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v520, v521, v522, v523, v524, v525, v526, v527, a9, a10, a11, a12);
        }

        else if (!v165)
        {
          v166 = a1;
          v167 = v12;
          v168 = a2;
          v169 = a4;
          v170 = a5;
          v171 = a6;
          v172 = a7;
          v173 = a8;

LABEL_483:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v166, v167, v168, v169, v170, v171, v172, v173, a9, a10, a11, a12);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v224 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v224 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v224)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v224 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v224)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 40:
        v498 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v498 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v498)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v498 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v498)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 41:
        v434 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v434 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v434)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v434 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v434)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 42:
        v438 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1477;
        }

        if (v438 != 4)
        {
          goto LABEL_1415;
        }

        goto LABEL_1474;
      case 43:
        v506 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v506 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v506)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v506 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v506)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 44:
        v438 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v438 == 4)
          {
LABEL_1474:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_1415:
            if (!v438)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1477:
          if (v438 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v438)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 53:
      case 54:
      case 55:
        v263 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v263 != 4)
          {
            goto LABEL_1628;
          }

          v264 = a1;
          v265 = v12;
          v266 = a2;
          v267 = a4;
          v268 = a5;
          v269 = a6;
          v270 = a7;
          v271 = a8;

          goto LABEL_670;
        }

        if (v263 == 4)
        {
          v624 = a1;
          v625 = v12;
          v626 = a2;
          v627 = a4;
          v628 = a5;
          v629 = a6;
          v630 = a7;
          v631 = a8;

          goto LABEL_1915;
        }

        if (!v263)
        {
          goto LABEL_2015;
        }

        return;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
        v201 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v201 != 4)
          {
            goto LABEL_504;
          }

          v466 = a1;
          v467 = v12;
          v468 = a2;
          v469 = a4;
          v470 = a5;
          v471 = a6;
          v472 = a7;
          v473 = a8;

          goto LABEL_1521;
        }

        if (v201 == 4)
        {
          v552 = a1;
          v553 = v12;
          v554 = a2;
          v555 = a4;
          v556 = a5;
          v557 = a6;
          v558 = a7;
          v559 = a8;

          goto LABEL_1798;
        }

        if (v201)
        {
          return;
        }

        goto LABEL_728;
      case 66:
        v201 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v201 == 4)
          {
            v466 = a1;
            v467 = v12;
            v468 = a2;
            v469 = a4;
            v470 = a5;
            v471 = a6;
            v472 = a7;
            v473 = a8;

LABEL_1521:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v466, v467, v468, v469, v470, v471, v472, v473, a9, a10, a11, a12);
          }

          else
          {
LABEL_504:
            if (!v201)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v201 == 4)
        {
          v552 = a1;
          v553 = v12;
          v554 = a2;
          v555 = a4;
          v556 = a5;
          v557 = a6;
          v558 = a7;
          v559 = a8;

LABEL_1798:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v552, v553, v554, v555, v556, v557, v558, v559, a9, a10, a11, a12);
        }

        else if (!v201)
        {
LABEL_728:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        v21 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v21 == 4)
          {
            goto LABEL_807;
          }

          if (!v21)
          {
            v22 = a1;
            v23 = v12;
            v24 = a2;
            v25 = a4;
            v26 = a5;
            v27 = a6;
            v28 = a7;
            v29 = a8;

            goto LABEL_39;
          }

          return;
        }

        if (v21 == 4)
        {
          v308 = a1;
          v309 = v12;
          v310 = a2;
          v311 = a4;
          v312 = a5;
          v313 = a6;
          v314 = a7;
          v315 = a8;

          goto LABEL_902;
        }

        if (v21)
        {
          return;
        }

LABEL_568:
        v228 = a1;
        v229 = v12;
        v230 = a2;
        v231 = a4;
        v232 = a5;
        v233 = a6;
        v234 = a7;
        v235 = a8;

        goto LABEL_570;
      case 80:
      case 81:
        v294 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_802;
        }

        if (v294 == 4)
        {
          goto LABEL_1844;
        }

        if (v294)
        {
          return;
        }

        goto LABEL_568;
      case 84:
      case 85:
        v294 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_802:
          if (v294 == 4)
          {
LABEL_807:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v294)
          {
            v22 = a1;
            v23 = v12;
            v24 = a2;
            v25 = a4;
            v26 = a5;
            v27 = a6;
            v28 = a7;
            v29 = a8;

LABEL_39:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
          }
        }

        else if (v294 == 4)
        {
LABEL_1844:
          v308 = a1;
          v309 = v12;
          v310 = a2;
          v311 = a4;
          v312 = a5;
          v313 = a6;
          v314 = a7;
          v315 = a8;

LABEL_902:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v308, v309, v310, v311, v312, v313, v314, v315, a9, a10, a11, a12);
        }

        else if (!v294)
        {
          v228 = a1;
          v229 = v12;
          v230 = a2;
          v231 = a4;
          v232 = a5;
          v233 = a6;
          v234 = a7;
          v235 = a8;

LABEL_570:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v228, v229, v230, v231, v232, v233, v234, v235, a9, a10, a11, a12);
        }

        return;
      case 90:
      case 91:
      case 554:
      case 555:
        v244 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_603;
        }

        if (v244 == 4)
        {
          goto LABEL_1247;
        }

        if (v244)
        {
          return;
        }

        v245 = a1;
        v246 = v12;
        v247 = a2;
        v248 = a4;
        v249 = a5;
        v250 = a6;
        v251 = a7;
        v252 = a8;

        goto LABEL_601;
      case 92:
        v502 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v502 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v502)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v502 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v502)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 93:
        v420 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v420 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v420)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v420 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v420)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 94:
        v244 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v244 != 4)
          {
            goto LABEL_604;
          }

          v324 = a1;
          v325 = v12;
          v326 = a2;
          v327 = a4;
          v328 = a5;
          v329 = a6;
          v330 = a7;
          v331 = a8;

          goto LABEL_1246;
        }

        if (v244 != 4)
        {
          goto LABEL_598;
        }

        v332 = a1;
        v333 = v12;
        v334 = a2;
        v335 = a4;
        v336 = a5;
        v337 = a6;
        v338 = a7;
        v339 = a8;

        goto LABEL_1249;
      case 103:
      case 104:
      case 105:
        v290 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v290 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v290)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v290 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v290)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 313:
      case 314:
      case 315:
      case 556:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1707;
        }

        if (v99 == 4)
        {
          goto LABEL_1712;
        }

        if (v99)
        {
          return;
        }

        v100 = a1;
        v101 = v12;
        v102 = a2;
        v103 = a4;
        v104 = a5;
        v105 = a6;
        v106 = a7;
        v107 = a8;

        goto LABEL_407;
      case 114:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_1702;
        }

LABEL_1707:
        if (v99 == 4)
        {
          goto LABEL_1875;
        }

        if (!v99)
        {
          goto LABEL_1709;
        }

        return;
      case 115:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_1702:
          if (v99 != 4)
          {
            goto LABEL_1703;
          }

LABEL_1712:
          v424 = a1;
          v425 = v12;
          v426 = a2;
          v427 = a4;
          v428 = a5;
          v429 = a6;
          v430 = a7;
          v431 = a8;

          goto LABEL_1346;
        }

        if (v99 == 4)
        {
          v600 = a1;
          v601 = v12;
          v602 = a2;
          v603 = a4;
          v604 = a5;
          v605 = a6;
          v606 = a7;
          v607 = a8;

          goto LABEL_1877;
        }

        if (v99)
        {
          return;
        }

LABEL_1709:
        v512 = a1;
        v513 = v12;
        v514 = a2;
        v515 = a4;
        v516 = a5;
        v517 = a6;
        v518 = a7;
        v519 = a8;

        goto LABEL_1711;
      case 116:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v99 == 4)
          {
            v424 = a1;
            v425 = v12;
            v426 = a2;
            v427 = a4;
            v428 = a5;
            v429 = a6;
            v430 = a7;
            v431 = a8;

LABEL_1346:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v424, v425, v426, v427, v428, v429, v430, v431, a9, a10, a11, a12);
          }

          else
          {
LABEL_1703:
            if (!v99)
            {
              v100 = a1;
              v101 = v12;
              v102 = a2;
              v103 = a4;
              v104 = a5;
              v105 = a6;
              v106 = a7;
              v107 = a8;

LABEL_407:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12);
            }
          }
        }

        else if (v99 == 4)
        {
LABEL_1875:
          v600 = a1;
          v601 = v12;
          v602 = a2;
          v603 = a4;
          v604 = a5;
          v605 = a6;
          v606 = a7;
          v607 = a8;

LABEL_1877:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v600, v601, v602, v603, v604, v605, v606, v607, a9, a10, a11, a12);
        }

        else if (!v99)
        {
          v512 = a1;
          v513 = v12;
          v514 = a2;
          v515 = a4;
          v516 = a5;
          v517 = a6;
          v518 = a7;
          v519 = a8;

LABEL_1711:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v512, v513, v514, v515, v516, v517, v518, v519, a9, a10, a11, a12);
        }

        break;
      case 123:
      case 124:
      case 125:
      case 323:
      case 324:
      case 325:
        v135 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v135 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v135)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v135 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v135)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 252:
        v263 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v263 == 4)
          {
            v264 = a1;
            v265 = v12;
            v266 = a2;
            v267 = a4;
            v268 = a5;
            v269 = a6;
            v270 = a7;
            v271 = a8;

LABEL_670:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v264, v265, v266, v267, v268, v269, v270, v271, a9, a10, a11, a12);
          }

          else
          {
LABEL_1628:
            if (!v263)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v263 == 4)
        {
          v624 = a1;
          v625 = v12;
          v626 = a2;
          v627 = a4;
          v628 = a5;
          v629 = a6;
          v630 = a7;
          v631 = a8;

LABEL_1915:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v624, v625, v626, v627, v628, v629, v630, v631, a9, a10, a11, a12);
        }

        else if (!v263)
        {
LABEL_2015:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 253:
        v510 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1731;
        }

        if (v510 == 4)
        {
          goto LABEL_1728;
        }

        goto LABEL_1691;
      case 261:
        v510 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v510 == 4)
          {
LABEL_1728:
            v442 = a1;
            v443 = v12;
            v444 = a2;
            v445 = a4;
            v446 = a5;
            v447 = a6;
            v448 = a7;
            v449 = a8;

LABEL_1463:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v442, v443, v444, v445, v446, v447, v448, v449, a9, a10, a11, a12);
          }

          else
          {
LABEL_1691:
            if (!v510)
            {
              v118 = a1;
              v119 = v12;
              v120 = a2;
              v121 = a4;
              v122 = a5;
              v123 = a6;
              v124 = a7;
              v125 = a8;

LABEL_435:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1731:
          if (v510 == 4)
          {
LABEL_1736:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v510)
          {
LABEL_1733:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 552:
      case 553:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        v95 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v95 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v95)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v95 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v95)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 586:
      case 587:
      case 628:
      case 629:
        v244 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_603:
          if (v244 == 4)
          {
            v324 = a1;
            v325 = v12;
            v326 = a2;
            v327 = a4;
            v328 = a5;
            v329 = a6;
            v330 = a7;
            v331 = a8;

LABEL_1246:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(v324, v325, v326, v327, v328, v329, v330, v331, a9, a10, a11, a12);
          }

          else
          {
LABEL_604:
            if (!v244)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v244 == 4)
        {
LABEL_1247:
          v332 = a1;
          v333 = v12;
          v334 = a2;
          v335 = a4;
          v336 = a5;
          v337 = a6;
          v338 = a7;
          v339 = a8;

LABEL_1249:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v332, v333, v334, v335, v336, v337, v338, v339, a9, a10, a11, a12);
        }

        else
        {
LABEL_598:
          if (!v244)
          {
            v245 = a1;
            v246 = v12;
            v247 = a2;
            v248 = a4;
            v249 = a5;
            v250 = a6;
            v251 = a7;
            v252 = a8;

LABEL_601:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(v245, v246, v247, v248, v249, v250, v251, v252, a9, a10, a11, a12);
          }
        }

        return;
      default:
        return;
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::readCompressedRegion3D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, int a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v19 = a17;
  v21 = a15;
  v20 = a16;
  v22 = a13;
  v23 = a11;
  v24 = a12;
  v25 = a10;
  v27 = *(a1 + 57);
  v28 = *(a1 + 32);
  v3095 = a2;
  if (v27 == 3)
  {
    switch(v28)
    {
      case 1:
        if (*(a1 + 396) != 1)
        {
          CompressionCodecConfig = getCompressionCodecConfig(*(a1 + 56));
          v31 = v3095;
          v32 = a17;
          if (a12)
          {
            if (CompressionCodecConfig == 3)
            {
              v33 = a10;
              v34 = a11;
              v35 = a13;
              v36 = a15;
              v37 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v31 + a9 * v36, a4 + a9 * v37, a5, a6, a7, a8, v33, v34, v35, v32);
                v33 = a10;
                v34 = a11;
                v35 = a13;
                v36 = a15;
                v37 = a16;
                v31 = v3095;
                v32 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 10:
        if (*(a1 + 396) != 1)
        {
          v294 = getCompressionCodecConfig(*(a1 + 56));
          v295 = v3095;
          v296 = a17;
          if (a12)
          {
            if (v294 == 3)
            {
              v297 = a10;
              v298 = a11;
              v299 = a13;
              v300 = a15;
              v301 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v295 + a9 * v300, a4 + a9 * v301, a5, a6, a7, a8, v297, v298, v299, v296);
                v297 = a10;
                v298 = a11;
                v299 = a13;
                v300 = a15;
                v301 = a16;
                v295 = v3095;
                v296 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 11:
        if (*(a1 + 396) != 1)
        {
          v286 = getCompressionCodecConfig(*(a1 + 56));
          v287 = v3095;
          v288 = a17;
          if (a12)
          {
            if (v286 == 3)
            {
              v289 = a10;
              v290 = a11;
              v291 = a13;
              v292 = a15;
              v293 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v287 + a9 * v292, a4 + a9 * v293, a5, a6, a7, a8, v289, v290, v291, v288);
                v289 = a10;
                v290 = a11;
                v291 = a13;
                v292 = a15;
                v293 = a16;
                v287 = v3095;
                v288 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 12:
        if (*(a1 + 396) != 1)
        {
          v270 = getCompressionCodecConfig(*(a1 + 56));
          v271 = v3095;
          v272 = a17;
          if (a12)
          {
            if (v270 == 3)
            {
              v273 = a10;
              v274 = a11;
              v275 = a13;
              v276 = a15;
              v277 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v271 + a9 * v276, a4 + a9 * v277, a5, a6, a7, a8, v273, v274, v275, v272);
                v273 = a10;
                v274 = a11;
                v275 = a13;
                v276 = a15;
                v277 = a16;
                v271 = v3095;
                v272 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 13:
        if (*(a1 + 396) != 1)
        {
          v350 = getCompressionCodecConfig(*(a1 + 56));
          v351 = v3095;
          v352 = a17;
          if (a12)
          {
            if (v350 == 3)
            {
              v353 = a10;
              v354 = a11;
              v355 = a13;
              v356 = a15;
              v357 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v351 + a9 * v356, a4 + a9 * v357, a5, a6, a7, a8, v353, v354, v355, v352);
                v353 = a10;
                v354 = a11;
                v355 = a13;
                v356 = a15;
                v357 = a16;
                v351 = v3095;
                v352 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 14:
        if (*(a1 + 396) != 1)
        {
          v278 = getCompressionCodecConfig(*(a1 + 56));
          v279 = v3095;
          v280 = a17;
          if (a12)
          {
            if (v278 == 3)
            {
              v281 = a10;
              v282 = a11;
              v283 = a13;
              v284 = a15;
              v285 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v279 + a9 * v284, a4 + a9 * v285, a5, a6, a7, a8, v281, v282, v283, v280);
                v281 = a10;
                v282 = a11;
                v283 = a13;
                v284 = a15;
                v285 = a16;
                v279 = v3095;
                v280 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 20:
        if (*(a1 + 396) != 1)
        {
          v182 = getCompressionCodecConfig(*(a1 + 56));
          v183 = v3095;
          v184 = a17;
          if (a12)
          {
            if (v182 == 3)
            {
              v185 = a10;
              v186 = a11;
              v187 = a13;
              v188 = a15;
              v189 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v183 + a9 * v188, a4 + a9 * v189, a5, a6, a7, a8, v185, v186, v187, v184);
                v185 = a10;
                v186 = a11;
                v187 = a13;
                v188 = a15;
                v189 = a16;
                v183 = v3095;
                v184 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 22:
        if (*(a1 + 396) != 1)
        {
          v190 = getCompressionCodecConfig(*(a1 + 56));
          v191 = v3095;
          v192 = a17;
          if (a12)
          {
            if (v190 == 3)
            {
              v193 = a10;
              v194 = a11;
              v195 = a13;
              v196 = a15;
              v197 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v191 + a9 * v196, a4 + a9 * v197, a5, a6, a7, a8, v193, v194, v195, v192);
                v193 = a10;
                v194 = a11;
                v195 = a13;
                v196 = a15;
                v197 = a16;
                v191 = v3095;
                v192 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 23:
        if (*(a1 + 396) != 1)
        {
          v246 = getCompressionCodecConfig(*(a1 + 56));
          v247 = v3095;
          v248 = a17;
          if (a12)
          {
            if (v246 == 3)
            {
              v249 = a10;
              v250 = a11;
              v251 = a13;
              v252 = a15;
              v253 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v247 + a9 * v252, a4 + a9 * v253, a5, a6, a7, a8, v249, v250, v251, v248);
                v249 = a10;
                v250 = a11;
                v251 = a13;
                v252 = a15;
                v253 = a16;
                v247 = v3095;
                v248 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 24:
        if (*(a1 + 396) != 1)
        {
          v222 = getCompressionCodecConfig(*(a1 + 56));
          v223 = v3095;
          v224 = a17;
          if (a12)
          {
            if (v222 == 3)
            {
              v225 = a10;
              v226 = a11;
              v227 = a13;
              v228 = a15;
              v229 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v223 + a9 * v228, a4 + a9 * v229, a5, a6, a7, a8, v225, v226, v227, v224);
                v225 = a10;
                v226 = a11;
                v227 = a13;
                v228 = a15;
                v229 = a16;
                v223 = v3095;
                v224 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 25:
        if (*(a1 + 396) != 1)
        {
          v366 = getCompressionCodecConfig(*(a1 + 56));
          v367 = v3095;
          v368 = a17;
          if (a12)
          {
            if (v366 == 3)
            {
              v369 = a10;
              v370 = a11;
              v371 = a13;
              v372 = a15;
              v373 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v367 + a9 * v372, a4 + a9 * v373, a5, a6, a7, a8, v369, v370, v371, v368);
                v369 = a10;
                v370 = a11;
                v371 = a13;
                v372 = a15;
                v373 = a16;
                v367 = v3095;
                v368 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 30:
        if (*(a1 + 396) != 1)
        {
          v150 = getCompressionCodecConfig(*(a1 + 56));
          v151 = v3095;
          v152 = a17;
          if (a12)
          {
            if (v150 == 3)
            {
              v153 = a10;
              v154 = a11;
              v155 = a13;
              v156 = a15;
              v157 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v151 + a9 * v156, a4 + a9 * v157, a5, a6, a7, a8, v153, v154, v155, v152);
                v153 = a10;
                v154 = a11;
                v155 = a13;
                v156 = a15;
                v157 = a16;
                v151 = v3095;
                v152 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 31:
        if (*(a1 + 396) != 1)
        {
          v142 = getCompressionCodecConfig(*(a1 + 56));
          v143 = v3095;
          v144 = a17;
          if (a12)
          {
            if (v142 == 3)
            {
              v145 = a10;
              v146 = a11;
              v147 = a13;
              v148 = a15;
              v149 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v143 + a9 * v148, a4 + a9 * v149, a5, a6, a7, a8, v145, v146, v147, v144);
                v145 = a10;
                v146 = a11;
                v147 = a13;
                v148 = a15;
                v149 = a16;
                v143 = v3095;
                v144 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 32:
        if (*(a1 + 396) != 1)
        {
          v390 = getCompressionCodecConfig(*(a1 + 56));
          v391 = v3095;
          v392 = a17;
          if (a12)
          {
            if (v390 == 3)
            {
              v393 = a10;
              v394 = a11;
              v395 = a13;
              v396 = a15;
              v397 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v391 + a9 * v396, a4 + a9 * v397, a5, a6, a7, a8, v393, v394, v395, v392);
                v393 = a10;
                v394 = a11;
                v395 = a13;
                v396 = a15;
                v397 = a16;
                v391 = v3095;
                v392 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 33:
        if (*(a1 + 396) != 1)
        {
          v254 = getCompressionCodecConfig(*(a1 + 56));
          v255 = v3095;
          v256 = a17;
          if (a12)
          {
            if (v254 == 3)
            {
              v257 = a10;
              v258 = a11;
              v259 = a13;
              v260 = a15;
              v261 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v255 + a9 * v260, a4 + a9 * v261, a5, a6, a7, a8, v257, v258, v259, v256);
                v257 = a10;
                v258 = a11;
                v259 = a13;
                v260 = a15;
                v261 = a16;
                v255 = v3095;
                v256 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 34:
        if (*(a1 + 396) != 1)
        {
          v262 = getCompressionCodecConfig(*(a1 + 56));
          v263 = v3095;
          v264 = a17;
          if (a12)
          {
            if (v262 == 3)
            {
              v265 = a10;
              v266 = a11;
              v267 = a13;
              v268 = a15;
              v269 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v263 + a9 * v268, a4 + a9 * v269, a5, a6, a7, a8, v265, v266, v267, v264);
                v265 = a10;
                v266 = a11;
                v267 = a13;
                v268 = a15;
                v269 = a16;
                v263 = v3095;
                v264 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 53:
        if (*(a1 + 396) != 1)
        {
          v374 = getCompressionCodecConfig(*(a1 + 56));
          v375 = v3095;
          v376 = a17;
          if (a12)
          {
            if (v374 == 3)
            {
              v377 = a10;
              v378 = a11;
              v379 = a13;
              v380 = a15;
              v381 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v375 + a9 * v380, a4 + a9 * v381, a5, a6, a7, a8, v377, v378, v379, v376);
                v377 = a10;
                v378 = a11;
                v379 = a13;
                v380 = a15;
                v381 = a16;
                v375 = v3095;
                v376 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 54:
        if (*(a1 + 396) != 1)
        {
          v326 = getCompressionCodecConfig(*(a1 + 56));
          v327 = v3095;
          v328 = a17;
          if (a12)
          {
            if (v326 == 3)
            {
              v329 = a10;
              v330 = a11;
              v331 = a13;
              v332 = a15;
              v333 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v327 + a9 * v332, a4 + a9 * v333, a5, a6, a7, a8, v329, v330, v331, v328);
                v329 = a10;
                v330 = a11;
                v331 = a13;
                v332 = a15;
                v333 = a16;
                v327 = v3095;
                v328 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 55:
        if (*(a1 + 396) != 1)
        {
          v430 = getCompressionCodecConfig(*(a1 + 56));
          v431 = v3095;
          v432 = a17;
          if (a12)
          {
            if (v430 == 3)
            {
              v433 = a10;
              v434 = a11;
              v435 = a13;
              v436 = a15;
              v437 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v431 + a9 * v436, a4 + a9 * v437, a5, a6, a7, a8, v433, v434, v435, v432);
                v433 = a10;
                v434 = a11;
                v435 = a13;
                v436 = a15;
                v437 = a16;
                v431 = v3095;
                v432 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 60:
        if (*(a1 + 396) != 1)
        {
          v198 = getCompressionCodecConfig(*(a1 + 56));
          v199 = v3095;
          v200 = a17;
          if (a12)
          {
            if (v198 == 3)
            {
              v201 = a10;
              v202 = a11;
              v203 = a13;
              v204 = a15;
              v205 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v199 + a9 * v204, a4 + a9 * v205, a5, a6, a7, a8, v201, v202, v203, v200);
                v201 = a10;
                v202 = a11;
                v203 = a13;
                v204 = a15;
                v205 = a16;
                v199 = v3095;
                v200 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 62:
        if (*(a1 + 396) != 1)
        {
          v406 = getCompressionCodecConfig(*(a1 + 56));
          v407 = v3095;
          v408 = a17;
          if (a12)
          {
            if (v406 == 3)
            {
              v409 = a10;
              v410 = a11;
              v411 = a13;
              v412 = a15;
              v413 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v407 + a9 * v412, a4 + a9 * v413, a5, a6, a7, a8, v409, v410, v411, v408);
                v409 = a10;
                v410 = a11;
                v411 = a13;
                v412 = a15;
                v413 = a16;
                v407 = v3095;
                v408 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 63:
        if (*(a1 + 396) != 1)
        {
          v110 = getCompressionCodecConfig(*(a1 + 56));
          v111 = v3095;
          v112 = a17;
          if (a12)
          {
            if (v110 == 3)
            {
              v113 = a10;
              v114 = a11;
              v115 = a13;
              v116 = a15;
              v117 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v111 + a9 * v116, a4 + a9 * v117, a5, a6, a7, a8, v113, v114, v115, v112);
                v113 = a10;
                v114 = a11;
                v115 = a13;
                v116 = a15;
                v117 = a16;
                v111 = v3095;
                v112 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 64:
        if (*(a1 + 396) != 1)
        {
          v174 = getCompressionCodecConfig(*(a1 + 56));
          v175 = v3095;
          v176 = a17;
          if (a12)
          {
            if (v174 == 3)
            {
              v177 = a10;
              v178 = a11;
              v179 = a13;
              v180 = a15;
              v181 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v175 + a9 * v180, a4 + a9 * v181, a5, a6, a7, a8, v177, v178, v179, v176);
                v177 = a10;
                v178 = a11;
                v179 = a13;
                v180 = a15;
                v181 = a16;
                v175 = v3095;
                v176 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 65:
        if (*(a1 + 396) != 1)
        {
          v126 = getCompressionCodecConfig(*(a1 + 56));
          v127 = v3095;
          v128 = a17;
          if (a12)
          {
            if (v126 == 3)
            {
              v129 = a10;
              v130 = a11;
              v131 = a13;
              v132 = a15;
              v133 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v127 + a9 * v132, a4 + a9 * v133, a5, a6, a7, a8, v129, v130, v131, v128);
                v129 = a10;
                v130 = a11;
                v131 = a13;
                v132 = a15;
                v133 = a16;
                v127 = v3095;
                v128 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 70:
        if (*(a1 + 396) != 1)
        {
          v230 = getCompressionCodecConfig(*(a1 + 56));
          v231 = v3095;
          v232 = a17;
          if (a12)
          {
            if (v230 == 3)
            {
              v233 = a10;
              v234 = a11;
              v235 = a13;
              v236 = a15;
              v237 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v231 + a9 * v236, a4 + a9 * v237, a5, a6, a7, a8, v233, v234, v235, v232);
                v233 = a10;
                v234 = a11;
                v235 = a13;
                v236 = a15;
                v237 = a16;
                v231 = v3095;
                v232 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 71:
        if (*(a1 + 396) != 1)
        {
          v118 = getCompressionCodecConfig(*(a1 + 56));
          v119 = v3095;
          v120 = a17;
          if (a12)
          {
            if (v118 == 3)
            {
              v121 = a10;
              v122 = a11;
              v123 = a13;
              v124 = a15;
              v125 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v119 + a9 * v124, a4 + a9 * v125, a5, a6, a7, a8, v121, v122, v123, v120);
                v121 = a10;
                v122 = a11;
                v123 = a13;
                v124 = a15;
                v125 = a16;
                v119 = v3095;
                v120 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 72:
        if (*(a1 + 396) != 1)
        {
          v454 = getCompressionCodecConfig(*(a1 + 56));
          v455 = v3095;
          v456 = a17;
          if (a12)
          {
            if (v454 == 3)
            {
              v457 = a10;
              v458 = a11;
              v459 = a13;
              v460 = a15;
              v461 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v455 + a9 * v460, a4 + a9 * v461, a5, a6, a7, a8, v457, v458, v459, v456);
                v457 = a10;
                v458 = a11;
                v459 = a13;
                v460 = a15;
                v461 = a16;
                v455 = v3095;
                v456 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 73:
        if (*(a1 + 396) != 1)
        {
          v446 = getCompressionCodecConfig(*(a1 + 56));
          v447 = v3095;
          v448 = a17;
          if (a12)
          {
            if (v446 == 3)
            {
              v449 = a10;
              v450 = a11;
              v451 = a13;
              v452 = a15;
              v453 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v447 + a9 * v452, a4 + a9 * v453, a5, a6, a7, a8, v449, v450, v451, v448);
                v449 = a10;
                v450 = a11;
                v451 = a13;
                v452 = a15;
                v453 = a16;
                v447 = v3095;
                v448 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 74:
        if (*(a1 + 396) != 1)
        {
          v158 = getCompressionCodecConfig(*(a1 + 56));
          v159 = v3095;
          v160 = a17;
          if (a12)
          {
            if (v158 == 3)
            {
              v161 = a10;
              v162 = a11;
              v163 = a13;
              v164 = a15;
              v165 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v159 + a9 * v164, a4 + a9 * v165, a5, a6, a7, a8, v161, v162, v163, v160);
                v161 = a10;
                v162 = a11;
                v163 = a13;
                v164 = a15;
                v165 = a16;
                v159 = v3095;
                v160 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 80:
        if (*(a1 + 396) != 1)
        {
          v206 = getCompressionCodecConfig(*(a1 + 56));
          v207 = v3095;
          v208 = a17;
          if (a12)
          {
            if (v206 == 3)
            {
              v209 = a10;
              v210 = a11;
              v211 = a13;
              v212 = a15;
              v213 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v207 + a9 * v212, a4 + a9 * v213, a5, a6, a7, a8, v209, v210, v211, v208);
                v209 = a10;
                v210 = a11;
                v211 = a13;
                v212 = a15;
                v213 = a16;
                v207 = v3095;
                v208 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 81:
        if (*(a1 + 396) != 1)
        {
          v302 = getCompressionCodecConfig(*(a1 + 56));
          v303 = v3095;
          v304 = a17;
          if (a12)
          {
            if (v302 == 3)
            {
              v305 = a10;
              v306 = a11;
              v307 = a13;
              v308 = a15;
              v309 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v303 + a9 * v308, a4 + a9 * v309, a5, a6, a7, a8, v305, v306, v307, v304);
                v305 = a10;
                v306 = a11;
                v307 = a13;
                v308 = a15;
                v309 = a16;
                v303 = v3095;
                v304 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 84:
        if (*(a1 + 396) != 1)
        {
          v214 = getCompressionCodecConfig(*(a1 + 56));
          v215 = v3095;
          v216 = a17;
          if (a12)
          {
            if (v214 == 3)
            {
              v217 = a10;
              v218 = a11;
              v219 = a13;
              v220 = a15;
              v221 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v215 + a9 * v220, a4 + a9 * v221, a5, a6, a7, a8, v217, v218, v219, v216);
                v217 = a10;
                v218 = a11;
                v219 = a13;
                v220 = a15;
                v221 = a16;
                v215 = v3095;
                v216 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 85:
        if (*(a1 + 396) != 1)
        {
          v478 = getCompressionCodecConfig(*(a1 + 56));
          v479 = v3095;
          v480 = a17;
          if (a12)
          {
            if (v478 == 3)
            {
              v481 = a10;
              v482 = a11;
              v483 = a13;
              v484 = a15;
              v485 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v479 + a9 * v484, a4 + a9 * v485, a5, a6, a7, a8, v481, v482, v483, v480);
                v481 = a10;
                v482 = a11;
                v483 = a13;
                v484 = a15;
                v485 = a16;
                v479 = v3095;
                v480 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 90:
        if (*(a1 + 396) != 1)
        {
          v134 = getCompressionCodecConfig(*(a1 + 56));
          v135 = v3095;
          v136 = a17;
          if (a12)
          {
            if (v134 == 3)
            {
              v137 = a10;
              v138 = a11;
              v139 = a13;
              v140 = a15;
              v141 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v135 + a9 * v140, a4 + a9 * v141, a5, a6, a7, a8, v137, v138, v139, v136);
                v137 = a10;
                v138 = a11;
                v139 = a13;
                v140 = a15;
                v141 = a16;
                v135 = v3095;
                v136 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 91:
        if (*(a1 + 396) != 1)
        {
          v382 = getCompressionCodecConfig(*(a1 + 56));
          v383 = v3095;
          v384 = a17;
          if (a12)
          {
            if (v382 == 3)
            {
              v385 = a10;
              v386 = a11;
              v387 = a13;
              v388 = a15;
              v389 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v383 + a9 * v388, a4 + a9 * v389, a5, a6, a7, a8, v385, v386, v387, v384);
                v385 = a10;
                v386 = a11;
                v387 = a13;
                v388 = a15;
                v389 = a16;
                v383 = v3095;
                v384 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 94:
        if (*(a1 + 396) != 1)
        {
          v470 = getCompressionCodecConfig(*(a1 + 56));
          v471 = v3095;
          v472 = a17;
          if (a12)
          {
            if (v470 == 3)
            {
              v473 = a10;
              v474 = a11;
              v475 = a13;
              v476 = a15;
              v477 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v471 + a9 * v476, a4 + a9 * v477, a5, a6, a7, a8, v473, v474, v475, v472);
                v473 = a10;
                v474 = a11;
                v475 = a13;
                v476 = a15;
                v477 = a16;
                v471 = v3095;
                v472 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 103:
        if (*(a1 + 396) != 1)
        {
          v94 = getCompressionCodecConfig(*(a1 + 56));
          v95 = v3095;
          v96 = a17;
          if (a12)
          {
            if (v94 == 3)
            {
              v97 = a10;
              v98 = a11;
              v99 = a13;
              v100 = a15;
              v101 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v95 + a9 * v100, a4 + a9 * v101, a5, a6, a7, a8, v97, v98, v99, v96);
                v97 = a10;
                v98 = a11;
                v99 = a13;
                v100 = a15;
                v101 = a16;
                v95 = v3095;
                v96 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 104:
        if (*(a1 + 396) != 1)
        {
          v318 = getCompressionCodecConfig(*(a1 + 56));
          v319 = v3095;
          v320 = a17;
          if (a12)
          {
            if (v318 == 3)
            {
              v321 = a10;
              v322 = a11;
              v323 = a13;
              v324 = a15;
              v325 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v319 + a9 * v324, a4 + a9 * v325, a5, a6, a7, a8, v321, v322, v323, v320);
                v321 = a10;
                v322 = a11;
                v323 = a13;
                v324 = a15;
                v325 = a16;
                v319 = v3095;
                v320 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 105:
        if (*(a1 + 396) != 1)
        {
          v86 = getCompressionCodecConfig(*(a1 + 56));
          v87 = v3095;
          v88 = a17;
          if (a12)
          {
            if (v86 == 3)
            {
              v89 = a10;
              v90 = a11;
              v91 = a13;
              v92 = a15;
              v93 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v87 + a9 * v92, a4 + a9 * v93, a5, a6, a7, a8, v89, v90, v91, v88);
                v89 = a10;
                v90 = a11;
                v91 = a13;
                v92 = a15;
                v93 = a16;
                v87 = v3095;
                v88 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 110:
        if (*(a1 + 396) != 1)
        {
          v70 = getCompressionCodecConfig(*(a1 + 56));
          v71 = v3095;
          v72 = a17;
          if (a12)
          {
            if (v70 == 3)
            {
              v73 = a10;
              v74 = a11;
              v75 = a13;
              v76 = a15;
              v77 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v71 + a9 * v76, a4 + a9 * v77, a5, a6, a7, a8, v73, v74, v75, v72);
                v73 = a10;
                v74 = a11;
                v75 = a13;
                v76 = a15;
                v77 = a16;
                v71 = v3095;
                v72 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 112:
        if (*(a1 + 396) != 1)
        {
          v166 = getCompressionCodecConfig(*(a1 + 56));
          v167 = v3095;
          v168 = a17;
          if (a12)
          {
            if (v166 == 3)
            {
              v169 = a10;
              v170 = a11;
              v171 = a13;
              v172 = a15;
              v173 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v167 + a9 * v172, a4 + a9 * v173, a5, a6, a7, a8, v169, v170, v171, v168);
                v169 = a10;
                v170 = a11;
                v171 = a13;
                v172 = a15;
                v173 = a16;
                v167 = v3095;
                v168 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 113:
        if (*(a1 + 396) != 1)
        {
          v238 = getCompressionCodecConfig(*(a1 + 56));
          v239 = v3095;
          v240 = a17;
          if (a12)
          {
            if (v238 == 3)
            {
              v241 = a10;
              v242 = a11;
              v243 = a13;
              v244 = a15;
              v245 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v239 + a9 * v244, a4 + a9 * v245, a5, a6, a7, a8, v241, v242, v243, v240);
                v241 = a10;
                v242 = a11;
                v243 = a13;
                v244 = a15;
                v245 = a16;
                v239 = v3095;
                v240 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 114:
        if (*(a1 + 396) != 1)
        {
          v398 = getCompressionCodecConfig(*(a1 + 56));
          v399 = v3095;
          v400 = a17;
          if (a12)
          {
            if (v398 == 3)
            {
              v401 = a10;
              v402 = a11;
              v403 = a13;
              v404 = a15;
              v405 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v399 + a9 * v404, a4 + a9 * v405, a5, a6, a7, a8, v401, v402, v403, v400);
                v401 = a10;
                v402 = a11;
                v403 = a13;
                v404 = a15;
                v405 = a16;
                v399 = v3095;
                v400 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 115:
        if (*(a1 + 396) != 1)
        {
          v494 = getCompressionCodecConfig(*(a1 + 56));
          v495 = v3095;
          v496 = a17;
          if (a12)
          {
            if (v494 == 3)
            {
              v497 = a10;
              v498 = a11;
              v499 = a13;
              v500 = a15;
              v501 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v495 + a9 * v500, a4 + a9 * v501, a5, a6, a7, a8, v497, v498, v499, v496);
                v497 = a10;
                v498 = a11;
                v499 = a13;
                v500 = a15;
                v501 = a16;
                v495 = v3095;
                v496 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 123:
        if (*(a1 + 396) != 1)
        {
          v102 = getCompressionCodecConfig(*(a1 + 56));
          v103 = v3095;
          v104 = a17;
          if (a12)
          {
            if (v102 == 3)
            {
              v105 = a10;
              v106 = a11;
              v107 = a13;
              v108 = a15;
              v109 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v103 + a9 * v108, a4 + a9 * v109, a5, a6, a7, a8, v105, v106, v107, v104);
                v105 = a10;
                v106 = a11;
                v107 = a13;
                v108 = a15;
                v109 = a16;
                v103 = v3095;
                v104 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 124:
        if (*(a1 + 396) != 1)
        {
          v310 = getCompressionCodecConfig(*(a1 + 56));
          v311 = v3095;
          v312 = a17;
          if (a12)
          {
            if (v310 == 3)
            {
              v313 = a10;
              v314 = a11;
              v315 = a13;
              v316 = a15;
              v317 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v311 + a9 * v316, a4 + a9 * v317, a5, a6, a7, a8, v313, v314, v315, v312);
                v313 = a10;
                v314 = a11;
                v315 = a13;
                v316 = a15;
                v317 = a16;
                v311 = v3095;
                v312 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 125:
        if (*(a1 + 396) != 1)
        {
          v342 = getCompressionCodecConfig(*(a1 + 56));
          v343 = v3095;
          v344 = a17;
          if (a12)
          {
            if (v342 == 3)
            {
              v345 = a10;
              v346 = a11;
              v347 = a13;
              v348 = a15;
              v349 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v343 + a9 * v348, a4 + a9 * v349, a5, a6, a7, a8, v345, v346, v347, v344);
                v345 = a10;
                v346 = a11;
                v347 = a13;
                v348 = a15;
                v349 = a16;
                v343 = v3095;
                v344 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 300:
        if (*(a1 + 396) != 1)
        {
          v486 = getCompressionCodecConfig(*(a1 + 56));
          v487 = v3095;
          v488 = a17;
          if (a12)
          {
            if (v486 == 3)
            {
              v489 = a10;
              v490 = a11;
              v491 = a13;
              v492 = a15;
              v493 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v487 + a9 * v492, a4 + a9 * v493, a5, a6, a7, a8, v489, v490, v491, v488);
                v489 = a10;
                v490 = a11;
                v491 = a13;
                v492 = a15;
                v493 = a16;
                v487 = v3095;
                v488 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 301:
        if (*(a1 + 396) != 1)
        {
          v334 = getCompressionCodecConfig(*(a1 + 56));
          v335 = v3095;
          v336 = a17;
          if (a12)
          {
            if (v334 == 3)
            {
              v337 = a10;
              v338 = a11;
              v339 = a13;
              v340 = a15;
              v341 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v335 + a9 * v340, a4 + a9 * v341, a5, a6, a7, a8, v337, v338, v339, v336);
                v337 = a10;
                v338 = a11;
                v339 = a13;
                v340 = a15;
                v341 = a16;
                v335 = v3095;
                v336 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 302:
        if (*(a1 + 396) != 1)
        {
          v78 = getCompressionCodecConfig(*(a1 + 56));
          v79 = v3095;
          v80 = a17;
          if (a12)
          {
            if (v78 == 3)
            {
              v81 = a10;
              v82 = a11;
              v83 = a13;
              v84 = a15;
              v85 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v79 + a9 * v84, a4 + a9 * v85, a5, a6, a7, a8, v81, v82, v83, v80);
                v81 = a10;
                v82 = a11;
                v83 = a13;
                v84 = a15;
                v85 = a16;
                v79 = v3095;
                v80 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 303:
        if (*(a1 + 396) != 1)
        {
          v46 = getCompressionCodecConfig(*(a1 + 56));
          v47 = v3095;
          v48 = a17;
          if (a12)
          {
            if (v46 == 3)
            {
              v49 = a10;
              v50 = a11;
              v51 = a13;
              v52 = a15;
              v53 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v47 + a9 * v52, a4 + a9 * v53, a5, a6, a7, a8, v49, v50, v51, v48);
                v49 = a10;
                v50 = a11;
                v51 = a13;
                v52 = a15;
                v53 = a16;
                v47 = v3095;
                v48 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 304:
        if (*(a1 + 396) != 1)
        {
          v502 = getCompressionCodecConfig(*(a1 + 56));
          v503 = v3095;
          v504 = a17;
          if (a12)
          {
            if (v502 == 3)
            {
              v505 = a10;
              v506 = a11;
              v507 = a13;
              v508 = a15;
              v509 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v503 + a9 * v508, a4 + a9 * v509, a5, a6, a7, a8, v505, v506, v507, v504);
                v505 = a10;
                v506 = a11;
                v507 = a13;
                v508 = a15;
                v509 = a16;
                v503 = v3095;
                v504 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 313:
        if (*(a1 + 396) != 1)
        {
          v462 = getCompressionCodecConfig(*(a1 + 56));
          v463 = v3095;
          v464 = a17;
          if (a12)
          {
            if (v462 == 3)
            {
              v465 = a10;
              v466 = a11;
              v467 = a13;
              v468 = a15;
              v469 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v463 + a9 * v468, a4 + a9 * v469, a5, a6, a7, a8, v465, v466, v467, v464);
                v465 = a10;
                v466 = a11;
                v467 = a13;
                v468 = a15;
                v469 = a16;
                v463 = v3095;
                v464 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 314:
        if (*(a1 + 396) != 1)
        {
          v62 = getCompressionCodecConfig(*(a1 + 56));
          v63 = v3095;
          v64 = a17;
          if (a12)
          {
            if (v62 == 3)
            {
              v65 = a10;
              v66 = a11;
              v67 = a13;
              v68 = a15;
              v69 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v63 + a9 * v68, a4 + a9 * v69, a5, a6, a7, a8, v65, v66, v67, v64);
                v65 = a10;
                v66 = a11;
                v67 = a13;
                v68 = a15;
                v69 = a16;
                v63 = v3095;
                v64 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 315:
        if (*(a1 + 396) != 1)
        {
          v358 = getCompressionCodecConfig(*(a1 + 56));
          v359 = v3095;
          v360 = a17;
          if (a12)
          {
            if (v358 == 3)
            {
              v361 = a10;
              v362 = a11;
              v363 = a13;
              v364 = a15;
              v365 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v359 + a9 * v364, a4 + a9 * v365, a5, a6, a7, a8, v361, v362, v363, v360);
                v361 = a10;
                v362 = a11;
                v363 = a13;
                v364 = a15;
                v365 = a16;
                v359 = v3095;
                v360 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 323:
        if (*(a1 + 396) != 1)
        {
          v414 = getCompressionCodecConfig(*(a1 + 56));
          v415 = v3095;
          v416 = a17;
          if (a12)
          {
            if (v414 == 3)
            {
              v417 = a10;
              v418 = a11;
              v419 = a13;
              v420 = a15;
              v421 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v415 + a9 * v420, a4 + a9 * v421, a5, a6, a7, a8, v417, v418, v419, v416);
                v417 = a10;
                v418 = a11;
                v419 = a13;
                v420 = a15;
                v421 = a16;
                v415 = v3095;
                v416 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 324:
        if (*(a1 + 396) != 1)
        {
          v54 = getCompressionCodecConfig(*(a1 + 56));
          v55 = v3095;
          v56 = a17;
          if (a12)
          {
            if (v54 == 3)
            {
              v57 = a10;
              v58 = a11;
              v59 = a13;
              v60 = a15;
              v61 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v55 + a9 * v60, a4 + a9 * v61, a5, a6, a7, a8, v57, v58, v59, v56);
                v57 = a10;
                v58 = a11;
                v59 = a13;
                v60 = a15;
                v61 = a16;
                v55 = v3095;
                v56 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 325:
        if (*(a1 + 396) != 1)
        {
          v438 = getCompressionCodecConfig(*(a1 + 56));
          v439 = v3095;
          v440 = a17;
          if (a12)
          {
            if (v438 == 3)
            {
              v441 = a10;
              v442 = a11;
              v443 = a13;
              v444 = a15;
              v445 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v439 + a9 * v444, a4 + a9 * v445, a5, a6, a7, a8, v441, v442, v443, v440);
                v441 = a10;
                v442 = a11;
                v443 = a13;
                v444 = a15;
                v445 = a16;
                v439 = v3095;
                v440 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 554:
        if (*(a1 + 396) != 1)
        {
          v422 = getCompressionCodecConfig(*(a1 + 56));
          v423 = v3095;
          v424 = a17;
          if (a12)
          {
            if (v422 == 3)
            {
              v425 = a10;
              v426 = a11;
              v427 = a13;
              v428 = a15;
              v429 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v423 + a9 * v428, a4 + a9 * v429, a5, a6, a7, a8, v425, v426, v427, v424);
                v425 = a10;
                v426 = a11;
                v427 = a13;
                v428 = a15;
                v429 = a16;
                v423 = v3095;
                v424 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 555:
        if (*(a1 + 396) != 1)
        {
          v510 = getCompressionCodecConfig(*(a1 + 56));
          v511 = v3095;
          v512 = a17;
          if (a12)
          {
            if (v510 == 3)
            {
              v513 = a10;
              v514 = a11;
              v515 = a13;
              v516 = a15;
              v517 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v511 + a9 * v516, a4 + a9 * v517, a5, a6, a7, a8, v513, v514, v515, v512);
                v513 = a10;
                v514 = a11;
                v515 = a13;
                v516 = a15;
                v517 = a16;
                v511 = v3095;
                v512 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      default:
        return;
    }
  }

  else if (v27 == 1)
  {
    if (v28 <= 637)
    {
      if (v28 == 552)
      {
        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            a2 = v3095;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }

      else if (v28 == 553)
      {
        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            a2 = v3095;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        if (v28 != 637 || *(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            a2 = v3095;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }
    }

    else
    {
      if (v28 <= 639)
      {
        if (v28 != 638)
        {
          if (*(a1 + 396) == 1)
          {
            return;
          }

          v29 = *(a1 + 57);
          if (v29 == 1)
          {
            if (a12)
            {
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
                v25 = a10;
                v23 = a11;
                v22 = a13;
                v21 = a15;
                v20 = a16;
                a2 = v3095;
                v19 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }

            return;
          }

          goto LABEL_58;
        }

        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 == 1)
        {
          if (a12)
          {
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
              v25 = a10;
              v23 = a11;
              v22 = a13;
              v21 = a15;
              v20 = a16;
              a2 = v3095;
              v19 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }

          return;
        }

LABEL_58:
        {
          getCompressionCodecConfig(AGXTextureCompressionSettings)::losslessCodecConfig = 1;
        }

        return;
      }

      if (v28 == 640)
      {
        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            a2 = v3095;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        if (v28 != 641 || *(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, a2 + a9 * v21, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            a2 = v3095;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }
    }
  }

  else
  {
    switch(v28)
    {
      case 1:
        v3004 = *(a1 + 396);
        v38 = getCompressionCodecConfig(*(a1 + 56));
        if (v3004 == 1)
        {
          if (v38 == 4)
          {
            v2444 = a17;
            v2445 = v3095;
            if (a12)
            {
              v2446 = a16;
              v2447 = a15;
              v2448 = a13;
              v2449 = a11;
              v2450 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2445 + a9 * v2447, a4 + a9 * v2446, a5, a6, a7, a8, v2450, v2449, v2448, v2444);
                v2450 = a10;
                v2449 = a11;
                v2448 = a13;
                v2447 = a15;
                v2446 = a16;
                v2445 = v3095;
                v2444 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v39 = a17;
            v40 = v3095;
            if (!v38 && a12)
            {
              v41 = a16;
              v42 = a15;
              v43 = a13;
              v44 = a11;
              v45 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v40 + a9 * v42, a4 + a9 * v41, a5, a6, a7, a8, v45, v44, v43, v39);
                v45 = a10;
                v44 = a11;
                v43 = a13;
                v42 = a15;
                v41 = a16;
                v40 = v3095;
                v39 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v38 == 4)
        {
          v2451 = a17;
          v2452 = v3095;
          if (a12)
          {
            v2453 = a16;
            v2454 = a15;
            v2455 = a13;
            v2456 = a11;
            v2457 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2452 + a9 * v2454, a4 + a9 * v2453, a5, a6, a7, a8, v2457, v2456, v2455, v2451);
              v2457 = a10;
              v2456 = a11;
              v2455 = a13;
              v2454 = a15;
              v2453 = a16;
              v2452 = v3095;
              v2451 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1520 = a17;
          v1521 = v3095;
          if (!v38 && a12)
          {
            v1522 = a16;
            v1523 = a15;
            v1524 = a13;
            v1525 = a11;
            v1526 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1521 + a9 * v1523, a4 + a9 * v1522, a5, a6, a7, a8, v1526, v1525, v1524, v1520);
              v1526 = a10;
              v1525 = a11;
              v1524 = a13;
              v1523 = a15;
              v1522 = a16;
              v1521 = v3095;
              v1520 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 10:
        v3054 = *(a1 + 396);
        v910 = getCompressionCodecConfig(*(a1 + 56));
        if (v3054 == 1)
        {
          if (v910 == 4)
          {
            v2500 = a17;
            v2501 = v3095;
            if (a12)
            {
              v2502 = a16;
              v2503 = a15;
              v2504 = a13;
              v2505 = a11;
              v2506 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2501 + a9 * v2503, a4 + a9 * v2502, a5, a6, a7, a8, v2506, v2505, v2504, v2500);
                v2506 = a10;
                v2505 = a11;
                v2504 = a13;
                v2503 = a15;
                v2502 = a16;
                v2501 = v3095;
                v2500 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v911 = a17;
            v912 = v3095;
            if (!v910 && a12)
            {
              v913 = a16;
              v914 = a15;
              v915 = a13;
              v916 = a11;
              v917 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v912 + a9 * v914, a4 + a9 * v913, a5, a6, a7, a8, v917, v916, v915, v911);
                v917 = a10;
                v916 = a11;
                v915 = a13;
                v914 = a15;
                v913 = a16;
                v912 = v3095;
                v911 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v910 == 4)
        {
          v2507 = a17;
          v2508 = v3095;
          if (a12)
          {
            v2509 = a16;
            v2510 = a15;
            v2511 = a13;
            v2512 = a11;
            v2513 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2508 + a9 * v2510, a4 + a9 * v2509, a5, a6, a7, a8, v2513, v2512, v2511, v2507);
              v2513 = a10;
              v2512 = a11;
              v2511 = a13;
              v2510 = a15;
              v2509 = a16;
              v2508 = v3095;
              v2507 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1548 = a17;
          v1549 = v3095;
          if (!v910 && a12)
          {
            v1550 = a16;
            v1551 = a15;
            v1552 = a13;
            v1553 = a11;
            v1554 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1549 + a9 * v1551, a4 + a9 * v1550, a5, a6, a7, a8, v1554, v1553, v1552, v1548);
              v1554 = a10;
              v1553 = a11;
              v1552 = a13;
              v1551 = a15;
              v1550 = a16;
              v1549 = v3095;
              v1548 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 11:
        v3055 = *(a1 + 396);
        v918 = getCompressionCodecConfig(*(a1 + 56));
        if (v3055 == 1)
        {
          if (v918 == 4)
          {
            v2514 = a17;
            v2515 = v3095;
            if (a12)
            {
              v2516 = a16;
              v2517 = a15;
              v2518 = a13;
              v2519 = a11;
              v2520 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2515 + a9 * v2517, a4 + a9 * v2516, a5, a6, a7, a8, v2520, v2519, v2518, v2514);
                v2520 = a10;
                v2519 = a11;
                v2518 = a13;
                v2517 = a15;
                v2516 = a16;
                v2515 = v3095;
                v2514 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v919 = a17;
            v920 = v3095;
            if (!v918 && a12)
            {
              v921 = a16;
              v922 = a15;
              v923 = a13;
              v924 = a11;
              v925 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v920 + a9 * v922, a4 + a9 * v921, a5, a6, a7, a8, v925, v924, v923, v919);
                v925 = a10;
                v924 = a11;
                v923 = a13;
                v922 = a15;
                v921 = a16;
                v920 = v3095;
                v919 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v918 == 4)
        {
          v2521 = a17;
          v2522 = v3095;
          if (a12)
          {
            v2523 = a16;
            v2524 = a15;
            v2525 = a13;
            v2526 = a11;
            v2527 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2522 + a9 * v2524, a4 + a9 * v2523, a5, a6, a7, a8, v2527, v2526, v2525, v2521);
              v2527 = a10;
              v2526 = a11;
              v2525 = a13;
              v2524 = a15;
              v2523 = a16;
              v2522 = v3095;
              v2521 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1555 = a17;
          v1556 = v3095;
          if (!v918 && a12)
          {
            v1557 = a16;
            v1558 = a15;
            v1559 = a13;
            v1560 = a11;
            v1561 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1556 + a9 * v1558, a4 + a9 * v1557, a5, a6, a7, a8, v1561, v1560, v1559, v1555);
              v1561 = a10;
              v1560 = a11;
              v1559 = a13;
              v1558 = a15;
              v1557 = a16;
              v1556 = v3095;
              v1555 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 12:
        v3044 = *(a1 + 396);
        v830 = getCompressionCodecConfig(*(a1 + 56));
        if (v3044 == 1)
        {
          if (v830 == 4)
          {
            v2346 = a17;
            v2347 = v3095;
            if (a12)
            {
              v2348 = a16;
              v2349 = a15;
              v2350 = a13;
              v2351 = a11;
              v2352 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2347 + a9 * v2349, a4 + a9 * v2348, a5, a6, a7, a8, v2352, v2351, v2350, v2346);
                v2352 = a10;
                v2351 = a11;
                v2350 = a13;
                v2349 = a15;
                v2348 = a16;
                v2347 = v3095;
                v2346 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v831 = a17;
            v832 = v3095;
            if (!v830 && a12)
            {
              v833 = a16;
              v834 = a15;
              v835 = a13;
              v836 = a11;
              v837 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v832 + a9 * v834, a4 + a9 * v833, a5, a6, a7, a8, v837, v836, v835, v831);
                v837 = a10;
                v836 = a11;
                v835 = a13;
                v834 = a15;
                v833 = a16;
                v832 = v3095;
                v831 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v830 == 4)
        {
          v2353 = a17;
          v2354 = v3095;
          if (a12)
          {
            v2355 = a16;
            v2356 = a15;
            v2357 = a13;
            v2358 = a11;
            v2359 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2354 + a9 * v2356, a4 + a9 * v2355, a5, a6, a7, a8, v2359, v2358, v2357, v2353);
              v2359 = a10;
              v2358 = a11;
              v2357 = a13;
              v2356 = a15;
              v2355 = a16;
              v2354 = v3095;
              v2353 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1471 = a17;
          v1472 = v3095;
          if (!v830 && a12)
          {
            v1473 = a16;
            v1474 = a15;
            v1475 = a13;
            v1476 = a11;
            v1477 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1472 + a9 * v1474, a4 + a9 * v1473, a5, a6, a7, a8, v1477, v1476, v1475, v1471);
              v1477 = a10;
              v1476 = a11;
              v1475 = a13;
              v1474 = a15;
              v1473 = a16;
              v1472 = v3095;
              v1471 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 13:
        v3048 = *(a1 + 396);
        v862 = getCompressionCodecConfig(*(a1 + 56));
        if (v3048 == 1)
        {
          if (v862 == 4)
          {
            v2402 = a17;
            v2403 = v3095;
            if (a12)
            {
              v2404 = a16;
              v2405 = a15;
              v2406 = a13;
              v2407 = a11;
              v2408 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2403 + a9 * v2405, a4 + a9 * v2404, a5, a6, a7, a8, v2408, v2407, v2406, v2402);
                v2408 = a10;
                v2407 = a11;
                v2406 = a13;
                v2405 = a15;
                v2404 = a16;
                v2403 = v3095;
                v2402 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v863 = a17;
            v864 = v3095;
            if (!v862 && a12)
            {
              v865 = a16;
              v866 = a15;
              v867 = a13;
              v868 = a11;
              v869 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v864 + a9 * v866, a4 + a9 * v865, a5, a6, a7, a8, v869, v868, v867, v863);
                v869 = a10;
                v868 = a11;
                v867 = a13;
                v866 = a15;
                v865 = a16;
                v864 = v3095;
                v863 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v862 == 4)
        {
          v2409 = a17;
          v2410 = v3095;
          if (a12)
          {
            v2411 = a16;
            v2412 = a15;
            v2413 = a13;
            v2414 = a11;
            v2415 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2410 + a9 * v2412, a4 + a9 * v2411, a5, a6, a7, a8, v2415, v2414, v2413, v2409);
              v2415 = a10;
              v2414 = a11;
              v2413 = a13;
              v2412 = a15;
              v2411 = a16;
              v2410 = v3095;
              v2409 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1499 = a17;
          v1500 = v3095;
          if (!v862 && a12)
          {
            v1501 = a16;
            v1502 = a15;
            v1503 = a13;
            v1504 = a11;
            v1505 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1500 + a9 * v1502, a4 + a9 * v1501, a5, a6, a7, a8, v1505, v1504, v1503, v1499);
              v1505 = a10;
              v1504 = a11;
              v1503 = a13;
              v1502 = a15;
              v1501 = a16;
              v1500 = v3095;
              v1499 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 14:
        v3041 = *(a1 + 396);
        v806 = getCompressionCodecConfig(*(a1 + 56));
        if (v3041 == 1)
        {
          if (v806 == 4)
          {
            v2304 = a17;
            v2305 = v3095;
            if (a12)
            {
              v2306 = a16;
              v2307 = a15;
              v2308 = a13;
              v2309 = a11;
              v2310 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2305 + a9 * v2307, a4 + a9 * v2306, a5, a6, a7, a8, v2310, v2309, v2308, v2304);
                v2310 = a10;
                v2309 = a11;
                v2308 = a13;
                v2307 = a15;
                v2306 = a16;
                v2305 = v3095;
                v2304 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v807 = a17;
            v808 = v3095;
            if (!v806 && a12)
            {
              v809 = a16;
              v810 = a15;
              v811 = a13;
              v812 = a11;
              v813 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v808 + a9 * v810, a4 + a9 * v809, a5, a6, a7, a8, v813, v812, v811, v807);
                v813 = a10;
                v812 = a11;
                v811 = a13;
                v810 = a15;
                v809 = a16;
                v808 = v3095;
                v807 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v806 == 4)
        {
          v2311 = a17;
          v2312 = v3095;
          if (a12)
          {
            v2313 = a16;
            v2314 = a15;
            v2315 = a13;
            v2316 = a11;
            v2317 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2312 + a9 * v2314, a4 + a9 * v2313, a5, a6, a7, a8, v2317, v2316, v2315, v2311);
              v2317 = a10;
              v2316 = a11;
              v2315 = a13;
              v2314 = a15;
              v2313 = a16;
              v2312 = v3095;
              v2311 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1450 = a17;
          v1451 = v3095;
          if (!v806 && a12)
          {
            v1452 = a16;
            v1453 = a15;
            v1454 = a13;
            v1455 = a11;
            v1456 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1451 + a9 * v1453, a4 + a9 * v1452, a5, a6, a7, a8, v1456, v1455, v1454, v1450);
              v1456 = a10;
              v1455 = a11;
              v1454 = a13;
              v1453 = a15;
              v1452 = a16;
              v1451 = v3095;
              v1450 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 20:
        v3042 = *(a1 + 396);
        v814 = getCompressionCodecConfig(*(a1 + 56));
        if (v3042 == 1)
        {
          if (v814 == 4)
          {
            v2318 = a17;
            v2319 = v3095;
            if (a12)
            {
              v2320 = a16;
              v2321 = a15;
              v2322 = a13;
              v2323 = a11;
              v2324 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2319 + a9 * v2321, a4 + a9 * v2320, a5, a6, a7, a8, v2324, v2323, v2322, v2318);
                v2324 = a10;
                v2323 = a11;
                v2322 = a13;
                v2321 = a15;
                v2320 = a16;
                v2319 = v3095;
                v2318 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v815 = a17;
            v816 = v3095;
            if (!v814 && a12)
            {
              v817 = a16;
              v818 = a15;
              v819 = a13;
              v820 = a11;
              v821 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v816 + a9 * v818, a4 + a9 * v817, a5, a6, a7, a8, v821, v820, v819, v815);
                v821 = a10;
                v820 = a11;
                v819 = a13;
                v818 = a15;
                v817 = a16;
                v816 = v3095;
                v815 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v814 == 4)
        {
          v2325 = a17;
          v2326 = v3095;
          if (a12)
          {
            v2327 = a16;
            v2328 = a15;
            v2329 = a13;
            v2330 = a11;
            v2331 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2326 + a9 * v2328, a4 + a9 * v2327, a5, a6, a7, a8, v2331, v2330, v2329, v2325);
              v2331 = a10;
              v2330 = a11;
              v2329 = a13;
              v2328 = a15;
              v2327 = a16;
              v2326 = v3095;
              v2325 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1457 = a17;
          v1458 = v3095;
          if (!v814 && a12)
          {
            v1459 = a16;
            v1460 = a15;
            v1461 = a13;
            v1462 = a11;
            v1463 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1458 + a9 * v1460, a4 + a9 * v1459, a5, a6, a7, a8, v1463, v1462, v1461, v1457);
              v1463 = a10;
              v1462 = a11;
              v1461 = a13;
              v1460 = a15;
              v1459 = a16;
              v1458 = v3095;
              v1457 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 22:
        v3036 = *(a1 + 396);
        v766 = getCompressionCodecConfig(*(a1 + 56));
        if (v3036 == 1)
        {
          if (v766 == 4)
          {
            v2234 = a17;
            v2235 = v3095;
            if (a12)
            {
              v2236 = a16;
              v2237 = a15;
              v2238 = a13;
              v2239 = a11;
              v2240 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2235 + a9 * v2237, a4 + a9 * v2236, a5, a6, a7, a8, v2240, v2239, v2238, v2234);
                v2240 = a10;
                v2239 = a11;
                v2238 = a13;
                v2237 = a15;
                v2236 = a16;
                v2235 = v3095;
                v2234 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v767 = a17;
            v768 = v3095;
            if (!v766 && a12)
            {
              v769 = a16;
              v770 = a15;
              v771 = a13;
              v772 = a11;
              v773 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v768 + a9 * v770, a4 + a9 * v769, a5, a6, a7, a8, v773, v772, v771, v767);
                v773 = a10;
                v772 = a11;
                v771 = a13;
                v770 = a15;
                v769 = a16;
                v768 = v3095;
                v767 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v766 == 4)
        {
          v2241 = a17;
          v2242 = v3095;
          if (a12)
          {
            v2243 = a16;
            v2244 = a15;
            v2245 = a13;
            v2246 = a11;
            v2247 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2242 + a9 * v2244, a4 + a9 * v2243, a5, a6, a7, a8, v2247, v2246, v2245, v2241);
              v2247 = a10;
              v2246 = a11;
              v2245 = a13;
              v2244 = a15;
              v2243 = a16;
              v2242 = v3095;
              v2241 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1415 = a17;
          v1416 = v3095;
          if (!v766 && a12)
          {
            v1417 = a16;
            v1418 = a15;
            v1419 = a13;
            v1420 = a11;
            v1421 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1416 + a9 * v1418, a4 + a9 * v1417, a5, a6, a7, a8, v1421, v1420, v1419, v1415);
              v1421 = a10;
              v1420 = a11;
              v1419 = a13;
              v1418 = a15;
              v1417 = a16;
              v1416 = v3095;
              v1415 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 23:
        v3040 = *(a1 + 396);
        v798 = getCompressionCodecConfig(*(a1 + 56));
        if (v3040 == 1)
        {
          if (v798 == 4)
          {
            v2290 = a17;
            v2291 = v3095;
            if (a12)
            {
              v2292 = a16;
              v2293 = a15;
              v2294 = a13;
              v2295 = a11;
              v2296 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2291 + a9 * v2293, a4 + a9 * v2292, a5, a6, a7, a8, v2296, v2295, v2294, v2290);
                v2296 = a10;
                v2295 = a11;
                v2294 = a13;
                v2293 = a15;
                v2292 = a16;
                v2291 = v3095;
                v2290 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v799 = a17;
            v800 = v3095;
            if (!v798 && a12)
            {
              v801 = a16;
              v802 = a15;
              v803 = a13;
              v804 = a11;
              v805 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v800 + a9 * v802, a4 + a9 * v801, a5, a6, a7, a8, v805, v804, v803, v799);
                v805 = a10;
                v804 = a11;
                v803 = a13;
                v802 = a15;
                v801 = a16;
                v800 = v3095;
                v799 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v798 == 4)
        {
          v2297 = a17;
          v2298 = v3095;
          if (a12)
          {
            v2299 = a16;
            v2300 = a15;
            v2301 = a13;
            v2302 = a11;
            v2303 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2298 + a9 * v2300, a4 + a9 * v2299, a5, a6, a7, a8, v2303, v2302, v2301, v2297);
              v2303 = a10;
              v2302 = a11;
              v2301 = a13;
              v2300 = a15;
              v2299 = a16;
              v2298 = v3095;
              v2297 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1443 = a17;
          v1444 = v3095;
          if (!v798 && a12)
          {
            v1445 = a16;
            v1446 = a15;
            v1447 = a13;
            v1448 = a11;
            v1449 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1444 + a9 * v1446, a4 + a9 * v1445, a5, a6, a7, a8, v1449, v1448, v1447, v1443);
              v1449 = a10;
              v1448 = a11;
              v1447 = a13;
              v1446 = a15;
              v1445 = a16;
              v1444 = v3095;
              v1443 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 24:
        v3029 = *(a1 + 396);
        v710 = getCompressionCodecConfig(*(a1 + 56));
        if (v3029 == 1)
        {
          if (v710 == 4)
          {
            v2136 = a17;
            v2137 = v3095;
            if (a12)
            {
              v2138 = a16;
              v2139 = a15;
              v2140 = a13;
              v2141 = a11;
              v2142 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2137 + a9 * v2139, a4 + a9 * v2138, a5, a6, a7, a8, v2142, v2141, v2140, v2136);
                v2142 = a10;
                v2141 = a11;
                v2140 = a13;
                v2139 = a15;
                v2138 = a16;
                v2137 = v3095;
                v2136 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v711 = a17;
            v712 = v3095;
            if (!v710 && a12)
            {
              v713 = a16;
              v714 = a15;
              v715 = a13;
              v716 = a11;
              v717 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v712 + a9 * v714, a4 + a9 * v713, a5, a6, a7, a8, v717, v716, v715, v711);
                v717 = a10;
                v716 = a11;
                v715 = a13;
                v714 = a15;
                v713 = a16;
                v712 = v3095;
                v711 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v710 == 4)
        {
          v2143 = a17;
          v2144 = v3095;
          if (a12)
          {
            v2145 = a16;
            v2146 = a15;
            v2147 = a13;
            v2148 = a11;
            v2149 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2144 + a9 * v2146, a4 + a9 * v2145, a5, a6, a7, a8, v2149, v2148, v2147, v2143);
              v2149 = a10;
              v2148 = a11;
              v2147 = a13;
              v2146 = a15;
              v2145 = a16;
              v2144 = v3095;
              v2143 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1366 = a17;
          v1367 = v3095;
          if (!v710 && a12)
          {
            v1368 = a16;
            v1369 = a15;
            v1370 = a13;
            v1371 = a11;
            v1372 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1367 + a9 * v1369, a4 + a9 * v1368, a5, a6, a7, a8, v1372, v1371, v1370, v1366);
              v1372 = a10;
              v1371 = a11;
              v1370 = a13;
              v1369 = a15;
              v1368 = a16;
              v1367 = v3095;
              v1366 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 25:
        v3038 = *(a1 + 396);
        v782 = getCompressionCodecConfig(*(a1 + 56));
        if (v3038 == 1)
        {
          if (v782 == 4)
          {
            v2262 = a17;
            v2263 = v3095;
            if (a12)
            {
              v2264 = a16;
              v2265 = a15;
              v2266 = a13;
              v2267 = a11;
              v2268 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2263 + a9 * v2265, a4 + a9 * v2264, a5, a6, a7, a8, v2268, v2267, v2266, v2262);
                v2268 = a10;
                v2267 = a11;
                v2266 = a13;
                v2265 = a15;
                v2264 = a16;
                v2263 = v3095;
                v2262 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v783 = a17;
            v784 = v3095;
            if (!v782 && a12)
            {
              v785 = a16;
              v786 = a15;
              v787 = a13;
              v788 = a11;
              v789 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v784 + a9 * v786, a4 + a9 * v785, a5, a6, a7, a8, v789, v788, v787, v783);
                v789 = a10;
                v788 = a11;
                v787 = a13;
                v786 = a15;
                v785 = a16;
                v784 = v3095;
                v783 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v782 == 4)
        {
          v2269 = a17;
          v2270 = v3095;
          if (a12)
          {
            v2271 = a16;
            v2272 = a15;
            v2273 = a13;
            v2274 = a11;
            v2275 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2270 + a9 * v2272, a4 + a9 * v2271, a5, a6, a7, a8, v2275, v2274, v2273, v2269);
              v2275 = a10;
              v2274 = a11;
              v2273 = a13;
              v2272 = a15;
              v2271 = a16;
              v2270 = v3095;
              v2269 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1429 = a17;
          v1430 = v3095;
          if (!v782 && a12)
          {
            v1431 = a16;
            v1432 = a15;
            v1433 = a13;
            v1434 = a11;
            v1435 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1430 + a9 * v1432, a4 + a9 * v1431, a5, a6, a7, a8, v1435, v1434, v1433, v1429);
              v1435 = a10;
              v1434 = a11;
              v1433 = a13;
              v1432 = a15;
              v1431 = a16;
              v1430 = v3095;
              v1429 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 26:
        v3051 = *(a1 + 396);
        v886 = getCompressionCodecConfig(*(a1 + 56));
        if (v3051 == 1)
        {
          if (v886 == 4)
          {
            v2458 = a17;
            v2459 = v3095;
            if (a12)
            {
              v2460 = a16;
              v2461 = a15;
              v2462 = a13;
              v2463 = a11;
              v2464 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2459 + a9 * v2461, a4 + a9 * v2460, a5, a6, a7, a8, v2464, v2463, v2462, v2458);
                v2464 = a10;
                v2463 = a11;
                v2462 = a13;
                v2461 = a15;
                v2460 = a16;
                v2459 = v3095;
                v2458 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v887 = a17;
            v888 = v3095;
            if (!v886 && a12)
            {
              v889 = a16;
              v890 = a15;
              v891 = a13;
              v892 = a11;
              v893 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v888 + a9 * v890, a4 + a9 * v889, a5, a6, a7, a8, v893, v892, v891, v887);
                v893 = a10;
                v892 = a11;
                v891 = a13;
                v890 = a15;
                v889 = a16;
                v888 = v3095;
                v887 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v886 == 4)
        {
          v2465 = a17;
          v2466 = v3095;
          if (a12)
          {
            v2467 = a16;
            v2468 = a15;
            v2469 = a13;
            v2470 = a11;
            v2471 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2466 + a9 * v2468, a4 + a9 * v2467, a5, a6, a7, a8, v2471, v2470, v2469, v2465);
              v2471 = a10;
              v2470 = a11;
              v2469 = a13;
              v2468 = a15;
              v2467 = a16;
              v2466 = v3095;
              v2465 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1527 = a17;
          v1528 = v3095;
          if (!v886 && a12)
          {
            v1529 = a16;
            v1530 = a15;
            v1531 = a13;
            v1532 = a11;
            v1533 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1528 + a9 * v1530, a4 + a9 * v1529, a5, a6, a7, a8, v1533, v1532, v1531, v1527);
              v1533 = a10;
              v1532 = a11;
              v1531 = a13;
              v1530 = a15;
              v1529 = a16;
              v1528 = v3095;
              v1527 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 30:
        v3049 = *(a1 + 396);
        v870 = getCompressionCodecConfig(*(a1 + 56));
        if (v3049 == 1)
        {
          if (v870 == 4)
          {
            v2416 = a17;
            v2417 = v3095;
            if (a12)
            {
              v2418 = a16;
              v2419 = a15;
              v2420 = a13;
              v2421 = a11;
              v2422 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2417 + a9 * v2419, a4 + a9 * v2418, a5, a6, a7, a8, v2422, v2421, v2420, v2416);
                v2422 = a10;
                v2421 = a11;
                v2420 = a13;
                v2419 = a15;
                v2418 = a16;
                v2417 = v3095;
                v2416 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v871 = a17;
            v872 = v3095;
            if (!v870 && a12)
            {
              v873 = a16;
              v874 = a15;
              v875 = a13;
              v876 = a11;
              v877 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v872 + a9 * v874, a4 + a9 * v873, a5, a6, a7, a8, v877, v876, v875, v871);
                v877 = a10;
                v876 = a11;
                v875 = a13;
                v874 = a15;
                v873 = a16;
                v872 = v3095;
                v871 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v870 == 4)
        {
          v2423 = a17;
          v2424 = v3095;
          if (a12)
          {
            v2425 = a16;
            v2426 = a15;
            v2427 = a13;
            v2428 = a11;
            v2429 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2424 + a9 * v2426, a4 + a9 * v2425, a5, a6, a7, a8, v2429, v2428, v2427, v2423);
              v2429 = a10;
              v2428 = a11;
              v2427 = a13;
              v2426 = a15;
              v2425 = a16;
              v2424 = v3095;
              v2423 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1506 = a17;
          v1507 = v3095;
          if (!v870 && a12)
          {
            v1508 = a16;
            v1509 = a15;
            v1510 = a13;
            v1511 = a11;
            v1512 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1507 + a9 * v1509, a4 + a9 * v1508, a5, a6, a7, a8, v1512, v1511, v1510, v1506);
              v1512 = a10;
              v1511 = a11;
              v1510 = a13;
              v1509 = a15;
              v1508 = a16;
              v1507 = v3095;
              v1506 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 31:
        v3032 = *(a1 + 396);
        v734 = getCompressionCodecConfig(*(a1 + 56));
        if (v3032 == 1)
        {
          if (v734 == 4)
          {
            v2178 = a17;
            v2179 = v3095;
            if (a12)
            {
              v2180 = a16;
              v2181 = a15;
              v2182 = a13;
              v2183 = a11;
              v2184 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2179 + a9 * v2181, a4 + a9 * v2180, a5, a6, a7, a8, v2184, v2183, v2182, v2178);
                v2184 = a10;
                v2183 = a11;
                v2182 = a13;
                v2181 = a15;
                v2180 = a16;
                v2179 = v3095;
                v2178 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v735 = a17;
            v736 = v3095;
            if (!v734 && a12)
            {
              v737 = a16;
              v738 = a15;
              v739 = a13;
              v740 = a11;
              v741 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v736 + a9 * v738, a4 + a9 * v737, a5, a6, a7, a8, v741, v740, v739, v735);
                v741 = a10;
                v740 = a11;
                v739 = a13;
                v738 = a15;
                v737 = a16;
                v736 = v3095;
                v735 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v734 == 4)
        {
          v2185 = a17;
          v2186 = v3095;
          if (a12)
          {
            v2187 = a16;
            v2188 = a15;
            v2189 = a13;
            v2190 = a11;
            v2191 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2186 + a9 * v2188, a4 + a9 * v2187, a5, a6, a7, a8, v2191, v2190, v2189, v2185);
              v2191 = a10;
              v2190 = a11;
              v2189 = a13;
              v2188 = a15;
              v2187 = a16;
              v2186 = v3095;
              v2185 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1387 = a17;
          v1388 = v3095;
          if (!v734 && a12)
          {
            v1389 = a16;
            v1390 = a15;
            v1391 = a13;
            v1392 = a11;
            v1393 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1388 + a9 * v1390, a4 + a9 * v1389, a5, a6, a7, a8, v1393, v1392, v1391, v1387);
              v1393 = a10;
              v1392 = a11;
              v1391 = a13;
              v1390 = a15;
              v1389 = a16;
              v1388 = v3095;
              v1387 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 32:
        v3064 = *(a1 + 396);
        v990 = getCompressionCodecConfig(*(a1 + 56));
        if (v3064 == 1)
        {
          if (v990 == 4)
          {
            v2640 = a17;
            v2641 = v3095;
            if (a12)
            {
              v2642 = a16;
              v2643 = a15;
              v2644 = a13;
              v2645 = a11;
              v2646 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2641 + a9 * v2643, a4 + a9 * v2642, a5, a6, a7, a8, v2646, v2645, v2644, v2640);
                v2646 = a10;
                v2645 = a11;
                v2644 = a13;
                v2643 = a15;
                v2642 = a16;
                v2641 = v3095;
                v2640 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v991 = a17;
            v992 = v3095;
            if (!v990 && a12)
            {
              v993 = a16;
              v994 = a15;
              v995 = a13;
              v996 = a11;
              v997 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v992 + a9 * v994, a4 + a9 * v993, a5, a6, a7, a8, v997, v996, v995, v991);
                v997 = a10;
                v996 = a11;
                v995 = a13;
                v994 = a15;
                v993 = a16;
                v992 = v3095;
                v991 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v990 == 4)
        {
          v2647 = a17;
          v2648 = v3095;
          if (a12)
          {
            v2649 = a16;
            v2650 = a15;
            v2651 = a13;
            v2652 = a11;
            v2653 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2648 + a9 * v2650, a4 + a9 * v2649, a5, a6, a7, a8, v2653, v2652, v2651, v2647);
              v2653 = a10;
              v2652 = a11;
              v2651 = a13;
              v2650 = a15;
              v2649 = a16;
              v2648 = v3095;
              v2647 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1618 = a17;
          v1619 = v3095;
          if (!v990 && a12)
          {
            v1620 = a16;
            v1621 = a15;
            v1622 = a13;
            v1623 = a11;
            v1624 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1619 + a9 * v1621, a4 + a9 * v1620, a5, a6, a7, a8, v1624, v1623, v1622, v1618);
              v1624 = a10;
              v1623 = a11;
              v1622 = a13;
              v1621 = a15;
              v1620 = a16;
              v1619 = v3095;
              v1618 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 33:
        v3065 = *(a1 + 396);
        v998 = getCompressionCodecConfig(*(a1 + 56));
        if (v3065 == 1)
        {
          if (v998 == 4)
          {
            v2654 = a17;
            v2655 = v3095;
            if (a12)
            {
              v2656 = a16;
              v2657 = a15;
              v2658 = a13;
              v2659 = a11;
              v2660 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2655 + a9 * v2657, a4 + a9 * v2656, a5, a6, a7, a8, v2660, v2659, v2658, v2654);
                v2660 = a10;
                v2659 = a11;
                v2658 = a13;
                v2657 = a15;
                v2656 = a16;
                v2655 = v3095;
                v2654 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v999 = a17;
            v1000 = v3095;
            if (!v998 && a12)
            {
              v1001 = a16;
              v1002 = a15;
              v1003 = a13;
              v1004 = a11;
              v1005 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1000 + a9 * v1002, a4 + a9 * v1001, a5, a6, a7, a8, v1005, v1004, v1003, v999);
                v1005 = a10;
                v1004 = a11;
                v1003 = a13;
                v1002 = a15;
                v1001 = a16;
                v1000 = v3095;
                v999 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v998 == 4)
        {
          v2661 = a17;
          v2662 = v3095;
          if (a12)
          {
            v2663 = a16;
            v2664 = a15;
            v2665 = a13;
            v2666 = a11;
            v2667 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2662 + a9 * v2664, a4 + a9 * v2663, a5, a6, a7, a8, v2667, v2666, v2665, v2661);
              v2667 = a10;
              v2666 = a11;
              v2665 = a13;
              v2664 = a15;
              v2663 = a16;
              v2662 = v3095;
              v2661 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1625 = a17;
          v1626 = v3095;
          if (!v998 && a12)
          {
            v1627 = a16;
            v1628 = a15;
            v1629 = a13;
            v1630 = a11;
            v1631 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1626 + a9 * v1628, a4 + a9 * v1627, a5, a6, a7, a8, v1631, v1630, v1629, v1625);
              v1631 = a10;
              v1630 = a11;
              v1629 = a13;
              v1628 = a15;
              v1627 = a16;
              v1626 = v3095;
              v1625 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 34:
        v3069 = *(a1 + 396);
        v1030 = getCompressionCodecConfig(*(a1 + 56));
        if (v3069 == 1)
        {
          if (v1030 == 4)
          {
            v2710 = a17;
            v2711 = v3095;
            if (a12)
            {
              v2712 = a16;
              v2713 = a15;
              v2714 = a13;
              v2715 = a11;
              v2716 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2711 + a9 * v2713, a4 + a9 * v2712, a5, a6, a7, a8, v2716, v2715, v2714, v2710);
                v2716 = a10;
                v2715 = a11;
                v2714 = a13;
                v2713 = a15;
                v2712 = a16;
                v2711 = v3095;
                v2710 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1031 = a17;
            v1032 = v3095;
            if (!v1030 && a12)
            {
              v1033 = a16;
              v1034 = a15;
              v1035 = a13;
              v1036 = a11;
              v1037 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1032 + a9 * v1034, a4 + a9 * v1033, a5, a6, a7, a8, v1037, v1036, v1035, v1031);
                v1037 = a10;
                v1036 = a11;
                v1035 = a13;
                v1034 = a15;
                v1033 = a16;
                v1032 = v3095;
                v1031 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1030 == 4)
        {
          v2717 = a17;
          v2718 = v3095;
          if (a12)
          {
            v2719 = a16;
            v2720 = a15;
            v2721 = a13;
            v2722 = a11;
            v2723 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2718 + a9 * v2720, a4 + a9 * v2719, a5, a6, a7, a8, v2723, v2722, v2721, v2717);
              v2723 = a10;
              v2722 = a11;
              v2721 = a13;
              v2720 = a15;
              v2719 = a16;
              v2718 = v3095;
              v2717 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1653 = a17;
          v1654 = v3095;
          if (!v1030 && a12)
          {
            v1655 = a16;
            v1656 = a15;
            v1657 = a13;
            v1658 = a11;
            v1659 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1654 + a9 * v1656, a4 + a9 * v1655, a5, a6, a7, a8, v1659, v1658, v1657, v1653);
              v1659 = a10;
              v1658 = a11;
              v1657 = a13;
              v1656 = a15;
              v1655 = a16;
              v1654 = v3095;
              v1653 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 40:
        v3067 = *(a1 + 396);
        v1014 = getCompressionCodecConfig(*(a1 + 56));
        if (v3067 == 1)
        {
          if (v1014 == 4)
          {
            v2682 = a17;
            v2683 = v3095;
            if (a12)
            {
              v2684 = a16;
              v2685 = a15;
              v2686 = a13;
              v2687 = a11;
              v2688 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2683 + a9 * v2685, a4 + a9 * v2684, a5, a6, a7, a8, v2688, v2687, v2686, v2682);
                v2688 = a10;
                v2687 = a11;
                v2686 = a13;
                v2685 = a15;
                v2684 = a16;
                v2683 = v3095;
                v2682 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1015 = a17;
            v1016 = v3095;
            if (!v1014 && a12)
            {
              v1017 = a16;
              v1018 = a15;
              v1019 = a13;
              v1020 = a11;
              v1021 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1016 + a9 * v1018, a4 + a9 * v1017, a5, a6, a7, a8, v1021, v1020, v1019, v1015);
                v1021 = a10;
                v1020 = a11;
                v1019 = a13;
                v1018 = a15;
                v1017 = a16;
                v1016 = v3095;
                v1015 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1014 == 4)
        {
          v2689 = a17;
          v2690 = v3095;
          if (a12)
          {
            v2691 = a16;
            v2692 = a15;
            v2693 = a13;
            v2694 = a11;
            v2695 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2690 + a9 * v2692, a4 + a9 * v2691, a5, a6, a7, a8, v2695, v2694, v2693, v2689);
              v2695 = a10;
              v2694 = a11;
              v2693 = a13;
              v2692 = a15;
              v2691 = a16;
              v2690 = v3095;
              v2689 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1639 = a17;
          v1640 = v3095;
          if (!v1014 && a12)
          {
            v1641 = a16;
            v1642 = a15;
            v1643 = a13;
            v1644 = a11;
            v1645 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1640 + a9 * v1642, a4 + a9 * v1641, a5, a6, a7, a8, v1645, v1644, v1643, v1639);
              v1645 = a10;
              v1644 = a11;
              v1643 = a13;
              v1642 = a15;
              v1641 = a16;
              v1640 = v3095;
              v1639 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 41:
        v3027 = *(a1 + 396);
        v694 = getCompressionCodecConfig(*(a1 + 56));
        if (v3027 == 1)
        {
          if (v694 == 4)
          {
            v2108 = a17;
            v2109 = v3095;
            if (a12)
            {
              v2110 = a16;
              v2111 = a15;
              v2112 = a13;
              v2113 = a11;
              v2114 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2109 + a9 * v2111, a4 + a9 * v2110, a5, a6, a7, a8, v2114, v2113, v2112, v2108);
                v2114 = a10;
                v2113 = a11;
                v2112 = a13;
                v2111 = a15;
                v2110 = a16;
                v2109 = v3095;
                v2108 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v695 = a17;
            v696 = v3095;
            if (!v694 && a12)
            {
              v697 = a16;
              v698 = a15;
              v699 = a13;
              v700 = a11;
              v701 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v696 + a9 * v698, a4 + a9 * v697, a5, a6, a7, a8, v701, v700, v699, v695);
                v701 = a10;
                v700 = a11;
                v699 = a13;
                v698 = a15;
                v697 = a16;
                v696 = v3095;
                v695 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v694 == 4)
        {
          v2115 = a17;
          v2116 = v3095;
          if (a12)
          {
            v2117 = a16;
            v2118 = a15;
            v2119 = a13;
            v2120 = a11;
            v2121 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2116 + a9 * v2118, a4 + a9 * v2117, a5, a6, a7, a8, v2121, v2120, v2119, v2115);
              v2121 = a10;
              v2120 = a11;
              v2119 = a13;
              v2118 = a15;
              v2117 = a16;
              v2116 = v3095;
              v2115 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1352 = a17;
          v1353 = v3095;
          if (!v694 && a12)
          {
            v1354 = a16;
            v1355 = a15;
            v1356 = a13;
            v1357 = a11;
            v1358 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1353 + a9 * v1355, a4 + a9 * v1354, a5, a6, a7, a8, v1358, v1357, v1356, v1352);
              v1358 = a10;
              v1357 = a11;
              v1356 = a13;
              v1355 = a15;
              v1354 = a16;
              v1353 = v3095;
              v1352 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 42:
        v3050 = *(a1 + 396);
        v878 = getCompressionCodecConfig(*(a1 + 56));
        if (v3050 == 1)
        {
          if (v878 == 4)
          {
            v2430 = a17;
            v2431 = v3095;
            if (a12)
            {
              v2432 = a16;
              v2433 = a15;
              v2434 = a13;
              v2435 = a11;
              v2436 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2431 + a9 * v2433, a4 + a9 * v2432, a5, a6, a7, a8, v2436, v2435, v2434, v2430);
                v2436 = a10;
                v2435 = a11;
                v2434 = a13;
                v2433 = a15;
                v2432 = a16;
                v2431 = v3095;
                v2430 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v879 = a17;
            v880 = v3095;
            if (!v878 && a12)
            {
              v881 = a16;
              v882 = a15;
              v883 = a13;
              v884 = a11;
              v885 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v880 + a9 * v882, a4 + a9 * v881, a5, a6, a7, a8, v885, v884, v883, v879);
                v885 = a10;
                v884 = a11;
                v883 = a13;
                v882 = a15;
                v881 = a16;
                v880 = v3095;
                v879 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v878 == 4)
        {
          v2437 = a17;
          v2438 = v3095;
          if (a12)
          {
            v2439 = a16;
            v2440 = a15;
            v2441 = a13;
            v2442 = a11;
            v2443 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2438 + a9 * v2440, a4 + a9 * v2439, a5, a6, a7, a8, v2443, v2442, v2441, v2437);
              v2443 = a10;
              v2442 = a11;
              v2441 = a13;
              v2440 = a15;
              v2439 = a16;
              v2438 = v3095;
              v2437 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1513 = a17;
          v1514 = v3095;
          if (!v878 && a12)
          {
            v1515 = a16;
            v1516 = a15;
            v1517 = a13;
            v1518 = a11;
            v1519 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1514 + a9 * v1516, a4 + a9 * v1515, a5, a6, a7, a8, v1519, v1518, v1517, v1513);
              v1519 = a10;
              v1518 = a11;
              v1517 = a13;
              v1516 = a15;
              v1515 = a16;
              v1514 = v3095;
              v1513 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 43:
        v3075 = *(a1 + 396);
        v1078 = getCompressionCodecConfig(*(a1 + 56));
        if (v3075 == 1)
        {
          if (v1078 == 4)
          {
            v2794 = a17;
            v2795 = v3095;
            if (a12)
            {
              v2796 = a16;
              v2797 = a15;
              v2798 = a13;
              v2799 = a11;
              v2800 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2795 + a9 * v2797, a4 + a9 * v2796, a5, a6, a7, a8, v2800, v2799, v2798, v2794);
                v2800 = a10;
                v2799 = a11;
                v2798 = a13;
                v2797 = a15;
                v2796 = a16;
                v2795 = v3095;
                v2794 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1079 = a17;
            v1080 = v3095;
            if (!v1078 && a12)
            {
              v1081 = a16;
              v1082 = a15;
              v1083 = a13;
              v1084 = a11;
              v1085 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1080 + a9 * v1082, a4 + a9 * v1081, a5, a6, a7, a8, v1085, v1084, v1083, v1079);
                v1085 = a10;
                v1084 = a11;
                v1083 = a13;
                v1082 = a15;
                v1081 = a16;
                v1080 = v3095;
                v1079 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1078 == 4)
        {
          v2801 = a17;
          v2802 = v3095;
          if (a12)
          {
            v2803 = a16;
            v2804 = a15;
            v2805 = a13;
            v2806 = a11;
            v2807 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2802 + a9 * v2804, a4 + a9 * v2803, a5, a6, a7, a8, v2807, v2806, v2805, v2801);
              v2807 = a10;
              v2806 = a11;
              v2805 = a13;
              v2804 = a15;
              v2803 = a16;
              v2802 = v3095;
              v2801 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1695 = a17;
          v1696 = v3095;
          if (!v1078 && a12)
          {
            v1697 = a16;
            v1698 = a15;
            v1699 = a13;
            v1700 = a11;
            v1701 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1696 + a9 * v1698, a4 + a9 * v1697, a5, a6, a7, a8, v1701, v1700, v1699, v1695);
              v1701 = a10;
              v1700 = a11;
              v1699 = a13;
              v1698 = a15;
              v1697 = a16;
              v1696 = v3095;
              v1695 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 44:
        v3031 = *(a1 + 396);
        v726 = getCompressionCodecConfig(*(a1 + 56));
        if (v3031 == 1)
        {
          if (v726 == 4)
          {
            v2164 = a17;
            v2165 = v3095;
            if (a12)
            {
              v2166 = a16;
              v2167 = a15;
              v2168 = a13;
              v2169 = a11;
              v2170 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2165 + a9 * v2167, a4 + a9 * v2166, a5, a6, a7, a8, v2170, v2169, v2168, v2164);
                v2170 = a10;
                v2169 = a11;
                v2168 = a13;
                v2167 = a15;
                v2166 = a16;
                v2165 = v3095;
                v2164 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v727 = a17;
            v728 = v3095;
            if (!v726 && a12)
            {
              v729 = a16;
              v730 = a15;
              v731 = a13;
              v732 = a11;
              v733 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v728 + a9 * v730, a4 + a9 * v729, a5, a6, a7, a8, v733, v732, v731, v727);
                v733 = a10;
                v732 = a11;
                v731 = a13;
                v730 = a15;
                v729 = a16;
                v728 = v3095;
                v727 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v726 == 4)
        {
          v2171 = a17;
          v2172 = v3095;
          if (a12)
          {
            v2173 = a16;
            v2174 = a15;
            v2175 = a13;
            v2176 = a11;
            v2177 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2172 + a9 * v2174, a4 + a9 * v2173, a5, a6, a7, a8, v2177, v2176, v2175, v2171);
              v2177 = a10;
              v2176 = a11;
              v2175 = a13;
              v2174 = a15;
              v2173 = a16;
              v2172 = v3095;
              v2171 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1380 = a17;
          v1381 = v3095;
          if (!v726 && a12)
          {
            v1382 = a16;
            v1383 = a15;
            v1384 = a13;
            v1385 = a11;
            v1386 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1381 + a9 * v1383, a4 + a9 * v1382, a5, a6, a7, a8, v1386, v1385, v1384, v1380);
              v1386 = a10;
              v1385 = a11;
              v1384 = a13;
              v1383 = a15;
              v1382 = a16;
              v1381 = v3095;
              v1380 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 53:
        v3047 = *(a1 + 396);
        v854 = getCompressionCodecConfig(*(a1 + 56));
        if (v3047 == 1)
        {
          if (v854 == 4)
          {
            v2388 = a17;
            v2389 = v3095;
            if (a12)
            {
              v2390 = a16;
              v2391 = a15;
              v2392 = a13;
              v2393 = a11;
              v2394 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2389 + a9 * v2391, a4 + a9 * v2390, a5, a6, a7, a8, v2394, v2393, v2392, v2388);
                v2394 = a10;
                v2393 = a11;
                v2392 = a13;
                v2391 = a15;
                v2390 = a16;
                v2389 = v3095;
                v2388 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v855 = a17;
            v856 = v3095;
            if (!v854 && a12)
            {
              v857 = a16;
              v858 = a15;
              v859 = a13;
              v860 = a11;
              v861 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v856 + a9 * v858, a4 + a9 * v857, a5, a6, a7, a8, v861, v860, v859, v855);
                v861 = a10;
                v860 = a11;
                v859 = a13;
                v858 = a15;
                v857 = a16;
                v856 = v3095;
                v855 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v854 == 4)
        {
          v2395 = a17;
          v2396 = v3095;
          if (a12)
          {
            v2397 = a16;
            v2398 = a15;
            v2399 = a13;
            v2400 = a11;
            v2401 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2396 + a9 * v2398, a4 + a9 * v2397, a5, a6, a7, a8, v2401, v2400, v2399, v2395);
              v2401 = a10;
              v2400 = a11;
              v2399 = a13;
              v2398 = a15;
              v2397 = a16;
              v2396 = v3095;
              v2395 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1492 = a17;
          v1493 = v3095;
          if (!v854 && a12)
          {
            v1494 = a16;
            v1495 = a15;
            v1496 = a13;
            v1497 = a11;
            v1498 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1493 + a9 * v1495, a4 + a9 * v1494, a5, a6, a7, a8, v1498, v1497, v1496, v1492);
              v1498 = a10;
              v1497 = a11;
              v1496 = a13;
              v1495 = a15;
              v1494 = a16;
              v1493 = v3095;
              v1492 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 54:
        v3035 = *(a1 + 396);
        v758 = getCompressionCodecConfig(*(a1 + 56));
        if (v3035 == 1)
        {
          if (v758 == 4)
          {
            v2220 = a17;
            v2221 = v3095;
            if (a12)
            {
              v2222 = a16;
              v2223 = a15;
              v2224 = a13;
              v2225 = a11;
              v2226 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2221 + a9 * v2223, a4 + a9 * v2222, a5, a6, a7, a8, v2226, v2225, v2224, v2220);
                v2226 = a10;
                v2225 = a11;
                v2224 = a13;
                v2223 = a15;
                v2222 = a16;
                v2221 = v3095;
                v2220 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v759 = a17;
            v760 = v3095;
            if (!v758 && a12)
            {
              v761 = a16;
              v762 = a15;
              v763 = a13;
              v764 = a11;
              v765 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v760 + a9 * v762, a4 + a9 * v761, a5, a6, a7, a8, v765, v764, v763, v759);
                v765 = a10;
                v764 = a11;
                v763 = a13;
                v762 = a15;
                v761 = a16;
                v760 = v3095;
                v759 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v758 == 4)
        {
          v2227 = a17;
          v2228 = v3095;
          if (a12)
          {
            v2229 = a16;
            v2230 = a15;
            v2231 = a13;
            v2232 = a11;
            v2233 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2228 + a9 * v2230, a4 + a9 * v2229, a5, a6, a7, a8, v2233, v2232, v2231, v2227);
              v2233 = a10;
              v2232 = a11;
              v2231 = a13;
              v2230 = a15;
              v2229 = a16;
              v2228 = v3095;
              v2227 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1408 = a17;
          v1409 = v3095;
          if (!v758 && a12)
          {
            v1410 = a16;
            v1411 = a15;
            v1412 = a13;
            v1413 = a11;
            v1414 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1409 + a9 * v1411, a4 + a9 * v1410, a5, a6, a7, a8, v1414, v1413, v1412, v1408);
              v1414 = a10;
              v1413 = a11;
              v1412 = a13;
              v1411 = a15;
              v1410 = a16;
              v1409 = v3095;
              v1408 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 55:
        v3057 = *(a1 + 396);
        v934 = getCompressionCodecConfig(*(a1 + 56));
        if (v3057 == 1)
        {
          if (v934 == 4)
          {
            v2542 = a17;
            v2543 = v3095;
            if (a12)
            {
              v2544 = a16;
              v2545 = a15;
              v2546 = a13;
              v2547 = a11;
              v2548 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2543 + a9 * v2545, a4 + a9 * v2544, a5, a6, a7, a8, v2548, v2547, v2546, v2542);
                v2548 = a10;
                v2547 = a11;
                v2546 = a13;
                v2545 = a15;
                v2544 = a16;
                v2543 = v3095;
                v2542 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v935 = a17;
            v936 = v3095;
            if (!v934 && a12)
            {
              v937 = a16;
              v938 = a15;
              v939 = a13;
              v940 = a11;
              v941 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v936 + a9 * v938, a4 + a9 * v937, a5, a6, a7, a8, v941, v940, v939, v935);
                v941 = a10;
                v940 = a11;
                v939 = a13;
                v938 = a15;
                v937 = a16;
                v936 = v3095;
                v935 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v934 == 4)
        {
          v2549 = a17;
          v2550 = v3095;
          if (a12)
          {
            v2551 = a16;
            v2552 = a15;
            v2553 = a13;
            v2554 = a11;
            v2555 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2550 + a9 * v2552, a4 + a9 * v2551, a5, a6, a7, a8, v2555, v2554, v2553, v2549);
              v2555 = a10;
              v2554 = a11;
              v2553 = a13;
              v2552 = a15;
              v2551 = a16;
              v2550 = v3095;
              v2549 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1569 = a17;
          v1570 = v3095;
          if (!v934 && a12)
          {
            v1571 = a16;
            v1572 = a15;
            v1573 = a13;
            v1574 = a11;
            v1575 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1570 + a9 * v1572, a4 + a9 * v1571, a5, a6, a7, a8, v1575, v1574, v1573, v1569);
              v1575 = a10;
              v1574 = a11;
              v1573 = a13;
              v1572 = a15;
              v1571 = a16;
              v1570 = v3095;
              v1569 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 60:
        v3034 = *(a1 + 396);
        v750 = getCompressionCodecConfig(*(a1 + 56));
        if (v3034 == 1)
        {
          if (v750 == 4)
          {
            v2206 = a17;
            v2207 = v3095;
            if (a12)
            {
              v2208 = a16;
              v2209 = a15;
              v2210 = a13;
              v2211 = a11;
              v2212 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2207 + a9 * v2209, a4 + a9 * v2208, a5, a6, a7, a8, v2212, v2211, v2210, v2206);
                v2212 = a10;
                v2211 = a11;
                v2210 = a13;
                v2209 = a15;
                v2208 = a16;
                v2207 = v3095;
                v2206 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v751 = a17;
            v752 = v3095;
            if (!v750 && a12)
            {
              v753 = a16;
              v754 = a15;
              v755 = a13;
              v756 = a11;
              v757 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v752 + a9 * v754, a4 + a9 * v753, a5, a6, a7, a8, v757, v756, v755, v751);
                v757 = a10;
                v756 = a11;
                v755 = a13;
                v754 = a15;
                v753 = a16;
                v752 = v3095;
                v751 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v750 == 4)
        {
          v2213 = a17;
          v2214 = v3095;
          if (a12)
          {
            v2215 = a16;
            v2216 = a15;
            v2217 = a13;
            v2218 = a11;
            v2219 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2214 + a9 * v2216, a4 + a9 * v2215, a5, a6, a7, a8, v2219, v2218, v2217, v2213);
              v2219 = a10;
              v2218 = a11;
              v2217 = a13;
              v2216 = a15;
              v2215 = a16;
              v2214 = v3095;
              v2213 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1401 = a17;
          v1402 = v3095;
          if (!v750 && a12)
          {
            v1403 = a16;
            v1404 = a15;
            v1405 = a13;
            v1406 = a11;
            v1407 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1402 + a9 * v1404, a4 + a9 * v1403, a5, a6, a7, a8, v1407, v1406, v1405, v1401);
              v1407 = a10;
              v1406 = a11;
              v1405 = a13;
              v1404 = a15;
              v1403 = a16;
              v1402 = v3095;
              v1401 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 62:
        v3024 = *(a1 + 396);
        v670 = getCompressionCodecConfig(*(a1 + 56));
        if (v3024 == 1)
        {
          if (v670 == 4)
          {
            v2066 = a17;
            v2067 = v3095;
            if (a12)
            {
              v2068 = a16;
              v2069 = a15;
              v2070 = a13;
              v2071 = a11;
              v2072 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2067 + a9 * v2069, a4 + a9 * v2068, a5, a6, a7, a8, v2072, v2071, v2070, v2066);
                v2072 = a10;
                v2071 = a11;
                v2070 = a13;
                v2069 = a15;
                v2068 = a16;
                v2067 = v3095;
                v2066 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v671 = a17;
            v672 = v3095;
            if (!v670 && a12)
            {
              v673 = a16;
              v674 = a15;
              v675 = a13;
              v676 = a11;
              v677 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v672 + a9 * v674, a4 + a9 * v673, a5, a6, a7, a8, v677, v676, v675, v671);
                v677 = a10;
                v676 = a11;
                v675 = a13;
                v674 = a15;
                v673 = a16;
                v672 = v3095;
                v671 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v670 == 4)
        {
          v2073 = a17;
          v2074 = v3095;
          if (a12)
          {
            v2075 = a16;
            v2076 = a15;
            v2077 = a13;
            v2078 = a11;
            v2079 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2074 + a9 * v2076, a4 + a9 * v2075, a5, a6, a7, a8, v2079, v2078, v2077, v2073);
              v2079 = a10;
              v2078 = a11;
              v2077 = a13;
              v2076 = a15;
              v2075 = a16;
              v2074 = v3095;
              v2073 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1331 = a17;
          v1332 = v3095;
          if (!v670 && a12)
          {
            v1333 = a16;
            v1334 = a15;
            v1335 = a13;
            v1336 = a11;
            v1337 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1332 + a9 * v1334, a4 + a9 * v1333, a5, a6, a7, a8, v1337, v1336, v1335, v1331);
              v1337 = a10;
              v1336 = a11;
              v1335 = a13;
              v1334 = a15;
              v1333 = a16;
              v1332 = v3095;
              v1331 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 63:
        v3078 = *(a1 + 396);
        v1102 = getCompressionCodecConfig(*(a1 + 56));
        if (v3078 == 1)
        {
          if (v1102 == 4)
          {
            v2836 = a17;
            v2837 = v3095;
            if (a12)
            {
              v2838 = a16;
              v2839 = a15;
              v2840 = a13;
              v2841 = a11;
              v2842 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2837 + a9 * v2839, a4 + a9 * v2838, a5, a6, a7, a8, v2842, v2841, v2840, v2836);
                v2842 = a10;
                v2841 = a11;
                v2840 = a13;
                v2839 = a15;
                v2838 = a16;
                v2837 = v3095;
                v2836 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1103 = a17;
            v1104 = v3095;
            if (!v1102 && a12)
            {
              v1105 = a16;
              v1106 = a15;
              v1107 = a13;
              v1108 = a11;
              v1109 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1104 + a9 * v1106, a4 + a9 * v1105, a5, a6, a7, a8, v1109, v1108, v1107, v1103);
                v1109 = a10;
                v1108 = a11;
                v1107 = a13;
                v1106 = a15;
                v1105 = a16;
                v1104 = v3095;
                v1103 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1102 == 4)
        {
          v2843 = a17;
          v2844 = v3095;
          if (a12)
          {
            v2845 = a16;
            v2846 = a15;
            v2847 = a13;
            v2848 = a11;
            v2849 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2844 + a9 * v2846, a4 + a9 * v2845, a5, a6, a7, a8, v2849, v2848, v2847, v2843);
              v2849 = a10;
              v2848 = a11;
              v2847 = a13;
              v2846 = a15;
              v2845 = a16;
              v2844 = v3095;
              v2843 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1716 = a17;
          v1717 = v3095;
          if (!v1102 && a12)
          {
            v1718 = a16;
            v1719 = a15;
            v1720 = a13;
            v1721 = a11;
            v1722 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1717 + a9 * v1719, a4 + a9 * v1718, a5, a6, a7, a8, v1722, v1721, v1720, v1716);
              v1722 = a10;
              v1721 = a11;
              v1720 = a13;
              v1719 = a15;
              v1718 = a16;
              v1717 = v3095;
              v1716 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 64:
        v3039 = *(a1 + 396);
        v790 = getCompressionCodecConfig(*(a1 + 56));
        if (v3039 == 1)
        {
          if (v790 == 4)
          {
            v2276 = a17;
            v2277 = v3095;
            if (a12)
            {
              v2278 = a16;
              v2279 = a15;
              v2280 = a13;
              v2281 = a11;
              v2282 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2277 + a9 * v2279, a4 + a9 * v2278, a5, a6, a7, a8, v2282, v2281, v2280, v2276);
                v2282 = a10;
                v2281 = a11;
                v2280 = a13;
                v2279 = a15;
                v2278 = a16;
                v2277 = v3095;
                v2276 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v791 = a17;
            v792 = v3095;
            if (!v790 && a12)
            {
              v793 = a16;
              v794 = a15;
              v795 = a13;
              v796 = a11;
              v797 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v792 + a9 * v794, a4 + a9 * v793, a5, a6, a7, a8, v797, v796, v795, v791);
                v797 = a10;
                v796 = a11;
                v795 = a13;
                v794 = a15;
                v793 = a16;
                v792 = v3095;
                v791 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v790 == 4)
        {
          v2283 = a17;
          v2284 = v3095;
          if (a12)
          {
            v2285 = a16;
            v2286 = a15;
            v2287 = a13;
            v2288 = a11;
            v2289 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2284 + a9 * v2286, a4 + a9 * v2285, a5, a6, a7, a8, v2289, v2288, v2287, v2283);
              v2289 = a10;
              v2288 = a11;
              v2287 = a13;
              v2286 = a15;
              v2285 = a16;
              v2284 = v3095;
              v2283 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1436 = a17;
          v1437 = v3095;
          if (!v790 && a12)
          {
            v1438 = a16;
            v1439 = a15;
            v1440 = a13;
            v1441 = a11;
            v1442 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1437 + a9 * v1439, a4 + a9 * v1438, a5, a6, a7, a8, v1442, v1441, v1440, v1436);
              v1442 = a10;
              v1441 = a11;
              v1440 = a13;
              v1439 = a15;
              v1438 = a16;
              v1437 = v3095;
              v1436 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 65:
        v3045 = *(a1 + 396);
        v838 = getCompressionCodecConfig(*(a1 + 56));
        if (v3045 == 1)
        {
          if (v838 == 4)
          {
            v2360 = a17;
            v2361 = v3095;
            if (a12)
            {
              v2362 = a16;
              v2363 = a15;
              v2364 = a13;
              v2365 = a11;
              v2366 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2361 + a9 * v2363, a4 + a9 * v2362, a5, a6, a7, a8, v2366, v2365, v2364, v2360);
                v2366 = a10;
                v2365 = a11;
                v2364 = a13;
                v2363 = a15;
                v2362 = a16;
                v2361 = v3095;
                v2360 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v839 = a17;
            v840 = v3095;
            if (!v838 && a12)
            {
              v841 = a16;
              v842 = a15;
              v843 = a13;
              v844 = a11;
              v845 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v840 + a9 * v842, a4 + a9 * v841, a5, a6, a7, a8, v845, v844, v843, v839);
                v845 = a10;
                v844 = a11;
                v843 = a13;
                v842 = a15;
                v841 = a16;
                v840 = v3095;
                v839 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v838 == 4)
        {
          v2367 = a17;
          v2368 = v3095;
          if (a12)
          {
            v2369 = a16;
            v2370 = a15;
            v2371 = a13;
            v2372 = a11;
            v2373 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2368 + a9 * v2370, a4 + a9 * v2369, a5, a6, a7, a8, v2373, v2372, v2371, v2367);
              v2373 = a10;
              v2372 = a11;
              v2371 = a13;
              v2370 = a15;
              v2369 = a16;
              v2368 = v3095;
              v2367 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1478 = a17;
          v1479 = v3095;
          if (!v838 && a12)
          {
            v1480 = a16;
            v1481 = a15;
            v1482 = a13;
            v1483 = a11;
            v1484 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1479 + a9 * v1481, a4 + a9 * v1480, a5, a6, a7, a8, v1484, v1483, v1482, v1478);
              v1484 = a10;
              v1483 = a11;
              v1482 = a13;
              v1481 = a15;
              v1480 = a16;
              v1479 = v3095;
              v1478 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 66:
        v3061 = *(a1 + 396);
        v966 = getCompressionCodecConfig(*(a1 + 56));
        if (v3061 == 1)
        {
          if (v966 == 4)
          {
            v2598 = a17;
            v2599 = v3095;
            if (a12)
            {
              v2600 = a16;
              v2601 = a15;
              v2602 = a13;
              v2603 = a11;
              v2604 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2599 + a9 * v2601, a4 + a9 * v2600, a5, a6, a7, a8, v2604, v2603, v2602, v2598);
                v2604 = a10;
                v2603 = a11;
                v2602 = a13;
                v2601 = a15;
                v2600 = a16;
                v2599 = v3095;
                v2598 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v967 = a17;
            v968 = v3095;
            if (!v966 && a12)
            {
              v969 = a16;
              v970 = a15;
              v971 = a13;
              v972 = a11;
              v973 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v968 + a9 * v970, a4 + a9 * v969, a5, a6, a7, a8, v973, v972, v971, v967);
                v973 = a10;
                v972 = a11;
                v971 = a13;
                v970 = a15;
                v969 = a16;
                v968 = v3095;
                v967 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v966 == 4)
        {
          v2605 = a17;
          v2606 = v3095;
          if (a12)
          {
            v2607 = a16;
            v2608 = a15;
            v2609 = a13;
            v2610 = a11;
            v2611 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2606 + a9 * v2608, a4 + a9 * v2607, a5, a6, a7, a8, v2611, v2610, v2609, v2605);
              v2611 = a10;
              v2610 = a11;
              v2609 = a13;
              v2608 = a15;
              v2607 = a16;
              v2606 = v3095;
              v2605 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1597 = a17;
          v1598 = v3095;
          if (!v966 && a12)
          {
            v1599 = a16;
            v1600 = a15;
            v1601 = a13;
            v1602 = a11;
            v1603 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1598 + a9 * v1600, a4 + a9 * v1599, a5, a6, a7, a8, v1603, v1602, v1601, v1597);
              v1603 = a10;
              v1602 = a11;
              v1601 = a13;
              v1600 = a15;
              v1599 = a16;
              v1598 = v3095;
              v1597 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 70:
        v3046 = *(a1 + 396);
        v846 = getCompressionCodecConfig(*(a1 + 56));
        if (v3046 == 1)
        {
          if (v846 == 4)
          {
            v2374 = a17;
            v2375 = v3095;
            if (a12)
            {
              v2376 = a16;
              v2377 = a15;
              v2378 = a13;
              v2379 = a11;
              v2380 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2375 + a9 * v2377, a4 + a9 * v2376, a5, a6, a7, a8, v2380, v2379, v2378, v2374);
                v2380 = a10;
                v2379 = a11;
                v2378 = a13;
                v2377 = a15;
                v2376 = a16;
                v2375 = v3095;
                v2374 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v847 = a17;
            v848 = v3095;
            if (!v846 && a12)
            {
              v849 = a16;
              v850 = a15;
              v851 = a13;
              v852 = a11;
              v853 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v848 + a9 * v850, a4 + a9 * v849, a5, a6, a7, a8, v853, v852, v851, v847);
                v853 = a10;
                v852 = a11;
                v851 = a13;
                v850 = a15;
                v849 = a16;
                v848 = v3095;
                v847 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v846 == 4)
        {
          v2381 = a17;
          v2382 = v3095;
          if (a12)
          {
            v2383 = a16;
            v2384 = a15;
            v2385 = a13;
            v2386 = a11;
            v2387 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2382 + a9 * v2384, a4 + a9 * v2383, a5, a6, a7, a8, v2387, v2386, v2385, v2381);
              v2387 = a10;
              v2386 = a11;
              v2385 = a13;
              v2384 = a15;
              v2383 = a16;
              v2382 = v3095;
              v2381 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1485 = a17;
          v1486 = v3095;
          if (!v846 && a12)
          {
            v1487 = a16;
            v1488 = a15;
            v1489 = a13;
            v1490 = a11;
            v1491 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1486 + a9 * v1488, a4 + a9 * v1487, a5, a6, a7, a8, v1491, v1490, v1489, v1485);
              v1491 = a10;
              v1490 = a11;
              v1489 = a13;
              v1488 = a15;
              v1487 = a16;
              v1486 = v3095;
              v1485 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 71:
        v3019 = *(a1 + 396);
        v630 = getCompressionCodecConfig(*(a1 + 56));
        if (v3019 == 1)
        {
          if (v630 == 4)
          {
            v1996 = a17;
            v1997 = v3095;
            if (a12)
            {
              v1998 = a16;
              v1999 = a15;
              v2000 = a13;
              v2001 = a11;
              v2002 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1997 + a9 * v1999, a4 + a9 * v1998, a5, a6, a7, a8, v2002, v2001, v2000, v1996);
                v2002 = a10;
                v2001 = a11;
                v2000 = a13;
                v1999 = a15;
                v1998 = a16;
                v1997 = v3095;
                v1996 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v631 = a17;
            v632 = v3095;
            if (!v630 && a12)
            {
              v633 = a16;
              v634 = a15;
              v635 = a13;
              v636 = a11;
              v637 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v632 + a9 * v634, a4 + a9 * v633, a5, a6, a7, a8, v637, v636, v635, v631);
                v637 = a10;
                v636 = a11;
                v635 = a13;
                v634 = a15;
                v633 = a16;
                v632 = v3095;
                v631 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v630 == 4)
        {
          v2003 = a17;
          v2004 = v3095;
          if (a12)
          {
            v2005 = a16;
            v2006 = a15;
            v2007 = a13;
            v2008 = a11;
            v2009 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2004 + a9 * v2006, a4 + a9 * v2005, a5, a6, a7, a8, v2009, v2008, v2007, v2003);
              v2009 = a10;
              v2008 = a11;
              v2007 = a13;
              v2006 = a15;
              v2005 = a16;
              v2004 = v3095;
              v2003 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1296 = a17;
          v1297 = v3095;
          if (!v630 && a12)
          {
            v1298 = a16;
            v1299 = a15;
            v1300 = a13;
            v1301 = a11;
            v1302 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1297 + a9 * v1299, a4 + a9 * v1298, a5, a6, a7, a8, v1302, v1301, v1300, v1296);
              v1302 = a10;
              v1301 = a11;
              v1300 = a13;
              v1299 = a15;
              v1298 = a16;
              v1297 = v3095;
              v1296 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 72:
        v3030 = *(a1 + 396);
        v718 = getCompressionCodecConfig(*(a1 + 56));
        if (v3030 == 1)
        {
          if (v718 == 4)
          {
            v2150 = a17;
            v2151 = v3095;
            if (a12)
            {
              v2152 = a16;
              v2153 = a15;
              v2154 = a13;
              v2155 = a11;
              v2156 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2151 + a9 * v2153, a4 + a9 * v2152, a5, a6, a7, a8, v2156, v2155, v2154, v2150);
                v2156 = a10;
                v2155 = a11;
                v2154 = a13;
                v2153 = a15;
                v2152 = a16;
                v2151 = v3095;
                v2150 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v719 = a17;
            v720 = v3095;
            if (!v718 && a12)
            {
              v721 = a16;
              v722 = a15;
              v723 = a13;
              v724 = a11;
              v725 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v720 + a9 * v722, a4 + a9 * v721, a5, a6, a7, a8, v725, v724, v723, v719);
                v725 = a10;
                v724 = a11;
                v723 = a13;
                v722 = a15;
                v721 = a16;
                v720 = v3095;
                v719 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v718 == 4)
        {
          v2157 = a17;
          v2158 = v3095;
          if (a12)
          {
            v2159 = a16;
            v2160 = a15;
            v2161 = a13;
            v2162 = a11;
            v2163 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2158 + a9 * v2160, a4 + a9 * v2159, a5, a6, a7, a8, v2163, v2162, v2161, v2157);
              v2163 = a10;
              v2162 = a11;
              v2161 = a13;
              v2160 = a15;
              v2159 = a16;
              v2158 = v3095;
              v2157 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1373 = a17;
          v1374 = v3095;
          if (!v718 && a12)
          {
            v1375 = a16;
            v1376 = a15;
            v1377 = a13;
            v1378 = a11;
            v1379 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1374 + a9 * v1376, a4 + a9 * v1375, a5, a6, a7, a8, v1379, v1378, v1377, v1373);
              v1379 = a10;
              v1378 = a11;
              v1377 = a13;
              v1376 = a15;
              v1375 = a16;
              v1374 = v3095;
              v1373 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 73:
        v3066 = *(a1 + 396);
        v1006 = getCompressionCodecConfig(*(a1 + 56));
        if (v3066 == 1)
        {
          if (v1006 == 4)
          {
            v2668 = a17;
            v2669 = v3095;
            if (a12)
            {
              v2670 = a16;
              v2671 = a15;
              v2672 = a13;
              v2673 = a11;
              v2674 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2669 + a9 * v2671, a4 + a9 * v2670, a5, a6, a7, a8, v2674, v2673, v2672, v2668);
                v2674 = a10;
                v2673 = a11;
                v2672 = a13;
                v2671 = a15;
                v2670 = a16;
                v2669 = v3095;
                v2668 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1007 = a17;
            v1008 = v3095;
            if (!v1006 && a12)
            {
              v1009 = a16;
              v1010 = a15;
              v1011 = a13;
              v1012 = a11;
              v1013 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1008 + a9 * v1010, a4 + a9 * v1009, a5, a6, a7, a8, v1013, v1012, v1011, v1007);
                v1013 = a10;
                v1012 = a11;
                v1011 = a13;
                v1010 = a15;
                v1009 = a16;
                v1008 = v3095;
                v1007 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1006 == 4)
        {
          v2675 = a17;
          v2676 = v3095;
          if (a12)
          {
            v2677 = a16;
            v2678 = a15;
            v2679 = a13;
            v2680 = a11;
            v2681 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2676 + a9 * v2678, a4 + a9 * v2677, a5, a6, a7, a8, v2681, v2680, v2679, v2675);
              v2681 = a10;
              v2680 = a11;
              v2679 = a13;
              v2678 = a15;
              v2677 = a16;
              v2676 = v3095;
              v2675 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1632 = a17;
          v1633 = v3095;
          if (!v1006 && a12)
          {
            v1634 = a16;
            v1635 = a15;
            v1636 = a13;
            v1637 = a11;
            v1638 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1633 + a9 * v1635, a4 + a9 * v1634, a5, a6, a7, a8, v1638, v1637, v1636, v1632);
              v1638 = a10;
              v1637 = a11;
              v1636 = a13;
              v1635 = a15;
              v1634 = a16;
              v1633 = v3095;
              v1632 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 74:
        v3080 = *(a1 + 396);
        v1118 = getCompressionCodecConfig(*(a1 + 56));
        if (v3080 == 1)
        {
          if (v1118 == 4)
          {
            v2864 = a17;
            v2865 = v3095;
            if (a12)
            {
              v2866 = a16;
              v2867 = a15;
              v2868 = a13;
              v2869 = a11;
              v2870 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2865 + a9 * v2867, a4 + a9 * v2866, a5, a6, a7, a8, v2870, v2869, v2868, v2864);
                v2870 = a10;
                v2869 = a11;
                v2868 = a13;
                v2867 = a15;
                v2866 = a16;
                v2865 = v3095;
                v2864 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1119 = a17;
            v1120 = v3095;
            if (!v1118 && a12)
            {
              v1121 = a16;
              v1122 = a15;
              v1123 = a13;
              v1124 = a11;
              v1125 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1120 + a9 * v1122, a4 + a9 * v1121, a5, a6, a7, a8, v1125, v1124, v1123, v1119);
                v1125 = a10;
                v1124 = a11;
                v1123 = a13;
                v1122 = a15;
                v1121 = a16;
                v1120 = v3095;
                v1119 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1118 == 4)
        {
          v2871 = a17;
          v2872 = v3095;
          if (a12)
          {
            v2873 = a16;
            v2874 = a15;
            v2875 = a13;
            v2876 = a11;
            v2877 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2872 + a9 * v2874, a4 + a9 * v2873, a5, a6, a7, a8, v2877, v2876, v2875, v2871);
              v2877 = a10;
              v2876 = a11;
              v2875 = a13;
              v2874 = a15;
              v2873 = a16;
              v2872 = v3095;
              v2871 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1730 = a17;
          v1731 = v3095;
          if (!v1118 && a12)
          {
            v1732 = a16;
            v1733 = a15;
            v1734 = a13;
            v1735 = a11;
            v1736 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1731 + a9 * v1733, a4 + a9 * v1732, a5, a6, a7, a8, v1736, v1735, v1734, v1730);
              v1736 = a10;
              v1735 = a11;
              v1734 = a13;
              v1733 = a15;
              v1732 = a16;
              v1731 = v3095;
              v1730 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 80:
        v3023 = *(a1 + 396);
        v662 = getCompressionCodecConfig(*(a1 + 56));
        if (v3023 == 1)
        {
          if (v662 == 4)
          {
            v2052 = a17;
            v2053 = v3095;
            if (a12)
            {
              v2054 = a16;
              v2055 = a15;
              v2056 = a13;
              v2057 = a11;
              v2058 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2053 + a9 * v2055, a4 + a9 * v2054, a5, a6, a7, a8, v2058, v2057, v2056, v2052);
                v2058 = a10;
                v2057 = a11;
                v2056 = a13;
                v2055 = a15;
                v2054 = a16;
                v2053 = v3095;
                v2052 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v663 = a17;
            v664 = v3095;
            if (!v662 && a12)
            {
              v665 = a16;
              v666 = a15;
              v667 = a13;
              v668 = a11;
              v669 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v664 + a9 * v666, a4 + a9 * v665, a5, a6, a7, a8, v669, v668, v667, v663);
                v669 = a10;
                v668 = a11;
                v667 = a13;
                v666 = a15;
                v665 = a16;
                v664 = v3095;
                v663 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v662 == 4)
        {
          v2059 = a17;
          v2060 = v3095;
          if (a12)
          {
            v2061 = a16;
            v2062 = a15;
            v2063 = a13;
            v2064 = a11;
            v2065 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2060 + a9 * v2062, a4 + a9 * v2061, a5, a6, a7, a8, v2065, v2064, v2063, v2059);
              v2065 = a10;
              v2064 = a11;
              v2063 = a13;
              v2062 = a15;
              v2061 = a16;
              v2060 = v3095;
              v2059 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1324 = a17;
          v1325 = v3095;
          if (!v662 && a12)
          {
            v1326 = a16;
            v1327 = a15;
            v1328 = a13;
            v1329 = a11;
            v1330 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1325 + a9 * v1327, a4 + a9 * v1326, a5, a6, a7, a8, v1330, v1329, v1328, v1324);
              v1330 = a10;
              v1329 = a11;
              v1328 = a13;
              v1327 = a15;
              v1326 = a16;
              v1325 = v3095;
              v1324 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 81:
        v3059 = *(a1 + 396);
        v950 = getCompressionCodecConfig(*(a1 + 56));
        if (v3059 == 1)
        {
          if (v950 == 4)
          {
            v2570 = a17;
            v2571 = v3095;
            if (a12)
            {
              v2572 = a16;
              v2573 = a15;
              v2574 = a13;
              v2575 = a11;
              v2576 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2571 + a9 * v2573, a4 + a9 * v2572, a5, a6, a7, a8, v2576, v2575, v2574, v2570);
                v2576 = a10;
                v2575 = a11;
                v2574 = a13;
                v2573 = a15;
                v2572 = a16;
                v2571 = v3095;
                v2570 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v951 = a17;
            v952 = v3095;
            if (!v950 && a12)
            {
              v953 = a16;
              v954 = a15;
              v955 = a13;
              v956 = a11;
              v957 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v952 + a9 * v954, a4 + a9 * v953, a5, a6, a7, a8, v957, v956, v955, v951);
                v957 = a10;
                v956 = a11;
                v955 = a13;
                v954 = a15;
                v953 = a16;
                v952 = v3095;
                v951 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v950 == 4)
        {
          v2577 = a17;
          v2578 = v3095;
          if (a12)
          {
            v2579 = a16;
            v2580 = a15;
            v2581 = a13;
            v2582 = a11;
            v2583 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2578 + a9 * v2580, a4 + a9 * v2579, a5, a6, a7, a8, v2583, v2582, v2581, v2577);
              v2583 = a10;
              v2582 = a11;
              v2581 = a13;
              v2580 = a15;
              v2579 = a16;
              v2578 = v3095;
              v2577 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1583 = a17;
          v1584 = v3095;
          if (!v950 && a12)
          {
            v1585 = a16;
            v1586 = a15;
            v1587 = a13;
            v1588 = a11;
            v1589 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1584 + a9 * v1586, a4 + a9 * v1585, a5, a6, a7, a8, v1589, v1588, v1587, v1583);
              v1589 = a10;
              v1588 = a11;
              v1587 = a13;
              v1586 = a15;
              v1585 = a16;
              v1584 = v3095;
              v1583 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 84:
        v3022 = *(a1 + 396);
        v654 = getCompressionCodecConfig(*(a1 + 56));
        if (v3022 == 1)
        {
          if (v654 == 4)
          {
            v2038 = a17;
            v2039 = v3095;
            if (a12)
            {
              v2040 = a16;
              v2041 = a15;
              v2042 = a13;
              v2043 = a11;
              v2044 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2039 + a9 * v2041, a4 + a9 * v2040, a5, a6, a7, a8, v2044, v2043, v2042, v2038);
                v2044 = a10;
                v2043 = a11;
                v2042 = a13;
                v2041 = a15;
                v2040 = a16;
                v2039 = v3095;
                v2038 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v655 = a17;
            v656 = v3095;
            if (!v654 && a12)
            {
              v657 = a16;
              v658 = a15;
              v659 = a13;
              v660 = a11;
              v661 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v656 + a9 * v658, a4 + a9 * v657, a5, a6, a7, a8, v661, v660, v659, v655);
                v661 = a10;
                v660 = a11;
                v659 = a13;
                v658 = a15;
                v657 = a16;
                v656 = v3095;
                v655 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v654 == 4)
        {
          v2045 = a17;
          v2046 = v3095;
          if (a12)
          {
            v2047 = a16;
            v2048 = a15;
            v2049 = a13;
            v2050 = a11;
            v2051 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2046 + a9 * v2048, a4 + a9 * v2047, a5, a6, a7, a8, v2051, v2050, v2049, v2045);
              v2051 = a10;
              v2050 = a11;
              v2049 = a13;
              v2048 = a15;
              v2047 = a16;
              v2046 = v3095;
              v2045 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1317 = a17;
          v1318 = v3095;
          if (!v654 && a12)
          {
            v1319 = a16;
            v1320 = a15;
            v1321 = a13;
            v1322 = a11;
            v1323 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1318 + a9 * v1320, a4 + a9 * v1319, a5, a6, a7, a8, v1323, v1322, v1321, v1317);
              v1323 = a10;
              v1322 = a11;
              v1321 = a13;
              v1320 = a15;
              v1319 = a16;
              v1318 = v3095;
              v1317 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 85:
        v3020 = *(a1 + 396);
        v638 = getCompressionCodecConfig(*(a1 + 56));
        if (v3020 == 1)
        {
          if (v638 == 4)
          {
            v2010 = a17;
            v2011 = v3095;
            if (a12)
            {
              v2012 = a16;
              v2013 = a15;
              v2014 = a13;
              v2015 = a11;
              v2016 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2011 + a9 * v2013, a4 + a9 * v2012, a5, a6, a7, a8, v2016, v2015, v2014, v2010);
                v2016 = a10;
                v2015 = a11;
                v2014 = a13;
                v2013 = a15;
                v2012 = a16;
                v2011 = v3095;
                v2010 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v639 = a17;
            v640 = v3095;
            if (!v638 && a12)
            {
              v641 = a16;
              v642 = a15;
              v643 = a13;
              v644 = a11;
              v645 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v640 + a9 * v642, a4 + a9 * v641, a5, a6, a7, a8, v645, v644, v643, v639);
                v645 = a10;
                v644 = a11;
                v643 = a13;
                v642 = a15;
                v641 = a16;
                v640 = v3095;
                v639 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v638 == 4)
        {
          v2017 = a17;
          v2018 = v3095;
          if (a12)
          {
            v2019 = a16;
            v2020 = a15;
            v2021 = a13;
            v2022 = a11;
            v2023 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2018 + a9 * v2020, a4 + a9 * v2019, a5, a6, a7, a8, v2023, v2022, v2021, v2017);
              v2023 = a10;
              v2022 = a11;
              v2021 = a13;
              v2020 = a15;
              v2019 = a16;
              v2018 = v3095;
              v2017 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1303 = a17;
          v1304 = v3095;
          if (!v638 && a12)
          {
            v1305 = a16;
            v1306 = a15;
            v1307 = a13;
            v1308 = a11;
            v1309 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1304 + a9 * v1306, a4 + a9 * v1305, a5, a6, a7, a8, v1309, v1308, v1307, v1303);
              v1309 = a10;
              v1308 = a11;
              v1307 = a13;
              v1306 = a15;
              v1305 = a16;
              v1304 = v3095;
              v1303 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 90:
        v3037 = *(a1 + 396);
        v774 = getCompressionCodecConfig(*(a1 + 56));
        if (v3037 == 1)
        {
          if (v774 == 4)
          {
            v2248 = a17;
            v2249 = v3095;
            if (a12)
            {
              v2250 = a16;
              v2251 = a15;
              v2252 = a13;
              v2253 = a11;
              v2254 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2249 + a9 * v2251, a4 + a9 * v2250, a5, a6, a7, a8, v2254, v2253, v2252, v2248);
                v2254 = a10;
                v2253 = a11;
                v2252 = a13;
                v2251 = a15;
                v2250 = a16;
                v2249 = v3095;
                v2248 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v775 = a17;
            v776 = v3095;
            if (!v774 && a12)
            {
              v777 = a16;
              v778 = a15;
              v779 = a13;
              v780 = a11;
              v781 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v776 + a9 * v778, a4 + a9 * v777, a5, a6, a7, a8, v781, v780, v779, v775);
                v781 = a10;
                v780 = a11;
                v779 = a13;
                v778 = a15;
                v777 = a16;
                v776 = v3095;
                v775 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v774 == 4)
        {
          v2255 = a17;
          v2256 = v3095;
          if (a12)
          {
            v2257 = a16;
            v2258 = a15;
            v2259 = a13;
            v2260 = a11;
            v2261 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2256 + a9 * v2258, a4 + a9 * v2257, a5, a6, a7, a8, v2261, v2260, v2259, v2255);
              v2261 = a10;
              v2260 = a11;
              v2259 = a13;
              v2258 = a15;
              v2257 = a16;
              v2256 = v3095;
              v2255 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1422 = a17;
          v1423 = v3095;
          if (!v774 && a12)
          {
            v1424 = a16;
            v1425 = a15;
            v1426 = a13;
            v1427 = a11;
            v1428 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1423 + a9 * v1425, a4 + a9 * v1424, a5, a6, a7, a8, v1428, v1427, v1426, v1422);
              v1428 = a10;
              v1427 = a11;
              v1426 = a13;
              v1425 = a15;
              v1424 = a16;
              v1423 = v3095;
              v1422 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 91:
        v3052 = *(a1 + 396);
        v894 = getCompressionCodecConfig(*(a1 + 56));
        if (v3052 == 1)
        {
          if (v894 == 4)
          {
            v2472 = a17;
            v2473 = v3095;
            if (a12)
            {
              v2474 = a16;
              v2475 = a15;
              v2476 = a13;
              v2477 = a11;
              v2478 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2473 + a9 * v2475, a4 + a9 * v2474, a5, a6, a7, a8, v2478, v2477, v2476, v2472);
                v2478 = a10;
                v2477 = a11;
                v2476 = a13;
                v2475 = a15;
                v2474 = a16;
                v2473 = v3095;
                v2472 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v895 = a17;
            v896 = v3095;
            if (!v894 && a12)
            {
              v897 = a16;
              v898 = a15;
              v899 = a13;
              v900 = a11;
              v901 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v896 + a9 * v898, a4 + a9 * v897, a5, a6, a7, a8, v901, v900, v899, v895);
                v901 = a10;
                v900 = a11;
                v899 = a13;
                v898 = a15;
                v897 = a16;
                v896 = v3095;
                v895 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v894 == 4)
        {
          v2479 = a17;
          v2480 = v3095;
          if (a12)
          {
            v2481 = a16;
            v2482 = a15;
            v2483 = a13;
            v2484 = a11;
            v2485 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2480 + a9 * v2482, a4 + a9 * v2481, a5, a6, a7, a8, v2485, v2484, v2483, v2479);
              v2485 = a10;
              v2484 = a11;
              v2483 = a13;
              v2482 = a15;
              v2481 = a16;
              v2480 = v3095;
              v2479 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1534 = a17;
          v1535 = v3095;
          if (!v894 && a12)
          {
            v1536 = a16;
            v1537 = a15;
            v1538 = a13;
            v1539 = a11;
            v1540 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1535 + a9 * v1537, a4 + a9 * v1536, a5, a6, a7, a8, v1540, v1539, v1538, v1534);
              v1540 = a10;
              v1539 = a11;
              v1538 = a13;
              v1537 = a15;
              v1536 = a16;
              v1535 = v3095;
              v1534 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 92:
        v3070 = *(a1 + 396);
        v1038 = getCompressionCodecConfig(*(a1 + 56));
        if (v3070 == 1)
        {
          if (v1038 == 4)
          {
            v2724 = a17;
            v2725 = v3095;
            if (a12)
            {
              v2726 = a16;
              v2727 = a15;
              v2728 = a13;
              v2729 = a11;
              v2730 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2725 + a9 * v2727, a4 + a9 * v2726, a5, a6, a7, a8, v2730, v2729, v2728, v2724);
                v2730 = a10;
                v2729 = a11;
                v2728 = a13;
                v2727 = a15;
                v2726 = a16;
                v2725 = v3095;
                v2724 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1039 = a17;
            v1040 = v3095;
            if (!v1038 && a12)
            {
              v1041 = a16;
              v1042 = a15;
              v1043 = a13;
              v1044 = a11;
              v1045 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1040 + a9 * v1042, a4 + a9 * v1041, a5, a6, a7, a8, v1045, v1044, v1043, v1039);
                v1045 = a10;
                v1044 = a11;
                v1043 = a13;
                v1042 = a15;
                v1041 = a16;
                v1040 = v3095;
                v1039 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1038 == 4)
        {
          v2731 = a17;
          v2732 = v3095;
          if (a12)
          {
            v2733 = a16;
            v2734 = a15;
            v2735 = a13;
            v2736 = a11;
            v2737 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2732 + a9 * v2734, a4 + a9 * v2733, a5, a6, a7, a8, v2737, v2736, v2735, v2731);
              v2737 = a10;
              v2736 = a11;
              v2735 = a13;
              v2734 = a15;
              v2733 = a16;
              v2732 = v3095;
              v2731 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1660 = a17;
          v1661 = v3095;
          if (!v1038 && a12)
          {
            v1662 = a16;
            v1663 = a15;
            v1664 = a13;
            v1665 = a11;
            v1666 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1661 + a9 * v1663, a4 + a9 * v1662, a5, a6, a7, a8, v1666, v1665, v1664, v1660);
              v1666 = a10;
              v1665 = a11;
              v1664 = a13;
              v1663 = a15;
              v1662 = a16;
              v1661 = v3095;
              v1660 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 93:
        v3013 = *(a1 + 396);
        v582 = getCompressionCodecConfig(*(a1 + 56));
        if (v3013 == 1)
        {
          if (v582 == 4)
          {
            v1912 = a17;
            v1913 = v3095;
            if (a12)
            {
              v1914 = a16;
              v1915 = a15;
              v1916 = a13;
              v1917 = a11;
              v1918 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1913 + a9 * v1915, a4 + a9 * v1914, a5, a6, a7, a8, v1918, v1917, v1916, v1912);
                v1918 = a10;
                v1917 = a11;
                v1916 = a13;
                v1915 = a15;
                v1914 = a16;
                v1913 = v3095;
                v1912 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v583 = a17;
            v584 = v3095;
            if (!v582 && a12)
            {
              v585 = a16;
              v586 = a15;
              v587 = a13;
              v588 = a11;
              v589 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v584 + a9 * v586, a4 + a9 * v585, a5, a6, a7, a8, v589, v588, v587, v583);
                v589 = a10;
                v588 = a11;
                v587 = a13;
                v586 = a15;
                v585 = a16;
                v584 = v3095;
                v583 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v582 == 4)
        {
          v1919 = a17;
          v1920 = v3095;
          if (a12)
          {
            v1921 = a16;
            v1922 = a15;
            v1923 = a13;
            v1924 = a11;
            v1925 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1920 + a9 * v1922, a4 + a9 * v1921, a5, a6, a7, a8, v1925, v1924, v1923, v1919);
              v1925 = a10;
              v1924 = a11;
              v1923 = a13;
              v1922 = a15;
              v1921 = a16;
              v1920 = v3095;
              v1919 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1254 = a17;
          v1255 = v3095;
          if (!v582 && a12)
          {
            v1256 = a16;
            v1257 = a15;
            v1258 = a13;
            v1259 = a11;
            v1260 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1255 + a9 * v1257, a4 + a9 * v1256, a5, a6, a7, a8, v1260, v1259, v1258, v1254);
              v1260 = a10;
              v1259 = a11;
              v1258 = a13;
              v1257 = a15;
              v1256 = a16;
              v1255 = v3095;
              v1254 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 94:
        v3025 = *(a1 + 396);
        v678 = getCompressionCodecConfig(*(a1 + 56));
        if (v3025 == 1)
        {
          if (v678 == 4)
          {
            v2080 = a17;
            v2081 = v3095;
            if (a12)
            {
              v2082 = a16;
              v2083 = a15;
              v2084 = a13;
              v2085 = a11;
              v2086 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2081 + a9 * v2083, a4 + a9 * v2082, a5, a6, a7, a8, v2086, v2085, v2084, v2080);
                v2086 = a10;
                v2085 = a11;
                v2084 = a13;
                v2083 = a15;
                v2082 = a16;
                v2081 = v3095;
                v2080 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v679 = a17;
            v680 = v3095;
            if (!v678 && a12)
            {
              v681 = a16;
              v682 = a15;
              v683 = a13;
              v684 = a11;
              v685 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v680 + a9 * v682, a4 + a9 * v681, a5, a6, a7, a8, v685, v684, v683, v679);
                v685 = a10;
                v684 = a11;
                v683 = a13;
                v682 = a15;
                v681 = a16;
                v680 = v3095;
                v679 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v678 == 4)
        {
          v2087 = a17;
          v2088 = v3095;
          if (a12)
          {
            v2089 = a16;
            v2090 = a15;
            v2091 = a13;
            v2092 = a11;
            v2093 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2088 + a9 * v2090, a4 + a9 * v2089, a5, a6, a7, a8, v2093, v2092, v2091, v2087);
              v2093 = a10;
              v2092 = a11;
              v2091 = a13;
              v2090 = a15;
              v2089 = a16;
              v2088 = v3095;
              v2087 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1338 = a17;
          v1339 = v3095;
          if (!v678 && a12)
          {
            v1340 = a16;
            v1341 = a15;
            v1342 = a13;
            v1343 = a11;
            v1344 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1339 + a9 * v1341, a4 + a9 * v1340, a5, a6, a7, a8, v1344, v1343, v1342, v1338);
              v1344 = a10;
              v1343 = a11;
              v1342 = a13;
              v1341 = a15;
              v1340 = a16;
              v1339 = v3095;
              v1338 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 103:
        v3053 = *(a1 + 396);
        v902 = getCompressionCodecConfig(*(a1 + 56));
        if (v3053 == 1)
        {
          if (v902 == 4)
          {
            v2486 = a17;
            v2487 = v3095;
            if (a12)
            {
              v2488 = a16;
              v2489 = a15;
              v2490 = a13;
              v2491 = a11;
              v2492 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2487 + a9 * v2489, a4 + a9 * v2488, a5, a6, a7, a8, v2492, v2491, v2490, v2486);
                v2492 = a10;
                v2491 = a11;
                v2490 = a13;
                v2489 = a15;
                v2488 = a16;
                v2487 = v3095;
                v2486 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v903 = a17;
            v904 = v3095;
            if (!v902 && a12)
            {
              v905 = a16;
              v906 = a15;
              v907 = a13;
              v908 = a11;
              v909 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v904 + a9 * v906, a4 + a9 * v905, a5, a6, a7, a8, v909, v908, v907, v903);
                v909 = a10;
                v908 = a11;
                v907 = a13;
                v906 = a15;
                v905 = a16;
                v904 = v3095;
                v903 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v902 == 4)
        {
          v2493 = a17;
          v2494 = v3095;
          if (a12)
          {
            v2495 = a16;
            v2496 = a15;
            v2497 = a13;
            v2498 = a11;
            v2499 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2494 + a9 * v2496, a4 + a9 * v2495, a5, a6, a7, a8, v2499, v2498, v2497, v2493);
              v2499 = a10;
              v2498 = a11;
              v2497 = a13;
              v2496 = a15;
              v2495 = a16;
              v2494 = v3095;
              v2493 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1541 = a17;
          v1542 = v3095;
          if (!v902 && a12)
          {
            v1543 = a16;
            v1544 = a15;
            v1545 = a13;
            v1546 = a11;
            v1547 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1542 + a9 * v1544, a4 + a9 * v1543, a5, a6, a7, a8, v1547, v1546, v1545, v1541);
              v1547 = a10;
              v1546 = a11;
              v1545 = a13;
              v1544 = a15;
              v1543 = a16;
              v1542 = v3095;
              v1541 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 104:
        v3058 = *(a1 + 396);
        v942 = getCompressionCodecConfig(*(a1 + 56));
        if (v3058 == 1)
        {
          if (v942 == 4)
          {
            v2556 = a17;
            v2557 = v3095;
            if (a12)
            {
              v2558 = a16;
              v2559 = a15;
              v2560 = a13;
              v2561 = a11;
              v2562 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2557 + a9 * v2559, a4 + a9 * v2558, a5, a6, a7, a8, v2562, v2561, v2560, v2556);
                v2562 = a10;
                v2561 = a11;
                v2560 = a13;
                v2559 = a15;
                v2558 = a16;
                v2557 = v3095;
                v2556 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v943 = a17;
            v944 = v3095;
            if (!v942 && a12)
            {
              v945 = a16;
              v946 = a15;
              v947 = a13;
              v948 = a11;
              v949 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v944 + a9 * v946, a4 + a9 * v945, a5, a6, a7, a8, v949, v948, v947, v943);
                v949 = a10;
                v948 = a11;
                v947 = a13;
                v946 = a15;
                v945 = a16;
                v944 = v3095;
                v943 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v942 == 4)
        {
          v2563 = a17;
          v2564 = v3095;
          if (a12)
          {
            v2565 = a16;
            v2566 = a15;
            v2567 = a13;
            v2568 = a11;
            v2569 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2564 + a9 * v2566, a4 + a9 * v2565, a5, a6, a7, a8, v2569, v2568, v2567, v2563);
              v2569 = a10;
              v2568 = a11;
              v2567 = a13;
              v2566 = a15;
              v2565 = a16;
              v2564 = v3095;
              v2563 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1576 = a17;
          v1577 = v3095;
          if (!v942 && a12)
          {
            v1578 = a16;
            v1579 = a15;
            v1580 = a13;
            v1581 = a11;
            v1582 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1577 + a9 * v1579, a4 + a9 * v1578, a5, a6, a7, a8, v1582, v1581, v1580, v1576);
              v1582 = a10;
              v1581 = a11;
              v1580 = a13;
              v1579 = a15;
              v1578 = a16;
              v1577 = v3095;
              v1576 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 105:
        v3081 = *(a1 + 396);
        v1126 = getCompressionCodecConfig(*(a1 + 56));
        if (v3081 == 1)
        {
          if (v1126 == 4)
          {
            v2878 = a17;
            v2879 = v3095;
            if (a12)
            {
              v2880 = a16;
              v2881 = a15;
              v2882 = a13;
              v2883 = a11;
              v2884 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2879 + a9 * v2881, a4 + a9 * v2880, a5, a6, a7, a8, v2884, v2883, v2882, v2878);
                v2884 = a10;
                v2883 = a11;
                v2882 = a13;
                v2881 = a15;
                v2880 = a16;
                v2879 = v3095;
                v2878 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1127 = a17;
            v1128 = v3095;
            if (!v1126 && a12)
            {
              v1129 = a16;
              v1130 = a15;
              v1131 = a13;
              v1132 = a11;
              v1133 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1128 + a9 * v1130, a4 + a9 * v1129, a5, a6, a7, a8, v1133, v1132, v1131, v1127);
                v1133 = a10;
                v1132 = a11;
                v1131 = a13;
                v1130 = a15;
                v1129 = a16;
                v1128 = v3095;
                v1127 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1126 == 4)
        {
          v2885 = a17;
          v2886 = v3095;
          if (a12)
          {
            v2887 = a16;
            v2888 = a15;
            v2889 = a13;
            v2890 = a11;
            v2891 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2886 + a9 * v2888, a4 + a9 * v2887, a5, a6, a7, a8, v2891, v2890, v2889, v2885);
              v2891 = a10;
              v2890 = a11;
              v2889 = a13;
              v2888 = a15;
              v2887 = a16;
              v2886 = v3095;
              v2885 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1737 = a17;
          v1738 = v3095;
          if (!v1126 && a12)
          {
            v1739 = a16;
            v1740 = a15;
            v1741 = a13;
            v1742 = a11;
            v1743 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1738 + a9 * v1740, a4 + a9 * v1739, a5, a6, a7, a8, v1743, v1742, v1741, v1737);
              v1743 = a10;
              v1742 = a11;
              v1741 = a13;
              v1740 = a15;
              v1739 = a16;
              v1738 = v3095;
              v1737 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 110:
        v3056 = *(a1 + 396);
        v926 = getCompressionCodecConfig(*(a1 + 56));
        if (v3056 == 1)
        {
          if (v926 == 4)
          {
            v2528 = a17;
            v2529 = v3095;
            if (a12)
            {
              v2530 = a16;
              v2531 = a15;
              v2532 = a13;
              v2533 = a11;
              v2534 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2529 + a9 * v2531, a4 + a9 * v2530, a5, a6, a7, a8, v2534, v2533, v2532, v2528);
                v2534 = a10;
                v2533 = a11;
                v2532 = a13;
                v2531 = a15;
                v2530 = a16;
                v2529 = v3095;
                v2528 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v927 = a17;
            v928 = v3095;
            if (!v926 && a12)
            {
              v929 = a16;
              v930 = a15;
              v931 = a13;
              v932 = a11;
              v933 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v928 + a9 * v930, a4 + a9 * v929, a5, a6, a7, a8, v933, v932, v931, v927);
                v933 = a10;
                v932 = a11;
                v931 = a13;
                v930 = a15;
                v929 = a16;
                v928 = v3095;
                v927 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v926 == 4)
        {
          v2535 = a17;
          v2536 = v3095;
          if (a12)
          {
            v2537 = a16;
            v2538 = a15;
            v2539 = a13;
            v2540 = a11;
            v2541 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2536 + a9 * v2538, a4 + a9 * v2537, a5, a6, a7, a8, v2541, v2540, v2539, v2535);
              v2541 = a10;
              v2540 = a11;
              v2539 = a13;
              v2538 = a15;
              v2537 = a16;
              v2536 = v3095;
              v2535 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1562 = a17;
          v1563 = v3095;
          if (!v926 && a12)
          {
            v1564 = a16;
            v1565 = a15;
            v1566 = a13;
            v1567 = a11;
            v1568 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1563 + a9 * v1565, a4 + a9 * v1564, a5, a6, a7, a8, v1568, v1567, v1566, v1562);
              v1568 = a10;
              v1567 = a11;
              v1566 = a13;
              v1565 = a15;
              v1564 = a16;
              v1563 = v3095;
              v1562 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 112:
        v3017 = *(a1 + 396);
        v614 = getCompressionCodecConfig(*(a1 + 56));
        if (v3017 == 1)
        {
          if (v614 == 4)
          {
            v1968 = a17;
            v1969 = v3095;
            if (a12)
            {
              v1970 = a16;
              v1971 = a15;
              v1972 = a13;
              v1973 = a11;
              v1974 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1969 + a9 * v1971, a4 + a9 * v1970, a5, a6, a7, a8, v1974, v1973, v1972, v1968);
                v1974 = a10;
                v1973 = a11;
                v1972 = a13;
                v1971 = a15;
                v1970 = a16;
                v1969 = v3095;
                v1968 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v615 = a17;
            v616 = v3095;
            if (!v614 && a12)
            {
              v617 = a16;
              v618 = a15;
              v619 = a13;
              v620 = a11;
              v621 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v616 + a9 * v618, a4 + a9 * v617, a5, a6, a7, a8, v621, v620, v619, v615);
                v621 = a10;
                v620 = a11;
                v619 = a13;
                v618 = a15;
                v617 = a16;
                v616 = v3095;
                v615 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v614 == 4)
        {
          v1975 = a17;
          v1976 = v3095;
          if (a12)
          {
            v1977 = a16;
            v1978 = a15;
            v1979 = a13;
            v1980 = a11;
            v1981 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1976 + a9 * v1978, a4 + a9 * v1977, a5, a6, a7, a8, v1981, v1980, v1979, v1975);
              v1981 = a10;
              v1980 = a11;
              v1979 = a13;
              v1978 = a15;
              v1977 = a16;
              v1976 = v3095;
              v1975 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1282 = a17;
          v1283 = v3095;
          if (!v614 && a12)
          {
            v1284 = a16;
            v1285 = a15;
            v1286 = a13;
            v1287 = a11;
            v1288 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1283 + a9 * v1285, a4 + a9 * v1284, a5, a6, a7, a8, v1288, v1287, v1286, v1282);
              v1288 = a10;
              v1287 = a11;
              v1286 = a13;
              v1285 = a15;
              v1284 = a16;
              v1283 = v3095;
              v1282 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 113:
        v3014 = *(a1 + 396);
        v590 = getCompressionCodecConfig(*(a1 + 56));
        if (v3014 == 1)
        {
          if (v590 == 4)
          {
            v1926 = a17;
            v1927 = v3095;
            if (a12)
            {
              v1928 = a16;
              v1929 = a15;
              v1930 = a13;
              v1931 = a11;
              v1932 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1927 + a9 * v1929, a4 + a9 * v1928, a5, a6, a7, a8, v1932, v1931, v1930, v1926);
                v1932 = a10;
                v1931 = a11;
                v1930 = a13;
                v1929 = a15;
                v1928 = a16;
                v1927 = v3095;
                v1926 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v591 = a17;
            v592 = v3095;
            if (!v590 && a12)
            {
              v593 = a16;
              v594 = a15;
              v595 = a13;
              v596 = a11;
              v597 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v592 + a9 * v594, a4 + a9 * v593, a5, a6, a7, a8, v597, v596, v595, v591);
                v597 = a10;
                v596 = a11;
                v595 = a13;
                v594 = a15;
                v593 = a16;
                v592 = v3095;
                v591 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v590 == 4)
        {
          v1933 = a17;
          v1934 = v3095;
          if (a12)
          {
            v1935 = a16;
            v1936 = a15;
            v1937 = a13;
            v1938 = a11;
            v1939 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1934 + a9 * v1936, a4 + a9 * v1935, a5, a6, a7, a8, v1939, v1938, v1937, v1933);
              v1939 = a10;
              v1938 = a11;
              v1937 = a13;
              v1936 = a15;
              v1935 = a16;
              v1934 = v3095;
              v1933 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1261 = a17;
          v1262 = v3095;
          if (!v590 && a12)
          {
            v1263 = a16;
            v1264 = a15;
            v1265 = a13;
            v1266 = a11;
            v1267 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1262 + a9 * v1264, a4 + a9 * v1263, a5, a6, a7, a8, v1267, v1266, v1265, v1261);
              v1267 = a10;
              v1266 = a11;
              v1265 = a13;
              v1264 = a15;
              v1263 = a16;
              v1262 = v3095;
              v1261 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 114:
        v3085 = *(a1 + 396);
        v1158 = getCompressionCodecConfig(*(a1 + 56));
        if (v3085 == 1)
        {
          if (v1158 == 4)
          {
            v2934 = a17;
            v2935 = v3095;
            if (a12)
            {
              v2936 = a16;
              v2937 = a15;
              v2938 = a13;
              v2939 = a11;
              v2940 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2935 + a9 * v2937, a4 + a9 * v2936, a5, a6, a7, a8, v2940, v2939, v2938, v2934);
                v2940 = a10;
                v2939 = a11;
                v2938 = a13;
                v2937 = a15;
                v2936 = a16;
                v2935 = v3095;
                v2934 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1159 = a17;
            v1160 = v3095;
            if (!v1158 && a12)
            {
              v1161 = a16;
              v1162 = a15;
              v1163 = a13;
              v1164 = a11;
              v1165 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1160 + a9 * v1162, a4 + a9 * v1161, a5, a6, a7, a8, v1165, v1164, v1163, v1159);
                v1165 = a10;
                v1164 = a11;
                v1163 = a13;
                v1162 = a15;
                v1161 = a16;
                v1160 = v3095;
                v1159 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1158 == 4)
        {
          v2941 = a17;
          v2942 = v3095;
          if (a12)
          {
            v2943 = a16;
            v2944 = a15;
            v2945 = a13;
            v2946 = a11;
            v2947 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2942 + a9 * v2944, a4 + a9 * v2943, a5, a6, a7, a8, v2947, v2946, v2945, v2941);
              v2947 = a10;
              v2946 = a11;
              v2945 = a13;
              v2944 = a15;
              v2943 = a16;
              v2942 = v3095;
              v2941 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1765 = a17;
          v1766 = v3095;
          if (!v1158 && a12)
          {
            v1767 = a16;
            v1768 = a15;
            v1769 = a13;
            v1770 = a11;
            v1771 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1766 + a9 * v1768, a4 + a9 * v1767, a5, a6, a7, a8, v1771, v1770, v1769, v1765);
              v1771 = a10;
              v1770 = a11;
              v1769 = a13;
              v1768 = a15;
              v1767 = a16;
              v1766 = v3095;
              v1765 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 115:
        v3079 = *(a1 + 396);
        v1110 = getCompressionCodecConfig(*(a1 + 56));
        if (v3079 == 1)
        {
          if (v1110 == 4)
          {
            v2850 = a17;
            v2851 = v3095;
            if (a12)
            {
              v2852 = a16;
              v2853 = a15;
              v2854 = a13;
              v2855 = a11;
              v2856 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2851 + a9 * v2853, a4 + a9 * v2852, a5, a6, a7, a8, v2856, v2855, v2854, v2850);
                v2856 = a10;
                v2855 = a11;
                v2854 = a13;
                v2853 = a15;
                v2852 = a16;
                v2851 = v3095;
                v2850 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1111 = a17;
            v1112 = v3095;
            if (!v1110 && a12)
            {
              v1113 = a16;
              v1114 = a15;
              v1115 = a13;
              v1116 = a11;
              v1117 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1112 + a9 * v1114, a4 + a9 * v1113, a5, a6, a7, a8, v1117, v1116, v1115, v1111);
                v1117 = a10;
                v1116 = a11;
                v1115 = a13;
                v1114 = a15;
                v1113 = a16;
                v1112 = v3095;
                v1111 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1110 == 4)
        {
          v2857 = a17;
          v2858 = v3095;
          if (a12)
          {
            v2859 = a16;
            v2860 = a15;
            v2861 = a13;
            v2862 = a11;
            v2863 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2858 + a9 * v2860, a4 + a9 * v2859, a5, a6, a7, a8, v2863, v2862, v2861, v2857);
              v2863 = a10;
              v2862 = a11;
              v2861 = a13;
              v2860 = a15;
              v2859 = a16;
              v2858 = v3095;
              v2857 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1723 = a17;
          v1724 = v3095;
          if (!v1110 && a12)
          {
            v1725 = a16;
            v1726 = a15;
            v1727 = a13;
            v1728 = a11;
            v1729 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1724 + a9 * v1726, a4 + a9 * v1725, a5, a6, a7, a8, v1729, v1728, v1727, v1723);
              v1729 = a10;
              v1728 = a11;
              v1727 = a13;
              v1726 = a15;
              v1725 = a16;
              v1724 = v3095;
              v1723 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 116:
        v3016 = *(a1 + 396);
        v606 = getCompressionCodecConfig(*(a1 + 56));
        if (v3016 == 1)
        {
          if (v606 == 4)
          {
            v1954 = a17;
            v1955 = v3095;
            if (a12)
            {
              v1956 = a16;
              v1957 = a15;
              v1958 = a13;
              v1959 = a11;
              v1960 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1955 + a9 * v1957, a4 + a9 * v1956, a5, a6, a7, a8, v1960, v1959, v1958, v1954);
                v1960 = a10;
                v1959 = a11;
                v1958 = a13;
                v1957 = a15;
                v1956 = a16;
                v1955 = v3095;
                v1954 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v607 = a17;
            v608 = v3095;
            if (!v606 && a12)
            {
              v609 = a16;
              v610 = a15;
              v611 = a13;
              v612 = a11;
              v613 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v608 + a9 * v610, a4 + a9 * v609, a5, a6, a7, a8, v613, v612, v611, v607);
                v613 = a10;
                v612 = a11;
                v611 = a13;
                v610 = a15;
                v609 = a16;
                v608 = v3095;
                v607 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v606 == 4)
        {
          v1961 = a17;
          v1962 = v3095;
          if (a12)
          {
            v1963 = a16;
            v1964 = a15;
            v1965 = a13;
            v1966 = a11;
            v1967 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1962 + a9 * v1964, a4 + a9 * v1963, a5, a6, a7, a8, v1967, v1966, v1965, v1961);
              v1967 = a10;
              v1966 = a11;
              v1965 = a13;
              v1964 = a15;
              v1963 = a16;
              v1962 = v3095;
              v1961 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1275 = a17;
          v1276 = v3095;
          if (!v606 && a12)
          {
            v1277 = a16;
            v1278 = a15;
            v1279 = a13;
            v1280 = a11;
            v1281 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1276 + a9 * v1278, a4 + a9 * v1277, a5, a6, a7, a8, v1281, v1280, v1279, v1275);
              v1281 = a10;
              v1280 = a11;
              v1279 = a13;
              v1278 = a15;
              v1277 = a16;
              v1276 = v3095;
              v1275 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 123:
        v3060 = *(a1 + 396);
        v958 = getCompressionCodecConfig(*(a1 + 56));
        if (v3060 == 1)
        {
          if (v958 == 4)
          {
            v2584 = a17;
            v2585 = v3095;
            if (a12)
            {
              v2586 = a16;
              v2587 = a15;
              v2588 = a13;
              v2589 = a11;
              v2590 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2585 + a9 * v2587, a4 + a9 * v2586, a5, a6, a7, a8, v2590, v2589, v2588, v2584);
                v2590 = a10;
                v2589 = a11;
                v2588 = a13;
                v2587 = a15;
                v2586 = a16;
                v2585 = v3095;
                v2584 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v959 = a17;
            v960 = v3095;
            if (!v958 && a12)
            {
              v961 = a16;
              v962 = a15;
              v963 = a13;
              v964 = a11;
              v965 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v960 + a9 * v962, a4 + a9 * v961, a5, a6, a7, a8, v965, v964, v963, v959);
                v965 = a10;
                v964 = a11;
                v963 = a13;
                v962 = a15;
                v961 = a16;
                v960 = v3095;
                v959 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v958 == 4)
        {
          v2591 = a17;
          v2592 = v3095;
          if (a12)
          {
            v2593 = a16;
            v2594 = a15;
            v2595 = a13;
            v2596 = a11;
            v2597 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2592 + a9 * v2594, a4 + a9 * v2593, a5, a6, a7, a8, v2597, v2596, v2595, v2591);
              v2597 = a10;
              v2596 = a11;
              v2595 = a13;
              v2594 = a15;
              v2593 = a16;
              v2592 = v3095;
              v2591 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1590 = a17;
          v1591 = v3095;
          if (!v958 && a12)
          {
            v1592 = a16;
            v1593 = a15;
            v1594 = a13;
            v1595 = a11;
            v1596 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1591 + a9 * v1593, a4 + a9 * v1592, a5, a6, a7, a8, v1596, v1595, v1594, v1590);
              v1596 = a10;
              v1595 = a11;
              v1594 = a13;
              v1593 = a15;
              v1592 = a16;
              v1591 = v3095;
              v1590 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 124:
        v3068 = *(a1 + 396);
        v1022 = getCompressionCodecConfig(*(a1 + 56));
        if (v3068 == 1)
        {
          if (v1022 == 4)
          {
            v2696 = a17;
            v2697 = v3095;
            if (a12)
            {
              v2698 = a16;
              v2699 = a15;
              v2700 = a13;
              v2701 = a11;
              v2702 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2697 + a9 * v2699, a4 + a9 * v2698, a5, a6, a7, a8, v2702, v2701, v2700, v2696);
                v2702 = a10;
                v2701 = a11;
                v2700 = a13;
                v2699 = a15;
                v2698 = a16;
                v2697 = v3095;
                v2696 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1023 = a17;
            v1024 = v3095;
            if (!v1022 && a12)
            {
              v1025 = a16;
              v1026 = a15;
              v1027 = a13;
              v1028 = a11;
              v1029 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1024 + a9 * v1026, a4 + a9 * v1025, a5, a6, a7, a8, v1029, v1028, v1027, v1023);
                v1029 = a10;
                v1028 = a11;
                v1027 = a13;
                v1026 = a15;
                v1025 = a16;
                v1024 = v3095;
                v1023 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1022 == 4)
        {
          v2703 = a17;
          v2704 = v3095;
          if (a12)
          {
            v2705 = a16;
            v2706 = a15;
            v2707 = a13;
            v2708 = a11;
            v2709 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2704 + a9 * v2706, a4 + a9 * v2705, a5, a6, a7, a8, v2709, v2708, v2707, v2703);
              v2709 = a10;
              v2708 = a11;
              v2707 = a13;
              v2706 = a15;
              v2705 = a16;
              v2704 = v3095;
              v2703 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1646 = a17;
          v1647 = v3095;
          if (!v1022 && a12)
          {
            v1648 = a16;
            v1649 = a15;
            v1650 = a13;
            v1651 = a11;
            v1652 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1647 + a9 * v1649, a4 + a9 * v1648, a5, a6, a7, a8, v1652, v1651, v1650, v1646);
              v1652 = a10;
              v1651 = a11;
              v1650 = a13;
              v1649 = a15;
              v1648 = a16;
              v1647 = v3095;
              v1646 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 125:
        v3015 = *(a1 + 396);
        v598 = getCompressionCodecConfig(*(a1 + 56));
        if (v3015 == 1)
        {
          if (v598 == 4)
          {
            v1940 = a17;
            v1941 = v3095;
            if (a12)
            {
              v1942 = a16;
              v1943 = a15;
              v1944 = a13;
              v1945 = a11;
              v1946 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1941 + a9 * v1943, a4 + a9 * v1942, a5, a6, a7, a8, v1946, v1945, v1944, v1940);
                v1946 = a10;
                v1945 = a11;
                v1944 = a13;
                v1943 = a15;
                v1942 = a16;
                v1941 = v3095;
                v1940 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v599 = a17;
            v600 = v3095;
            if (!v598 && a12)
            {
              v601 = a16;
              v602 = a15;
              v603 = a13;
              v604 = a11;
              v605 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v600 + a9 * v602, a4 + a9 * v601, a5, a6, a7, a8, v605, v604, v603, v599);
                v605 = a10;
                v604 = a11;
                v603 = a13;
                v602 = a15;
                v601 = a16;
                v600 = v3095;
                v599 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v598 == 4)
        {
          v1947 = a17;
          v1948 = v3095;
          if (a12)
          {
            v1949 = a16;
            v1950 = a15;
            v1951 = a13;
            v1952 = a11;
            v1953 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1948 + a9 * v1950, a4 + a9 * v1949, a5, a6, a7, a8, v1953, v1952, v1951, v1947);
              v1953 = a10;
              v1952 = a11;
              v1951 = a13;
              v1950 = a15;
              v1949 = a16;
              v1948 = v3095;
              v1947 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1268 = a17;
          v1269 = v3095;
          if (!v598 && a12)
          {
            v1270 = a16;
            v1271 = a15;
            v1272 = a13;
            v1273 = a11;
            v1274 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1269 + a9 * v1271, a4 + a9 * v1270, a5, a6, a7, a8, v1274, v1273, v1272, v1268);
              v1274 = a10;
              v1273 = a11;
              v1272 = a13;
              v1271 = a15;
              v1270 = a16;
              v1269 = v3095;
              v1268 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 250:
        v3076 = *(a1 + 396);
        v1086 = getCompressionCodecConfig(*(a1 + 56));
        if (v3076 == 1)
        {
          if (v1086 == 4)
          {
            v2808 = a17;
            v2809 = v3095;
            if (a12)
            {
              v2810 = a16;
              v2811 = a15;
              v2812 = a13;
              v2813 = a11;
              v2814 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2809 + a9 * v2811, a4 + a9 * v2810, a5, a6, a7, a8, v2814, v2813, v2812, v2808);
                v2814 = a10;
                v2813 = a11;
                v2812 = a13;
                v2811 = a15;
                v2810 = a16;
                v2809 = v3095;
                v2808 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1087 = a17;
            v1088 = v3095;
            if (!v1086 && a12)
            {
              v1089 = a16;
              v1090 = a15;
              v1091 = a13;
              v1092 = a11;
              v1093 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1088 + a9 * v1090, a4 + a9 * v1089, a5, a6, a7, a8, v1093, v1092, v1091, v1087);
                v1093 = a10;
                v1092 = a11;
                v1091 = a13;
                v1090 = a15;
                v1089 = a16;
                v1088 = v3095;
                v1087 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1086 == 4)
        {
          v2815 = a17;
          v2816 = v3095;
          if (a12)
          {
            v2817 = a16;
            v2818 = a15;
            v2819 = a13;
            v2820 = a11;
            v2821 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2816 + a9 * v2818, a4 + a9 * v2817, a5, a6, a7, a8, v2821, v2820, v2819, v2815);
              v2821 = a10;
              v2820 = a11;
              v2819 = a13;
              v2818 = a15;
              v2817 = a16;
              v2816 = v3095;
              v2815 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1702 = a17;
          v1703 = v3095;
          if (!v1086 && a12)
          {
            v1704 = a16;
            v1705 = a15;
            v1706 = a13;
            v1707 = a11;
            v1708 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1703 + a9 * v1705, a4 + a9 * v1704, a5, a6, a7, a8, v1708, v1707, v1706, v1702);
              v1708 = a10;
              v1707 = a11;
              v1706 = a13;
              v1705 = a15;
              v1704 = a16;
              v1703 = v3095;
              v1702 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 252:
        v3071 = *(a1 + 396);
        v1046 = getCompressionCodecConfig(*(a1 + 56));
        if (v3071 == 1)
        {
          if (v1046 == 4)
          {
            v2738 = a17;
            v2739 = v3095;
            if (a12)
            {
              v2740 = a16;
              v2741 = a15;
              v2742 = a13;
              v2743 = a11;
              v2744 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2739 + a9 * v2741, a4 + a9 * v2740, a5, a6, a7, a8, v2744, v2743, v2742, v2738);
                v2744 = a10;
                v2743 = a11;
                v2742 = a13;
                v2741 = a15;
                v2740 = a16;
                v2739 = v3095;
                v2738 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1047 = a17;
            v1048 = v3095;
            if (!v1046 && a12)
            {
              v1049 = a16;
              v1050 = a15;
              v1051 = a13;
              v1052 = a11;
              v1053 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1048 + a9 * v1050, a4 + a9 * v1049, a5, a6, a7, a8, v1053, v1052, v1051, v1047);
                v1053 = a10;
                v1052 = a11;
                v1051 = a13;
                v1050 = a15;
                v1049 = a16;
                v1048 = v3095;
                v1047 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1046 == 4)
        {
          v2745 = a17;
          v2746 = v3095;
          if (a12)
          {
            v2747 = a16;
            v2748 = a15;
            v2749 = a13;
            v2750 = a11;
            v2751 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2746 + a9 * v2748, a4 + a9 * v2747, a5, a6, a7, a8, v2751, v2750, v2749, v2745);
              v2751 = a10;
              v2750 = a11;
              v2749 = a13;
              v2748 = a15;
              v2747 = a16;
              v2746 = v3095;
              v2745 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1667 = a17;
          v1668 = v3095;
          if (!v1046 && a12)
          {
            v1669 = a16;
            v1670 = a15;
            v1671 = a13;
            v1672 = a11;
            v1673 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1668 + a9 * v1670, a4 + a9 * v1669, a5, a6, a7, a8, v1673, v1672, v1671, v1667);
              v1673 = a10;
              v1672 = a11;
              v1671 = a13;
              v1670 = a15;
              v1669 = a16;
              v1668 = v3095;
              v1667 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 253:
        v3088 = *(a1 + 396);
        v1182 = getCompressionCodecConfig(*(a1 + 56));
        if (v3088 == 1)
        {
          if (v1182 == 4)
          {
            v2976 = a17;
            v2977 = v3095;
            if (a12)
            {
              v2978 = a16;
              v2979 = a15;
              v2980 = a13;
              v2981 = a11;
              v2982 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2977 + a9 * v2979, a4 + a9 * v2978, a5, a6, a7, a8, v2982, v2981, v2980, v2976);
                v2982 = a10;
                v2981 = a11;
                v2980 = a13;
                v2979 = a15;
                v2978 = a16;
                v2977 = v3095;
                v2976 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1183 = a17;
            v1184 = v3095;
            if (!v1182 && a12)
            {
              v1185 = a16;
              v1186 = a15;
              v1187 = a13;
              v1188 = a11;
              v1189 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1184 + a9 * v1186, a4 + a9 * v1185, a5, a6, a7, a8, v1189, v1188, v1187, v1183);
                v1189 = a10;
                v1188 = a11;
                v1187 = a13;
                v1186 = a15;
                v1185 = a16;
                v1184 = v3095;
                v1183 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1182 == 4)
        {
          v2983 = a17;
          v2984 = v3095;
          if (a12)
          {
            v2985 = a16;
            v2986 = a15;
            v2987 = a13;
            v2988 = a11;
            v2989 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2984 + a9 * v2986, a4 + a9 * v2985, a5, a6, a7, a8, v2989, v2988, v2987, v2983);
              v2989 = a10;
              v2988 = a11;
              v2987 = a13;
              v2986 = a15;
              v2985 = a16;
              v2984 = v3095;
              v2983 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1786 = a17;
          v1787 = v3095;
          if (!v1182 && a12)
          {
            v1788 = a16;
            v1789 = a15;
            v1790 = a13;
            v1791 = a11;
            v1792 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1787 + a9 * v1789, a4 + a9 * v1788, a5, a6, a7, a8, v1792, v1791, v1790, v1786);
              v1792 = a10;
              v1791 = a11;
              v1790 = a13;
              v1789 = a15;
              v1788 = a16;
              v1787 = v3095;
              v1786 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 261:
        v3083 = *(a1 + 396);
        v1142 = getCompressionCodecConfig(*(a1 + 56));
        if (v3083 == 1)
        {
          if (v1142 == 4)
          {
            v2906 = a17;
            v2907 = v3095;
            if (a12)
            {
              v2908 = a16;
              v2909 = a15;
              v2910 = a13;
              v2911 = a11;
              v2912 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2907 + a9 * v2909, a4 + a9 * v2908, a5, a6, a7, a8, v2912, v2911, v2910, v2906);
                v2912 = a10;
                v2911 = a11;
                v2910 = a13;
                v2909 = a15;
                v2908 = a16;
                v2907 = v3095;
                v2906 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1143 = a17;
            v1144 = v3095;
            if (!v1142 && a12)
            {
              v1145 = a16;
              v1146 = a15;
              v1147 = a13;
              v1148 = a11;
              v1149 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1144 + a9 * v1146, a4 + a9 * v1145, a5, a6, a7, a8, v1149, v1148, v1147, v1143);
                v1149 = a10;
                v1148 = a11;
                v1147 = a13;
                v1146 = a15;
                v1145 = a16;
                v1144 = v3095;
                v1143 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1142 == 4)
        {
          v2913 = a17;
          v2914 = v3095;
          if (a12)
          {
            v2915 = a16;
            v2916 = a15;
            v2917 = a13;
            v2918 = a11;
            v2919 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2914 + a9 * v2916, a4 + a9 * v2915, a5, a6, a7, a8, v2919, v2918, v2917, v2913);
              v2919 = a10;
              v2918 = a11;
              v2917 = a13;
              v2916 = a15;
              v2915 = a16;
              v2914 = v3095;
              v2913 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1751 = a17;
          v1752 = v3095;
          if (!v1142 && a12)
          {
            v1753 = a16;
            v1754 = a15;
            v1755 = a13;
            v1756 = a11;
            v1757 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1752 + a9 * v1754, a4 + a9 * v1753, a5, a6, a7, a8, v1757, v1756, v1755, v1751);
              v1757 = a10;
              v1756 = a11;
              v1755 = a13;
              v1754 = a15;
              v1753 = a16;
              v1752 = v3095;
              v1751 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 300:
        v3086 = *(a1 + 396);
        v1166 = getCompressionCodecConfig(*(a1 + 56));
        if (v3086 == 1)
        {
          if (v1166 == 4)
          {
            v2948 = a17;
            v2949 = v3095;
            if (a12)
            {
              v2950 = a16;
              v2951 = a15;
              v2952 = a13;
              v2953 = a11;
              v2954 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2949 + a9 * v2951, a4 + a9 * v2950, a5, a6, a7, a8, v2954, v2953, v2952, v2948);
                v2954 = a10;
                v2953 = a11;
                v2952 = a13;
                v2951 = a15;
                v2950 = a16;
                v2949 = v3095;
                v2948 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1167 = a17;
            v1168 = v3095;
            if (!v1166 && a12)
            {
              v1169 = a16;
              v1170 = a15;
              v1171 = a13;
              v1172 = a11;
              v1173 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1168 + a9 * v1170, a4 + a9 * v1169, a5, a6, a7, a8, v1173, v1172, v1171, v1167);
                v1173 = a10;
                v1172 = a11;
                v1171 = a13;
                v1170 = a15;
                v1169 = a16;
                v1168 = v3095;
                v1167 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1166 == 4)
        {
          v2955 = a17;
          v2956 = v3095;
          if (a12)
          {
            v2957 = a16;
            v2958 = a15;
            v2959 = a13;
            v2960 = a11;
            v2961 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2956 + a9 * v2958, a4 + a9 * v2957, a5, a6, a7, a8, v2961, v2960, v2959, v2955);
              v2961 = a10;
              v2960 = a11;
              v2959 = a13;
              v2958 = a15;
              v2957 = a16;
              v2956 = v3095;
              v2955 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1772 = a17;
          v1773 = v3095;
          if (!v1166 && a12)
          {
            v1774 = a16;
            v1775 = a15;
            v1776 = a13;
            v1777 = a11;
            v1778 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1773 + a9 * v1775, a4 + a9 * v1774, a5, a6, a7, a8, v1778, v1777, v1776, v1772);
              v1778 = a10;
              v1777 = a11;
              v1776 = a13;
              v1775 = a15;
              v1774 = a16;
              v1773 = v3095;
              v1772 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 301:
        v3072 = *(a1 + 396);
        v1054 = getCompressionCodecConfig(*(a1 + 56));
        if (v3072 == 1)
        {
          if (v1054 == 4)
          {
            v2752 = a17;
            v2753 = v3095;
            if (a12)
            {
              v2754 = a16;
              v2755 = a15;
              v2756 = a13;
              v2757 = a11;
              v2758 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2753 + a9 * v2755, a4 + a9 * v2754, a5, a6, a7, a8, v2758, v2757, v2756, v2752);
                v2758 = a10;
                v2757 = a11;
                v2756 = a13;
                v2755 = a15;
                v2754 = a16;
                v2753 = v3095;
                v2752 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1055 = a17;
            v1056 = v3095;
            if (!v1054 && a12)
            {
              v1057 = a16;
              v1058 = a15;
              v1059 = a13;
              v1060 = a11;
              v1061 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1056 + a9 * v1058, a4 + a9 * v1057, a5, a6, a7, a8, v1061, v1060, v1059, v1055);
                v1061 = a10;
                v1060 = a11;
                v1059 = a13;
                v1058 = a15;
                v1057 = a16;
                v1056 = v3095;
                v1055 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1054 == 4)
        {
          v2759 = a17;
          v2760 = v3095;
          if (a12)
          {
            v2761 = a16;
            v2762 = a15;
            v2763 = a13;
            v2764 = a11;
            v2765 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2760 + a9 * v2762, a4 + a9 * v2761, a5, a6, a7, a8, v2765, v2764, v2763, v2759);
              v2765 = a10;
              v2764 = a11;
              v2763 = a13;
              v2762 = a15;
              v2761 = a16;
              v2760 = v3095;
              v2759 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1674 = a17;
          v1675 = v3095;
          if (!v1054 && a12)
          {
            v1676 = a16;
            v1677 = a15;
            v1678 = a13;
            v1679 = a11;
            v1680 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1675 + a9 * v1677, a4 + a9 * v1676, a5, a6, a7, a8, v1680, v1679, v1678, v1674);
              v1680 = a10;
              v1679 = a11;
              v1678 = a13;
              v1677 = a15;
              v1676 = a16;
              v1675 = v3095;
              v1674 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 302:
        v3073 = *(a1 + 396);
        v1062 = getCompressionCodecConfig(*(a1 + 56));
        if (v3073 == 1)
        {
          if (v1062 == 4)
          {
            v2766 = a17;
            v2767 = v3095;
            if (a12)
            {
              v2768 = a16;
              v2769 = a15;
              v2770 = a13;
              v2771 = a11;
              v2772 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2767 + a9 * v2769, a4 + a9 * v2768, a5, a6, a7, a8, v2772, v2771, v2770, v2766);
                v2772 = a10;
                v2771 = a11;
                v2770 = a13;
                v2769 = a15;
                v2768 = a16;
                v2767 = v3095;
                v2766 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1063 = a17;
            v1064 = v3095;
            if (!v1062 && a12)
            {
              v1065 = a16;
              v1066 = a15;
              v1067 = a13;
              v1068 = a11;
              v1069 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1064 + a9 * v1066, a4 + a9 * v1065, a5, a6, a7, a8, v1069, v1068, v1067, v1063);
                v1069 = a10;
                v1068 = a11;
                v1067 = a13;
                v1066 = a15;
                v1065 = a16;
                v1064 = v3095;
                v1063 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1062 == 4)
        {
          v2773 = a17;
          v2774 = v3095;
          if (a12)
          {
            v2775 = a16;
            v2776 = a15;
            v2777 = a13;
            v2778 = a11;
            v2779 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2774 + a9 * v2776, a4 + a9 * v2775, a5, a6, a7, a8, v2779, v2778, v2777, v2773);
              v2779 = a10;
              v2778 = a11;
              v2777 = a13;
              v2776 = a15;
              v2775 = a16;
              v2774 = v3095;
              v2773 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1681 = a17;
          v1682 = v3095;
          if (!v1062 && a12)
          {
            v1683 = a16;
            v1684 = a15;
            v1685 = a13;
            v1686 = a11;
            v1687 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1682 + a9 * v1684, a4 + a9 * v1683, a5, a6, a7, a8, v1687, v1686, v1685, v1681);
              v1687 = a10;
              v1686 = a11;
              v1685 = a13;
              v1684 = a15;
              v1683 = a16;
              v1682 = v3095;
              v1681 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 303:
        v3028 = *(a1 + 396);
        v702 = getCompressionCodecConfig(*(a1 + 56));
        if (v3028 == 1)
        {
          if (v702 == 4)
          {
            v2122 = a17;
            v2123 = v3095;
            if (a12)
            {
              v2124 = a16;
              v2125 = a15;
              v2126 = a13;
              v2127 = a11;
              v2128 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2123 + a9 * v2125, a4 + a9 * v2124, a5, a6, a7, a8, v2128, v2127, v2126, v2122);
                v2128 = a10;
                v2127 = a11;
                v2126 = a13;
                v2125 = a15;
                v2124 = a16;
                v2123 = v3095;
                v2122 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v703 = a17;
            v704 = v3095;
            if (!v702 && a12)
            {
              v705 = a16;
              v706 = a15;
              v707 = a13;
              v708 = a11;
              v709 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v704 + a9 * v706, a4 + a9 * v705, a5, a6, a7, a8, v709, v708, v707, v703);
                v709 = a10;
                v708 = a11;
                v707 = a13;
                v706 = a15;
                v705 = a16;
                v704 = v3095;
                v703 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v702 == 4)
        {
          v2129 = a17;
          v2130 = v3095;
          if (a12)
          {
            v2131 = a16;
            v2132 = a15;
            v2133 = a13;
            v2134 = a11;
            v2135 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2130 + a9 * v2132, a4 + a9 * v2131, a5, a6, a7, a8, v2135, v2134, v2133, v2129);
              v2135 = a10;
              v2134 = a11;
              v2133 = a13;
              v2132 = a15;
              v2131 = a16;
              v2130 = v3095;
              v2129 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1359 = a17;
          v1360 = v3095;
          if (!v702 && a12)
          {
            v1361 = a16;
            v1362 = a15;
            v1363 = a13;
            v1364 = a11;
            v1365 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1360 + a9 * v1362, a4 + a9 * v1361, a5, a6, a7, a8, v1365, v1364, v1363, v1359);
              v1365 = a10;
              v1364 = a11;
              v1363 = a13;
              v1362 = a15;
              v1361 = a16;
              v1360 = v3095;
              v1359 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 304:
        v3077 = *(a1 + 396);
        v1094 = getCompressionCodecConfig(*(a1 + 56));
        if (v3077 == 1)
        {
          if (v1094 == 4)
          {
            v2822 = a17;
            v2823 = v3095;
            if (a12)
            {
              v2824 = a16;
              v2825 = a15;
              v2826 = a13;
              v2827 = a11;
              v2828 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2823 + a9 * v2825, a4 + a9 * v2824, a5, a6, a7, a8, v2828, v2827, v2826, v2822);
                v2828 = a10;
                v2827 = a11;
                v2826 = a13;
                v2825 = a15;
                v2824 = a16;
                v2823 = v3095;
                v2822 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1095 = a17;
            v1096 = v3095;
            if (!v1094 && a12)
            {
              v1097 = a16;
              v1098 = a15;
              v1099 = a13;
              v1100 = a11;
              v1101 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1096 + a9 * v1098, a4 + a9 * v1097, a5, a6, a7, a8, v1101, v1100, v1099, v1095);
                v1101 = a10;
                v1100 = a11;
                v1099 = a13;
                v1098 = a15;
                v1097 = a16;
                v1096 = v3095;
                v1095 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1094 == 4)
        {
          v2829 = a17;
          v2830 = v3095;
          if (a12)
          {
            v2831 = a16;
            v2832 = a15;
            v2833 = a13;
            v2834 = a11;
            v2835 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2830 + a9 * v2832, a4 + a9 * v2831, a5, a6, a7, a8, v2835, v2834, v2833, v2829);
              v2835 = a10;
              v2834 = a11;
              v2833 = a13;
              v2832 = a15;
              v2831 = a16;
              v2830 = v3095;
              v2829 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1709 = a17;
          v1710 = v3095;
          if (!v1094 && a12)
          {
            v1711 = a16;
            v1712 = a15;
            v1713 = a13;
            v1714 = a11;
            v1715 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1710 + a9 * v1712, a4 + a9 * v1711, a5, a6, a7, a8, v1715, v1714, v1713, v1709);
              v1715 = a10;
              v1714 = a11;
              v1713 = a13;
              v1712 = a15;
              v1711 = a16;
              v1710 = v3095;
              v1709 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 313:
        v3009 = *(a1 + 396);
        v550 = getCompressionCodecConfig(*(a1 + 56));
        if (v3009 == 1)
        {
          if (v550 == 4)
          {
            v1856 = a17;
            v1857 = v3095;
            if (a12)
            {
              v1858 = a16;
              v1859 = a15;
              v1860 = a13;
              v1861 = a11;
              v1862 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1857 + a9 * v1859, a4 + a9 * v1858, a5, a6, a7, a8, v1862, v1861, v1860, v1856);
                v1862 = a10;
                v1861 = a11;
                v1860 = a13;
                v1859 = a15;
                v1858 = a16;
                v1857 = v3095;
                v1856 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v551 = a17;
            v552 = v3095;
            if (!v550 && a12)
            {
              v553 = a16;
              v554 = a15;
              v555 = a13;
              v556 = a11;
              v557 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v552 + a9 * v554, a4 + a9 * v553, a5, a6, a7, a8, v557, v556, v555, v551);
                v557 = a10;
                v556 = a11;
                v555 = a13;
                v554 = a15;
                v553 = a16;
                v552 = v3095;
                v551 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v550 == 4)
        {
          v1863 = a17;
          v1864 = v3095;
          if (a12)
          {
            v1865 = a16;
            v1866 = a15;
            v1867 = a13;
            v1868 = a11;
            v1869 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1864 + a9 * v1866, a4 + a9 * v1865, a5, a6, a7, a8, v1869, v1868, v1867, v1863);
              v1869 = a10;
              v1868 = a11;
              v1867 = a13;
              v1866 = a15;
              v1865 = a16;
              v1864 = v3095;
              v1863 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1226 = a17;
          v1227 = v3095;
          if (!v550 && a12)
          {
            v1228 = a16;
            v1229 = a15;
            v1230 = a13;
            v1231 = a11;
            v1232 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1227 + a9 * v1229, a4 + a9 * v1228, a5, a6, a7, a8, v1232, v1231, v1230, v1226);
              v1232 = a10;
              v1231 = a11;
              v1230 = a13;
              v1229 = a15;
              v1228 = a16;
              v1227 = v3095;
              v1226 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 314:
        v3082 = *(a1 + 396);
        v1134 = getCompressionCodecConfig(*(a1 + 56));
        if (v3082 == 1)
        {
          if (v1134 == 4)
          {
            v2892 = a17;
            v2893 = v3095;
            if (a12)
            {
              v2894 = a16;
              v2895 = a15;
              v2896 = a13;
              v2897 = a11;
              v2898 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2893 + a9 * v2895, a4 + a9 * v2894, a5, a6, a7, a8, v2898, v2897, v2896, v2892);
                v2898 = a10;
                v2897 = a11;
                v2896 = a13;
                v2895 = a15;
                v2894 = a16;
                v2893 = v3095;
                v2892 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1135 = a17;
            v1136 = v3095;
            if (!v1134 && a12)
            {
              v1137 = a16;
              v1138 = a15;
              v1139 = a13;
              v1140 = a11;
              v1141 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1136 + a9 * v1138, a4 + a9 * v1137, a5, a6, a7, a8, v1141, v1140, v1139, v1135);
                v1141 = a10;
                v1140 = a11;
                v1139 = a13;
                v1138 = a15;
                v1137 = a16;
                v1136 = v3095;
                v1135 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1134 == 4)
        {
          v2899 = a17;
          v2900 = v3095;
          if (a12)
          {
            v2901 = a16;
            v2902 = a15;
            v2903 = a13;
            v2904 = a11;
            v2905 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2900 + a9 * v2902, a4 + a9 * v2901, a5, a6, a7, a8, v2905, v2904, v2903, v2899);
              v2905 = a10;
              v2904 = a11;
              v2903 = a13;
              v2902 = a15;
              v2901 = a16;
              v2900 = v3095;
              v2899 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1744 = a17;
          v1745 = v3095;
          if (!v1134 && a12)
          {
            v1746 = a16;
            v1747 = a15;
            v1748 = a13;
            v1749 = a11;
            v1750 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1745 + a9 * v1747, a4 + a9 * v1746, a5, a6, a7, a8, v1750, v1749, v1748, v1744);
              v1750 = a10;
              v1749 = a11;
              v1748 = a13;
              v1747 = a15;
              v1746 = a16;
              v1745 = v3095;
              v1744 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 315:
        v3084 = *(a1 + 396);
        v1150 = getCompressionCodecConfig(*(a1 + 56));
        if (v3084 == 1)
        {
          if (v1150 == 4)
          {
            v2920 = a17;
            v2921 = v3095;
            if (a12)
            {
              v2922 = a16;
              v2923 = a15;
              v2924 = a13;
              v2925 = a11;
              v2926 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2921 + a9 * v2923, a4 + a9 * v2922, a5, a6, a7, a8, v2926, v2925, v2924, v2920);
                v2926 = a10;
                v2925 = a11;
                v2924 = a13;
                v2923 = a15;
                v2922 = a16;
                v2921 = v3095;
                v2920 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1151 = a17;
            v1152 = v3095;
            if (!v1150 && a12)
            {
              v1153 = a16;
              v1154 = a15;
              v1155 = a13;
              v1156 = a11;
              v1157 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1152 + a9 * v1154, a4 + a9 * v1153, a5, a6, a7, a8, v1157, v1156, v1155, v1151);
                v1157 = a10;
                v1156 = a11;
                v1155 = a13;
                v1154 = a15;
                v1153 = a16;
                v1152 = v3095;
                v1151 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1150 == 4)
        {
          v2927 = a17;
          v2928 = v3095;
          if (a12)
          {
            v2929 = a16;
            v2930 = a15;
            v2931 = a13;
            v2932 = a11;
            v2933 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2928 + a9 * v2930, a4 + a9 * v2929, a5, a6, a7, a8, v2933, v2932, v2931, v2927);
              v2933 = a10;
              v2932 = a11;
              v2931 = a13;
              v2930 = a15;
              v2929 = a16;
              v2928 = v3095;
              v2927 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1758 = a17;
          v1759 = v3095;
          if (!v1150 && a12)
          {
            v1760 = a16;
            v1761 = a15;
            v1762 = a13;
            v1763 = a11;
            v1764 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1759 + a9 * v1761, a4 + a9 * v1760, a5, a6, a7, a8, v1764, v1763, v1762, v1758);
              v1764 = a10;
              v1763 = a11;
              v1762 = a13;
              v1761 = a15;
              v1760 = a16;
              v1759 = v3095;
              v1758 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 323:
        v3043 = *(a1 + 396);
        v822 = getCompressionCodecConfig(*(a1 + 56));
        if (v3043 == 1)
        {
          if (v822 == 4)
          {
            v2332 = a17;
            v2333 = v3095;
            if (a12)
            {
              v2334 = a16;
              v2335 = a15;
              v2336 = a13;
              v2337 = a11;
              v2338 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2333 + a9 * v2335, a4 + a9 * v2334, a5, a6, a7, a8, v2338, v2337, v2336, v2332);
                v2338 = a10;
                v2337 = a11;
                v2336 = a13;
                v2335 = a15;
                v2334 = a16;
                v2333 = v3095;
                v2332 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v823 = a17;
            v824 = v3095;
            if (!v822 && a12)
            {
              v825 = a16;
              v826 = a15;
              v827 = a13;
              v828 = a11;
              v829 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v824 + a9 * v826, a4 + a9 * v825, a5, a6, a7, a8, v829, v828, v827, v823);
                v829 = a10;
                v828 = a11;
                v827 = a13;
                v826 = a15;
                v825 = a16;
                v824 = v3095;
                v823 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v822 == 4)
        {
          v2339 = a17;
          v2340 = v3095;
          if (a12)
          {
            v2341 = a16;
            v2342 = a15;
            v2343 = a13;
            v2344 = a11;
            v2345 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2340 + a9 * v2342, a4 + a9 * v2341, a5, a6, a7, a8, v2345, v2344, v2343, v2339);
              v2345 = a10;
              v2344 = a11;
              v2343 = a13;
              v2342 = a15;
              v2341 = a16;
              v2340 = v3095;
              v2339 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1464 = a17;
          v1465 = v3095;
          if (!v822 && a12)
          {
            v1466 = a16;
            v1467 = a15;
            v1468 = a13;
            v1469 = a11;
            v1470 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1465 + a9 * v1467, a4 + a9 * v1466, a5, a6, a7, a8, v1470, v1469, v1468, v1464);
              v1470 = a10;
              v1469 = a11;
              v1468 = a13;
              v1467 = a15;
              v1466 = a16;
              v1465 = v3095;
              v1464 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 324:
        v3087 = *(a1 + 396);
        v1174 = getCompressionCodecConfig(*(a1 + 56));
        if (v3087 == 1)
        {
          if (v1174 == 4)
          {
            v2962 = a17;
            v2963 = v3095;
            if (a12)
            {
              v2964 = a16;
              v2965 = a15;
              v2966 = a13;
              v2967 = a11;
              v2968 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2963 + a9 * v2965, a4 + a9 * v2964, a5, a6, a7, a8, v2968, v2967, v2966, v2962);
                v2968 = a10;
                v2967 = a11;
                v2966 = a13;
                v2965 = a15;
                v2964 = a16;
                v2963 = v3095;
                v2962 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1175 = a17;
            v1176 = v3095;
            if (!v1174 && a12)
            {
              v1177 = a16;
              v1178 = a15;
              v1179 = a13;
              v1180 = a11;
              v1181 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1176 + a9 * v1178, a4 + a9 * v1177, a5, a6, a7, a8, v1181, v1180, v1179, v1175);
                v1181 = a10;
                v1180 = a11;
                v1179 = a13;
                v1178 = a15;
                v1177 = a16;
                v1176 = v3095;
                v1175 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1174 == 4)
        {
          v2969 = a17;
          v2970 = v3095;
          if (a12)
          {
            v2971 = a16;
            v2972 = a15;
            v2973 = a13;
            v2974 = a11;
            v2975 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2970 + a9 * v2972, a4 + a9 * v2971, a5, a6, a7, a8, v2975, v2974, v2973, v2969);
              v2975 = a10;
              v2974 = a11;
              v2973 = a13;
              v2972 = a15;
              v2971 = a16;
              v2970 = v3095;
              v2969 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1779 = a17;
          v1780 = v3095;
          if (!v1174 && a12)
          {
            v1781 = a16;
            v1782 = a15;
            v1783 = a13;
            v1784 = a11;
            v1785 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1780 + a9 * v1782, a4 + a9 * v1781, a5, a6, a7, a8, v1785, v1784, v1783, v1779);
              v1785 = a10;
              v1784 = a11;
              v1783 = a13;
              v1782 = a15;
              v1781 = a16;
              v1780 = v3095;
              v1779 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 325:
        v3074 = *(a1 + 396);
        v1070 = getCompressionCodecConfig(*(a1 + 56));
        if (v3074 == 1)
        {
          if (v1070 == 4)
          {
            v2780 = a17;
            v2781 = v3095;
            if (a12)
            {
              v2782 = a16;
              v2783 = a15;
              v2784 = a13;
              v2785 = a11;
              v2786 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2781 + a9 * v2783, a4 + a9 * v2782, a5, a6, a7, a8, v2786, v2785, v2784, v2780);
                v2786 = a10;
                v2785 = a11;
                v2784 = a13;
                v2783 = a15;
                v2782 = a16;
                v2781 = v3095;
                v2780 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1071 = a17;
            v1072 = v3095;
            if (!v1070 && a12)
            {
              v1073 = a16;
              v1074 = a15;
              v1075 = a13;
              v1076 = a11;
              v1077 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1072 + a9 * v1074, a4 + a9 * v1073, a5, a6, a7, a8, v1077, v1076, v1075, v1071);
                v1077 = a10;
                v1076 = a11;
                v1075 = a13;
                v1074 = a15;
                v1073 = a16;
                v1072 = v3095;
                v1071 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1070 == 4)
        {
          v2787 = a17;
          v2788 = v3095;
          if (a12)
          {
            v2789 = a16;
            v2790 = a15;
            v2791 = a13;
            v2792 = a11;
            v2793 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2788 + a9 * v2790, a4 + a9 * v2789, a5, a6, a7, a8, v2793, v2792, v2791, v2787);
              v2793 = a10;
              v2792 = a11;
              v2791 = a13;
              v2790 = a15;
              v2789 = a16;
              v2788 = v3095;
              v2787 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1688 = a17;
          v1689 = v3095;
          if (!v1070 && a12)
          {
            v1690 = a16;
            v1691 = a15;
            v1692 = a13;
            v1693 = a11;
            v1694 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1689 + a9 * v1691, a4 + a9 * v1690, a5, a6, a7, a8, v1694, v1693, v1692, v1688);
              v1694 = a10;
              v1693 = a11;
              v1692 = a13;
              v1691 = a15;
              v1690 = a16;
              v1689 = v3095;
              v1688 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 552:
        v3011 = *(a1 + 396);
        v566 = getCompressionCodecConfig(*(a1 + 56));
        if (v3011 == 1)
        {
          if (v566 == 4)
          {
            v1884 = a17;
            v1885 = v3095;
            if (a12)
            {
              v1886 = a16;
              v1887 = a15;
              v1888 = a13;
              v1889 = a11;
              v1890 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1885 + a9 * v1887, a4 + a9 * v1886, a5, a6, a7, a8, v1890, v1889, v1888, v1884);
                v1890 = a10;
                v1889 = a11;
                v1888 = a13;
                v1887 = a15;
                v1886 = a16;
                v1885 = v3095;
                v1884 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v567 = a17;
            v568 = v3095;
            if (!v566 && a12)
            {
              v569 = a16;
              v570 = a15;
              v571 = a13;
              v572 = a11;
              v573 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v568 + a9 * v570, a4 + a9 * v569, a5, a6, a7, a8, v573, v572, v571, v567);
                v573 = a10;
                v572 = a11;
                v571 = a13;
                v570 = a15;
                v569 = a16;
                v568 = v3095;
                v567 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v566 == 4)
        {
          v1891 = a17;
          v1892 = v3095;
          if (a12)
          {
            v1893 = a16;
            v1894 = a15;
            v1895 = a13;
            v1896 = a11;
            v1897 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1892 + a9 * v1894, a4 + a9 * v1893, a5, a6, a7, a8, v1897, v1896, v1895, v1891);
              v1897 = a10;
              v1896 = a11;
              v1895 = a13;
              v1894 = a15;
              v1893 = a16;
              v1892 = v3095;
              v1891 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1240 = a17;
          v1241 = v3095;
          if (!v566 && a12)
          {
            v1242 = a16;
            v1243 = a15;
            v1244 = a13;
            v1245 = a11;
            v1246 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1241 + a9 * v1243, a4 + a9 * v1242, a5, a6, a7, a8, v1246, v1245, v1244, v1240);
              v1246 = a10;
              v1245 = a11;
              v1244 = a13;
              v1243 = a15;
              v1242 = a16;
              v1241 = v3095;
              v1240 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 553:
        v3026 = *(a1 + 396);
        v686 = getCompressionCodecConfig(*(a1 + 56));
        if (v3026 == 1)
        {
          if (v686 == 4)
          {
            v2094 = a17;
            v2095 = v3095;
            if (a12)
            {
              v2096 = a16;
              v2097 = a15;
              v2098 = a13;
              v2099 = a11;
              v2100 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2095 + a9 * v2097, a4 + a9 * v2096, a5, a6, a7, a8, v2100, v2099, v2098, v2094);
                v2100 = a10;
                v2099 = a11;
                v2098 = a13;
                v2097 = a15;
                v2096 = a16;
                v2095 = v3095;
                v2094 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v687 = a17;
            v688 = v3095;
            if (!v686 && a12)
            {
              v689 = a16;
              v690 = a15;
              v691 = a13;
              v692 = a11;
              v693 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v688 + a9 * v690, a4 + a9 * v689, a5, a6, a7, a8, v693, v692, v691, v687);
                v693 = a10;
                v692 = a11;
                v691 = a13;
                v690 = a15;
                v689 = a16;
                v688 = v3095;
                v687 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v686 == 4)
        {
          v2101 = a17;
          v2102 = v3095;
          if (a12)
          {
            v2103 = a16;
            v2104 = a15;
            v2105 = a13;
            v2106 = a11;
            v2107 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2102 + a9 * v2104, a4 + a9 * v2103, a5, a6, a7, a8, v2107, v2106, v2105, v2101);
              v2107 = a10;
              v2106 = a11;
              v2105 = a13;
              v2104 = a15;
              v2103 = a16;
              v2102 = v3095;
              v2101 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1345 = a17;
          v1346 = v3095;
          if (!v686 && a12)
          {
            v1347 = a16;
            v1348 = a15;
            v1349 = a13;
            v1350 = a11;
            v1351 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1346 + a9 * v1348, a4 + a9 * v1347, a5, a6, a7, a8, v1351, v1350, v1349, v1345);
              v1351 = a10;
              v1350 = a11;
              v1349 = a13;
              v1348 = a15;
              v1347 = a16;
              v1346 = v3095;
              v1345 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 554:
        v3062 = *(a1 + 396);
        v974 = getCompressionCodecConfig(*(a1 + 56));
        if (v3062 == 1)
        {
          if (v974 == 4)
          {
            v2612 = a17;
            v2613 = v3095;
            if (a12)
            {
              v2614 = a16;
              v2615 = a15;
              v2616 = a13;
              v2617 = a11;
              v2618 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2613 + a9 * v2615, a4 + a9 * v2614, a5, a6, a7, a8, v2618, v2617, v2616, v2612);
                v2618 = a10;
                v2617 = a11;
                v2616 = a13;
                v2615 = a15;
                v2614 = a16;
                v2613 = v3095;
                v2612 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v975 = a17;
            v976 = v3095;
            if (!v974 && a12)
            {
              v977 = a16;
              v978 = a15;
              v979 = a13;
              v980 = a11;
              v981 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v976 + a9 * v978, a4 + a9 * v977, a5, a6, a7, a8, v981, v980, v979, v975);
                v981 = a10;
                v980 = a11;
                v979 = a13;
                v978 = a15;
                v977 = a16;
                v976 = v3095;
                v975 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v974 == 4)
        {
          v2619 = a17;
          v2620 = v3095;
          if (a12)
          {
            v2621 = a16;
            v2622 = a15;
            v2623 = a13;
            v2624 = a11;
            v2625 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2620 + a9 * v2622, a4 + a9 * v2621, a5, a6, a7, a8, v2625, v2624, v2623, v2619);
              v2625 = a10;
              v2624 = a11;
              v2623 = a13;
              v2622 = a15;
              v2621 = a16;
              v2620 = v3095;
              v2619 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1604 = a17;
          v1605 = v3095;
          if (!v974 && a12)
          {
            v1606 = a16;
            v1607 = a15;
            v1608 = a13;
            v1609 = a11;
            v1610 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1605 + a9 * v1607, a4 + a9 * v1606, a5, a6, a7, a8, v1610, v1609, v1608, v1604);
              v1610 = a10;
              v1609 = a11;
              v1608 = a13;
              v1607 = a15;
              v1606 = a16;
              v1605 = v3095;
              v1604 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 555:
        v3012 = *(a1 + 396);
        v574 = getCompressionCodecConfig(*(a1 + 56));
        if (v3012 == 1)
        {
          if (v574 == 4)
          {
            v1898 = a17;
            v1899 = v3095;
            if (a12)
            {
              v1900 = a16;
              v1901 = a15;
              v1902 = a13;
              v1903 = a11;
              v1904 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1899 + a9 * v1901, a4 + a9 * v1900, a5, a6, a7, a8, v1904, v1903, v1902, v1898);
                v1904 = a10;
                v1903 = a11;
                v1902 = a13;
                v1901 = a15;
                v1900 = a16;
                v1899 = v3095;
                v1898 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v575 = a17;
            v576 = v3095;
            if (!v574 && a12)
            {
              v577 = a16;
              v578 = a15;
              v579 = a13;
              v580 = a11;
              v581 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v576 + a9 * v578, a4 + a9 * v577, a5, a6, a7, a8, v581, v580, v579, v575);
                v581 = a10;
                v580 = a11;
                v579 = a13;
                v578 = a15;
                v577 = a16;
                v576 = v3095;
                v575 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v574 == 4)
        {
          v1905 = a17;
          v1906 = v3095;
          if (a12)
          {
            v1907 = a16;
            v1908 = a15;
            v1909 = a13;
            v1910 = a11;
            v1911 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1906 + a9 * v1908, a4 + a9 * v1907, a5, a6, a7, a8, v1911, v1910, v1909, v1905);
              v1911 = a10;
              v1910 = a11;
              v1909 = a13;
              v1908 = a15;
              v1907 = a16;
              v1906 = v3095;
              v1905 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1247 = a17;
          v1248 = v3095;
          if (!v574 && a12)
          {
            v1249 = a16;
            v1250 = a15;
            v1251 = a13;
            v1252 = a11;
            v1253 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1248 + a9 * v1250, a4 + a9 * v1249, a5, a6, a7, a8, v1253, v1252, v1251, v1247);
              v1253 = a10;
              v1252 = a11;
              v1251 = a13;
              v1250 = a15;
              v1249 = a16;
              v1248 = v3095;
              v1247 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 556:
        v3089 = *(a1 + 396);
        v1190 = getCompressionCodecConfig(*(a1 + 56));
        if (v3089 == 1)
        {
          if (v1190 == 4)
          {
            v2990 = a17;
            v2991 = v3095;
            if (a12)
            {
              v2992 = a16;
              v2993 = a15;
              v2994 = a13;
              v2995 = a11;
              v2996 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2991 + a9 * v2993, a4 + a9 * v2992, a5, a6, a7, a8, v2996, v2995, v2994, v2990);
                v2996 = a10;
                v2995 = a11;
                v2994 = a13;
                v2993 = a15;
                v2992 = a16;
                v2991 = v3095;
                v2990 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1191 = a17;
            v1192 = v3095;
            if (!v1190 && a12)
            {
              v1193 = a16;
              v1194 = a15;
              v1195 = a13;
              v1196 = a11;
              v1197 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1192 + a9 * v1194, a4 + a9 * v1193, a5, a6, a7, a8, v1197, v1196, v1195, v1191);
                v1197 = a10;
                v1196 = a11;
                v1195 = a13;
                v1194 = a15;
                v1193 = a16;
                v1192 = v3095;
                v1191 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1190 == 4)
        {
          v2997 = a17;
          v2998 = v3095;
          if (a12)
          {
            v2999 = a16;
            v3000 = a15;
            v3001 = a13;
            v3002 = a11;
            v3003 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2998 + a9 * v3000, a4 + a9 * v2999, a5, a6, a7, a8, v3003, v3002, v3001, v2997);
              v3003 = a10;
              v3002 = a11;
              v3001 = a13;
              v3000 = a15;
              v2999 = a16;
              v2998 = v3095;
              v2997 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1793 = a17;
          v1794 = v3095;
          if (!v1190 && a12)
          {
            v1795 = a16;
            v1796 = a15;
            v1797 = a13;
            v1798 = a11;
            v1799 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1794 + a9 * v1796, a4 + a9 * v1795, a5, a6, a7, a8, v1799, v1798, v1797, v1793);
              v1799 = a10;
              v1798 = a11;
              v1797 = a13;
              v1796 = a15;
              v1795 = a16;
              v1794 = v3095;
              v1793 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 586:
        v3008 = *(a1 + 396);
        v542 = getCompressionCodecConfig(*(a1 + 56));
        if (v3008 == 1)
        {
          if (v542 == 4)
          {
            v1842 = a17;
            v1843 = v3095;
            if (a12)
            {
              v1844 = a16;
              v1845 = a15;
              v1846 = a13;
              v1847 = a11;
              v1848 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1843 + a9 * v1845, a4 + a9 * v1844, a5, a6, a7, a8, v1848, v1847, v1846, v1842);
                v1848 = a10;
                v1847 = a11;
                v1846 = a13;
                v1845 = a15;
                v1844 = a16;
                v1843 = v3095;
                v1842 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v543 = a17;
            v544 = v3095;
            if (!v542 && a12)
            {
              v545 = a16;
              v546 = a15;
              v547 = a13;
              v548 = a11;
              v549 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v544 + a9 * v546, a4 + a9 * v545, a5, a6, a7, a8, v549, v548, v547, v543);
                v549 = a10;
                v548 = a11;
                v547 = a13;
                v546 = a15;
                v545 = a16;
                v544 = v3095;
                v543 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v542 == 4)
        {
          v1849 = a17;
          v1850 = v3095;
          if (a12)
          {
            v1851 = a16;
            v1852 = a15;
            v1853 = a13;
            v1854 = a11;
            v1855 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1850 + a9 * v1852, a4 + a9 * v1851, a5, a6, a7, a8, v1855, v1854, v1853, v1849);
              v1855 = a10;
              v1854 = a11;
              v1853 = a13;
              v1852 = a15;
              v1851 = a16;
              v1850 = v3095;
              v1849 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1219 = a17;
          v1220 = v3095;
          if (!v542 && a12)
          {
            v1221 = a16;
            v1222 = a15;
            v1223 = a13;
            v1224 = a11;
            v1225 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1220 + a9 * v1222, a4 + a9 * v1221, a5, a6, a7, a8, v1225, v1224, v1223, v1219);
              v1225 = a10;
              v1224 = a11;
              v1223 = a13;
              v1222 = a15;
              v1221 = a16;
              v1220 = v3095;
              v1219 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 587:
        v3033 = *(a1 + 396);
        v742 = getCompressionCodecConfig(*(a1 + 56));
        if (v3033 == 1)
        {
          if (v742 == 4)
          {
            v2192 = a17;
            v2193 = v3095;
            if (a12)
            {
              v2194 = a16;
              v2195 = a15;
              v2196 = a13;
              v2197 = a11;
              v2198 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2193 + a9 * v2195, a4 + a9 * v2194, a5, a6, a7, a8, v2198, v2197, v2196, v2192);
                v2198 = a10;
                v2197 = a11;
                v2196 = a13;
                v2195 = a15;
                v2194 = a16;
                v2193 = v3095;
                v2192 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v743 = a17;
            v744 = v3095;
            if (!v742 && a12)
            {
              v745 = a16;
              v746 = a15;
              v747 = a13;
              v748 = a11;
              v749 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v744 + a9 * v746, a4 + a9 * v745, a5, a6, a7, a8, v749, v748, v747, v743);
                v749 = a10;
                v748 = a11;
                v747 = a13;
                v746 = a15;
                v745 = a16;
                v744 = v3095;
                v743 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v742 == 4)
        {
          v2199 = a17;
          v2200 = v3095;
          if (a12)
          {
            v2201 = a16;
            v2202 = a15;
            v2203 = a13;
            v2204 = a11;
            v2205 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2200 + a9 * v2202, a4 + a9 * v2201, a5, a6, a7, a8, v2205, v2204, v2203, v2199);
              v2205 = a10;
              v2204 = a11;
              v2203 = a13;
              v2202 = a15;
              v2201 = a16;
              v2200 = v3095;
              v2199 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1394 = a17;
          v1395 = v3095;
          if (!v742 && a12)
          {
            v1396 = a16;
            v1397 = a15;
            v1398 = a13;
            v1399 = a11;
            v1400 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1395 + a9 * v1397, a4 + a9 * v1396, a5, a6, a7, a8, v1400, v1399, v1398, v1394);
              v1400 = a10;
              v1399 = a11;
              v1398 = a13;
              v1397 = a15;
              v1396 = a16;
              v1395 = v3095;
              v1394 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 628:
        v3006 = *(a1 + 396);
        v526 = getCompressionCodecConfig(*(a1 + 56));
        if (v3006 == 1)
        {
          if (v526 == 4)
          {
            v1814 = a17;
            v1815 = v3095;
            if (a12)
            {
              v1816 = a16;
              v1817 = a15;
              v1818 = a13;
              v1819 = a11;
              v1820 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1815 + a9 * v1817, a4 + a9 * v1816, a5, a6, a7, a8, v1820, v1819, v1818, v1814);
                v1820 = a10;
                v1819 = a11;
                v1818 = a13;
                v1817 = a15;
                v1816 = a16;
                v1815 = v3095;
                v1814 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v527 = a17;
            v528 = v3095;
            if (!v526 && a12)
            {
              v529 = a16;
              v530 = a15;
              v531 = a13;
              v532 = a11;
              v533 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v528 + a9 * v530, a4 + a9 * v529, a5, a6, a7, a8, v533, v532, v531, v527);
                v533 = a10;
                v532 = a11;
                v531 = a13;
                v530 = a15;
                v529 = a16;
                v528 = v3095;
                v527 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v526 == 4)
        {
          v1821 = a17;
          v1822 = v3095;
          if (a12)
          {
            v1823 = a16;
            v1824 = a15;
            v1825 = a13;
            v1826 = a11;
            v1827 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1822 + a9 * v1824, a4 + a9 * v1823, a5, a6, a7, a8, v1827, v1826, v1825, v1821);
              v1827 = a10;
              v1826 = a11;
              v1825 = a13;
              v1824 = a15;
              v1823 = a16;
              v1822 = v3095;
              v1821 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1205 = a17;
          v1206 = v3095;
          if (!v526 && a12)
          {
            v1207 = a16;
            v1208 = a15;
            v1209 = a13;
            v1210 = a11;
            v1211 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1206 + a9 * v1208, a4 + a9 * v1207, a5, a6, a7, a8, v1211, v1210, v1209, v1205);
              v1211 = a10;
              v1210 = a11;
              v1209 = a13;
              v1208 = a15;
              v1207 = a16;
              v1206 = v3095;
              v1205 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 629:
        v3007 = *(a1 + 396);
        v534 = getCompressionCodecConfig(*(a1 + 56));
        if (v3007 == 1)
        {
          if (v534 == 4)
          {
            v1828 = a17;
            v1829 = v3095;
            if (a12)
            {
              v1830 = a16;
              v1831 = a15;
              v1832 = a13;
              v1833 = a11;
              v1834 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1829 + a9 * v1831, a4 + a9 * v1830, a5, a6, a7, a8, v1834, v1833, v1832, v1828);
                v1834 = a10;
                v1833 = a11;
                v1832 = a13;
                v1831 = a15;
                v1830 = a16;
                v1829 = v3095;
                v1828 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v535 = a17;
            v536 = v3095;
            if (!v534 && a12)
            {
              v537 = a16;
              v538 = a15;
              v539 = a13;
              v540 = a11;
              v541 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v536 + a9 * v538, a4 + a9 * v537, a5, a6, a7, a8, v541, v540, v539, v535);
                v541 = a10;
                v540 = a11;
                v539 = a13;
                v538 = a15;
                v537 = a16;
                v536 = v3095;
                v535 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v534 == 4)
        {
          v1835 = a17;
          v1836 = v3095;
          if (a12)
          {
            v1837 = a16;
            v1838 = a15;
            v1839 = a13;
            v1840 = a11;
            v1841 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1836 + a9 * v1838, a4 + a9 * v1837, a5, a6, a7, a8, v1841, v1840, v1839, v1835);
              v1841 = a10;
              v1840 = a11;
              v1839 = a13;
              v1838 = a15;
              v1837 = a16;
              v1836 = v3095;
              v1835 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1212 = a17;
          v1213 = v3095;
          if (!v534 && a12)
          {
            v1214 = a16;
            v1215 = a15;
            v1216 = a13;
            v1217 = a11;
            v1218 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1213 + a9 * v1215, a4 + a9 * v1214, a5, a6, a7, a8, v1218, v1217, v1216, v1212);
              v1218 = a10;
              v1217 = a11;
              v1216 = a13;
              v1215 = a15;
              v1214 = a16;
              v1213 = v3095;
              v1212 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 637:
        v3021 = *(a1 + 396);
        v646 = getCompressionCodecConfig(*(a1 + 56));
        if (v3021 == 1)
        {
          if (v646 == 4)
          {
            v2024 = a17;
            v2025 = v3095;
            if (a12)
            {
              v2026 = a16;
              v2027 = a15;
              v2028 = a13;
              v2029 = a11;
              v2030 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2025 + a9 * v2027, a4 + a9 * v2026, a5, a6, a7, a8, v2030, v2029, v2028, v2024);
                v2030 = a10;
                v2029 = a11;
                v2028 = a13;
                v2027 = a15;
                v2026 = a16;
                v2025 = v3095;
                v2024 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v647 = a17;
            v648 = v3095;
            if (!v646 && a12)
            {
              v649 = a16;
              v650 = a15;
              v651 = a13;
              v652 = a11;
              v653 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v648 + a9 * v650, a4 + a9 * v649, a5, a6, a7, a8, v653, v652, v651, v647);
                v653 = a10;
                v652 = a11;
                v651 = a13;
                v650 = a15;
                v649 = a16;
                v648 = v3095;
                v647 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v646 == 4)
        {
          v2031 = a17;
          v2032 = v3095;
          if (a12)
          {
            v2033 = a16;
            v2034 = a15;
            v2035 = a13;
            v2036 = a11;
            v2037 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2032 + a9 * v2034, a4 + a9 * v2033, a5, a6, a7, a8, v2037, v2036, v2035, v2031);
              v2037 = a10;
              v2036 = a11;
              v2035 = a13;
              v2034 = a15;
              v2033 = a16;
              v2032 = v3095;
              v2031 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1310 = a17;
          v1311 = v3095;
          if (!v646 && a12)
          {
            v1312 = a16;
            v1313 = a15;
            v1314 = a13;
            v1315 = a11;
            v1316 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1311 + a9 * v1313, a4 + a9 * v1312, a5, a6, a7, a8, v1316, v1315, v1314, v1310);
              v1316 = a10;
              v1315 = a11;
              v1314 = a13;
              v1313 = a15;
              v1312 = a16;
              v1311 = v3095;
              v1310 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 638:
        v3063 = *(a1 + 396);
        v982 = getCompressionCodecConfig(*(a1 + 56));
        if (v3063 == 1)
        {
          if (v982 == 4)
          {
            v2626 = a17;
            v2627 = v3095;
            if (a12)
            {
              v2628 = a16;
              v2629 = a15;
              v2630 = a13;
              v2631 = a11;
              v2632 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v2627 + a9 * v2629, a4 + a9 * v2628, a5, a6, a7, a8, v2632, v2631, v2630, v2626);
                v2632 = a10;
                v2631 = a11;
                v2630 = a13;
                v2629 = a15;
                v2628 = a16;
                v2627 = v3095;
                v2626 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v983 = a17;
            v984 = v3095;
            if (!v982 && a12)
            {
              v985 = a16;
              v986 = a15;
              v987 = a13;
              v988 = a11;
              v989 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v984 + a9 * v986, a4 + a9 * v985, a5, a6, a7, a8, v989, v988, v987, v983);
                v989 = a10;
                v988 = a11;
                v987 = a13;
                v986 = a15;
                v985 = a16;
                v984 = v3095;
                v983 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v982 == 4)
        {
          v2633 = a17;
          v2634 = v3095;
          if (a12)
          {
            v2635 = a16;
            v2636 = a15;
            v2637 = a13;
            v2638 = a11;
            v2639 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v2634 + a9 * v2636, a4 + a9 * v2635, a5, a6, a7, a8, v2639, v2638, v2637, v2633);
              v2639 = a10;
              v2638 = a11;
              v2637 = a13;
              v2636 = a15;
              v2635 = a16;
              v2634 = v3095;
              v2633 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1611 = a17;
          v1612 = v3095;
          if (!v982 && a12)
          {
            v1613 = a16;
            v1614 = a15;
            v1615 = a13;
            v1616 = a11;
            v1617 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1612 + a9 * v1614, a4 + a9 * v1613, a5, a6, a7, a8, v1617, v1616, v1615, v1611);
              v1617 = a10;
              v1616 = a11;
              v1615 = a13;
              v1614 = a15;
              v1613 = a16;
              v1612 = v3095;
              v1611 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 639:
        v3010 = *(a1 + 396);
        v558 = getCompressionCodecConfig(*(a1 + 56));
        if (v3010 == 1)
        {
          if (v558 == 4)
          {
            v1870 = a17;
            v1871 = v3095;
            if (a12)
            {
              v1872 = a16;
              v1873 = a15;
              v1874 = a13;
              v1875 = a11;
              v1876 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1871 + a9 * v1873, a4 + a9 * v1872, a5, a6, a7, a8, v1876, v1875, v1874, v1870);
                v1876 = a10;
                v1875 = a11;
                v1874 = a13;
                v1873 = a15;
                v1872 = a16;
                v1871 = v3095;
                v1870 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v559 = a17;
            v560 = v3095;
            if (!v558 && a12)
            {
              v561 = a16;
              v562 = a15;
              v563 = a13;
              v564 = a11;
              v565 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v560 + a9 * v562, a4 + a9 * v561, a5, a6, a7, a8, v565, v564, v563, v559);
                v565 = a10;
                v564 = a11;
                v563 = a13;
                v562 = a15;
                v561 = a16;
                v560 = v3095;
                v559 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v558 == 4)
        {
          v1877 = a17;
          v1878 = v3095;
          if (a12)
          {
            v1879 = a16;
            v1880 = a15;
            v1881 = a13;
            v1882 = a11;
            v1883 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1878 + a9 * v1880, a4 + a9 * v1879, a5, a6, a7, a8, v1883, v1882, v1881, v1877);
              v1883 = a10;
              v1882 = a11;
              v1881 = a13;
              v1880 = a15;
              v1879 = a16;
              v1878 = v3095;
              v1877 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1233 = a17;
          v1234 = v3095;
          if (!v558 && a12)
          {
            v1235 = a16;
            v1236 = a15;
            v1237 = a13;
            v1238 = a11;
            v1239 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1234 + a9 * v1236, a4 + a9 * v1235, a5, a6, a7, a8, v1239, v1238, v1237, v1233);
              v1239 = a10;
              v1238 = a11;
              v1237 = a13;
              v1236 = a15;
              v1235 = a16;
              v1234 = v3095;
              v1233 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 640:
        v3018 = *(a1 + 396);
        v622 = getCompressionCodecConfig(*(a1 + 56));
        if (v3018 == 1)
        {
          if (v622 == 4)
          {
            v1982 = a17;
            v1983 = v3095;
            if (a12)
            {
              v1984 = a16;
              v1985 = a15;
              v1986 = a13;
              v1987 = a11;
              v1988 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1983 + a9 * v1985, a4 + a9 * v1984, a5, a6, a7, a8, v1988, v1987, v1986, v1982);
                v1988 = a10;
                v1987 = a11;
                v1986 = a13;
                v1985 = a15;
                v1984 = a16;
                v1983 = v3095;
                v1982 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v623 = a17;
            v624 = v3095;
            if (!v622 && a12)
            {
              v625 = a16;
              v626 = a15;
              v627 = a13;
              v628 = a11;
              v629 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v624 + a9 * v626, a4 + a9 * v625, a5, a6, a7, a8, v629, v628, v627, v623);
                v629 = a10;
                v628 = a11;
                v627 = a13;
                v626 = a15;
                v625 = a16;
                v624 = v3095;
                v623 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v622 == 4)
        {
          v1989 = a17;
          v1990 = v3095;
          if (a12)
          {
            v1991 = a16;
            v1992 = a15;
            v1993 = a13;
            v1994 = a11;
            v1995 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1990 + a9 * v1992, a4 + a9 * v1991, a5, a6, a7, a8, v1995, v1994, v1993, v1989);
              v1995 = a10;
              v1994 = a11;
              v1993 = a13;
              v1992 = a15;
              v1991 = a16;
              v1990 = v3095;
              v1989 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1289 = a17;
          v1290 = v3095;
          if (!v622 && a12)
          {
            v1291 = a16;
            v1292 = a15;
            v1293 = a13;
            v1294 = a11;
            v1295 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1290 + a9 * v1292, a4 + a9 * v1291, a5, a6, a7, a8, v1295, v1294, v1293, v1289);
              v1295 = a10;
              v1294 = a11;
              v1293 = a13;
              v1292 = a15;
              v1291 = a16;
              v1290 = v3095;
              v1289 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 641:
        v3005 = *(a1 + 396);
        v518 = getCompressionCodecConfig(*(a1 + 56));
        if (v3005 == 1)
        {
          if (v518 == 4)
          {
            v1800 = a17;
            v1801 = v3095;
            if (a12)
            {
              v1802 = a16;
              v1803 = a15;
              v1804 = a13;
              v1805 = a11;
              v1806 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v1801 + a9 * v1803, a4 + a9 * v1802, a5, a6, a7, a8, v1806, v1805, v1804, v1800);
                v1806 = a10;
                v1805 = a11;
                v1804 = a13;
                v1803 = a15;
                v1802 = a16;
                v1801 = v3095;
                v1800 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v519 = a17;
            v520 = v3095;
            if (!v518 && a12)
            {
              v521 = a16;
              v522 = a15;
              v523 = a13;
              v524 = a11;
              v525 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(a1, a3, v520 + a9 * v522, a4 + a9 * v521, a5, a6, a7, a8, v525, v524, v523, v519);
                v525 = a10;
                v524 = a11;
                v523 = a13;
                v522 = a15;
                v521 = a16;
                v520 = v3095;
                v519 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v518 == 4)
        {
          v1807 = a17;
          v1808 = v3095;
          if (a12)
          {
            v1809 = a16;
            v1810 = a15;
            v1811 = a13;
            v1812 = a11;
            v1813 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1808 + a9 * v1810, a4 + a9 * v1809, a5, a6, a7, a8, v1813, v1812, v1811, v1807);
              v1813 = a10;
              v1812 = a11;
              v1811 = a13;
              v1810 = a15;
              v1809 = a16;
              v1808 = v3095;
              v1807 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1198 = a17;
          v1199 = v3095;
          if (!v518 && a12)
          {
            v1200 = a16;
            v1201 = a15;
            v1202 = a13;
            v1203 = a11;
            v1204 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(a1, a3, v1199 + a9 * v1201, a4 + a9 * v1200, a5, a6, a7, a8, v1204, v1203, v1202, v1198);
              v1204 = a10;
              v1203 = a11;
              v1202 = a13;
              v1201 = a15;
              v1200 = a16;
              v1199 = v3095;
              v1198 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      default:
        return;
    }
  }
}