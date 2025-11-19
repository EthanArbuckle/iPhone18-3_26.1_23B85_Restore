uint64_t AT::TBitstreamReader<unsigned int>::FillCacheFrom(uint64_t result, unsigned int *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (((v2 - a2) & ~((v2 - a2) >> 63) & 0xFFFFFFFC) != 0)
  {
    v4 = v3 >= a2;
    v5 = v3 == a2;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  if (!v5 && v4)
  {
    v6 = *(result + 24);
    v7 = 4;
    do
    {
      v8 = v6 << 8;
      *(result + 24) = v8;
      v9 = 255;
      if (a2 < v2 && a2 >= v3)
      {
        v9 = *a2;
      }

      v6 = v8 | v9;
      *(result + 24) = v6;
      a2 = (a2 + 1);
      --v7;
    }

    while (v7);
  }

  else
  {
    *(result + 24) = bswap32(*a2);
  }

  return result;
}

unsigned __int8 **AT::TBitstreamReader<unsigned int>::SkipBits(unsigned __int8 **result, int a2)
{
  v2 = *(result + 7);
  v3 = a2 - v2;
  if (a2 > v2)
  {
    result[3] = 0;
    v2 = 0;
    if (v3 >= 0x20)
    {
      *result += (v3 >> 3) & 0x1FFFFFFC;
      a2 = v3 & 0x1F;
    }

    else
    {
      a2 = v3;
    }
  }

  if ((a2 - 33) >= 0xFFFFFFE0)
  {
    v4 = *(result + 6);
    v5 = v2 - a2;
    *(result + 7) = v5;
    if (v5 < 0)
    {
      v8 = result[1];
      v7 = result[2];
      v9 = *result;
      if (((v7 - *result) & ~((v7 - *result) >> 63) & 0xFFFFFFFC) == 0 || v8 > v9)
      {
        v11 = 4;
        v12 = *result;
        do
        {
          v13 = v4 << 8;
          *(result + 6) = v13;
          v14 = 255;
          if (v12 < v7 && v12 >= v8)
          {
            v14 = *v12;
          }

          v4 = v14 | v13;
          *(result + 6) = v4;
          ++v12;
          --v11;
        }

        while (v11);
      }

      else
      {
        v4 = bswap32(*v9);
      }

      v15 = v4 << -v5;
      v16 = v5 + 32;
      *(result + 7) = v16;
      *result = (v9 + 1);
      if (v16)
      {
        v6 = v15;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v4 << a2;
    }

    *(result + 6) = v6;
  }

  return result;
}

BOOL AT::TBitstreamReader<unsigned int>::GetBit(unsigned __int8 **a1)
{
  v2 = *(a1 + 6);
  v1 = *(a1 + 7);
  v3 = v2 >> 31;
  *(a1 + 7) = v1 - 1;
  if (v1 - 1 < 0)
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = *a1;
    if (((v5 - *a1) & ~((v5 - *a1) >> 63) & 0xFFFFFFFC) != 0)
    {
      v8 = v6 >= v7;
      v9 = v6 == v7;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (!v9 && v8)
    {
      v10 = 4;
      v11 = *a1;
      do
      {
        v12 = v2 << 8;
        *(a1 + 6) = v12;
        v13 = 255;
        if (v11 < v5 && v11 >= v6)
        {
          v13 = *v11;
        }

        v2 = v13 | v12;
        *(a1 + 6) = v2;
        ++v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      v2 = bswap32(*v7);
    }

    v14 = v2 << (1 - v1);
    v15 = v1 + 31;
    *(a1 + 7) = v15;
    *a1 = (v7 + 1);
    v3 |= v2 >> v15;
    if (v15)
    {
      v4 = v14;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2 * v2;
  }

  *(a1 + 6) = v4;
  return v3 != 0;
}

uint64_t AudioFormatProperty_ChannelLayoutForISOChannelLayout(unsigned int a1, unsigned __int8 *a2, const AudioStreamBasicDescription *a3, unsigned int *a4, AudioChannelLayout *a5)
{
  v72 = 0;
  v70 = xmmword_18F916478;
  v71 = unk_18F916488;
  v9 = AudioFormatProperty_ChannelLayoutSizeForISOChannelLayout(a1, a2, a3, &v72, &v70);
  if (!v9)
  {
    v10 = *a4;
    if (v10 < v72)
    {
      return 561211770;
    }

    bzero(a5, v10);
    v11 = DWORD1(v70);
    v12 = DWORD1(v70) & 0xFFFF0000;
    if (DWORD1(v70) <= 0xFFFEFFFF && v12 && !*(&v71 + 1))
    {
      v9 = 0;
      *a4 = 12;
      a5->mChannelBitmap = 0;
      a5->mNumberChannelDescriptions = 0;
      a5->mChannelLayoutTag = v11;
      return v9;
    }

    if (v12 == -65536)
    {
      return 1718449215;
    }

    v9 = 560360820;
    if (v12)
    {
      if (DWORD1(v70))
      {
        outPropertyDataSize = 0;
        PropertyInfo = AudioFormatGetPropertyInfo(0x636D706Cu, 4u, &v70 + 4, &outPropertyDataSize);
        if (!PropertyInfo)
        {
          std::vector<unsigned char>::vector[abi:ne200100](outPropertyData, outPropertyDataSize);
          Property = AudioFormatGetProperty(0x636D706Cu, 4u, &v70 + 4, &outPropertyDataSize, outPropertyData[0]);
          v27 = outPropertyData[0];
          if (Property)
          {
            v9 = Property;
          }

          else
          {
            a5->mChannelLayoutTag = 0;
            a5->mNumberChannelDescriptions = 0;
            v35 = v27[2];
            if (v35)
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = *(&v71 + 1);
              do
              {
                if ((v39 & (1 << v37)) == 0)
                {
                  v40 = &v27[5 * v38 + 3];
                  v41 = &a5->mChannelDescriptions[v36++];
                  a5->mNumberChannelDescriptions = v36;
                  v42 = *v40;
                  v41->mCoordinates[2] = *(v40 + 16);
                  *&v41->mChannelLabel = v42;
                  v35 = v27[2];
                }

                v37 = ++v38;
              }

              while (v35 > v38);
            }

            else
            {
              v36 = 0;
            }

            if (v36 == DWORD2(v70))
            {
              *a4 = 20 * v36 + 12;
              TryToCollapseAudioChannelLayoutToATag(a4, a5);
              v9 = 0;
              v27 = outPropertyData[0];
            }
          }

          if (v27)
          {
            outPropertyData[1] = v27;
            operator delete(v27);
          }

          return v9;
        }

        return PropertyInfo;
      }
    }

    else if (!v70)
    {
      v13 = v71;
      if (v71)
      {
        v14 = &a2[a1];
        if ((a2 & 3) != 0)
        {
          v15 = 0;
          v16 = a2 ^ 3;
          v17 = a2 + 1;
          v18 = 8 * ((a2 ^ 3) & 3) + 8;
          v19 = a2;
          do
          {
            if (v19 >= v14)
            {
              v20 = 255;
            }

            else
            {
              v20 = *v19;
            }

            v15 = v20 | (v15 << 8);
            ++v19;
          }

          while ((v17++ & 3) != 0);
          v22 = v16 & 3;
          v23 = &a2[(v16 & 3) + 1];
          v24 = v15 << ((8 * v22) ^ 0x18);
        }

        else
        {
          v24 = 0;
          v18 = 0;
          v23 = a2;
        }

        v28 = HIDWORD(v70);
        v29 = v71 - v18;
        v30 = &v23[((v71 - v18) >> 3) & 0x1FFFFFFC];
        if ((v71 - v18) >= 0x20)
        {
          v29 = (v71 - v18) & 0x1F;
        }

        else
        {
          v30 = v23;
        }

        v31 = v71 <= v18;
        if (v71 > v18)
        {
          v32 = 0;
        }

        else
        {
          v32 = v24;
        }

        if (v71 > v18)
        {
          v33 = 0;
        }

        else
        {
          v33 = v18;
        }

        if (v71 > v18)
        {
          v34 = v30;
        }

        else
        {
          v34 = v23;
        }

        if (!v31)
        {
          v13 = v29;
        }

        if ((v13 - 33) >= 0xFFFFFFE0)
        {
          v33 -= v13;
          if (v33 < 0)
          {
            if (((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0 && v34 >= a2)
            {
              v32 = bswap32(*v34);
            }

            else
            {
              v44 = 4;
              v45 = v34;
              do
              {
                v46 = 255;
                if (v45 < v14 && v45 >= a2)
                {
                  v46 = *v45;
                }

                v32 = v46 | (v32 << 8);
                ++v45;
                --v44;
              }

              while (v44);
            }

            ++v34;
            if (v33 == -32)
            {
              v32 = 0;
            }

            else
            {
              v32 <<= -v33;
            }

            if (v33 == -32)
            {
              v33 = 0;
            }

            else
            {
              v33 += 32;
            }
          }

          else
          {
            v32 <<= v13;
          }
        }

        if (!HIDWORD(v70))
        {
LABEL_130:
          a5->mNumberChannelDescriptions = v28;
          *a4 = 20 * v28 + 12;
          TryToCollapseAudioChannelLayoutToATag(a4, a5);
          return 0;
        }

        v47 = 0;
        while (1)
        {
          v48 = &a5->mChannelDescriptions[v47];
          v48->mChannelLabel = -1;
          if (v33 + 8 * (v14 - v34) < 8)
          {
            return v9;
          }

          v49 = HIBYTE(v32);
          if (v33 - 8 < 0)
          {
            if (v34 >= a2 && ((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0)
            {
              v32 = bswap32(*v34);
            }

            else
            {
              v50 = 4;
              v51 = v34;
              do
              {
                v52 = 255;
                if (v51 < v14 && v51 >= a2)
                {
                  v52 = *v51;
                }

                v32 = v52 | (v32 << 8);
                ++v51;
                --v50;
              }

              while (v50);
            }

            v53 = v32 << (8 - v33);
            v33 += 24;
            ++v34;
            v49 |= v32 >> v33;
            if (v33)
            {
              v32 = v53;
            }

            else
            {
              v32 = 0;
            }

            if (!v33)
            {
              v33 = 0;
            }
          }

          else
          {
            v32 <<= 8;
            v33 -= 8;
          }

          if (v49 <= 0x7Du)
          {
            break;
          }

          if (v49 == 126)
          {
            if (v33 + 8 * (v14 - v34) < 24)
            {
              return v9;
            }

            *&v48->mChannelLabel = 0x200000064;
            v56 = HIWORD(v32);
            v57 = v33 - 16;
            if (v33 - 16 < 0)
            {
              if (((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0 && v34 >= a2)
              {
                v32 = bswap32(*v34);
              }

              else
              {
                v59 = 4;
                v60 = v34;
                do
                {
                  v61 = 255;
                  if (v60 < v14 && v60 >= a2)
                  {
                    v61 = *v60;
                  }

                  v32 = v61 | (v32 << 8);
                  ++v60;
                  --v59;
                }

                while (v59);
              }

              v62 = v32 << (16 - v33);
              v63 = v33 + 16;
              ++v34;
              v56 |= v32 >> v63;
              if (v63)
              {
                v58 = v62;
              }

              else
              {
                v58 = 0;
              }

              if (v63)
              {
                v57 = v63;
              }

              else
              {
                v57 = 0;
              }
            }

            else
            {
              v58 = v32 << 16;
            }

            v48->mCoordinates[0] = -(bswap32(v56) >> 16);
            v64 = HIBYTE(v58);
            v33 = v57 - 8;
            if (v57 - 8 < 0)
            {
              if (((v14 - v34) & ~((v14 - v34) >> 63) & 0xFFFFFFFC) != 0 && v34 >= a2)
              {
                v58 = bswap32(*v34);
              }

              else
              {
                v65 = 4;
                v66 = v34;
                do
                {
                  v67 = 255;
                  if (v66 < v14 && v66 >= a2)
                  {
                    v67 = *v66;
                  }

                  v58 = v67 | (v58 << 8);
                  ++v66;
                  --v65;
                }

                while (v65);
              }

              v68 = v58 << (8 - v57);
              v69 = v57 + 24;
              ++v34;
              v64 |= v58 >> v69;
              if (v69)
              {
                v32 = v68;
              }

              else
              {
                v32 = 0;
              }

              if (v69)
              {
                v33 = v69;
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v32 = v58 << 8;
            }

            v55 = v64;
LABEL_128:
            v48->mCoordinates[1] = v55;
            v48->mCoordinates[2] = 1.0;
          }

LABEL_129:
          if (++v47 == v28)
          {
            goto LABEL_130;
          }
        }

        if (v49 > 0x2Cu)
        {
          goto LABEL_129;
        }

        v48->mChannelLabel = sChannelLabelsForISOSpeakerPositions[v49];
        if (v49 - 39 > 1)
        {
          goto LABEL_129;
        }

        *&v48->mChannelLabel = 0x200000064;
        v54 = (&sCoordinatesForISOSpeakerPositions + 8 * v49);
        v48->mCoordinates[0] = -*v54;
        v55 = v54[1];
        goto LABEL_128;
      }
    }
  }

  return v9;
}

void sub_18F7A3B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TryToCollapseAudioChannelLayoutToATag(unsigned int *a1, AudioChannelLayout *a2)
{
  v7 = -65536;
  result = AudioFormatProperty_TagForChannelLayout(a2, &v7);
  if (!result)
  {
    v5 = v7;
    v6 = v7 == -65536 || v7 == 0;
    if (!v6 && v7 != 0x10000)
    {
      a2->mChannelBitmap = 0;
      a2->mNumberChannelDescriptions = 0;
      a2->mChannelLayoutTag = v5;
      *a1 = 12;
    }
  }

  return result;
}

uint64_t AudioFileStreamObject::DetermineBytesAndPacketsWithinByteRangeFromStartingPacket(AudioFileStreamObject *this, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v6 = *(this + 10);
  if (v6)
  {
    v7 = *a3 / v6;
    *a4 = v7;
    v8 = *(this + 10) * v7;
LABEL_3:
    result = 0;
    *a3 = v8;
    return result;
  }

  v10 = *(this + 19);
  if (v10)
  {
    if (*(v10 + 24) <= a2)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      CompressedPacketTable::operator[](&v18, v10, a2);
      v12 = *(v10 + 24);
      v13 = a2;
      v14 = v12 - a2;
      if (v12 != a2)
      {
        v15 = v18 + *a3;
        v13 = a2;
        do
        {
          CompressedPacketTable::operator[](&v18, v10, v13 + (v14 >> 1));
          if (v18 + v19 > v15)
          {
            v14 >>= 1;
          }

          else
          {
            v13 += (v14 >> 1) + 1;
            v14 += ~(v14 >> 1);
          }
        }

        while (v14);
      }

      *a4 = v13 - a2;
      CompressedPacketTable::operator[](&v18, v10, v13 - 1);
      v16 = v18;
      CompressedPacketTable::operator[](&v18, v10, v13 - 1);
      v17 = v16 + v19;
      CompressedPacketTable::operator[](&v18, v10, a2);
      v8 = v17 - v18;
    }

    goto LABEL_3;
  }

  return 1970170687;
}

uint64_t AudioFileStreamObject::ByteToPacket(AudioFileStreamObject *this, AudioBytePacketTranslation *a2)
{
  mByte = a2->mByte;
  if (a2->mByte < 0)
  {
    return 1885563711;
  }

  v4 = *(this + 10);
  if (v4)
  {
    result = 0;
    a2->mPacket = mByte / v4;
    *&a2->mByteOffsetInPacket = (mByte % v4);
    return result;
  }

  v6 = *(this + 19);
  if (!v6)
  {
    v15 = *(this + 11);
    if (v15 < 1 || (v16 = *(this + 12), v16 < 1))
    {
      v16 = *(this + 26);
      if (v16 < 1)
      {
        return 1836020325;
      }

      v17 = *(this + 27);
    }

    else
    {
      v17 = v15;
    }

    result = 0;
    v19 = v17 / v16;
    v20 = mByte / v19;
    a2->mPacket = vcvtmd_s64_f64(v20);
    a2->mByteOffsetInPacket = vcvtmd_u64_f64(v19 * (v20 - floor(v20)));
    a2->mFlags = 1;
    return result;
  }

  v26[1] = 0;
  v26[2] = 0;
  v26[0] = mByte;
  v7 = *(v6 + 24);
  v27 = byte_less_than;
  v28 = v6;
  v29 = 0;
  std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,BOOL (*)(AudioStreamPacketDescriptionExtended const&,AudioStreamPacketDescriptionExtended const&)>(&v23, &v28, v26, v7, &v27);
  v8 = *(v6 + 24);
  v9 = v24;
  if (v24 == v8)
  {
    v10 = v8 - 1;
    CompressedPacketTable::operator[](&v28, v6, v8 - 1);
    v11 = v28 + HIDWORD(v29);
    v12 = a2->mByte;
    if (a2->mByte >= v11)
    {
      v21 = v11 / *(v6 + 24);
      v22 = v12 / v21;
      v10 = vcvtmd_s64_f64(v22);
      v14 = vcvtmd_u64_f64(v21 * (v22 - floor(v22)));
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v14 = v12 - v28;
    }

    a2->mPacket = v10;
    a2->mByteOffsetInPacket = v14;
    a2->mFlags = v13;
  }

  else
  {
    a2->mPacket = v24;
    v18 = a2->mByte;
    CompressedPacketTable::operator[](v25, v23, v9);
    *&a2->mByteOffsetInPacket = (v18 - v25[0]);
  }

  return 0;
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,BOOL (*)(AudioStreamPacketDescriptionExtended const&,AudioStreamPacketDescriptionExtended const&)>(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t (**a5)(_BYTE *, uint64_t))
{
  v6 = result;
  if (a4)
  {
    v8 = a4;
    do
    {
      v10 = v8 >> 1;
      v11 = *a2;
      v12 = a2[1] + (v8 >> 1);
      CompressedPacketTable::operator[](v14, *a2, v12);
      result = (*a5)(v14, a3);
      if (result)
      {
        *a2 = v11;
        a2[1] = v12 + 1;
        v10 = v8 + ~v10;
      }

      v8 = v10;
    }

    while (v10);
  }

  v13 = a2[1];
  *v6 = *a2;
  v6[1] = v13;
  return result;
}

uint64_t AudioFileStreamObject::PacketToByte(AudioFileStreamObject *this, AudioBytePacketTranslation *a2)
{
  result = 1885563711;
  mPacket = a2->mPacket;
  if ((mPacket & 0x8000000000000000) == 0)
  {
    v6 = *(this + 10);
    if (v6)
    {
      v7 = 0;
      v8 = mPacket * v6;
LABEL_4:
      a2->mByte = v8;
LABEL_5:
      result = 0;
      a2->mFlags = v7;
      return result;
    }

    v9 = *(this + 19);
    if (!v9)
    {
      v10 = *(this + 11);
      if (v10 < 1 || (v11 = *(this + 12), v11 < 1))
      {
        v11 = *(this + 26);
        if (v11 < 1)
        {
          return 1836020325;
        }

        v12 = *(this + 27);
      }

      else
      {
        v12 = v10;
      }

      a2->mByte = vcvtmd_s64_f64(v12 / v11 * mPacket);
      v7 = 1;
      goto LABEL_5;
    }

    if (mPacket < *(v9 + 24))
    {
      CompressedPacketTable::operator[](v13, v9, mPacket);
      v7 = 0;
      v8 = v13[0];
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t AudioFileStreamObject::PacketToDependencyInfo(AudioFileStreamObject *this, AudioPacketDependencyInfoTranslation *a2)
{
  v3 = *(this + 8);
  ioPropertyDataSize = 4;
  inSpecifier = v3;
  outPropertyData = 0;
  AudioFormatGetProperty(0x64726C6Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
  mPacket = outPropertyData;
  if (a2->mPacket < outPropertyData)
  {
    mPacket = a2->mPacket;
  }

  a2->mIsIndependentlyDecodable = 1;
  a2->mNumberPrerollPackets = mPacket;
  return 0;
}

uint64_t AudioFileStreamObject::ScanForIndependentPacket(uint64_t a1, int a2, void *a3)
{
  if (a2 != 1)
  {
    result = 0;
    v6 = *a3 - 1;
LABEL_10:
    a3[1] = v6;
    return result;
  }

  if (*(a1 + 40))
  {
    v4 = (*(*a1 + 72))(a1);
    goto LABEL_7;
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    v4 = *(v7 + 24);
LABEL_7:
    v6 = *a3 + 1;
    if (v6 >= v4)
    {
      result = 0;
      v6 = -1;
    }

    else
    {
      result = 0;
    }

    goto LABEL_10;
  }

  return 1885563711;
}

uint64_t AudioFileStreamObject::PacketToRollDistance(AudioFileStreamObject *this, AudioPacketRollDistanceTranslation *a2)
{
  v3 = *(this + 8);
  ioPropertyDataSize = 4;
  inSpecifier = v3;
  outPropertyData = 0;
  AudioFormatGetProperty(0x64726C6Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
  mPacket = outPropertyData;
  if (a2->mPacket < outPropertyData)
  {
    mPacket = a2->mPacket;
  }

  a2->mRollDistance = mPacket;
  return 0;
}

uint64_t AudioFileStreamObject::FrameToPacket(AudioFileStreamObject *this, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *(this + 11);
  if (v7)
  {
    result = 0;
    v9 = a2 / v7;
    *a3 = a2 / v7;
LABEL_3:
    v10 = a2 - v9 * v7;
LABEL_4:
    *a4 = v10;
    return result;
  }

  v12 = *(this + 19);
  if (v12)
  {
    v21[0] = 0;
    v21[1] = 0;
    v21[2] = a2;
    v22[0] = v12;
    v13 = *(v12 + 24);
    v22[1] = 0;
    std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,std::__less<void,void>>(&v18, v22, v21, v13);
    v14 = v19;
    if (v19 != *(v12 + 24))
    {
      *a3 = v19;
      CompressedPacketTable::operator[](v20, v18, v14);
      result = 0;
      v10 = a2 - v20[4];
      goto LABEL_4;
    }
  }

  if (!a2)
  {
    result = 0;
    *a3 = 0;
    *a4 = 0;
    return result;
  }

  result = 1970170687;
  v15 = *(this + 28);
  if (v15 >= 1)
  {
    v16 = *(this + 26);
    if (v16 >= 1)
    {
      result = 0;
      v17 = v15 / v16;
      *a3 = (a2 / v17);
      v7 = v17;
      v9 = a2 / v7;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,CompressedPacketTable::iterator,AudioStreamPacketDescriptionExtended,std::__identity,std::__less<void,void>>(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v9 = *a2;
      v10 = a2[1] + (v6 >> 1);
      result = CompressedPacketTable::operator[](v12, *a2, v10);
      if (v13 < *(a3 + 16))
      {
        *a2 = v9;
        a2[1] = v10 + 1;
        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  v11 = a2[1];
  *v5 = *a2;
  v5[1] = v11;
  return result;
}

uint64_t AudioFileStreamObject::PacketToFrame(AudioFileStreamObject *this, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    return 1885563711;
  }

  v6 = *(this + 11);
  if (v6)
  {
    result = 0;
    v8 = v6 * a2;
LABEL_4:
    *a3 = v8;
    return result;
  }

  v9 = *(this + 19);
  if (v9 && *(v9 + 24) > a2)
  {
    CompressedPacketTable::operator[](v12, v9, a2);
    result = 0;
    v8 = v13;
    goto LABEL_4;
  }

  if (!a2)
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  result = 1970170687;
  v10 = *(this + 28);
  if (v10 >= 1)
  {
    v11 = *(this + 26);
    if (v11 >= 1)
    {
      result = 0;
      v8 = (v10 / v11 * a2);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t AudioFileStreamObject::GetPacketInfo(AudioFileStreamObject *this, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *(this + 10);
  if (v7)
  {
    result = 0;
    *a3 = v7 * a2;
    *a4 = v7;
  }

  else
  {
    v9 = *(this + 19);
    if (v9)
    {
      result = 1885563711;
      if ((a2 & 0x8000000000000000) == 0 && *(v9 + 24) > a2)
      {
        CompressedPacketTable::operator[](&v10, v9, a2);
        *a3 = v10;
        CompressedPacketTable::operator[](&v10, v9, a2);
        result = 0;
        *a4 = v11;
      }
    }

    else
    {
      return 1970170687;
    }
  }

  return result;
}

uint64_t AudioFileStreamWrapper::CallPacketsProc(AudioFileStreamWrapper *this, UInt32 a2, unsigned int a3, const void *a4, AudioStreamPacketDescription *a5, int a6)
{
  if (a5)
  {
    v6 = LODWORD(a5[a3 - 1].mStartOffset) + a5[a3 - 1].mDataByteSize - LODWORD(a5->mStartOffset);
    v7 = *(this + 2);
    v8 = *(v7 + 44);
    if (v8)
    {
      v9 = v8 * a3;
    }

    else
    {
      v9 = 0;
      if (a3)
      {
        v10 = a3;
        p_mVariableFramesInPacket = &a5->mVariableFramesInPacket;
        do
        {
          v12 = *p_mVariableFramesInPacket;
          p_mVariableFramesInPacket += 4;
          v9 += v12;
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = *(this + 2);
    v9 = *(v7 + 44) * a3;
    v6 = a2;
  }

  if (a6)
  {
    v13 = *(v7 + 208);
    v14 = *(v7 + 224);
    *(v7 + 216) += v6;
    *(v7 + 224) = v14 + v9;
    *(v7 + 208) = v13 + a3;
  }

  return (*(this + 4))(*(this + 5));
}

void *CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(void **a1, uint64_t a2)
{
  result = reallocf(*a1, 16 * a2);
  if (a2 && !result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

uint64_t AudioFileStreamObject::GetBitRate(AudioFileStreamObject *this, unsigned int *a2)
{
  v2 = *(this + 40);
  if (!v2)
  {
    return 1836020325;
  }

  result = 0;
  *a2 = v2 / *(this + 26);
  return result;
}

uint64_t AudioFileStreamObject::Seek(AudioFileStreamObject *this, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  result = 1836020325;
  v6 = *(this + 1);
  if (*(v6 + 105) == 1)
  {
    v10 = *(this + 10);
    if (v10)
    {
      *a3 = v10 * a2;
      *a4 = 0;
LABEL_4:
      result = 0;
      *(this + 59) = 0;
      *(this + 23) = a2;
      v11 = *(this + 13) + *a3;
      *(v6 + 88) = v11;
      *(v6 + 96) = v11;
      *(v6 + 80) = 0;
      *(v6 + 72) = 0;
      return result;
    }

    v12 = *(this + 19);
    if (v12)
    {
      if (*(v12 + 24) < a2)
      {
        return 4294967257;
      }

      CompressedPacketTable::operator[](v39, v12, a2);
      *a3 = v39[0];
      *a4 = 0;
      v6 = *(this + 1);
      goto LABEL_4;
    }

    v13 = *(this + 11);
    if (v13 >= 1)
    {
      v14 = *(this + 12);
      if (v14 >= 1)
      {
        v15 = v13 / v14;
        v16 = *(v6 + 168);
        v17 = *(v6 + 176);
        v18 = v17 - v16;
        if (v17 != v16)
        {
          v19 = *(v6 + 152);
          if (*(v6 + 152))
          {
            v20 = *(v6 + 156);
            if (v20)
            {
              if (a2 / v19 < (v18 >> 2))
              {
                v21 = 0.0;
                v22 = a2;
                if (v19 <= a2)
                {
                  v23 = 0;
                  v24 = 0;
                  v22 = a2;
                  do
                  {
                    v24 += (*(v16 + 4 * v23) + v20);
                    v22 -= v19;
                    ++v23;
                  }

                  while (v22 >= v19);
LABEL_35:
                  v21 = v24;
                  goto LABEL_36;
                }

                goto LABEL_36;
              }
            }
          }
        }

        if (*(v6 + 192) == 1 && *(v6 + 206) != 0)
        {
          v28 = *(v6 + 208);
          if (*(v6 + 208))
          {
            v29 = *(v6 + 216);
            if (a2 / v28 < ((*(v6 + 224) - v29) >> 2))
            {
              v21 = 0.0;
              v22 = a2;
              if (v28 <= a2)
              {
                v24 = 0;
                v30 = 0;
                v22 = a2;
                do
                {
                  v24 += *(v29 + 4 * v30) * *(v6 + 204);
                  v22 -= v28;
                  ++v30;
                }

                while (v22 >= v28);
                goto LABEL_35;
              }

LABEL_36:
              v31 = v21 + v22 * v15;
LABEL_49:
              *a3 = v31;
              *a4 = 1;
              goto LABEL_50;
            }
          }
        }

        if ((*(v6 + 248) & 0x14) == 4)
        {
          v32 = 1120403456;
          v33 = v14;
          v34 = (a2 * 100.0) / v14;
          if (v34 > 100.0)
          {
            v34 = 100.0;
          }

          if (v34 >= 99)
          {
            v35 = 99;
          }

          else
          {
            v35 = v34;
          }

          LOBYTE(v32) = *(v6 + 264 + v35);
          v36 = v32;
          if (v34 > 98)
          {
            v37 = 256.0;
          }

          else
          {
            LOBYTE(v33) = *(v35 + v6 + 264 + 1);
            v37 = LODWORD(v33);
          }

          v15 = ((v36 + ((v37 - v36) * (v34 - v35))) * v13);
          v38 = 0.00390625;
          goto LABEL_48;
        }

LABEL_45:
        v38 = a2;
LABEL_48:
        v31 = v15 * v38;
        goto LABEL_49;
      }
    }

    v25 = *(this + 26);
    if (v25)
    {
      v26 = *(this + 27);
      if (v26 > 0)
      {
        v15 = v26 / v25;
        goto LABEL_45;
      }
    }

    if (!a2 && (*(this + 13) & 0x8000000000000000) == 0)
    {
      *a3 = 0;
LABEL_50:
      *(this + 176) = 1;
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t AudioFileStreamObject::GetProperty(AudioFileStreamObject *this, int a2, unsigned int *a3, void *__dst)
{
  if (*(this + 177))
  {
    return 1685348671;
  }

  v25 = v4;
  v26 = v5;
  v8 = *(this + 1);
  v9 = *(v8 + 112);
  if (v9)
  {
    v6 = 1970170687;
  }

  else
  {
    v6 = 1836020325;
  }

  v10 = 1886681407;
  if (a2 > 1885564531)
  {
    if (a2 > 1886090593)
    {
      if (a2 > 1886616164)
      {
        switch(a2)
        {
          case 1886616165:
            if (*a3 == 4)
            {
              v10 = 0;
              v11 = *(this + 28);
              goto LABEL_101;
            }

            break;
          case 1920098672:
            if (*a3 == 4)
            {
              v21 = (*(*this + 160))(this);
              v10 = 0;
              *__dst = v21;
              return v10;
            }

            break;
          case 1919247481:
            if (*a3 == 4)
            {
              v10 = 0;
              *__dst = v9;
              return v10;
            }

            break;
          default:
            return v10;
        }
      }

      else
      {
        if (a2 == 1886090594)
        {
          return v6;
        }

        if (a2 != 1886283375)
        {
          if (a2 == 1886547302)
          {
            return v6;
          }

          return v10;
        }

        if (*(v8 + 106) != 1)
        {
          return v6;
        }

        if (*a3 >= 0x10)
        {
          v10 = 0;
          *__dst = *(this + 10);
          *a3 = 16;
          return v10;
        }
      }

      return 561211770;
    }

    if (a2 > 1886086255)
    {
      switch(a2)
      {
        case 1886086256:
          if (*a3 != 16)
          {
            return 561211770;
          }

          if (__dst)
          {
            if ((*__dst & 0x8000000000000000) == 0)
            {
              return (*(*this + 184))(this, __dst);
            }

            return 1885563711;
          }

          break;
        case 1886086770:
          if (*a3 != 24)
          {
            return 561211770;
          }

          return (*(*this + 144))(this, __dst[1], __dst);
        case 1886089836:
          if (*a3 != 16)
          {
            return 561211770;
          }

          if (__dst)
          {
            if ((*__dst & 0x8000000000000000) == 0)
            {
              return (*(*this + 168))(this, __dst);
            }

            return 1885563711;
          }

          break;
        default:
          return v10;
      }

      return 4294967246;
    }

    if (a2 == 1885564532)
    {
      v20 = *(this + 12);
      if (v20 < 0)
      {
        return v6;
      }

      goto LABEL_88;
    }

    if (a2 != 1885957732)
    {
      if (a2 != 1886085753)
      {
        return v10;
      }

      if (*a3 != 24)
      {
        return 561211770;
      }

      return (*(*this + 192))(this, __dst);
    }

LABEL_51:
    if (a2 == 1885957732)
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = 1;
    }

    if (*a3 != 16)
    {
      return 561211770;
    }

    if (__dst)
    {
      if ((*__dst & 0x8000000000000000) == 0)
      {
        return (*(*this + 176))(this, v19, __dst);
      }

      return 1885563711;
    }

    return 4294967246;
  }

  if (a2 <= 1685022309)
  {
    if (a2 <= 1652125802)
    {
      if (a2 == 1633841264)
      {
        if (*a3 == 8)
        {
          v22 = AudioFileStreamObject::AverageBytesPerPacket(this);
          v10 = 0;
          *__dst = v22;
          return v10;
        }

        return 561211770;
      }

      if (a2 != 1650683508)
      {
        if (a2 != 1651663220)
        {
          return v10;
        }

        if (*a3 == 4)
        {
          v24 = 0;
          v10 = (*(*this + 104))(this, &v24);
          if (!v10)
          {
            v11 = v24;
LABEL_101:
            *__dst = v11;
          }

          return v10;
        }

        return 561211770;
      }

      v20 = *(this + 11);
      if (v20 < 0)
      {
        return v6;
      }

LABEL_88:
      if (*a3 == 8)
      {
        v10 = 0;
        *__dst = v20;
        return v10;
      }

      return 561211770;
    }

    if (a2 != 1652125803)
    {
      if (a2 != 1668112752)
      {
        if (a2 != 1684434292)
        {
          return v10;
        }

        if (*(v8 + 105) != 1)
        {
          return v6;
        }

        if (*a3 == 40)
        {
          v10 = 0;
          v17 = *(this + 24);
          v18 = *(this + 40);
          __dst[4] = *(this + 7);
          *__dst = v17;
          *(__dst + 1) = v18;
          return v10;
        }

        return 561211770;
      }

      if (*(v8 + 109) != 1)
      {
        return v6;
      }

      v16 = *a3;
      if (v16 != *(this + 36))
      {
        return 561211770;
      }

      v13 = *(this + 17);
      goto LABEL_79;
    }

    if (*a3 != 24)
    {
      return 561211770;
    }

    return (*(*this + 200))(this, __dst);
  }

  if (a2 > 1718775914)
  {
    if (a2 == 1718775915)
    {
      if (*a3 != 24)
      {
        return 561211770;
      }

      return (*(*this + 152))(this, *__dst, __dst + 8, __dst + 16);
    }

    if (a2 == 1835493731)
    {
      if (*(v8 + 108) != 1)
      {
        return v6;
      }

      v16 = *a3;
      if (v16 != *(this + 32))
      {
        return 561211770;
      }

      v13 = *(this + 15);
LABEL_79:
      v15 = __dst;
      goto LABEL_80;
    }

    if (a2 != 1852403300)
    {
      return v10;
    }

    goto LABEL_51;
  }

  if (a2 == 1685022310)
  {
    v20 = *(this + 13);
    if (v20 < 0)
    {
      return v6;
    }

    goto LABEL_88;
  }

  if (a2 == 1717988724)
  {
    if (*(v8 + 104) != 1)
    {
      return v6;
    }

    if (*a3 == 4)
    {
      v10 = 0;
      v11 = *(this + 4);
      goto LABEL_101;
    }

    return 561211770;
  }

  if (a2 != 1718383476)
  {
    return v10;
  }

  if (*(v8 + 108) == 1)
  {
    v13 = *(this + 8);
    v14 = *(this + 9) - v13;
    if (v14)
    {
      if (v14 > *a3)
      {
        return 561211770;
      }

      *a3 = 16 * (v14 >> 4);
      v15 = __dst;
      v16 = 16 * (v14 >> 4);
LABEL_80:
      memcpy(v15, v13, v16);
      return 0;
    }
  }

  return v6;
}

double AudioFileStreamObject::AverageBytesPerPacket(AudioFileStreamObject *this)
{
  v3 = *(this + 10);
  if (v3)
  {
    return v3;
  }

  v12[7] = v1;
  v12[8] = v2;
  v5 = *(this + 19);
  if (v5)
  {
    v6 = *(v5 + 24);
    CompressedPacketTable::operator[](v12, v5, v6 - 1);
    v7 = v12[0];
    CompressedPacketTable::operator[](v11, v5, v6 - 1);
    v8 = (v7 + v11[3]);
    v9 = v6;
  }

  else
  {
    v10 = *(this + 26);
    if (v10 < 1)
    {
      return 1836020320.0;
    }

    v8 = *(this + 27);
    v9 = v10;
  }

  return v8 / v9;
}

uint64_t AudioFileStreamObject::GetPropertyInfo(AudioFileStreamObject *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (*(this + 177))
  {
    return 1685348671;
  }

  result = 1836020325;
  if (*(*(this + 1) + 112))
  {
    v6 = 1970170687;
  }

  else
  {
    v6 = 1836020325;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a2 > 1885564531)
  {
    if (a2 > 1886090593)
    {
      if (a2 > 1886616164)
      {
        if (a2 == 1886616165 || a2 == 1920098672)
        {
LABEL_56:
          if (a3)
          {
            result = 0;
            v8 = 4;
            goto LABEL_71;
          }

          return 0;
        }

        v7 = 1919247481;
        goto LABEL_55;
      }

      if (a2 == 1886090594)
      {
        goto LABEL_56;
      }

      if (a2 != 1886283375)
      {
        v7 = 1886547302;
LABEL_55:
        if (a2 == v7)
        {
          goto LABEL_56;
        }

        goto LABEL_73;
      }

      goto LABEL_48;
    }

    if (a2 > 1886086255)
    {
      if (a2 == 1886086256)
      {
        goto LABEL_48;
      }

      if (a2 != 1886086770)
      {
        v9 = 1886089836;
LABEL_47:
        if (a2 != v9)
        {
          goto LABEL_73;
        }

LABEL_48:
        if (!a3)
        {
          return 0;
        }

        result = 0;
        v8 = 16;
        goto LABEL_71;
      }
    }

    else
    {
      if (a2 == 1885564532)
      {
        v10 = *(this + 12);
LABEL_66:
        result = v6;
        if (v10 < 0)
        {
          return result;
        }

LABEL_69:
        if (a3)
        {
          result = 0;
          v8 = 8;
          goto LABEL_71;
        }

        return 0;
      }

      if (a2 == 1885957732)
      {
        goto LABEL_48;
      }

      if (a2 != 1886085753)
      {
        goto LABEL_73;
      }
    }

LABEL_50:
    if (!a3)
    {
      return 0;
    }

    result = 0;
    v8 = 24;
    goto LABEL_71;
  }

  if (a2 > 1685022309)
  {
    if (a2 <= 1718775914)
    {
      if (a2 == 1685022310)
      {
        if ((*(this + 13) & 0x8000000000000000) != 0)
        {
          return result;
        }

        goto LABEL_69;
      }

      if (a2 == 1717988724)
      {
        goto LABEL_56;
      }

      if (a2 != 1718383476)
      {
        goto LABEL_73;
      }

      if (*(*(this + 1) + 108) == 1 && *(this + 9) != *(this + 8))
      {
        v6 = 0;
      }

      if (a3)
      {
        *a3 = (*(this + 18) - *(this + 16)) & 0xFFFFFFF0;
      }

      return v6;
    }

    if (a2 != 1718775915)
    {
      if (a2 == 1835493731)
      {
        result = v6;
        if (*(*(this + 1) + 108) == 1)
        {
          if (a3)
          {
            result = 0;
            v8 = *(this + 32);
            goto LABEL_71;
          }

          return 0;
        }

        return result;
      }

      v9 = 1852403300;
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  if (a2 <= 1652125802)
  {
    if (a2 == 1633841264)
    {
      goto LABEL_69;
    }

    if (a2 != 1650683508)
    {
      v7 = 1651663220;
      goto LABEL_55;
    }

    v10 = *(this + 11);
    goto LABEL_66;
  }

  if (a2 == 1652125803)
  {
    goto LABEL_50;
  }

  if (a2 != 1668112752)
  {
    if (a2 == 1684434292)
    {
      if (*(*(this + 1) + 105) != 1)
      {
        return result;
      }

      if (!a3)
      {
        return 0;
      }

      result = 0;
      v8 = 40;
LABEL_71:
      *a3 = v8;
      return result;
    }

LABEL_73:
    if (a3)
    {
      *a3 = 0;
    }

    result = 1886681407;
    if (a4)
    {
      *a4 = 0;
    }

    return result;
  }

  result = v6;
  if (*(*(this + 1) + 109) == 1)
  {
    if (a3)
    {
      result = 0;
      v8 = *(this + 36);
      goto LABEL_71;
    }

    return 0;
  }

  return result;
}

void AudioFileStreamWrapper::~AudioFileStreamWrapper(AudioFileStreamWrapper *this)
{
  AudioFileStreamWrapper::~AudioFileStreamWrapper(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D8C8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    free(v6);
    *(this + 16) = 0;
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t AudioFileStreamRecognizer::ParseHeader(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 236);
  if (v4 == -1)
  {
    return 0;
  }

  v53 = v2;
  v54 = v3;
  if (v4)
  {
    if (v4 != 1457)
    {
      result = 0;
LABEL_84:
      v27 = -1;
      goto LABEL_85;
    }

    v7 = *(a1 + 8);
    LODWORD(v8) = *(v7 + 120);
  }

  else
  {
    *(a1 + 256) = 128;
    v7 = *(a1 + 8);
    v10 = *(v7 + 88);
    v9 = *(v7 + 96);
    v11 = v10 + *(v7 + 80);
    v13 = v9 < v10 || v11 <= v9;
    v14 = v11 - v9;
    if (v13)
    {
      v8 = 0;
    }

    else
    {
      v8 = v14;
    }

    if (v8 > 0x7F)
    {
      goto LABEL_43;
    }

    *(a1 + 272) = v9;
    v15 = *(v7 + 128);
    v16 = *(v7 + 72);
    if (v16 == v15)
    {
      if (v14)
      {
        v18 = v13;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = &v16[(v9 - v10)];
      }

      memmove(v15, v19, v8);
      v7 = *(a1 + 8);
      if (*(v7 + 124) <= 0x7Fu)
      {
        *(v7 + 124) = 128;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v7 + 128), 0x80uLL);
        v7 = *(a1 + 8);
      }

      *(v7 + 120) = v8;
      *(v7 + 96) = *(v7 + 88) + *(v7 + 80);
    }

    else
    {
      if (*(v7 + 124) <= 0x7Fu)
      {
        *(v7 + 124) = 128;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v7 + 128), 0x80uLL);
        v7 = *(a1 + 8);
      }

      LODWORD(v8) = 0;
      *(v7 + 120) = 0;
    }
  }

  v20 = *(a1 + 256) - v8;
  v21 = *(v7 + 88);
  v22 = *(v7 + 96);
  v23 = v21 + *(v7 + 80);
  if (v23 <= v22 || v22 < v21)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23 - v22;
  }

  if (v20 <= v25)
  {
    v20 = v25;
  }

  v52 = v20;
  v26 = v20 + v8;
  if (*(v7 + 124) < v26)
  {
    *(v7 + 124) = v26;
    CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v7 + 128), v26);
    v7 = *(a1 + 8);
    LODWORD(v8) = *(v7 + 120);
  }

  StreamBuffer::Copy((v7 + 72), &v52, (*(v7 + 128) + v8));
  v7 = *(a1 + 8);
  v14 = *(v7 + 120) + v52;
  *(v7 + 120) = v14;
  if (v14 < *(a1 + 256))
  {
    result = 0;
    v27 = 1457;
LABEL_85:
    *(a1 + 236) = v27;
    return result;
  }

  v9 = *(a1 + 272);
  v28 = *(v7 + 128);
  *(v7 + 88) = v9;
  *(v7 + 96) = v9;
  *(v7 + 72) = v28;
  *(v7 + 80) = v14;
  v11 = v9 + v14;
  v10 = v9;
LABEL_43:
  v29 = 0;
  v30 = v9 >= v10 && v9 < v11;
  v31 = !v30;
  if (v30 && v14)
  {
    v29 = (*(v7 + 72) + (v9 - v10));
  }

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v14;
  }

  AudioFileFormatRegistry = GetAudioFileFormatRegistry();
  v34 = AudioFileFormatRegistry;
  v35 = *(a1 + 8);
  v36 = *(v35 + 12);
  if (!v36 || (v37 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *(v35 + 12))) == 0 || (FormatForData = v37, (*(*v37 + 24))(v37, v32, v29) != 1))
  {
    if ((*(**(v34 + 8) + 24))(*(v34 + 8), v32, v29) == 1)
    {
      FormatForData = *(v34 + 8);
    }

    else
    {
      FormatForData = AudioFileFormatRegistry::GetFormatForData(v34, v32, v29);
      if (!FormatForData)
      {
        if (!v36)
        {
          goto LABEL_83;
        }

        v51 = AudioFileFormatRegistry::Get(v34, v36);
        if (!v51)
        {
          goto LABEL_83;
        }

        FormatForData = v51;
        if (!(*(*v51 + 24))(v51, v32, v29))
        {
          goto LABEL_83;
        }
      }
    }
  }

  v39 = FormatForData[2];
  v40 = (*(*FormatForData + 120))(FormatForData);
  if (!v40)
  {
    if ((v39 & 0xFBFFFFFF) == 0x61632D33)
    {
      operator new();
    }

    goto LABEL_83;
  }

  v41 = (*(*v40 + 144))(v40);
  if (!v41)
  {
LABEL_83:
    result = 1954115647;
    goto LABEL_84;
  }

  v42 = 0;
  *(v41 + 16) = v39;
  *a2 = v41;
  *(a2 + 8) = AudioFileStreamObject::ParseHeader;
  *(a2 + 16) = 0;
  v43 = *(a1 + 8);
  v44 = *(v43 + 88);
  v45 = *(v43 + 96);
  v46 = v44 + *(v43 + 80);
  v47 = v45 < v44 || v46 <= v45;
  v48 = v47;
  v49 = v46 - v45;
  if (!v47 && v49)
  {
    v42 = *(v43 + 72) + (v45 - v44);
  }

  result = 0;
  *(a2 + 32) = v42;
  if (v48)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  *(a2 + 24) = v50;
  return result;
}

void sub_18F7A5F7C(void *a1)
{
  MEMORY[0x193ADF220](v2, 0x10B1C404537FDE6);
  __cxa_begin_catch(a1);
  *(v1 + 236) = -1;
  __cxa_end_catch();
  JUMPOUT(0x18F7A5F5CLL);
}

void AudioFileStreamRecognizer::~AudioFileStreamRecognizer(AudioFileStreamRecognizer *this)
{
  AudioFileStreamObject::~AudioFileStreamObject(this);

  JUMPOUT(0x193ADF220);
}

void AudioFileStreamObject::~AudioFileStreamObject(AudioFileStreamObject *this)
{
  *this = &unk_1F032D7D8;
  v2 = *(this + 36);
  if (v2)
  {
    free(v2);
    *(this + 36) = 0;
  }

  v3 = *(this + 24);
  if (v3)
  {
    free(v3);
    *(this + 24) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    free(v4);
    *(this + 17) = 0;
  }

  v5 = *(this + 15);
  if (v5)
  {
    free(v5);
    *(this + 15) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }
}

uint64_t AudioFileStreamRestrictedRecognizer::ParseHeader(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 432) != 1)
  {
    return 1852797029;
  }

  v2 = a1;
  v3 = *(a1 + 236);
  if (v3 == -1)
  {
    return 0;
  }

  if (v3)
  {
    if (v3 != 1532)
    {
      goto LABEL_112;
    }

    v5 = *(a1 + 8);
    LODWORD(v6) = *(v5 + 120);
  }

  else
  {
    *(a1 + 256) = 128;
    v5 = *(a1 + 8);
    v9 = *(v5 + 88);
    v8 = *(v5 + 96);
    v10 = v9 + *(v5 + 80);
    v12 = v8 < v9 || v10 <= v8;
    v13 = v10 - v8;
    if (v12)
    {
      v6 = 0;
    }

    else
    {
      v6 = v13;
    }

    if (v6 > 0x7F)
    {
      goto LABEL_44;
    }

    *(a1 + 272) = v8;
    v14 = *(v5 + 128);
    v15 = *(v5 + 72);
    if (v15 == v14)
    {
      if (v13)
      {
        v16 = v12;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = &v15[(v8 - v9)];
      }

      memmove(v14, v17, v6);
      v5 = *(v2 + 8);
      if (*(v5 + 124) <= 0x7Fu)
      {
        *(v5 + 124) = 128;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v5 + 128), 0x80uLL);
        v5 = *(v2 + 8);
      }

      *(v5 + 120) = v6;
      *(v5 + 96) = *(v5 + 88) + *(v5 + 80);
    }

    else
    {
      if (*(v5 + 124) <= 0x7Fu)
      {
        *(v5 + 124) = 128;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v5 + 128), 0x80uLL);
        v5 = *(v2 + 8);
      }

      LODWORD(v6) = 0;
      *(v5 + 120) = 0;
    }
  }

  v18 = *(v2 + 256) - v6;
  v19 = *(v5 + 88);
  v20 = *(v5 + 96);
  v21 = v19 + *(v5 + 80);
  if (v21 <= v20 || v20 < v19)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21 - v20;
  }

  if (v18 <= v23)
  {
    v18 = v23;
  }

  v89[0] = v18;
  v24 = v18 + v6;
  if (*(v5 + 124) < v24)
  {
    *(v5 + 124) = v24;
    CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v5 + 128), v24);
    v5 = *(v2 + 8);
    LODWORD(v6) = *(v5 + 120);
  }

  StreamBuffer::Copy((v5 + 72), v89, (*(v5 + 128) + v6));
  v5 = *(v2 + 8);
  v13 = *(v5 + 120) + v89[0];
  *(v5 + 120) = v13;
  if (v13 < *(v2 + 256))
  {
    v7 = 0;
    v25 = 1532;
    goto LABEL_113;
  }

  v8 = *(v2 + 272);
  v26 = *(v5 + 128);
  *(v5 + 88) = v8;
  *(v5 + 96) = v8;
  *(v5 + 72) = v26;
  *(v5 + 80) = v13;
  v10 = v8 + v13;
  v9 = v8;
LABEL_44:
  v27 = 0;
  v28 = v8 >= v9 && v8 < v10;
  v29 = !v28;
  if (v28 && v13)
  {
    v27 = *(v5 + 72) + (v8 - v9);
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v13;
  }

  AudioFileFormatRegistry = GetAudioFileFormatRegistry();
  if ((*(**(AudioFileFormatRegistry + 8) + 24))(*(AudioFileFormatRegistry + 8), v30, v27) == 1)
  {
    v32 = (*(**(AudioFileFormatRegistry + 8) + 120))(*(AudioFileFormatRegistry + 8));
    v33 = (*(*v32 + 144))(v32);
    v34 = (v33 + 512);
    if (*(v33 + 536) == 1)
    {
      v35 = *v34;
      if (*v34)
      {
        *(v33 + 520) = v35;
        operator delete(v35);
      }

      *(v33 + 536) = 0;
    }

    *v34 = 0;
    *(v33 + 520) = 0;
    *(v33 + 528) = 0;
    std::vector<AudioFileInfo>::__init_with_size[abi:ne200100]<AudioFileInfo*,AudioFileInfo*>(v34, *(v2 + 336), *(v2 + 344), (*(v2 + 344) - *(v2 + 336)) >> 4);
    *(v33 + 536) = 1;
    if (*(v2 + 432) == 1)
    {
      std::optional<AudioFileAllowListFilter>::operator=[abi:ne200100]<AudioFileAllowListFilter const&,void>(v33 + 544, v2 + 360);
    }

    v36 = 0;
    *a2 = v33;
    *(a2 + 8) = AudioFileStreamObject::ParseHeader;
    *(a2 + 16) = 0;
    v37 = *(v2 + 8);
    v38 = *(v37 + 88);
    v39 = *(v37 + 96);
    v40 = v38 + *(v37 + 80);
    v41 = v39 < v38 || v40 <= v39;
    v42 = v41;
    v43 = v40 - v39;
    if (!v41 && v43)
    {
      v36 = *(v37 + 72) + (v39 - v38);
    }

    v7 = 0;
    *(a2 + 32) = v36;
    if (v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    *(a2 + 24) = v44;
    return v7;
  }

  v45 = *(v2 + 336);
  v87 = *(v2 + 344);
  if (v45 == v87)
  {
    goto LABEL_130;
  }

  v85 = a2;
  v86 = v2;
  v46 = 0;
  do
  {
    AudioFileAllowListFilter::GetAllowedTypes(v89, v2 + 360, v45);
    v47 = *v89;
    v48 = v90;
    if (*v89 == v90)
    {
      v54 = 1;
      if (*v89)
      {
LABEL_91:
        operator delete(v47);
      }
    }

    else
    {
      v49 = *v89;
      while (1)
      {
        v50 = *v49;
        v51 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *v49);
        v52 = v51;
        if (v51)
        {
          if ((*(*v51 + 24))(v51, v30, v27) == 1)
          {
            v53 = (*(*v52 + 120))(v52);
            if (v53)
            {
              v46 = (*(*v53 + 144))(v53);
            }

            else if ((v50 & 0xFBFFFFFF) == 0x61632D33)
            {
              operator new();
            }

            if (v46)
            {
              break;
            }
          }
        }

        if (++v49 == v48)
        {
          v54 = 1;
          v2 = v86;
          if (v47)
          {
            goto LABEL_91;
          }

          goto LABEL_92;
        }
      }

      v55 = 0;
      *(v46 + 16) = v50;
      v2 = v86;
      *v85 = v46;
      *(v85 + 8) = AudioFileStreamObject::ParseHeader;
      *(v85 + 16) = 0;
      v56 = *(v86 + 8);
      v57 = *(v56 + 88);
      v58 = *(v56 + 96);
      v59 = v57 + *(v56 + 80);
      v60 = v58 < v57 || v59 <= v58;
      v61 = v60;
      v62 = v59 - v58;
      if (!v60 && v62)
      {
        v55 = *(v56 + 72) + (v58 - v57);
      }

      v54 = 0;
      *(v85 + 32) = v55;
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = v62;
      }

      *(v85 + 24) = v63;
      if (v47)
      {
        goto LABEL_91;
      }
    }

LABEL_92:
    if ((v54 & 1) == 0)
    {
      return 0;
    }

    v45 += 16;
  }

  while (v45 != v87);
  if (v46)
  {
    goto LABEL_112;
  }

  v65 = *(v2 + 336);
  if (v65 == *(v2 + 344))
  {
    goto LABEL_130;
  }

  v88 = *v65;
  AudioFileAllowListFilter::GetAllowedTypes(v89, v2 + 360, &v88);
  v67 = *v89;
  v66 = v90;
  if (*v89 == v90)
  {
LABEL_125:
    v74 = 1;
    v75 = 1;
    v7 = 0;
    goto LABEL_126;
  }

  v68 = *v89;
  while (1)
  {
    v69 = *v68;
    v70 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, *v68);
    v71 = v70;
    if (v70)
    {
      if ((*(*v70 + 24))(v70, v30, v27))
      {
        v72 = (*(*v71 + 120))(v71);
        if (!v72)
        {
          if ((v69 & 0xFBFFFFFF) == 0x61632D33)
          {
            operator new();
          }

          goto LABEL_124;
        }

        v73 = (*(*v72 + 144))(v72);
        if (v73)
        {
          break;
        }
      }
    }

LABEL_124:
    if (++v68 == v66)
    {
      goto LABEL_125;
    }
  }

  v76 = 0;
  *(v73 + 16) = v69;
  *v85 = v73;
  *(v85 + 8) = AudioFileStreamObject::ParseHeader;
  *(v85 + 16) = 0;
  v77 = *(v2 + 8);
  v78 = *(v77 + 88);
  v79 = *(v77 + 96);
  v80 = v78 + *(v77 + 80);
  v81 = v79 < v78 || v80 <= v79;
  v82 = v81;
  v83 = v80 - v79;
  if (!v81 && v83)
  {
    v76 = *(v77 + 72) + (v79 - v78);
  }

  v74 = 0;
  v75 = 0;
  v7 = 0;
  *(v85 + 32) = v76;
  if (v82)
  {
    v84 = 0;
  }

  else
  {
    v84 = v83;
  }

  *(v85 + 24) = v84;
LABEL_126:
  if (v67)
  {
    operator delete(v67);
  }

  if (v74)
  {
    if (v75)
    {
LABEL_130:
      *(v2 + 236) = -1;
      return 1954115647;
    }

LABEL_112:
    v7 = 0;
    v25 = -1;
LABEL_113:
    *(v2 + 236) = v25;
  }

  return v7;
}

void sub_18F7A685C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileStreamRestrictedRecognizer::SetProperty(AudioFileStreamRestrictedRecognizer *this, int a2, unsigned int a3, CFDictionaryRef *a4)
{
  if (a2 != 1634495607)
  {
    return 1886681407;
  }

  if (a3 < 8)
  {
    return 561211770;
  }

  if (*(this + 432) == 1)
  {
    AudioFileAllowListFilter::~AudioFileAllowListFilter((this + 360));
    *(this + 432) = 0;
  }

  AudioFileAllowListFilter::AudioFileAllowListFilter((this + 360), *a4);
  result = 0;
  *(this + 432) = 1;
  return result;
}

void AudioFileStreamRestrictedRecognizer::~AudioFileStreamRestrictedRecognizer(AudioFileStreamRestrictedRecognizer *this)
{
  AudioFileStreamRestrictedRecognizer::~AudioFileStreamRestrictedRecognizer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032D9E8;
  if (*(this + 432) == 1)
  {
    AudioFileAllowListFilter::~AudioFileAllowListFilter((this + 360));
  }

  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t AudioFileStreamWrapper::CallPropertyListener(uint64_t this, uint64_t a2, int a3)
{
  v5 = a3;
  if (a2 <= 1819243875)
  {
    if (a2 <= 1717988723)
    {
      if (a2 == 1668112752)
      {
        if (*(this + 109))
        {
          return this;
        }

        *(this + 109) = 1;
      }

      else if (a2 == 1684434292)
      {
        if (*(this + 105))
        {
          return this;
        }

        *(this + 105) = 1;
      }

      goto LABEL_19;
    }

    if (a2 == 1717988724)
    {
      if (*(this + 104))
      {
        return this;
      }

      *(this + 104) = 1;
      goto LABEL_19;
    }

    v3 = 1718383476;
    goto LABEL_17;
  }

  if (a2 <= 1886283374)
  {
    if (a2 == 1819243876)
    {
      if (*(this + 110))
      {
        return this;
      }

      *(this + 110) = 1;
      goto LABEL_19;
    }

    v3 = 1835493731;
LABEL_17:
    if (a2 == v3)
    {
      *(this + 108) = 1;
    }

    goto LABEL_19;
  }

  switch(a2)
  {
    case 0x706E666F:
      if (*(this + 106))
      {
        return this;
      }

      *(this + 106) = 1;
      break;
    case 0x70726D66:
      if (*(this + 107))
      {
        return this;
      }

      *(this + 107) = 1;
      break;
    case 0x72656479:
      if (*(this + 112))
      {
        return this;
      }

      *(this + 112) = 1;
      break;
  }

LABEL_19:
  v4 = *(this + 24);
  if (v4)
  {
    return v4(*(this + 40), *(this + 8), a2, &v5);
  }

  return this;
}

uint64_t AudioFileStreamObject::GetPacketTable(AudioFileStreamObject *this)
{
  result = *(this + 19);
  if (!result)
  {
    if (*(*(this + 1) + 105) == 1)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t AudioFileStreamRestrictedRecognizer::AudioFileStreamRestrictedRecognizer(uint64_t a1, unsigned int a2, const void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 104) = -1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 236) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = AudioFileStreamObject::ParseHeader;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 300) = 0;
  *(a1 + 284) = 0;
  *(a1 + 292) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v5 = a2;
  *a1 = &unk_1F032D9E8;
  std::vector<AudioFileInfo>::vector[abi:ne200100]((a1 + 336), a2);
  *(a1 + 360) = 0;
  *(a1 + 432) = 0;
  memcpy(*(a1 + 336), a3, 16 * v5);
  return a1;
}

void *std::vector<AudioFileInfo>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AudioFileInfo>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F7A6D7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void XAtomicPoolAllocator::allocChunk(XAtomicPoolAllocator *this)
{
  v2 = malloc_type_malloc(*(this + 2), 0x100004077774924uLL);
  CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::push_atomic(this + 64, v2);
  v3 = *(this + 1);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::push_atomic(this + 32, v2);
      v3 = *(this + 1);
      v2 += *this;
    }
  }

  atomic_fetch_add_explicit(this + 24, v3, memory_order_relaxed);
}

void caulk::concurrent::condition_message::~condition_message(caulk::concurrent::condition_message *this)
{
  *this = &unk_1F032EF88;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);

  caulk::concurrent::message::~message(this);
}

{
  *this = &unk_1F032EF88;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);
  caulk::concurrent::message::~message(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032EF88;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);

  caulk::concurrent::message::~message(this);
}

void XAtomicPoolAllocator::~XAtomicPoolAllocator(XAtomicPoolAllocator *this)
{
  while (1)
  {
    v2 = CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::pop_atomic(this + 64);
    if (!v2)
    {
      break;
    }

    free(v2);
  }
}

uint64_t caulk::concurrent::condition_message::perform(caulk::concurrent::condition_message *this)
{
  atomic_store(0, this + 32);
  v2 = *(this + 8);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void AUScheduledParameterRefresher::performPendingMessages(AUScheduledParameterRefresher *this)
{
  os_unfair_lock_lock(this + 2);
  while (1)
  {
    v2 = *(this + 35);
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = atomic_exchange_explicit(this + 27, 0, memory_order_acquire);
    if (!v3)
    {
      break;
    }

    v2 = 0;
    do
    {
      v4 = v2;
      v2 = v3;
      v3 = atomic_load(v3);
      atomic_store(v4, v2);
    }

    while (v3);
    *(this + 35) = v2;
LABEL_7:
    v5 = atomic_load(v2);
    *(this + 35) = v5;
    (**this)(this, v2[1], v2[2]);
    CADeprecated::TAtomicStack2<XAtomicPoolAllocator::FreeNode>::push_atomic(this + 48, v2);
    atomic_fetch_add_explicit(this + 28, 1u, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 2);
}

uint64_t _ZNKSt3__110__function6__funcIN29AUScheduledParameterRefresher9mWorkToDoMUlvE_ENS_9allocatorIS3_EEFvvEE7__cloneEPNS0_6__baseIS6_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032DAD8;
  a2[1] = v2;
  return result;
}

uint64_t FormatFromESDS(unsigned __int8 *a1, int a2, unsigned int *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v20[2] = 0;
  v21 = 0;
  v22 = 0;
  v23[2] = 0;
  MP4AudioProgramConfig::Clear(v23);
  v25 = 0u;
  v24 = 0u;
  DecoderConfigDescr::cleanup(v20);
  v6 = &a1[a2];
  v17[0] = a1;
  v17[1] = v6;
  v18 = 0;
  if ((a1 & 3) != 0 && a2)
  {
    v7 = 0;
    v8 = a1 + 1;
    v9 = -8;
    do
    {
      v10 = v9;
      v11 = *a1++;
      v7 = v11 | (v7 << 8);
      v9 += 8;
      if ((v8 & 3) == 0)
      {
        break;
      }

      ++v8;
    }

    while (a1 < v6);
    v17[0] = a1;
    LODWORD(v18) = v7 << (24 - v9);
    HIDWORD(v18) = v10 + 16;
  }

  v12 = MP4AudioESDS::Deserialize(v19, v17, 0, 0);
  v13 = v12;
  if (a3 && !v12)
  {
    if ((v21 - 1) > 0x29)
    {
      v14 = 0;
    }

    else
    {
      v14 = *&aMcaaCaarcaatca[4 * (v21 - 1)];
    }

    *a3 = v14;
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_18F7A72D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_AudioFormatInfoFromESDS(unsigned __int8 *a1, int a2, unsigned int *a3, _DWORD *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v36[2] = 0;
  MP4AudioProgramConfig::Clear(v36);
  v38 = 0u;
  v37 = 0u;
  DecoderConfigDescr::cleanup(&v31);
  v25 = 0;
  v23[0] = a1;
  v23[1] = &a1[a2];
  v24 = 0;
  if ((a1 & 3) != 0 && a2)
  {
    v8 = 0;
    v9 = a1 + 1;
    v10 = -8;
    v11 = a1;
    do
    {
      v12 = v10;
      v13 = *v11++;
      v8 = v13 | (v8 << 8);
      v10 += 8;
      if ((v9 & 3) == 0)
      {
        break;
      }

      ++v9;
    }

    while (v11 < &a1[a2]);
    v23[0] = v11;
    LODWORD(v24) = v8 << (24 - v10);
    HIDWORD(v24) = v12 + 16;
  }

  v14 = MP4AudioESDS::Deserialize(v30, v23, &v25, 2);
  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "AudioFormatCookies.cpp";
      v28 = 1024;
      v29 = 49;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Failed to parse ESDS", buf, 0x12u);
    }

    goto LABEL_18;
  }

  if (!a3 || *a3 < 0x28)
  {
    v14 = 0;
    goto LABEL_18;
  }

  v14 = 1718449215;
  if (!DecoderConfigDescr::MakeStreamDescription(&v31, a4, v15))
  {
    v16 = a4[2];
    if (v16)
    {
      if (*a3 <= 0x37)
      {
        if (v16 == 1987015266)
        {
          goto LABEL_18;
        }

        v17 = 40;
        goto LABEL_31;
      }

      if (v16 == 1987015266)
      {
        v14 = AudioFormatProperty_FormatInfo(v33, &a1[v25], a4);
        if (v14)
        {
          goto LABEL_18;
        }

        *(a4 + 5) = a1;
        v20 = (a4 + 10);
        v21 = *(v20 - 8);
        *(v20 + 2) = a2;
        v22 = (v20 + 8);
        if (v21 == 1987015266)
        {
          *v20 = &a1[v25];
          *v22 = v33;
LABEL_30:
          v17 = 56;
LABEL_31:
          v14 = 0;
          *a3 = v17;
          goto LABEL_18;
        }
      }

      else
      {
        *(a4 + 5) = a1;
        v20 = (a4 + 10);
        *(v20 + 2) = a2;
        v22 = (v20 + 8);
      }

      if ((v32 - 105) >= 0xFFFFFFFD)
      {
        *v20 = 0;
        *v22 = 0;
      }

      goto LABEL_30;
    }
  }

LABEL_18:
  if (*(&v38 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
  }

  if (*(&v37 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_18F7A7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ChannelLayoutFromESDS(unsigned __int8 *a1, int a2, AudioChannelLayout *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v20[2] = 0;
  v21 = 0;
  v22 = 0;
  v23[2] = 0;
  MP4AudioProgramConfig::Clear(v23);
  v25 = 0u;
  v24 = 0u;
  DecoderConfigDescr::cleanup(v20);
  v6 = &a1[a2];
  v16[0] = a1;
  v16[1] = v6;
  v17 = 0;
  if ((a1 & 3) != 0 && a2)
  {
    v7 = 0;
    v8 = a1 + 1;
    v9 = -8;
    do
    {
      v10 = v9;
      v11 = *a1++;
      v7 = v11 | (v7 << 8);
      v9 += 8;
      if ((v8 & 3) == 0)
      {
        break;
      }

      ++v8;
    }

    while (a1 < v6);
    v16[0] = a1;
    LODWORD(v17) = v7 << (24 - v9);
    HIDWORD(v17) = v10 + 16;
  }

  v12 = MP4AudioESDS::Deserialize(v19, v16, 0, 0);
  if (!v12)
  {
    v12 = 560360820;
    if (!DecoderConfigDescr::GetChannelLayoutTag(v20, &v18))
    {
      v13 = v18;
      if (v18)
      {
        v12 = 0;
        a3->mChannelBitmap = 0;
        a3->mNumberChannelDescriptions = 0;
        a3->mChannelLayoutTag = v13;
      }
    }
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_18F7A7710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ASBDFromESD(unsigned __int8 *a1, int a2, AudioStreamBasicDescription *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v19[2] = 0;
  v20 = 0;
  v21 = 0;
  v22[2] = 0;
  MP4AudioProgramConfig::Clear(v22);
  v23 = 0u;
  v24 = 0u;
  DecoderConfigDescr::cleanup(v19);
  v6 = &a1[a2];
  v17[0] = a1;
  v17[1] = v6;
  v18 = 0;
  if ((a1 & 3) != 0 && a2)
  {
    v7 = 0;
    v8 = a1 + 1;
    v9 = -8;
    do
    {
      v10 = v9;
      v11 = *a1++;
      v7 = v11 | (v7 << 8);
      v9 += 8;
      if ((v8 & 3) == 0)
      {
        break;
      }

      ++v8;
    }

    while (a1 < v6);
    v17[0] = a1;
    LODWORD(v18) = v7 << (24 - v9);
    HIDWORD(v18) = v10 + 16;
  }

  v12 = DecoderConfigDescr::Deserialize(v19, v17, 0, 1);
  v14 = v12;
  if (a3 && !v12)
  {
    if (DecoderConfigDescr::MakeStreamDescription(v19, a3, v13) || !a3->mFormatID)
    {
      v14 = 1718449215;
    }

    else
    {
      v14 = 0;
    }
  }

  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_18F7A788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DecoderConfigDescr::~DecoderConfigDescr(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ChannelLayoutFromESD(unsigned __int8 *a1, int a2, AudioChannelLayout *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v4 = &a1[a2];
  v14[0] = a1;
  v14[1] = v4;
  v15 = 0;
  if ((a1 & 3) != 0 && a2)
  {
    v5 = 0;
    v6 = a1 + 1;
    v7 = -8;
    do
    {
      v8 = v7;
      v9 = *a1++;
      v5 = v9 | (v5 << 8);
      v7 += 8;
      if ((v6 & 3) == 0)
      {
        break;
      }

      ++v6;
    }

    while (a1 < v4);
    v14[0] = a1;
    LODWORD(v15) = v5 << (24 - v7);
    HIDWORD(v15) = v8 + 16;
  }

  v17[2] = 0;
  v18 = 0;
  v19 = 0;
  v20[2] = 0;
  MP4AudioProgramConfig::Clear(v20);
  v21 = 0u;
  v22 = 0u;
  DecoderConfigDescr::cleanup(v17);
  v10 = DecoderConfigDescr::Deserialize(v17, v14, 0, 1);
  if (!v10)
  {
    v10 = 560360820;
    if (!DecoderConfigDescr::GetChannelLayoutTag(v17, &v16))
    {
      v11 = v16;
      if (v16)
      {
        v10 = 0;
        a3->mChannelBitmap = 0;
        a3->mNumberChannelDescriptions = 0;
        a3->mChannelLayoutTag = v11;
      }
    }
  }

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_18F7A79F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DecoderConfigDescr::~DecoderConfigDescr(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ESDFromESDSSize(unsigned __int8 *a1, int a2, unsigned int *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    v18[2] = 0;
    v19 = 0;
    v20 = 0;
    v21[2] = 0;
    MP4AudioProgramConfig::Clear(v21);
    v23 = 0u;
    v22 = 0u;
    DecoderConfigDescr::cleanup(v18);
    v6 = &v5[a2];
    v15[0] = v5;
    v15[1] = v6;
    v16 = 0;
    if ((v5 & 3) != 0 && a2)
    {
      v7 = 0;
      v8 = v5 + 1;
      v9 = -8;
      do
      {
        v10 = v9;
        v11 = *v5++;
        v7 = v11 | (v7 << 8);
        v9 += 8;
        if ((v8 & 3) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v5 < v6);
      v15[0] = v5;
      LODWORD(v16) = v7 << (24 - v9);
      HIDWORD(v16) = v10 + 16;
    }

    v12 = MP4AudioESDS::Deserialize(v17, v15, 0, 0);
    if (!v12)
    {
      *a3 = v18[1] + 5;
    }

    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
    }

    if (*(&v22 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
    }
  }

  else
  {
    v12 = 2003329396;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_18F7A7B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ESDFromESDS(unsigned __int8 *a1, int a2, void *a3, unsigned int *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v22[2] = 0;
  v23 = 0;
  v24 = 0;
  v25[2] = 0;
  MP4AudioProgramConfig::Clear(v25);
  v27 = 0u;
  v26 = 0u;
  DecoderConfigDescr::cleanup(v22);
  v20 = 0;
  v18[0] = a1;
  v18[1] = &a1[a2];
  v19 = 0;
  if ((a1 & 3) != 0 && a2)
  {
    v8 = 0;
    v9 = a1 + 1;
    v10 = -8;
    v11 = a1;
    do
    {
      v12 = v10;
      v13 = *v11++;
      v8 = v13 | (v8 << 8);
      v10 += 8;
      if ((v9 & 3) == 0)
      {
        break;
      }

      ++v9;
    }

    while (v11 < &a1[a2]);
    v18[0] = v11;
    LODWORD(v19) = v8 << (24 - v10);
    HIDWORD(v19) = v12 + 16;
  }

  v14 = MP4AudioESDS::Deserialize(v21, v18, &v20, 0);
  if (!v14)
  {
    v15 = (v22[1] + 5);
    if (*a4 >= v15)
    {
      *a4 = v15;
      memcpy(a3, &a1[v20], v15);
      v14 = 0;
    }

    else
    {
      v14 = 561211770;
    }
  }

  if (*(&v27 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
  }

  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_18F7A7D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ESDSFromESDSize(unsigned __int8 *a1, int a2, unsigned int *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    v17[2] = 0;
    v18 = 0;
    v19 = 0;
    v20[2] = 0;
    MP4AudioProgramConfig::Clear(v20);
    v21 = 0u;
    v22 = 0u;
    DecoderConfigDescr::cleanup(v17);
    v6 = &v5[a2];
    v15[0] = v5;
    v15[1] = v6;
    v16 = 0;
    if ((v5 & 3) != 0 && a2)
    {
      v7 = 0;
      v8 = v5 + 1;
      v9 = -8;
      do
      {
        v10 = v9;
        v11 = *v5++;
        v7 = v11 | (v7 << 8);
        v9 += 8;
        if ((v8 & 3) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v5 < v6);
      v15[0] = v5;
      LODWORD(v16) = v7 << (24 - v9);
      HIDWORD(v16) = v10 + 16;
    }

    *a3 = 0;
    v12 = DecoderConfigDescr::Deserialize(v17, v15, 0, 1);
    if (!v12)
    {
      *a3 = v17[1] + 19;
    }

    if (*(&v22 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  else
  {
    v12 = 2003329396;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_18F7A7E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DecoderConfigDescr::~DecoderConfigDescr(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ESDSFromESD(unsigned __int8 *a1, unsigned int a2, char *a3, unsigned int *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = 2003329396;
  if (a3 && a4)
  {
    v20[0] = a1;
    v20[1] = &a1[a2];
    v21 = 0;
    if ((a1 & 3) != 0 && a2)
    {
      v9 = 0;
      v10 = a1 + 1;
      v11 = -8;
      v12 = a1;
      do
      {
        v13 = v11;
        v14 = *v12++;
        v9 = v14 | (v9 << 8);
        v11 += 8;
        if ((v10 & 3) == 0)
        {
          break;
        }

        ++v10;
      }

      while (v12 < &a1[a2]);
      v20[0] = v12;
      LODWORD(v21) = v9 << (24 - v11);
      HIDWORD(v21) = v13 + 16;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27[2] = 0;
    MP4AudioProgramConfig::Clear(v27);
    v28 = 0u;
    v29 = 0u;
    DecoderConfigDescr::cleanup(&v22);
    v4 = DecoderConfigDescr::Deserialize(&v22, v20, 0, 1);
    if (!v4)
    {
      v4 = 561211770;
      v15 = v23;
      if (v23 + 5 == a2 && *a4 >= v23 + 19)
      {
        *a4 = v23 + 19;
        *a3 = 3;
        v16 = v15 + 14;
        v4 = 2003329396;
        if (!((v15 + 14) >> 28))
        {
          v17 = (8 * v16) & 0x7F000000 | (((v16 >> 7) & 0x7F) << 8) & 0xFF80FF80 | (((v16 >> 14) & 0x7F) << 16) | v16 & 0x7F;
          a3[1] = (v17 | 0x80808000) >> 24;
          a3[2] = (v17 | 0x80808000) >> 16;
          a3[3] = ((((v16 >> 7) & 0x7F) << 8) | v16 & 0x7F | 0x8000) >> 8;
          a3[4] = v16 & 0x7F;
          *(a3 + 5) = 0;
          a3[7] = 0;
          memcpy(a3 + 8, a1, a2);
          v4 = 0;
          a3[(v15 + 13)] = 6;
          a3[v16] = 0x80;
          *&a3[v15 + 15] = 33652864;
        }
      }
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (*(&v28 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F7A80AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DecoderConfigDescr::~DecoderConfigDescr(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_FormatIDFromISOAudioSampleEntry(uint64_t a1, int a2)
{
  if (*(a1 + 4) != 1630826605)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  return FormatFromESDS((a1 + 48), a2 - 48, &v5);
}

uint64_t AudioFormatProperty_FLACdfLaAtomFromOldFLACMagicCookie(_DWORD *a1, unsigned int a2, char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 1718449215;
  *&v16[24] = 0;
  if (a2 >= 0x34)
  {
    if (a2 < 0x39)
    {
      goto LABEL_8;
    }

    v4 = bswap32(a1[1]);
    if (v4 == 1684425825)
    {
      goto LABEL_13;
    }

    if (v4 == 1718775137)
    {
      if (a2 < 0x4C)
      {
        goto LABEL_13;
      }

      a2 = bswap32(a1[3]) - 12;
      if (a2 < 0x34)
      {
        goto LABEL_13;
      }

      v5 = 6;
    }

    else
    {
LABEL_8:
      v5 = 0;
    }

    v6 = a2 - v5 * 4;
    v7 = &a1[v5];
    if (v6 < 0x38)
    {
      v10 = *(v7 + 12);
      v11 = *(v7 + 28);
      *v16 = *v7;
      *&v16[12] = v10;
      v17 = v11;
      v9 = *(v7 + 44);
    }

    else
    {
      v8 = *(v7 + 1);
      *v16 = *v7;
      *&v16[16] = v8;
      v17 = *(v7 + 2);
      v9 = *(v7 + 6);
    }

    v18 = v9;
    *v16 = vrev32q_s8(*v16);
    *&v16[16] = vrev32_s8(*&v16[16]);
    *&v16[24] = bswap32(*&v16[24]);
    *&v17 = bswap64(v17);
    *a3 = xmmword_18F901890;
    v14[0] = a3 + 16;
    v14[1] = a3 + 16;
    v14[2] = a3 + 50;
    v14[3] = 0x2000000000;
    v15 = (a3 + 16) & 3;
    FLACPackStreamInfo(v14, v16);
    v3 = 0;
  }

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t AudioFormatProperty_ASBDForISOPCMConfig(uint64_t a1, _DWORD *a2)
{
  result = 1718449215;
  if (bswap32(*a1) < 0xE || *(a1 + 4) != 1131242352)
  {
    return result;
  }

  v4 = a2[2];
  if (v4 == 1718641517)
  {
    v5 = (*(a1 + 12) & 1) == 0;
    v6 = *(a1 + 13);
    goto LABEL_12;
  }

  if (v4 != 1819304813)
  {
    if (v4 != 1768973165)
    {
      return 4294967246;
    }

    v5 = (*(a1 + 12) & 1) == 0;
    v6 = *(a1 + 13);
    goto LABEL_8;
  }

  v5 = (*(a1 + 12) & 1) == 0;
  v6 = *(a1 + 13);
  if (a2[3])
  {
LABEL_12:
    v7 = 9;
    if (v6 != 32 && v6 != 64)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (v6 > 0x20 || ((1 << v6) & 0x101010000) == 0)
  {
    return result;
  }

  v7 = 12;
LABEL_14:
  result = 0;
  v8 = a2[7];
  if (v5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  a2[2] = 1819304813;
  a2[3] = v7 | v9;
  v10 = v8 * (v6 >> 3);
  a2[4] = v10;
  a2[5] = 1;
  a2[6] = v10;
  a2[8] = v6;
  return result;
}

uint64_t AudioFormatProperty_ISOPCMConfigForASBD(_DWORD *a1, uint64_t a2)
{
  result = 1718449215;
  if (a1[2] == 1819304813)
  {
    *(a2 + 12) = 0;
    *(a2 + 8) = 0;
    *a2 = 0x436D63700E000000;
    v4 = a1[3];
    *(a2 + 12) = (v4 & 2) == 0;
    v5 = a1[8];
    if (v4)
    {
      if (v5 == 32 || v5 == 64)
      {
LABEL_11:
        result = 0;
        *(a2 + 13) = v5;
      }
    }

    else if (v5 <= 0x20 && ((1 << v5) & 0x101010000) != 0)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t DialogueAnchor::AADialogueAnchorAnalyzer::CompleteFinal(DialogueAnchor::AADialogueAnchorAnalyzer *this, float a2, float a3)
{
  computeItuLoudnessValue(*(this + 43));
  computeEbuLoudnessRange(*(this + 43));
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = 257;
  v16 = CFDictionaryCreateMutable(0, 0, v4, v5);
  v17 = 257;
  v6 = *(this + 43);
  if (*(v6 + 2148))
  {
    CACFDictionary::AddFloat32(&v16, @"aa itu loudness", *(v6 + 2144));
    v6 = *(this + 43);
  }

  if (*(v6 + 2156))
  {
    CACFDictionary::AddFloat32(&v16, @"aa ebu loudness range", *(v6 + 2152));
  }

  v7 = *(this + 52) * 100.0 / *(this + 51);
  CACFDictionary::AddFloat32(&v16, @"aa speech activity percentage", v7);
  if (CACFDictionary::Size(&v16))
  {
    CACFDictionary::AddDictionary(&Mutable, @"dialogue anchor parameters", v16);
  }

  v15 = 0;
  if (CACFDictionary::HasKey(&Mutable, @"dialogue anchor parameters"))
  {
    CACFDictionary::GetDictionary(&Mutable, @"dialogue anchor parameters", &v15);
    v8 = v15;
  }

  else
  {
    v8 = 0;
  }

  v14[0] = 8;
  v14[1] = v8;
  v13[0] = 1;
  v13[1] = v14;
  v12 = 1;
  (*(*this + 48))(this, @"dialogue anchor parameters", v13, &v12);
  v9 = *(this + 54);
  *(this + 54) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 55);
  *(this + 55) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  CACFDictionary::~CACFDictionary(&v16);
  CACFDictionary::~CACFDictionary(&Mutable);
  return 0;
}

void sub_18F7A8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary((v7 - 48));
  _Unwind_Resume(a1);
}

uint64_t DialogueAnchor::AADialogueAnchorAnalyzer::PushAudio(DialogueAnchor::AADialogueAnchorAnalyzer *this, unsigned int a2, const AudioBufferList *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = *(this + 9) + a2;
  v4 = *(this + 7);
  if (v3 >= v4)
  {
    v3 = *(this + 7);
  }

  v48 = 0;
  *(this + 9) = v3;
  *(this + 20) = (v3 * 100.0) / v4;
  v5 = *(this + 45);
  v6 = (*(this + 46) - v5) >> 2;
  v7 = (this + 356);
  v47[1] = this + 356;
  v47[0] = v6;
  v47[2] = v5;
  if (!a2)
  {
LABEL_52:
    v19 = 0;
    goto LABEL_72;
  }

  v10 = 0;
  mBuffers = a3->mBuffers;
  v11 = *(this + 89);
LABEL_5:
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *inInputDataProcUserData = 136315394;
      *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
      *&inInputDataProcUserData[12] = 1024;
      *&inInputDataProcUserData[14] = 202;
      v35 = MEMORY[0x1E69E9C10];
      v36 = "%25s:%-5d  Input is already eaten!";
LABEL_66:
      v37 = inInputDataProcUserData;
LABEL_67:
      _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, v36, v37, 0x12u);
    }

LABEL_68:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_69;
  }

  if (v6 <= v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *inInputDataProcUserData = 136315394;
      *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
      *&inInputDataProcUserData[12] = 1024;
      *&inInputDataProcUserData[14] = 203;
      v35 = MEMORY[0x1E69E9C10];
      v36 = "%25s:%-5d  Output is already full!";
      goto LABEL_66;
    }

    goto LABEL_68;
  }

  v13 = v6 - v11;
  if (*(this + 63) != 2)
  {
    mData = mBuffers[*(this + 62)].mData;
    v21 = *(this + 20);
    if (v21)
    {
      *&inInputDataProcUserData[4] = 0;
      *inInputDataProcUserData = a2;
      *&inInputDataProcUserData[8] = &v48;
      *&inInputDataProcUserData[16] = mData;
      v19 = DialogueAnchor::CenterChannelExtractor::PushResampler(v21, inInputDataProcUserData, v47);
      if (v19)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v56 = 136315394;
          *&v56[4] = "AADialogueAnchorAnalyzer.cpp";
          *v57 = 1024;
          *&v57[2] = 261;
          v41 = MEMORY[0x1E69E9C10];
          v42 = "%25s:%-5d  Failed to resample center channel";
LABEL_79:
          v43 = v56;
LABEL_87:
          _os_log_impl(&dword_18F5DF000, v41, OS_LOG_TYPE_ERROR, v42, v43, 0x12u);
        }

LABEL_69:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *inInputDataProcUserData = 136315394;
          *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
          *&inInputDataProcUserData[12] = 1024;
          *&inInputDataProcUserData[14] = 606;
          v33 = MEMORY[0x1E69E9C10];
          v34 = "%25s:%-5d  Center Channel Extraction failed";
          goto LABEL_71;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (v12 >= v13)
      {
        v22 = v6 - v11;
      }

      else
      {
        v22 = a2 - v10;
      }

      if (v22)
      {
        memmove((v5 + 4 * v11), &mData[4 * v10], 4 * v22);
        v11 = *v7;
      }

      *v7 = v11 + v22;
      v48 = v10 + v22;
    }

    goto LABEL_31;
  }

  v14 = *(this + 54);
  if (1024 - v14 >= v12)
  {
    v15 = a2 - v10;
  }

  else
  {
    v15 = 1024 - v14;
  }

  if (v15)
  {
    v16 = a3->mBuffers[0].mData + 4 * v10;
    v17 = v13;
    memmove((*(this + 21) + 4 * v14), v16, 4 * v15);
    memmove((*(this + 24) + 4 * *(this + 54)), (*&a3[1].mBuffers[0].mNumberChannels + 4 * v48), 4 * v15);
    v13 = v17;
    LODWORD(v14) = *(this + 54);
    v10 = v48;
  }

  v18 = v14 + v15;
  *(this + 54) = v18;
  v48 = v10 + v15;
  if (v18 != 1024)
  {
    goto LABEL_31;
  }

  if (*(this + 20))
  {
    v19 = DialogueAnchor::CenterChannelExtractor::PushScotty((this + 88), *(this + 28), 1024);
    if (!v19)
    {
      *buf = 0;
      *inInputDataProcUserData = 1024;
      *&inInputDataProcUserData[8] = buf;
      *&inInputDataProcUserData[16] = *(this + 28);
      v19 = DialogueAnchor::CenterChannelExtractor::PushResampler(*(this + 20), inInputDataProcUserData, v47);
      if (!v19)
      {
        if (*buf != 1024)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *v56 = 136315394;
          *&v56[4] = "AADialogueAnchorAnalyzer.cpp";
          *v57 = 1024;
          *&v57[2] = 238;
          v35 = MEMORY[0x1E69E9C10];
          v36 = "%25s:%-5d  Failed to consume Scotty output";
          v37 = v56;
          goto LABEL_67;
        }

        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v56 = 136315394;
        *&v56[4] = "AADialogueAnchorAnalyzer.cpp";
        *v57 = 1024;
        *&v57[2] = 237;
        v41 = MEMORY[0x1E69E9C10];
        v42 = "%25s:%-5d  Scotty resampling failed";
        goto LABEL_79;
      }

      goto LABEL_69;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    *inInputDataProcUserData = 136315394;
    *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
    *&inInputDataProcUserData[12] = 1024;
    *&inInputDataProcUserData[14] = 227;
    v41 = MEMORY[0x1E69E9C10];
    v42 = "%25s:%-5d  Push Scotty to internal buffer failed";
LABEL_86:
    v43 = inInputDataProcUserData;
    goto LABEL_87;
  }

  if (v13 <= 0x3FF)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    *inInputDataProcUserData = 136315394;
    *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
    *&inInputDataProcUserData[12] = 1024;
    *&inInputDataProcUserData[14] = 240;
    v35 = MEMORY[0x1E69E9C10];
    v36 = "%25s:%-5d  Not enough room for Scotty output";
    goto LABEL_66;
  }

  v19 = DialogueAnchor::CenterChannelExtractor::PushScotty((this + 88), (v5 + 4 * *v7), v13);
  if (v19)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    *inInputDataProcUserData = 136315394;
    *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
    *&inInputDataProcUserData[12] = 1024;
    *&inInputDataProcUserData[14] = 245;
    v41 = MEMORY[0x1E69E9C10];
    v42 = "%25s:%-5d  Push Scotty to output buffer failed";
    goto LABEL_86;
  }

  *v7 += 1024;
LABEL_31:
  v11 = *(this + 89);
  v23 = *(this + 88);
  while (1)
  {
    if (v11 < v23)
    {
      v10 = v48;
      if (v48 < a2)
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

    ioActionFlags = 512;
    *inInputDataProcUserData = 1;
    *&inInputDataProcUserData[8] = 1;
    *&inInputDataProcUserData[12] = 4 * v23;
    *&inInputDataProcUserData[16] = *(this + 48);
    *v56 = 1;
    *&v56[8] = 1;
    *v57 = 4 * v23;
    *&v57[4] = *(this + 45);
    inInputBufferLists = v56;
    ioOutputBufferLists = inInputDataProcUserData;
    if (*(this + 424))
    {
      v19 = (*(**(this + 54) + 96))(*(this + 54), v23, v56, 1, *(this + 35));
      if (v19)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_60;
        }

        *buf = 136315394;
        v53 = "AADialogueAnchorAnalyzer.cpp";
        v54 = 1024;
        v55 = 554;
        v31 = MEMORY[0x1E69E9C10];
        v32 = "%25s:%-5d  couldn't write vad input";
        goto LABEL_59;
      }

      LODWORD(v23) = *(this + 88);
    }

    v19 = AudioUnitProcessMultiple(*(this + 34), &ioActionFlags, (this + 280), v23, 1u, &inInputBufferLists, 1u, &ioOutputBufferLists);
    if (v19)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      *buf = 136315394;
      v53 = "AADialogueAnchorAnalyzer.cpp";
      v54 = 1024;
      v55 = 566;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  Call to dnnVad AudioUnitProcessMultiple failed";
      goto LABEL_59;
    }

    v24 = *(this + 88);
    v25 = *(this + 35) + v24;
    *(this + 35) = v25;
    if (*(this + 424))
    {
      break;
    }

LABEL_40:
    v26 = v24;
    *(this + 51) += v24;
    v27 = *(this + 48);
    if (v24)
    {
      if (*v27 == 0.0)
      {
        v29 = 0;
        while (v26 - 1 != v29)
        {
          v30 = *&v27[4 * v29++ + 4];
          if (v30 != 0.0)
          {
            if (v29 < v26)
            {
              goto LABEL_42;
            }

            break;
          }
        }
      }

      else
      {
LABEL_42:
        *(this + 52) += v26;
      }
    }

    loudnessMeasurementGenerateBlocks(*(this + 43), v26, v27);
    v23 = *(this + 88);
    v28 = *(this + 89);
    if (4 * v28 != 4 * v23)
    {
      memmove(*(this + 45), (4 * v23 + *(this + 45)), 4 * v28 - 4 * v23);
      v23 = *(this + 88);
      LODWORD(v28) = *(this + 89);
    }

    v11 = v28 - v23;
    *v7 = v11;
  }

  v19 = (*(**(this + 55) + 96))(*(this + 55), v24, ioOutputBufferLists, 1, v25);
  if (!v19)
  {
    LODWORD(v24) = *(this + 88);
    goto LABEL_40;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_60;
  }

  *buf = 136315394;
  v53 = "AADialogueAnchorAnalyzer.cpp";
  v54 = 1024;
  v55 = 571;
  v31 = MEMORY[0x1E69E9C10];
  v32 = "%25s:%-5d  couldn't write vad output";
LABEL_59:
  _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x12u);
LABEL_60:
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_72;
  }

  *inInputDataProcUserData = 136315394;
  *&inInputDataProcUserData[4] = "AADialogueAnchorAnalyzer.cpp";
  *&inInputDataProcUserData[12] = 1024;
  *&inInputDataProcUserData[14] = 612;
  v33 = MEMORY[0x1E69E9C10];
  v34 = "%25s:%-5d  VAD processing failed";
LABEL_71:
  _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_ERROR, v34, inInputDataProcUserData, 0x12u);
LABEL_72:
  v38 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t DialogueAnchor::CenterChannelExtractor::PushScotty(DialogueAnchor::CenterChannelExtractor *this, float *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = 1;
  v17 = 4 * a3;
  v18 = a2;
  ioOutputBufferLists = &v15;
  v9 = 2;
  v10 = 0x100000000001;
  v11 = *(this + 10);
  v12 = 0x100000000001;
  v13 = *(this + 13);
  inInputBufferLists = &v9;
  ioActionFlags = 512;
  v4 = AudioUnitProcessMultiple(*this, &ioActionFlags, (this + 8), 0x400u, 1u, &inInputBufferLists, 1u, &ioOutputBufferLists);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AADialogueAnchorAnalyzer.cpp";
      v21 = 1024;
      v22 = 336;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Call to Scotty AudioUnitProcessMultiple failed", buf, 0x12u);
    }
  }

  else
  {
    *(this + 1) = *(this + 1) + 1024.0;
    *(this + 32) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t DialogueAnchor::CenterChannelExtractor::PushResampler(OpaqueAudioConverter *a1, void *inInputDataProcUserData, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  *&outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mNumberChannels = 1;
  v5 = *(a3 + 1);
  v4 = *(a3 + 2);
  v6 = *v5;
  v7 = v3 - v6;
  outOutputData.mBuffers[0].mDataByteSize = 4 * v7;
  outOutputData.mBuffers[0].mData = (v4 + 4 * v6);
  ioOutputDataPacketSize = v7;
  v8 = AudioConverterFillComplexBuffer(a1, DialogueAnchor::resamplerCallback, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  if (v8 == 1836086393)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "AADialogueAnchorAnalyzer.cpp";
      v16 = 1024;
      v17 = 300;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  resampling error", buf, 0x12u);
    }
  }

  else
  {
    *v5 += ioOutputDataPacketSize;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t DialogueAnchor::resamplerCallback(DialogueAnchor *this, OpaqueAudioConverter *a2, unsigned int *a3, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v6 = a5[1];
  v7 = *a2;
  if (*a2 >= (*a5 - LODWORD(v6->mStartOffset)))
  {
    v7 = *a5 - LODWORD(v6->mStartOffset);
  }

  if (v7)
  {
    result = 0;
    *a2 = v7;
    v9 = a5[2] + 4 * LODWORD(v6->mStartOffset);
    a3[3] = 4 * v7;
    LODWORD(v6->mStartOffset) += v7;
  }

  else
  {
    v9 = 0;
    a3[3] = 0;
    result = 1836086393;
  }

  *(a3 + 2) = v9;
  return result;
}

uint64_t DialogueAnchor::AADialogueAnchorAnalyzer::Prepare(DialogueAnchor::AADialogueAnchorAnalyzer *this, uint64_t a2, uint64_t a3, int *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  AppBooleanValue = DialogueAnchor::AADialogueAnchorAnalyzer::Prepare(void)::sDAFileLoggingFlag;
  if (DialogueAnchor::AADialogueAnchorAnalyzer::Prepare(void)::sDAFileLoggingFlag == -1)
  {
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"dialogue_anchor_write_files", @"com.apple.coreaudio", 0);
    DialogueAnchor::AADialogueAnchorAnalyzer::Prepare(void)::sDAFileLoggingFlag = AppBooleanValue;
  }

  *(this + 424) = AppBooleanValue > 0;
  if (AppBooleanValue >= 1)
  {
    CASmartPreferences::Read(@"dialogue_anchor_write_files_ring_buffer_mode", @"com.apple.coreaudio", &DialogueAnchor::AADialogueAnchorAnalyzer::Prepare(void)::capturerRingBufferModeOption, a4);
  }

  v6 = *(this + 32);
  if (v6 != 48000.0)
  {
    buf.mSampleRate = *(this + 32);
    *&buf.mFormatID = xmmword_18F9017F0;
    *&buf.mBytesPerFrame = 0x100000004;
    buf.mBitsPerChannel = 32;
    Property = AudioConverterNewWithOptions(&buf, &DialogueAnchor::kCommonASBD, 0, this + 20);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 109;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Failed to create resampler AudioConverter";
LABEL_12:
      p_buf = ioPropertyDataSize;
LABEL_47:
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, v9, p_buf, 0x12u);
      goto LABEL_48;
    }

    v10 = *(this + 20);
    *ioPropertyDataSize = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
    *&ioPropertyDataSize[8] = &v35;
    Property = with_resolved(v10, ioPropertyDataSize);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 114;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Failed to reset resampler AudioConverter";
      goto LABEL_12;
    }
  }

  v12 = *(this + 63);
  if (v12 >= 3)
  {
    v13 = caulk::numeric::exceptional_mul<unsigned int>(v12, 0x14u);
    *ioPropertyDataSize = caulk::numeric::exceptional_add<unsigned int>(12, v13);
    v14 = CAAudioChannelLayout::Create(*(this + 63));
    Property = AudioFormatGetProperty(0x636D706Cu, 4u, this + 264, ioPropertyDataSize, v14);
    if (Property)
    {
      MEMORY[0x193ADE5A0](v14);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 138;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Failed to get channel layout for tag";
LABEL_46:
      p_buf = &buf;
      goto LABEL_47;
    }

    v15 = v14[2];
    if (!v15)
    {
LABEL_21:
      MEMORY[0x193ADE5A0](v14);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 139;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "%25s:%-5d  Input channel layout doesn't have center channel";
LABEL_35:
        _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, v19, &buf, 0x12u);
      }

LABEL_36:
      Property = 0xFFFFFFFFLL;
      goto LABEL_48;
    }

    v16 = 0;
    v17 = 3;
    while (v14[v17] != 3)
    {
      ++v16;
      v17 += 5;
      if (v15 == v16)
      {
        goto LABEL_21;
      }
    }

    *(this + 62) = v16;
    MEMORY[0x193ADE5A0](v14);
    v12 = *(this + 63);
  }

  if (v12 != 2)
  {
    goto LABEL_62;
  }

  if (*(this + 20))
  {
    LODWORD(buf.mSampleRate) = 0;
    std::vector<float>::resize(this + 28, 0x400uLL, &buf, *&v6);
  }

  v20 = (this + 168);
  v21 = 48;
  do
  {
    LODWORD(buf.mSampleRate) = 0;
    std::vector<float>::resize(v20, 0x400uLL, &buf, *&v6);
    v20 += 3;
    v21 -= 24;
  }

  while (v21);
  *(this + 54) = 0;
  *&v35.componentType = *"xfuaytcslppa";
  v35.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &v35);
  if (!Next)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 155;
      v18 = MEMORY[0x1E69E9C10];
      v19 = "%25s:%-5d  failed to find Scotty component";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  Property = AudioComponentInstanceNew(Next, this + 11);
  if (Property)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 157;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "%25s:%-5d  Could not instantiate Scotty component";
    goto LABEL_46;
  }

  Property = AudioUnitSetParameter(*(this + 11), 2u, 0, 0, 1.0, 0);
  if (Property)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 161;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "%25s:%-5d  Could not set Scotty single center channel parameter";
    goto LABEL_46;
  }

  Property = AudioUnitSetParameter(*(this + 11), 5u, 0, 0, 0.0, 0);
  if (Property)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 165;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "%25s:%-5d  Could not set Scotty highpass cut-off frequency";
    goto LABEL_46;
  }

  Property = AudioUnitSetParameter(*(this + 11), 8u, 0, 0, 0.0, 0);
  if (Property)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 167;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "%25s:%-5d  Could not disable Scotty smoothing";
    goto LABEL_46;
  }

  buf.mSampleRate = *(this + 32);
  *&buf.mFormatID = xmmword_18F9017F0;
  *&buf.mBytesPerFrame = 0x200000004;
  buf.mBitsPerChannel = 32;
  *ioPropertyDataSize = buf.mSampleRate;
  *&ioPropertyDataSize[8] = xmmword_18F9017F0;
  v42 = 0x100000004;
  v43 = 32;
  Property = AudioUnitSetProperty(*(this + 11), 8u, 1u, 0, &buf, 0x28u);
  if (Property)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v38 = 136315394;
      *&v38[4] = "AADialogueAnchorAnalyzer.cpp";
      v39 = 1024;
      v40 = 174;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Could not set Scotty input stream format property";
LABEL_61:
      p_buf = v38;
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  Property = AudioUnitSetProperty(*(this + 11), 8u, 2u, 0, ioPropertyDataSize, 0x28u);
  if (Property)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v38 = 136315394;
      *&v38[4] = "AADialogueAnchorAnalyzer.cpp";
      v39 = 1024;
      v40 = 176;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Could not set Scotty output stream format property";
      goto LABEL_61;
    }

LABEL_48:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 497;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  Failed to setup center channel extractor";
LABEL_50:
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v24, &buf, 0x12u);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  Property = AudioUnitInitialize(*(this + 11));
  if (Property)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v38 = 136315394;
      *&v38[4] = "AADialogueAnchorAnalyzer.cpp";
      v39 = 1024;
      v40 = 180;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Could not initialize Scotty component";
      goto LABEL_61;
    }

    goto LABEL_48;
  }

LABEL_62:
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 38) = 1;
  *&v35.componentType = DialogueAnchor::AADialogueAnchorAnalyzer::SetUpDnnVadGraph(void)::$_0::operator()(@"/Library/Audio/Tunings/DialogueAnchorAnalyzer/nnvad.propstrip");
  LOWORD(v35.componentManufacturer) = 1;
  *v38 = DialogueAnchor::AADialogueAnchorAnalyzer::SetUpDnnVadGraph(void)::$_0::operator()(@"/Library/Audio/Tunings/DialogueAnchorAnalyzer/nnvad.austrip");
  *&v38[8] = 1;
  ioDataSize = 4;
  inData = 1536;
  *&buf.mSampleRate = *"xfuagpsdlppa";
  buf.mBytesPerPacket = 0;
  v27 = AudioComponentFindNext(0, &buf);
  if (v27)
  {
    v28 = *(this + 34);
    if (v28)
    {
      AudioUnitUninitialize(v28);
      AudioComponentInstanceDispose(*(this + 34));
    }

    Property = AudioComponentInstanceNew(v27, this + 34);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 419;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not instantiate dspGraph component";
      goto LABEL_98;
    }

    Property = AudioUnitSetProperty(*(this + 34), 8u, 1u, 0, &DialogueAnchor::kCommonASBD, 0x28u);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 423;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not set mDnnVadGraph input stream format property";
      goto LABEL_98;
    }

    Property = AudioUnitSetProperty(*(this + 34), 8u, 2u, 0, &DialogueAnchor::kCommonASBD, 0x28u);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 425;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not set mDnnVadGraph output stream format property";
      goto LABEL_98;
    }

    Property = AudioUnitSetProperty(*(this + 34), 0xEu, 0, 0, &inData, 4u);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 427;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not set mDnnVadGraph maxFramesPerSlice property";
      goto LABEL_98;
    }

    Property = AudioUnitSetProperty(*(this + 34), 0x64737067u, 0, 0, DialogueAnchor::AADialogueAnchorAnalyzer::SetUpDnnVadGraph(void)::kGraphRef, 8u);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 429;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not set dsp graph file property";
      goto LABEL_98;
    }

    Property = AudioUnitSetProperty(*(this + 34), 0x70727370u, 0, 0, &v35, 8u);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 431;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not set graph property strip";
      goto LABEL_98;
    }

    Property = AudioUnitSetProperty(*(this + 34), 0x61757370u, 0, 0, v38, 8u);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 433;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not set graph au strip";
      goto LABEL_98;
    }

    Property = AudioUnitInitialize(*(this + 34));
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 437;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not initialize mDnnVadGraph";
      goto LABEL_98;
    }

    Property = AudioUnitGetProperty(*(this + 34), 0xEu, 0, 0, &inData, &ioDataSize);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_99;
      }

      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 441;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not get dnnVadGraph maxFramesPerSlice";
      goto LABEL_98;
    }

    *(this + 88) = inData;
    Property = AudioUnitReset(*(this + 34), 0, 0);
    if (Property && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 445;
      v29 = MEMORY[0x1E69E9C10];
      v30 = "%25s:%-5d  Could not reset dnn vad graph AU";
LABEL_98:
      _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, v30, ioPropertyDataSize, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *ioPropertyDataSize = 136315394;
      *&ioPropertyDataSize[4] = "AADialogueAnchorAnalyzer.cpp";
      *&ioPropertyDataSize[12] = 1024;
      *&ioPropertyDataSize[14] = 412;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  failed to find dspGraph component", ioPropertyDataSize, 0x12u);
    }

    Property = 0xFFFFFFFFLL;
  }

LABEL_99:
  CACFDictionary::~CACFDictionary(v38);
  CACFDictionary::~CACFDictionary(&v35);
  if (Property)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 500;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  Failed to setup NNVAD";
    goto LABEL_50;
  }

  v31 = vcvtd_n_u64_f64(48000.0 / *(this + 1), 0xAuLL);
  v32 = *(this + 88);
  if (v32 > v31)
  {
    v31 = *(this + 88);
  }

  LODWORD(buf.mSampleRate) = 0;
  std::vector<float>::resize(this + 45, ((v31 + v32) + 0.5), &buf, COERCE_INT16X4_T((v31 + v32) + 0.5));
  *(this + 89) = 0;
  v33 = *(this + 88);
  LODWORD(buf.mSampleRate) = 0;
  std::vector<float>::resize(this + 48, v33, &buf, v34);
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 84) = 1;
  Property = initGatedLoudness(1, 6553601, this + 43, COERCE_DOUBLE(1195081728));
  if (!Property)
  {
    *(this + 51) = 0;
    *(this + 52) = 0;
    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "AADialogueAnchorAnalyzer.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 518;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  Could not initialize gated loudness";
    goto LABEL_50;
  }

LABEL_51:
  v25 = *MEMORY[0x1E69E9840];
  return Property;
}

CFPropertyListRef DialogueAnchor::AADialogueAnchorAnalyzer::SetUpDnnVadGraph(void)::$_0::operator()(CFStringRef filePath)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 0);
  v10 = v2;
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 != CFURLGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFReadStreamCreateWithFile(v1, v4);
  CFReadStreamOpen(v5);
  cf = 0;
  v6 = CFPropertyListCreateWithStream(0, v5, 0, 0, 0, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  CFReadStreamClose(v5);
  CFRelease(v5);
  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

void sub_18F7AA548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

void DialogueAnchor::AADialogueAnchorAnalyzer::~AADialogueAnchorAnalyzer(AudioUnit *this)
{
  DialogueAnchor::AADialogueAnchorAnalyzer::~AADialogueAnchorAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032DB20;
  AudioUnitUninitialize(this[34]);
  AudioComponentInstanceDispose(this[34]);
  removeGatedLoudness(this + 43);
  v2 = this[55];
  this[55] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[54];
  this[54] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[48];
  if (v4)
  {
    this[49] = v4;
    operator delete(v4);
  }

  v5 = this[45];
  if (v5)
  {
    this[46] = v5;
    operator delete(v5);
  }

  AudioUnitUninitialize(this[11]);
  AudioComponentInstanceDispose(this[11]);
  v6 = this[20];
  if (v6)
  {
    AudioConverterDispose(v6);
  }

  v7 = this[28];
  if (v7)
  {
    this[29] = v7;
    operator delete(v7);
  }

  for (i = 0; i != -6; i -= 3)
  {
    v9 = this[i + 24];
    if (v9)
    {
      this[i + 25] = v9;
      operator delete(v9);
    }
  }

  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 6);
}

uint64_t ParseMPEGSyncWord(unsigned int a1, uint64_t a2)
{
  if (a1 < 0xFFE00000)
  {
    return 0;
  }

  v2 = bitsToVersion[(a1 >> 19) & 3];
  if (!v2)
  {
    return 0;
  }

  v3 = bitsToLayer[(a1 >> 17) & 3];
  if (!v3)
  {
    return 0;
  }

  *a2 = a1;
  *(a2 + 4) = v2;
  *(a2 + 5) = v3;
  if (a1 >> 12 == 15)
  {
    return 0;
  }

  v4 = &BitRateTable + 64 * MPEGBitRates[4 * v2 + v3];
  v5 = *&v4[4 * (a1 >> 12)];
  if (!v5)
  {
    return 0;
  }

  v6 = (a1 >> 10) & 3;
  if (v6 == 3)
  {
    return 0;
  }

  v7 = MPEGSampleRates[4 * v2 + v6];
  if (!v7)
  {
    return 0;
  }

  v8 = *(v4 + 14);
  *(a2 + 16) = 1000 * v5;
  *(a2 + 20) = v5;
  *(a2 + 24) = v7;
  if ((~a1 & 0xC0) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *(a2 + 52) = v9;
  if (v3 == 1)
  {
    *(a2 + 32) = 778924081;
    *(a2 + 44) = 384;
    v11 = 48000;
    goto LABEL_21;
  }

  if (v3 == 2)
  {
    *(a2 + 32) = 778924082;
    *(a2 + 44) = 1152;
    v11 = 144000;
    goto LABEL_21;
  }

  if (v3 != 3)
  {
    return 0;
  }

  *(a2 + 32) = 778924083;
  if (v7 <= 0x5DC0)
  {
    v10 = 576;
  }

  else
  {
    v10 = 1152;
  }

  *(a2 + 44) = v10;
  v11 = 125 * v10;
LABEL_21:
  v13 = v11 * v5 / v7;
  v14 = v11 * v8 / v7;
  *(a2 + 8) = v13;
  *(a2 + 12) = v14;
  if (v3 == 1)
  {
    v15 = (v11 * v8 / v7) & 0xFFFC;
    *(a2 + 8) = v13 & 0xFFFC;
    *(a2 + 12) = v15;
    if ((a1 & 0x200) != 0)
    {
      *(a2 + 8) = (v13 & 0xFFFC) + 4;
      v16 = v15 + 4;
LABEL_26:
      *(a2 + 12) = v16;
    }
  }

  else if ((a1 & 0x200) != 0)
  {
    *(a2 + 8) = v13 + 1;
    v16 = v14 + 1;
    goto LABEL_26;
  }

  return 1;
}

void MPEGPacketParser::MPEGPacketParser(MPEGPacketParser *this, unsigned int *a2, unsigned int a3)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (a3 >= 4)
  {
    *this = ParseMPEGSyncWord(bswap32(*a2), this + 8);
  }
}

uint64_t MPEGPacketParser_ASBDFromMPEGPacket(unsigned int *a1, unsigned int a2, AudioStreamBasicDescription *a3)
{
  v3 = 2003329396;
  if (a1)
  {
    if (a2 >= 4)
    {
      memset(v7, 0, sizeof(v7));
      if (ParseMPEGSyncWord(bswap32(*a1), v7))
      {
        v3 = 0;
        v5 = *(&v7[2] + 8);
        *&a3->mSampleRate = *(&v7[1] + 8);
        *&a3->mBytesPerPacket = v5;
        *&a3->mBitsPerChannel = *(&v7[3] + 1);
      }
    }

    else
    {
      return 561213539;
    }
  }

  return v3;
}

uint64_t SwapInt32ToSwapInt24(unsigned int *a1, int8x8_t *a2, unsigned int a3, char a4)
{
  SwapInt32ToNativeInt24_Portable(a1, a2, a3, a4);

  return SwapPCM24_Portable(a2, a2, a3);
}

_OWORD *SwapInt32ToSwapInt16(unsigned int *a1, int8x16_t *a2, unsigned int a3, char a4)
{
  SwapInt32ToNativeInt16_Portable(a1, a2, a3, a4);

  return SwapPCM16_ARM(a2, a2, a3);
}

unsigned int *SwapInt24ToSwapInt32(unsigned __int8 *a1, int *a2, unsigned int a3, char a4, uint64_t a5, int *a6)
{
  SwapInt24ToNativeInt32_Portable(a1, a2, a3, a4, a5, a6);

  return SwapPCM32_Portable(a2, a2, a3);
}

unsigned int *NativeInt24ToSwapInt32(unsigned __int8 *a1, unsigned int *a2, unsigned int a3, char a4)
{
  NativeInt24ToNativeInt32_ARM(a1, a2, a3, a4);

  return SwapPCM32_Portable(a2, a2, a3);
}

unsigned int *SwapInt16ToSwapInt32(int8x8_t *a1, int32x4_t *a2, unsigned int a3, int a4)
{
  SwapInt16ToNativeInt32_Portable(a1, a2, a3, a4);

  return SwapPCM32_Portable(a2, a2, a3);
}

unsigned int *NativeInt16ToSwapInt32(int16x8_t *a1, uint32x4_t *a2, unsigned int a3, char a4)
{
  NativeInt16ToNativeInt32_ARM(a1, a2, a3, a4);

  return SwapPCM32_Portable(a2, a2, a3);
}

const __int16 *StereoDeinterleaveInt16ToFloat32(const __int16 *a1, float32x4_t *a2, float32x4_t *a3, unsigned int a4)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v6[1] = a3;
  result = StereoDeinterleaveNativeInt16ToScaledFloat32_ARM(a1, v6, a4, 0.000030518);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AIFFAudioFile::GetMarkerList(AIFFAudioFile *this, unsigned int *a2, AudioFileMarkerList *a3, int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  *a2 = 0;
  v5 = *(this + 18);
  v6 = *(this + 19) - v5;
  if (!v6)
  {
    goto LABEL_5;
  }

  v11 = 0;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v13 = 1;
  while (1)
  {
    v14 = v5 + 24 * v11;
    if (*v14 == 1296126539)
    {
      break;
    }

    v11 = v13;
    if (v12 <= v13++)
    {
      goto LABEL_5;
    }
  }

  v34 = 2;
  v33 = 0;
  v17 = *(v14 + 16) + 8;
  result = (*(**(this + 13) + 48))(*(this + 13), 0, v17, 2, &v33, &v34);
  if (!result)
  {
    v19 = v34;
    v20 = bswap32(v33);
    v33 = HIWORD(v20);
    if ((v4 / 0x28) >= v20 >> 16)
    {
      v21 = (v20 >> 16);
    }

    else
    {
      v21 = v4 / 0x28;
    }

    a3->mSMPTE_TimeType = 0;
    a3->mNumberMarkers = v21;
    if (v21)
    {
      v22 = v17 + v19;
      v23 = *MEMORY[0x1E695E480];
      p_mSMPTETime = &a3->mMarkers[0].mSMPTETime;
      do
      {
        v32 = 0;
        v31 = 0;
        v34 = 2;
        result = (*(**(this + 13) + 48))(*(this + 13), 0, v22, 2, &v32, &v34);
        if (result)
        {
          goto LABEL_7;
        }

        v25 = v22 + v34;
        v34 = 4;
        result = (*(**(this + 13) + 48))(*(this + 13), 0, v25, 4, &v31, &v34);
        if (result)
        {
          goto LABEL_7;
        }

        v26 = v25 + v34;
        v34 = 1;
        result = (*(**(this + 13) + 48))(*(this + 13), 0, v26, 1, pStr, &v34);
        if (result)
        {
          goto LABEL_7;
        }

        v34 = pStr[0];
        result = (*(**(this + 13) + 48))(*(this + 13), 0, v26 + 1);
        if (result)
        {
          goto LABEL_7;
        }

        v27 = pStr[0];
        v28 = bswap32(v32) >> 16;
        v32 = v28;
        v29 = bswap32(v31);
        v31 = v29;
        if (a4)
        {
          v30 = CFStringCreateWithPascalString(v23, pStr, 0x8000100u);
          LOWORD(v28) = v32;
          v29 = v31;
        }

        else
        {
          v30 = 0;
        }

        v22 = ((v27 + 2) & 0x1FE) + v26;
        *&p_mSMPTETime[-2].mSubFrameSampleOffset = v30;
        p_mSMPTETime[-1].mSubFrameSampleOffset = v28;
        *&p_mSMPTETime[-3].mSubFrameSampleOffset = v29;
        *p_mSMPTETime = 0;
        p_mSMPTETime[1] = 0;
        p_mSMPTETime += 5;
        *a2 += 40;
      }

      while (--v21);
    }

LABEL_5:
    result = 0;
  }

LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AIFFAudioFile::GetLyrics(AIFFAudioFile *this, const __CFString **a2)
{
  v4 = 1667787583;
  v8 = 12;
  v9 = 1431522388;
  if (!ID3ParserGetProperty(*(this + 58), 8, &v9, 1718185574, &v8, v10))
  {
    theDict = 0;
    v8 = 8;
    if (!ID3ParserGetProperty(*(this + 58), 4, &v11, 1717854580, &v8, &theDict))
    {
      Value = CFDictionaryGetValue(theDict, @"text");
      *a2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      CFRelease(theDict);
      return 0;
    }
  }

  return v4;
}

uint64_t ChunkyAudioFile::GetLoudnessInfoSize(ChunkyAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 8;
  *a3 = 1;
  return 0;
}

uint64_t AIFFAudioFile::GetInfoDictionary(AIFFAudioFile *this, CACFDictionary *a2)
{
  v80 = 0;
  v79 = 0;
  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 1;
    while (1)
    {
      v9 = v4 + 24 * v6;
      if (*v9 == 1312902469)
      {
        break;
      }

      v6 = v8;
      v10 = v7 > v8++;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v11 = *(v9 + 8);
    if (v11 >= 9)
    {
      CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(&v80, v11);
      v12 = v80;
      if (v80)
      {
        if (!(*(**(this + 13) + 48))(*(this + 13), 0, *(v9 + 16), *(v9 + 8), v80, &v79) && v79 >= *(v9 + 8))
        {
          v13 = bswap32(*(v12 + 1));
          *(v12 + 1) = v13;
          v14 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v12 + 8, v13, 0x600u, 0);
          v15 = v14;
          if (v14)
          {
            if (CFStringGetLength(v14))
            {
              CACFDictionary::AddString(a2, @"title", v15);
            }

            CFRelease(v15);
          }
        }

        free(v12);
        v80 = 0;
      }
    }
  }

LABEL_15:
  v16 = *(this + 18);
  v17 = *(this + 19) - v16;
  if (v17)
  {
    v18 = 0;
    v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
    v20 = 1;
    while (1)
    {
      v21 = v16 + 24 * v18;
      if (*v21 == 1096111176)
      {
        break;
      }

      v18 = v20;
      v10 = v19 > v20++;
      if (!v10)
      {
        goto LABEL_29;
      }
    }

    v22 = *(v21 + 8);
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v79 = 0;
      CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(&v80, v22);
      v23 = v80;
      if (v80)
      {
        if (!(*(**(this + 13) + 48))(*(this + 13), 0, *(v21 + 16), *(v21 + 8), v80, &v79) && v79 >= *(v21 + 8))
        {
          v24 = bswap32(*(v23 + 1));
          *(v23 + 1) = v24;
          v25 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v23 + 8, v24, 0x600u, 0);
          v26 = v25;
          if (v25)
          {
            if (CFStringGetLength(v25))
            {
              CACFDictionary::AddString(a2, @"artist", v26);
            }

            CFRelease(v26);
          }
        }

        free(v23);
        v80 = 0;
      }
    }
  }

LABEL_29:
  v27 = *(this + 18);
  v28 = *(this + 19) - v27;
  if (v28)
  {
    v29 = 0;
    v30 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v31 = 1;
    while (1)
    {
      v32 = v27 + 24 * v29;
      if (*v32 == 677587232)
      {
        break;
      }

      v29 = v31;
      v10 = v30 > v31++;
      if (!v10)
      {
        goto LABEL_43;
      }
    }

    v33 = *(v32 + 8);
    if ((v33 & 0xFFFFFFF8) != 0)
    {
      v79 = 0;
      CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(&v80, v33);
      v34 = v80;
      if (v80)
      {
        if (!(*(**(this + 13) + 48))(*(this + 13), 0, *(v32 + 16), *(v32 + 8), v80, &v79) && v79 >= *(v32 + 8))
        {
          v35 = bswap32(*(v34 + 1));
          *(v34 + 1) = v35;
          v36 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v34 + 8, v35, 0x600u, 0);
          v37 = v36;
          if (v36)
          {
            if (CFStringGetLength(v36))
            {
              CACFDictionary::AddString(a2, @"copyright", v37);
            }

            CFRelease(v37);
          }
        }

        free(v34);
        v80 = 0;
      }
    }
  }

LABEL_43:
  v38 = *(this + 18);
  v39 = *(this + 19) - v38;
  if (v39)
  {
    v40 = 0;
    v41 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 3);
    v42 = 1;
    while (1)
    {
      v43 = v38 + 24 * v40;
      if (*v43 == 1095650895)
      {
        break;
      }

      v40 = v42;
      v10 = v41 > v42++;
      if (!v10)
      {
        goto LABEL_55;
      }
    }

    v44 = *(v43 + 8);
    if ((v44 & 0xFFFFFFF8) != 0)
    {
      v79 = 0;
      CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(&v80, v44);
      v45 = v80;
      if (v80)
      {
        if (!(*(**(this + 13) + 48))(*(this + 13), 0, *(v43 + 16), *(v43 + 8), v80, &v79) && v79 >= *(v43 + 8))
        {
          v46 = bswap32(*(v45 + 1));
          *(v45 + 1) = v46;
          v47 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v45 + 8, v46, 0x600u, 0);
          if (v47)
          {
            AppendCommentStringToDictionary(a2, v47);
            CFRelease(v47);
          }
        }

        free(v45);
        v80 = 0;
      }
    }
  }

LABEL_55:
  v48 = *(this + 18);
  v49 = *(this + 19) - v48;
  if (v49)
  {
    v50 = 0;
    v51 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 3);
    v52 = 1;
    while (1)
    {
      v53 = v48 + 24 * v50;
      if (*v53 == 1129270612)
      {
        break;
      }

      v50 = v52;
      v10 = v51 > v52++;
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    v54 = *(v53 + 8);
    if (v54 >= 0x13)
    {
      v79 = 0;
      v55 = malloc_type_malloc(v54, 0xBAAF0B94uLL);
      v56 = v55;
      if (!v55)
      {
        exception = __cxa_allocate_exception(8uLL);
        v77 = std::bad_alloc::bad_alloc(exception);
      }

      if (!(*(**(this + 13) + 48))(*(this + 13), 0, *(v53 + 16), *(v53 + 8), v55, &v79))
      {
        v57 = v79;
        v58 = *(v53 + 8);
        if (v79 >= v58)
        {
          *(v56 + 1) = bswap32(*(v56 + 1));
          v59 = v56[4];
          v60 = __rev16(v59);
          v56[4] = v60;
          if (v59)
          {
            v61 = (v56 + 5);
            v62 = v57 - 8;
            v63 = 10;
            v64 = 1;
            do
            {
              *v61 = bswap32(*v61);
              *(v61 + 2) = bswap32(*(v61 + 2)) >> 16;
              v65 = *(v61 + 3);
              v66 = __rev16(v65);
              *(v61 + 3) = v66;
              if (v65)
              {
                v67 = v66 + (v66 & 1) + 8;
              }

              else
              {
                v68 = v61[8];
                if (v68)
                {
                  v69 = 9;
                }

                else
                {
                  v69 = 10;
                }

                v67 = v69 + v68;
              }

              v63 += v67;
              v61 += v67;
            }

            while (v63 < v62 && v64++ < v60);
            if (!v56[7])
            {
              v74 = v56[8];
              if (v56[8])
              {
                if (v58 >= v74 + 18)
                {
                  v75 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v56 + 18, v74, 0x600u, 0);
                  if (v75)
                  {
                    AppendCommentStringToDictionary(a2, v75);
                    CFRelease(v75);
                  }
                }
              }
            }
          }
        }
      }

      free(v56);
    }
  }

LABEL_79:
  v71 = *(this + 58);
  if (v71)
  {
    FillInfoDictionaryFromID3Parser(a2, v71);
  }

  v78 = 0.0;
  v72 = (*(*this + 552))(this, &v78);
  if (!v72)
  {
    AudioFileObject::AddDurationToInfoDictionary(v72, a2, &v78);
  }

  return 0;
}

void sub_18F7AB7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  free(v12);
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(a1);
}

void *CADeprecated::CAAutoFree<AIFF_TextChunk>::allocBytes(void **a1, size_t size)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  result = malloc_type_malloc(size, 0xBAAF0B94uLL);
  if (size && !result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

uint64_t AIFFAudioFile::SetChannelLayout(AIFFAudioFile *this, uint64_t a2, const AudioChannelLayout *a3)
{
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  Property = AudioFormatGetProperty(0x6E63686Du, a2, a3, &ioPropertyDataSize, &outPropertyData);
  if (!Property)
  {
    if (outPropertyData == *(this + 13))
    {
      __dst = 0;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, a2, 1);
      v7 = __dst;
      memcpy(__dst, a3, a2);
      v8 = v7[1].u32[0];
      *v7 = vrev32_s8(*v7);
      v7[1].i32[0] = bswap32(v8);
      if (v8)
      {
        v9 = &v7[3] + 1;
        do
        {
          *(v9 - 1) = vrev32q_s8(*(v9 - 1));
          *v9 = bswap32(*v9);
          v9 += 5;
          --v8;
        }

        while (v8);
      }

      Property = (*(*this + 776))(this, 1128808782, a2, v7);
      free(v7);
    }

    else
    {
      return 4294967246;
    }
  }

  return Property;
}

void sub_18F7AB9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AIFFAudioFile::GetRegionListSize(AIFFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1886681407;
}

uint64_t AIFFAudioFile::SetMarkerList(AIFFAudioFile *this, unsigned int a2, const AudioFileMarkerList *a3)
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  mNumberMarkers = a3->mNumberMarkers;
  CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v14, (262 * mNumberMarkers + 2), 0);
  *v14 = BYTE1(mNumberMarkers);
  *(v14 + 1) = mNumberMarkers;
  if (mNumberMarkers)
  {
    v6 = (v3 + 24);
    LODWORD(v3) = 2;
    do
    {
      *(v14 + v3) = BYTE1(*v6);
      *(v14 + (v3 + 1)) = *v6;
      v7 = vcvtmd_u64_f64(*(v6 - 2) + 0.5);
      *(v14 + (v3 + 2)) = HIBYTE(v7);
      *(v14 + (v3 + 3)) = BYTE2(v7);
      *(v14 + (v3 + 4)) = BYTE1(v7);
      *(v14 + (v3 + 5)) = v7;
      v8 = *(v6 - 1);
      if (v8 && CFStringGetPascalString(v8, buffer, 256, 0x8000100u))
      {
        v9 = buffer[0] + 1;
      }

      else
      {
        *buffer = 16129;
        v9 = 2;
      }

      v10 = v3 + 6;
      memcpy(v14 + v10, buffer, v9);
      v3 = ((buffer[0] + 2) & 0x1FE) + v10;
      v6 += 5;
      --mNumberMarkers;
    }

    while (mNumberMarkers);
  }

  else
  {
    v3 = 2;
  }

  v11 = (*(*this + 776))(this, 1296126539, v3, v14);
  if (v14)
  {
    free(v14);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_18F7ABBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AIFFAudioFile::GetMarkerListSize(AIFFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 1;
    while (1)
    {
      v9 = v4 + 24 * v6;
      if (*v9 == 1296126539)
      {
        break;
      }

      v6 = v8;
      if (v7 <= v8++)
      {
        goto LABEL_8;
      }
    }

    v13 = 2;
    v12 = 0;
    result = (*(**(this + 13) + 48))(*(this + 13), 0, *(v9 + 16) + 8, 2, &v12, &v13);
    if (!result)
    {
      *a2 = 40 * (bswap32(v12) >> 16) + 8;
    }
  }

  else
  {
LABEL_8:
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t AIFFAudioFile::SetMagicCookieData(AIFFAudioFile *this, uint64_t a2, const void *a3)
{
  v16 = 0;
  v6 = a2;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v16, a2 + 8, 0);
  v7 = v16;
  *v16 = 2002876005;
  v7[1] = bswap32(a2);
  memcpy(v7 + 2, a3, v6);
  v8 = (*(*this + 776))(this, 2002876005, a2, v7 + 2);
  if (!v8)
  {
    v9 = *(this + 40);
    outPropertyData = *(this + 24);
    v14 = v9;
    v15 = *(this + 7);
    ioPropertyDataSize = 40;
    Property = AudioFormatGetProperty(0x666D7469u, a2, a3, &ioPropertyDataSize, &outPropertyData);
    v8 = Property;
    if (!Property || (Property == 1718449215 || Property == 560360820) && HIDWORD(v14) && *&outPropertyData > 0.0 && v14)
    {
      (*(*this + 192))(this, &outPropertyData);
      v8 = 0;
    }
  }

  free(v7);
  return v8;
}

uint64_t AIFFAudioFile::GetMagicCookieData(AIFFAudioFile *this, unsigned int *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 2003334207;
  if (!a2 || !a3)
  {
    goto LABEL_23;
  }

  if (*(this + 8) == 1667326771)
  {
    v22 = 0;
    v3 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + 8, 10, v24, &v22);
    if (v3)
    {
      goto LABEL_23;
    }

    v15 = 0;
    v16 = v24;
    v17 = v22;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0xF6400000000;
    if (v22 < 0xA)
    {
      goto LABEL_18;
    }

    if (v24[0] != 2935)
    {
      if (v24[0] != 30475)
      {
        goto LABEL_18;
      }

      v18 = 1;
    }

    LOBYTE(v15) = 1;
LABEL_18:
    if (AC3PacketParser::IsValid(&v15) && *a2 >= 0xB)
    {
      AC3PacketParser::GetMagicCookie(&v15, a3, a2);
    }

    if (v20)
    {
      free(v20);
    }

    goto LABEL_23;
  }

  v6 = *(this + 18);
  v7 = *(this + 19) - v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v10 = 1;
    while (1)
    {
      v11 = v6 + 24 * v8;
      if (*v11 == 2002876005)
      {
        break;
      }

      v8 = v10;
      if (v9 <= v10++)
      {
        goto LABEL_13;
      }
    }

    v23 = *(v11 + 8) - 8;
    if (*a2 >= v23)
    {
      v3 = (*(**(this + 13) + 48))(*(this + 13), 0, *(v11 + 16) + 8);
      *a2 = v23;
    }

    else
    {
      v3 = 561211770;
    }
  }

  else
  {
LABEL_13:
    *a2 = 0;
    v3 = 1667787583;
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F7AC120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a19)
  {
    free(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AIFFAudioFile::UpdateSize(AIFFAudioFile *this)
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v1 = *(this + 18);
  v2 = *(this + 19) - v1;
  if (!v2)
  {
LABEL_5:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v38 = "AIFFAudioFile.cpp";
      *&v38[8] = 1024;
      v39 = 1564;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  Couldn't get the sound data chunk info";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  v5 = 0;
  v6 = *(this + 10);
  v7 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  while (1)
  {
    v8 = v1 + 24 * v4;
    if (*v8 == 1397968452)
    {
      break;
    }

    v4 = ++v5;
    if (v7 <= v5)
    {
      goto LABEL_5;
    }
  }

  v14 = (*(*this + 232))(this);
  v15 = *(v8 + 8);
  if (v14 >= v15 - 16)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 - (*(*this + 232))(this) - 16;
  }

  *(v8 + 8) = (*(*this + 232))(this) + 16;
  v31 = 0;
  v17 = (*(*this + 784))(this, v8, &v31);
  if (!v17)
  {
    if (v16)
    {
      ChunkyAudioFile::MoveUpTrailingChunks(this, v5, v16);
      v21 = (*(**(this + 13) + 16))(*(this + 13), &v32);
      if (v21)
      {
        v11 = v21;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 136315394;
        *v38 = "AIFFAudioFile.cpp";
        *&v38[8] = 1024;
        v39 = 1581;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "%25s:%-5d  GetSize failed";
        goto LABEL_16;
      }

      (*(**(this + 13) + 32))(*(this + 13), v32 - v16);
    }

    v22 = *(this + 18);
    v23 = *(this + 19) - v22;
    if (v23)
    {
      v24 = 0;
      v25 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 3);
      v26 = 1;
      while (1)
      {
        v27 = v22 + 24 * v24;
        if (*v27 == 1129270605)
        {
          break;
        }

        v24 = v26;
        if (v25 <= v26++)
        {
          goto LABEL_27;
        }
      }

      *&v38[6] = bswap32((*(*this + 232))(this) / v6);
      v29 = (*(**(this + 13) + 56))(*(this + 13), 0, *(v27 + 16) + 10, 4, &v38[6], &v32 + 4);
      if (v29)
      {
        v11 = v29;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        v33 = 136315394;
        v34 = "AIFFAudioFile.cpp";
        v35 = 1024;
        v36 = 1592;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "%25s:%-5d  Write Container ckSize failed";
      }

      else
      {
        v30 = (*(**(this + 13) + 16))(*(this + 13), &v32);
        if (v30)
        {
          v11 = v30;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_9;
          }

          v33 = 136315394;
          v34 = "AIFFAudioFile.cpp";
          v35 = 1024;
          v36 = 1596;
          v18 = MEMORY[0x1E69E9C10];
          v19 = "%25s:%-5d  GetSize failed";
        }

        else
        {
          LODWORD(v32) = bswap32(v32 - 8);
          v11 = (*(**(this + 13) + 56))(*(this + 13), 0, 4, 4, &v32, &v32 + 4);
          if (!v11 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_9;
          }

          v33 = 136315394;
          v34 = "AIFFAudioFile.cpp";
          v35 = 1024;
          v36 = 1600;
          v18 = MEMORY[0x1E69E9C10];
          v19 = "%25s:%-5d  Write Container ckSize failed";
        }
      }

      v20 = &v33;
      goto LABEL_17;
    }

LABEL_27:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v38 = "AIFFAudioFile.cpp";
      *&v38[8] = 1024;
      v39 = 1587;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  Couldn't get the offset of the common chunk";
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v11 = v17;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *v38 = "AIFFAudioFile.cpp";
    *&v38[8] = 1024;
    v39 = 1573;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  Write Sound Data Chunk failed";
LABEL_16:
    v20 = buf;
LABEL_17:
    _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, v19, v20, 0x12u);
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t AIFFAudioFile::UpdateDataFormat(AIFFAudioFile *this, AudioStreamBasicDescription *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(__src, 0, sizeof(__src));
  v4 = (*(*this + 184))(this);
  if (!v4)
  {
    mBitsPerChannel = a2->mBitsPerChannel;
    *v19 = a2->mChannelsPerFrame;
    *&v19[6] = mBitsPerChannel;
    ConvertToIeeeExtended(&v19[8], a2->mSampleRate);
    FormatFromStreamDescription = GetFormatFromStreamDescription(a2);
    v9 = *this;
    if (a2->mBytesPerPacket)
    {
      v10 = (*(v9 + 232))(this) / a2->mBytesPerPacket;
    }

    else
    {
      LODWORD(v10) = a2->mFramesPerPacket * (*(v9 + 248))(this);
    }

    if (*(this + 21) == 1095321155)
    {
      FormatFromStreamDescription = GetFormatFromStreamDescription(a2);
      GetCompressionName(a2, __src, v11);
      v12 = __src[0];
      v13 = (__src[0] + 24) & 0x1FE;
      if (((__src[0] + 24) & 0x1FE) == 0)
      {
        v4 = 0;
        goto LABEL_2;
      }
    }

    else
    {
      v12 = 0;
      v13 = 24;
      v18 = 24;
    }

    v17 = 1296912195;
    v18 = bswap32(v13);
    *v19 = bswap32(*v19) >> 16;
    *&v19[2] = bswap32(v10);
    *&v19[6] = bswap32(*&v19[6]) >> 16;
    *&v19[18] = bswap32(FormatFromStreamDescription);
    if (v12)
    {
      CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v16, v13, 1);
      v14 = v16;
      v15 = *&v19[14];
      *v16 = *v19;
      *(v14 + 14) = v15;
      memcpy(v14 + 22, __src, v12 + 1);
      v4 = (*(*this + 776))(this, 1129270605, v13, v14);
      if (v16)
      {
        free(v16);
      }
    }

    else
    {
      v4 = (*(*this + 776))(this, 1129270605, v13, v19);
    }
  }

LABEL_2:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F7ACA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetFormatFromStreamDescription(const AudioStreamBasicDescription *a1)
{
  result = a1->mFormatID;
  if (result == 1819304813)
  {
    mBitsPerChannel = a1->mBitsPerChannel;
    mFormatFlags = a1->mFormatFlags;
    if (mBitsPerChannel == 8)
    {
      if ((mFormatFlags & 4) != 0)
      {
        return 1313820229;
      }

      else
      {
        return 1918990112;
      }
    }

    else if ((~mFormatFlags & 0xE) != 0)
    {
      if ((~mFormatFlags & 0xB) == 0)
      {
        if (mBitsPerChannel == 32)
        {
          return 1718367026;
        }

        else if (mBitsPerChannel == 64)
        {
          return 1718367796;
        }
      }
    }

    else
    {
      switch(mBitsPerChannel)
      {
        case 0x10u:
          return 1953984371;
        case 0x20u:
          return 1768829746;
        case 0x18u:
          return 1768829492;
      }
    }
  }

  return result;
}

void GetCompressionName(__int128 *a1, AudioStreamBasicDescription *a2, unsigned __int8 *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9 = *(a1 + 4);
  *&v7 = 0;
  HIDWORD(v8) = 0;
  *&a2->mSampleRate = 0u;
  *&a2->mBytesPerPacket = 0u;
  *&a2->mBitsPerChannel = 0u;
  *&a2[1].mFormatID = 0u;
  *&a2[1].mBytesPerFrame = 0u;
  *&a2[2].mSampleRate = 0u;
  *&a2[2].mBytesPerPacket = 0u;
  *&a2[2].mBitsPerChannel = 0u;
  *&a2[3].mFormatID = 0u;
  *&a2[3].mBytesPerFrame = 0u;
  *&a2[4].mSampleRate = 0u;
  *&a2[4].mBytesPerPacket = 0u;
  *&a2[4].mBitsPerChannel = 0u;
  *&a2[5].mFormatID = 0u;
  *&a2[5].mBytesPerFrame = 0u;
  *&a2[6].mSampleRate = 0u;
  if (AudioFormatGetProperty(0x666E616Du, 0x28u, &v7, &ioPropertyDataSize, &outPropertyData) || !CFStringGetCString(outPropertyData, buffer, 256, 0x8000100u))
  {
    LOBYTE(a2->mSampleRate) = 7;
    *(&a2->mSampleRate + 1) = 1852534389;
    HIDWORD(a2->mSampleRate) = 1853321070;
  }

  else
  {
    v5 = strlen(buffer);
    LOBYTE(a2->mSampleRate) = v5;
    memcpy(&a2->mSampleRate + 1, buffer, v5);
  }

  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t AIFFAudioFile::Close(AIFFAudioFile *this)
{
  if ((*(this + 100) & 2) == 0 || (v6 = 0, (*(**(this + 13) + 24))(*(this + 13), &v6), (v6 & 1) == 0) || (v5 = 0, v4 = 0, result = (*(**(this + 13) + 56))(*(this + 13), 2, 0, 1, &v5, &v4), !result))
  {
    v3 = *(this + 13);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = 0;
    *(this + 13) = 0;
  }

  return result;
}

uint64_t AIFFAudioFile::InitializeDataSource(AIFFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AIFFAudioFile::InitializeAIFFChunks(this);
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "AIFFAudioFile.cpp";
    v7 = 1024;
    v8 = 1060;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  InitializeAIFFChunks", &v5, 0x12u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t AIFFAudioFile::InitializeAIFFChunks(AIFFAudioFile *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(this + 21);
  v3 = *(this + 40);
  *&v32.mSampleRate = *(this + 24);
  *&v32.mBytesPerPacket = v3;
  *&v32.mBitsPerChannel = *(this + 7);
  if (v2 == 1095321155)
  {
    v44 = -1568648896;
    v43 = 0x446564552;
  }

  memset(v50, 0, sizeof(v50));
  v37.i32[0] = 1129270605;
  mChannelsPerFrame = v32.mChannelsPerFrame;
  v33 = 0;
  mBitsPerChannel = v32.mBitsPerChannel;
  ConvertToIeeeExtended(v41, v32.mSampleRate);
  v39 = 0;
  if (v2 == 1095321155)
  {
    FormatFromStreamDescription = GetFormatFromStreamDescription(&v32);
    GetCompressionName(&v32, v50, v4);
    v5 = (v50[0] + 24) & 0x1FE;
    v6 = (v50[0] + 2) & 0x1FE;
  }

  else
  {
    v5 = 18;
    v6 = 2;
  }

  v37.i32[1] = v5;
  v34 = 1179405394;
  v7 = *(this + 138);
  if (*(this + 138))
  {
    v8 = *(this + 46) + v5;
    v9 = 4068 - v8;
    v35 = 4068 - v8;
    if (v2 == 1095321155)
    {
      v9 = 4056 - v8;
      v35 = 4056 - v8;
    }
  }

  else
  {
    v9 = 0;
    v35 = 0;
  }

  if (v7)
  {
    v10 = v9 + 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v5 + v10;
  v12 = v11 + 28;
  v13 = v11 + 40;
  if (v2 == 1095321155)
  {
    v14 = 1128679745;
  }

  else
  {
    v13 = v12;
    v14 = 1179011393;
  }

  *&v30 = 0x8464F524DLL;
  *(&v30 + 1) = v13 + 8;
  v31 = 0;
  v45[0] = 1297239878;
  v45[1] = bswap32(v13);
  v45[2] = v14;
  v15 = (*(**(this + 13) + 56))(*(this + 13), 0, 0, 12, v45, &v33);
  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "AIFFAudioFile.cpp";
      v48 = 1024;
      v49 = 910;
      v17 = MEMORY[0x1E69E9C10];
LABEL_30:
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  FSWrite Failed", buf, 0x12u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v30);
  v18 = v33;
  if (v2 != 1095321155)
  {
LABEL_24:
    *&v30 = v37.u32[0] | 0x800000000;
    *(&v30 + 1) = v37.i32[1] + 8;
    v31 = v18;
    if (v2 == 1095321155)
    {
      v20 = vrev32_s8(v37);
      v21 = bswap32(mChannelsPerFrame) >> 16;
      v22 = bswap32(mBitsPerChannel) >> 16;
      FormatFromStreamDescription = bswap32(FormatFromStreamDescription);
      v23 = 30;
    }

    else
    {
      v23 = (v37.i32[1] + 8);
      v20 = vrev32_s8(v37);
      v21 = bswap32(mChannelsPerFrame) >> 16;
      v22 = bswap32(mBitsPerChannel) >> 16;
    }

    v37 = v20;
    mChannelsPerFrame = v21;
    v39 = 0;
    mBitsPerChannel = v22;
    v24 = (*(**(this + 13) + 56))(*(this + 13), 0, v18, v23, &v37, &v33);
    if (v24)
    {
      v16 = v24;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "AIFFAudioFile.cpp";
        v48 = 1024;
        v49 = 946;
        v17 = MEMORY[0x1E69E9C10];
        goto LABEL_30;
      }
    }

    else
    {
      std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v30);
      v27 = v18 + v33;
      if (v2 == 1095321155)
      {
        v28 = (*(**(this + 13) + 56))(*(this + 13), 0, v27, v6, v50, &v33);
        if (v28)
        {
          v16 = v28;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          *buf = 136315394;
          v47 = "AIFFAudioFile.cpp";
          v48 = 1024;
          v49 = 956;
          v17 = MEMORY[0x1E69E9C10];
          goto LABEL_30;
        }

        v27 += v33;
      }

      if (*(this + 138))
      {
        *&v30 = 0x8464C4C52;
        *(&v30 + 1) = v9 + 8;
        v31 = v27;
        v34 = 1380731974;
        v35 = bswap32(v9);
        v29 = (*(**(this + 13) + 56))(*(this + 13), 0, v27, 8, &v34, &v33);
        if (v29)
        {
          v16 = v29;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          *buf = 136315394;
          v47 = "AIFFAudioFile.cpp";
          v48 = 1024;
          v49 = 969;
          v17 = MEMORY[0x1E69E9C10];
          goto LABEL_30;
        }

        std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v30);
        v27 += v9 + v33;
        (*(**(this + 13) + 32))(*(this + 13), v27);
      }

      *&v30 = 0x853534E44;
      *(&v30 + 1) = 16;
      v31 = v27;
      v36 = xmmword_18F9018A0;
      v16 = (*(**(this + 13) + 56))(*(this + 13), 0, v27, 16, &v36, &v33);
      if (!v16)
      {
        std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v30);
        *(this + 9) = v27 + v33;
        *(this + 20) = 1;
        (*(*this + 240))(this, 0);
        (*(*this + 256))(this, 0);
        (*(*this + 656))(this, v32.mBytesPerPacket);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "AIFFAudioFile.cpp";
        v48 = 1024;
        v49 = 983;
        v17 = MEMORY[0x1E69E9C10];
        goto LABEL_30;
      }
    }

    goto LABEL_31;
  }

  *&v30 = 0x846564552;
  *(&v30 + 1) = 12;
  v31 = v33;
  v43 = 0x400000052455646;
  v44 = 1079083170;
  v19 = (*(**(this + 13) + 56))(*(this + 13), 0, v33, 12, &v43, &v33);
  if (!v19)
  {
    std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v30);
    v18 += v33;
    goto LABEL_24;
  }

  v16 = v19;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v47 = "AIFFAudioFile.cpp";
    v48 = 1024;
    v49 = 923;
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_30;
  }

LABEL_31:
  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t AIFFID3CallbackProc(void *a1, int a2, unsigned int a3, unsigned int a4, void **a5, unsigned int *a6)
{
  if (a2 == 1)
  {
    v13 = a1[60];
    if (v13)
    {
      free(v13);
    }

    result = 0;
    a1[60] = 0;
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v23 = 0;
    (*(*a1[13] + 24))(a1[13], &v23);
    v11 = a1[59];
    if ((a4 + a3 + v11) <= v23)
    {
      if (a4 <= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = a4;
      }

      v15 = v11 + v14;
      v16 = v23 - v11;
      if (v15 <= v23)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = malloc_type_malloc(v17, 0x82FBDFC9uLL);
      v19 = v18;
      if (v17 && !v18)
      {
        exception = __cxa_allocate_exception(8uLL);
        v21 = std::bad_alloc::bad_alloc(exception);
      }

      bzero(v18, v17);
      a1[60] = v19;
      v22 = 0;
      result = (*(*a1[13] + 48))(a1[13], 0, a1[59] + a3, v17, v19, &v22);
      if (!result)
      {
        *a5 = a1[60];
        *a6 = v22;
      }
    }

    else
    {
      return 4294967272;
    }
  }

  return result;
}

uint64_t AIFFAudioFile::Create(AIFFAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AudioFileObject::Create(this, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AIFFAudioFile.cpp";
      v12 = 1024;
      v13 = 1032;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  Couldn't create a new audio file object";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v7, &v10, 0x12u);
    }
  }

  else
  {
    v5 = AIFFAudioFile::InitializeAIFFChunks(this);
    if (v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AIFFAudioFile.cpp";
      v12 = 1024;
      v13 = 1035;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  InitializeAIFFChunks";
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void AIFFAudioFile::~AIFFAudioFile(AIFFAudioFile *this)
{
  AIFFAudioFile::~AIFFAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032DBA8;
  if (*(this + 58))
  {
    ID3ParserClose();
  }

  *this = &unk_1F033B370;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  AudioFileObject::~AudioFileObject(this);
}

uint64_t AIFFAudioFormat::GetHFSCodes(AIFFAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1095321158;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

uint64_t AIFFAudioFormat::GetAvailableStreamDescriptions(AIFFAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 == 1819304813)
  {
    v4 = &v10[1] + 1;
    memset(v10, 0, sizeof(v10));
    v5 = -32;
    do
    {
      *(v4 - 3) = 0xE6C70636DLL;
      v4[3] = v5 + 40;
      *v4 = 1;
      v4 += 10;
      v5 += 8;
    }

    while (v5);
    v6 = *a3 / 0x28;
    if (v6 >= 4)
    {
      v6 = 4;
    }

    v7 = 40 * v6;
    *a3 = v7;
    if (__dst)
    {
      memcpy(__dst, v10, v7);
    }

    result = 0;
  }

  else
  {
    *a3 = 0;
    result = 1718449215;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AIFFAudioFormat::GetAvailableFormatIDs(AIFFAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1819304813;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

void AIFFAudioFormat::GetFileTypeName(AIFFAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"AIFF");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"AIFF", @"AIFF", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *AIFFAudioFormat::GetMIMETypes(AIFFAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"audio/aiff";
  values[1] = @"audio/x-aiff";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *AIFFAudioFormat::GetUTIs(AIFFAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.aiff-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *AIFFAudioFormat::GetExtensions(AIFFAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"aiff";
  values[1] = @"aif";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AIFCAudioFormat::GetHFSCodes(AIFCAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 1095321155;
  v3 = 4 * (*a2 > 3);
  *a2 = v3;
  if (__dst)
  {
    memcpy(__dst, &__src, v3);
  }

  return 0;
}

uint64_t AIFCAudioFormat::GetAvailableStreamDescriptions(AIFCAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 > 1634169708)
  {
    if (a2 <= 1768775987)
    {
      if (a2 == 1634169709)
      {
        goto LABEL_21;
      }

      if (a2 != 1634492791)
      {
LABEL_27:
        result = 1718449215;
        *a3 = 0;
        goto LABEL_26;
      }
    }

    else if (a2 != 1768775988 && a2 != 1970037111)
    {
      if (a2 == 1819304813)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        outPropertyData = 0u;
        v15 = 0u;
        v7 = &v15 + 1;
        v8 = -32;
        v31 = 0;
        do
        {
          *(v7 - 3) = 0xE6C70636DLL;
          v7[3] = v8 + 40;
          *v7 = 1;
          v7 += 10;
          v8 += 8;
        }

        while (v8);
        *(&v24 + 1) = 0xB6C70636DLL;
        LODWORD(v26) = 32;
        DWORD1(v25) = 1;
        *&v27 = 0xB6C70636DLL;
        DWORD2(v28) = 64;
        HIDWORD(v27) = 1;
        *(&v29 + 1) = 0xA6C70636DLL;
        LODWORD(v31) = 8;
        DWORD1(v30) = 1;
        v9 = 7;
        if (__dst)
        {
          goto LABEL_23;
        }

LABEL_13:
        result = 0;
        *a3 = 40 * v9;
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    *&v16 = 0;
    outPropertyData = 0u;
    v15 = 0u;
    DWORD2(outPropertyData) = a2;
    ioPropertyDataSize = 40;
    AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData);
    goto LABEL_22;
  }

  if (a2 <= 1363430705)
  {
    if (a2 != 1296122675)
    {
      v6 = 1296122678;
LABEL_16:
      if (a2 != v6)
      {
        goto LABEL_27;
      }
    }
  }

  else if (a2 != 1363430706 && a2 != 1363430723)
  {
    v6 = 1365470320;
    goto LABEL_16;
  }

LABEL_21:
  *&v16 = 0;
  outPropertyData = 0u;
  v15 = 0u;
  DWORD2(outPropertyData) = a2;
LABEL_22:
  v9 = 1;
  if (!__dst)
  {
    goto LABEL_13;
  }

LABEL_23:
  if (*a3 / 0x28 < v9)
  {
    v9 = *a3 / 0x28;
  }

  v11 = 40 * v9;
  *a3 = v11;
  memcpy(__dst, &outPropertyData, v11);
  result = 0;
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AIFCAudioFormat::GetAvailableFormatIDs(AIFCAudioFormat *this, unsigned int *a2, void *__dst)
{
  v8 = *MEMORY[0x1E69E9840];
  qmemcpy(v7, "mcplwaluwala3CAM6CAM4amiCMDQ2MDQplcQmsga", sizeof(v7));
  v3 = *a2 >> 2;
  if (v3 >= 0xA)
  {
    v3 = 10;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, v7, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void AIFCAudioFormat::GetFileTypeName(AIFCAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"AIFC");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"AIFC", @"AIFC", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *AIFCAudioFormat::GetMIMETypes(AIFCAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"audio/aiff";
  values[1] = @"audio/x-aiff";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *AIFCAudioFormat::GetUTIs(AIFCAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.aifc-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *AIFCAudioFormat::GetExtensions(AIFCAudioFormat *this, const __CFArray **a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"aifc";
  v5[1] = @"aiff";
  v5[2] = @"aif";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AIFCAudioFormat::FileDataIsThisFormat(AIFCAudioFormat *this, unsigned int a2, _DWORD *a3)
{
  if (a2 < 0xC)
  {
    return 0;
  }

  return *a3 == 1297239878 && a3[2] == 1128679745;
}

BOOL AIFCAudioFormat::ExtensionIsThisFormat(AIFCAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"aifc", 1uLL))
  {
    v3 = 1;
    if (CFStringCompare(theString1, @"aiff", 1uLL))
    {
      return CFStringCompare(theString1, @"aif", 1uLL) == kCFCompareEqualTo;
    }
  }

  return v3;
}

uint64_t CA::ADMBuilder::Impl::parse_block_format(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v6 = *(*(*(*this + 128) - 16) + 152);
  v7 = strcmp(__s1, "gain");
  if (!v7)
  {
    if (*(v6 - 376) != 1)
    {
      *(v6 - 376) = 1;
      *(v6 - 384) = 0;
      if (a3)
      {
        v25 = *a3;
        if (*a3)
        {
          v26 = (a3 + 2);
          do
          {
            if (!strcmp(v25, "gainUnit"))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, *(v26 - 1));
              v27 = CA::ADMBuilder::Impl::parse_gain_unit(this, __p);
              if (SBYTE3(v123) < 0)
              {
                operator delete(*__p);
              }

              if (v27 >= 0x100u)
              {
                *(v6 - 380) = v27;
              }
            }

            v28 = *v26;
            v26 += 2;
            v25 = v28;
          }

          while (v28);
        }
      }

      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v7);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 19;
    v122 = 2080;
    v123 = v22;
    v23 = "%25s:%-5d Multiple importance elements for block format '%s'";
    goto LABEL_85;
  }

  v8 = strcmp(__s1, "importance");
  if (!v8)
  {
    if (*(v6 - 368) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v8);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 43;
    v122 = 2080;
    v123 = v24;
    v23 = "%25s:%-5d Multiple importance elements for block format '%s'";
    goto LABEL_85;
  }

  v9 = strcmp(__s1, "headLocked");
  if (!v9)
  {
    if (*(v6 - 363) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v9);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v29 = buf;
    }

    else
    {
      v29 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 52;
    v122 = 2080;
    v123 = v29;
    v23 = "%25s:%-5d Multiple headLocked elements for block format '%s'";
    goto LABEL_85;
  }

  v10 = strcmp(__s1, "headphoneVirtualise");
  if (!v10)
  {
    if (*(v6 - 348) == 1)
    {
      v21 = CA::ADMBuilder::Impl::log(v10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
        if (SBYTE3(v118) >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *__p = 136315650;
        *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
        v120 = 1024;
        v121 = 63;
        v122 = 2080;
        v123 = v30;
        v23 = "%25s:%-5d Multiple headphoneVirtualise values for block format '%s'";
LABEL_85:
        _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v23, __p, 0x1Cu);
        if (SBYTE3(v118) < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_87:
      v40 = -66586;
      goto LABEL_88;
    }

    v32 = v6 - 360;
    *(v32 + 8) = 0;
    *v32 = 0;
    v33 = 1;
    *(v6 - 348) = 1;
    if (!a3)
    {
      goto LABEL_90;
    }

    v34 = *a3;
    if (!*a3)
    {
      goto LABEL_90;
    }

    v35 = (a3 + 2);
    while (1)
    {
      v36 = *(v35 - 1);
      if (!strcmp(v34, "bypass"))
      {
        break;
      }

      if (!strcmp(v34, "DRR"))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, v36);
        v37 = CA::ADMBuilder::Impl::parse_float(this, __p);
        *(v6 - 356) = v37;
        *(v6 - 352) = BYTE4(v37);
        goto LABEL_75;
      }

LABEL_77:
      v38 = *v35;
      v35 += 2;
      v34 = v38;
      v33 = 1;
      if (!v38)
      {
        goto LABEL_90;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v36);
    *v32 = CA::ADMBuilder::Impl::parse_BOOL(this, __p);
LABEL_75:
    if (SBYTE3(v123) < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_77;
  }

  v11 = strcmp(__s1, "speakerLabel");
  if (!v11)
  {
    if (*(v6 - 272) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v11);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v31 = buf;
    }

    else
    {
      v31 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 83;
    v122 = 2080;
    v123 = v31;
    v23 = "%25s:%-5d Multiple speaker label elements for block format '%s'";
    goto LABEL_85;
  }

  v12 = strcmp(__s1, "position");
  if (!v12)
  {
    *(this + 76) = 0;
    memset(&v113, 0, sizeof(v113));
    memset(&v112, 0, sizeof(v112));
    __p[0] = 0;
    BYTE4(v123) = 0;
    if (!a3)
    {
      goto LABEL_171;
    }

    v43 = *a3;
    if (!*a3)
    {
      goto LABEL_171;
    }

    v109 = 0;
    v44 = 0;
    v110 = 0;
    LODWORD(v45) = 0;
    v46 = (a3 + 2);
    while (1)
    {
      v47 = *(v46 - 1);
      if (!strcmp(v43, "bound"))
      {
        std::string::basic_string[abi:ne200100]<0>(buf, v47);
        v48 = CA::ADMBuilder::Impl::parse_bound(this, buf);
        v45 = v48;
        if (SBYTE3(v118) < 0)
        {
          operator delete(*buf);
        }

        if (!(v45 >> 32))
        {
          v59 = CA::ADMBuilder::Impl::log(v48);
          v12 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, v6 - 480, "");
            v60 = (v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v111 : v111.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseBlockFormat.cpp";
            v115 = 1024;
            v116 = 103;
            v117 = 2080;
            v118 = v60;
            _os_log_impl(&dword_18F5DF000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bound for position of block format '%s'", buf, 0x1Cu);
            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }
          }

          *(this + 158) = -66596;
          if (v44)
          {
            v110 = 0;
LABEL_140:
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &v113.__r_.__value_.__l.__data_, &v112.__r_.__value_.__l.__data_);
            v61 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(this + 100, buf);
            v62 = v61;
            if (SBYTE3(v118) < 0)
            {
              operator delete(*buf);
            }

            if (v62)
            {
              v63 = v109;
              v64 = v109 - 3;
              if (*(v6 - 151) == 1)
              {
                if (*(v6 - 152) != v64 < 3)
                {
                  v65 = CA::ADMBuilder::Impl::log(v61);
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, v6 - 480, "");
                    v66 = (v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v111 : v111.__r_.__value_.__r.__words[0];
                    *buf = 136315650;
                    *&buf[4] = "ADMBuilderParseBlockFormat.cpp";
                    v115 = 1024;
                    v116 = 132;
                    v117 = 2080;
                    v118 = v66;
                    _os_log_impl(&dword_18F5DF000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems for position of block format '%s'", buf, 0x1Cu);
                    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v111.__r_.__value_.__l.__data_);
                    }
                  }

                  *(this + 158) = -66603;
                  v63 = v109;
                }
              }

              else
              {
                if (v64 >= 3)
                {
                  v75 = 256;
                }

                else
                {
                  v75 = 257;
                }

                *(v6 - 152) = v75;
              }

              if (v110)
              {
                if (v45 != 1)
                {
                  if (!v45 && v63 < 6)
                  {
                    v76 = qword_18F916888[v63];
                    v77 = &unk_18F9168B8;
                    goto LABEL_215;
                  }

LABEL_297:
                  operator new();
                }

                if (v63 >= 6)
                {
                  goto LABEL_297;
                }

                v76 = qword_18F9168E8[v63];
                v77 = &unk_18F916918;
LABEL_215:
                v82 = v77[v63];
LABEL_296:
                v105 = (v6 + v76);
                *v105 = 0;
                *(v6 + v82) = 1;
                *(this + 76) = v105;
                goto LABEL_297;
              }

              if (v63 > 5)
              {
                goto LABEL_297;
              }

              if (((1 << v63) & 9) == 0)
              {
                if (((1 << v63) & 0x12) == 0)
                {
                  v82 = -324;
                  v76 = -328;
                  goto LABEL_296;
                }

                if (BYTE4(v123) == 1)
                {
                  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "top"))
                  {
                    v78 = (v6 - 320);
                    v79 = *(v6 - 320);
                    if (__PAIR64__(*(v6 - 319), v79) == 0x100000000)
                    {
                      v80 = 260;
                    }

                    else if (*(v6 - 319) && v79 == 1)
                    {
                      v80 = 261;
                    }

                    else
                    {
                      v80 = 258;
                    }

                    goto LABEL_294;
                  }

                  if ((BYTE4(v123) & 1) != 0 && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "bottom"))
                  {
                    v78 = (v6 - 320);
                    v94 = *(v6 - 320);
                    if (__PAIR64__(*(v6 - 319), v94) == 0x100000000)
                    {
                      v80 = 262;
                    }

                    else if (*(v6 - 319) && v94 == 1)
                    {
                      v80 = 263;
                    }

                    else
                    {
                      v80 = 259;
                    }

LABEL_294:
                    *v78 = v80;
                  }
                }

                v82 = -332;
                v76 = -336;
                goto LABEL_296;
              }

              if (BYTE4(v123) == 1)
              {
                if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "left"))
                {
                  v84 = (v6 - 320);
                  v85 = *(v6 - 320);
                  if (*(v6 - 319) == 1 && v85 == 2)
                  {
                    v86 = 260;
                  }

                  else if (*(v6 - 319) && v85 == 3)
                  {
                    v86 = 262;
                  }

                  else
                  {
                    v86 = 256;
                  }

                  goto LABEL_291;
                }

                if ((BYTE4(v123) & 1) != 0 && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "right"))
                {
                  v84 = (v6 - 320);
                  v93 = *(v6 - 320);
                  if (*(v6 - 319) == 1 && v93 == 2)
                  {
                    v86 = 261;
                  }

                  else if (*(v6 - 319) && v93 == 3)
                  {
                    v86 = 263;
                  }

                  else
                  {
                    v86 = 257;
                  }

LABEL_291:
                  *v84 = v86;
                }
              }

              v82 = -340;
              v76 = -344;
              goto LABEL_296;
            }

            v67 = CA::ADMBuilder::Impl::log(v61);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, v6 - 480, "");
              v68 = (v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v111 : v111.__r_.__value_.__r.__words[0];
              *buf = 136315650;
              *&buf[4] = "ADMBuilderParseBlockFormat.cpp";
              v115 = 1024;
              v116 = 244;
              v117 = 2080;
              v118 = v68;
              _os_log_impl(&dword_18F5DF000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple coordinates for position of block format '%s'", buf, 0x1Cu);
              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v111.__r_.__value_.__l.__data_);
              }
            }

            v69 = -66589;
LABEL_179:
            *(this + 158) = v69;
LABEL_180:
            v33 = 1;
            if (BYTE4(v123) == 1 && SBYTE3(v123) < 0)
            {
              operator delete(*__p);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            goto LABEL_90;
          }

LABEL_171:
          if (!*(this + 158))
          {
            v73 = CA::ADMBuilder::Impl::log(v12);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, v6 - 480, "");
              v74 = (v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v111 : v111.__r_.__value_.__r.__words[0];
              *buf = 136315650;
              *&buf[4] = "ADMBuilderParseBlockFormat.cpp";
              v115 = 1024;
              v116 = 249;
              v117 = 2080;
              v118 = v74;
              _os_log_impl(&dword_18F5DF000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing coordinate for position of block format '%s'", buf, 0x1Cu);
              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v111.__r_.__value_.__l.__data_);
              }
            }

            v69 = -66592;
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v12 = std::string::__assign_external(&v113, v47);
        v110 = 1;
      }

      else if (!strcmp(v43, "coordinate"))
      {
        std::string::basic_string[abi:ne200100]<0>(buf, v47);
        v49 = CA::ADMBuilder::Impl::parse_coordinate(this, buf);
        v109 = v49;
        v50 = HIDWORD(v49);
        if (SBYTE3(v118) < 0)
        {
          operator delete(*buf);
        }

        if (!v50)
        {
          v71 = CA::ADMBuilder::Impl::log(v49);
          v12 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
          v44 = 0;
          if (v12)
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v111, v6 - 480, "");
            if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v72 = &v111;
            }

            else
            {
              v72 = v111.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseBlockFormat.cpp";
            v115 = 1024;
            v116 = 113;
            v117 = 2080;
            v118 = v72;
            _os_log_impl(&dword_18F5DF000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown coordinate for position of block format '%s'", buf, 0x1Cu);
            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }
          }

          else
          {
LABEL_107:
            if (v44)
            {
              goto LABEL_140;
            }
          }

          goto LABEL_171;
        }

        v44 = 1;
        v12 = std::string::__assign_external(&v112, v47);
      }

      else
      {
        v12 = strcmp(v43, "screenEdgeLock");
        if (!v12)
        {
          v12 = std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(__p, v47);
        }
      }

      v51 = *v46;
      v46 += 2;
      v43 = v51;
      if (!v51)
      {
        goto LABEL_107;
      }
    }
  }

  v13 = strcmp(__s1, "outputChannelFormatIDRef");
  if (!v13 || (v13 = strcmp(__s1, "outputChannelIDRef"), !v13))
  {
    if (*(*(*(this + 71) - 16) - 8) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v13);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v39 = buf;
    }

    else
    {
      v39 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 256;
    v122 = 2080;
    v123 = v39;
    v23 = "%25s:%-5d Multiple output channel formats for block format '%s'";
    goto LABEL_85;
  }

  v14 = strcmp(__s1, "jumpPosition");
  if (!v14)
  {
    if (*(v6 - 304) != 1)
    {
      v53 = v6 - 316;
      *(v53 + 8) = 0;
      *v53 = 0;
      *(v6 - 304) = 1;
      if (a3)
      {
        v54 = *a3;
        if (*a3)
        {
          v55 = (a3 + 2);
          do
          {
            if (!strcmp(v54, "interpolationLength"))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, *(v55 - 1));
              v56 = CA::ADMBuilder::Impl::parse_float(this, __p);
              *(v6 - 312) = v56;
              *(v6 - 308) = BYTE4(v56);
              if (SBYTE3(v123) < 0)
              {
                operator delete(*__p);
              }
            }

            v57 = *v55;
            v55 += 2;
            v54 = v57;
          }

          while (v57);
        }
      }

      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v14);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v52 = buf;
    }

    else
    {
      v52 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 265;
    v122 = 2080;
    v123 = v52;
    v23 = "%25s:%-5d Multiple jump positions for block format '%s'";
    goto LABEL_85;
  }

  if (!strcmp(__s1, "matrix"))
  {
    v33 = 69;
    goto LABEL_90;
  }

  v15 = strcmp(__s1, "width");
  if (!v15)
  {
    if (*(v6 - 172) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v15);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v58 = buf;
    }

    else
    {
      v58 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 287;
    v122 = 2080;
    v123 = v58;
    v23 = "%25s:%-5d Multiple width elements for block format '%s'";
    goto LABEL_85;
  }

  v16 = strcmp(__s1, "height");
  if (!v16)
  {
    if (*(v6 - 164) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v16);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v70 = buf;
    }

    else
    {
      v70 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 296;
    v122 = 2080;
    v123 = v70;
    v23 = "%25s:%-5d Multiple height elements for block format '%s'";
    goto LABEL_85;
  }

  v17 = strcmp(__s1, "depth");
  if (!v17)
  {
    if (*(v6 - 156) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v17);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v81 = buf;
    }

    else
    {
      v81 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 305;
    v122 = 2080;
    v123 = v81;
    v23 = "%25s:%-5d Multiple depth elements for block format '%s'";
    goto LABEL_85;
  }

  if (!strcmp(__s1, "cartesian"))
  {
    operator new();
  }

  v18 = strcmp(__s1, "diffuse");
  if (!v18)
  {
    if (*(v6 - 144) != 1)
    {
      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v18);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v83 = buf;
    }

    else
    {
      v83 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 317;
    v122 = 2080;
    v123 = v83;
    v23 = "%25s:%-5d Multiple diffuse elements for block format '%s'";
    goto LABEL_85;
  }

  v19 = strcmp(__s1, "channelLock");
  if (!v19)
  {
    if (*(v6 - 128) != 1)
    {
      *(v6 - 132) = 0;
      *(v6 - 140) = 0;
      *(v6 - 128) = 1;
      if (a3)
      {
        v89 = *a3;
        if (*a3)
        {
          v90 = (a3 + 2);
          do
          {
            if (!strcmp(v89, "maxDistance"))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, *(v90 - 1));
              v91 = CA::ADMBuilder::Impl::parse_float(this, __p);
              *(v6 - 136) = v91;
              *(v6 - 132) = BYTE4(v91);
              if (SBYTE3(v123) < 0)
              {
                operator delete(*__p);
              }
            }

            v92 = *v90;
            v90 += 2;
            v89 = v92;
          }

          while (v92);
        }
      }

      operator new();
    }

    v21 = CA::ADMBuilder::Impl::log(v19);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
    if (SBYTE3(v118) >= 0)
    {
      v87 = buf;
    }

    else
    {
      v87 = *buf;
    }

    *__p = 136315650;
    *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
    v120 = 1024;
    v121 = 326;
    v122 = 2080;
    v123 = v87;
    v23 = "%25s:%-5d Multiple channel lock elements for block format '%s'";
    goto LABEL_85;
  }

  v20 = strcmp(__s1, "objectDivergence");
  if (!v20)
  {
    if (*(v6 - 116) == 1)
    {
      v21 = CA::ADMBuilder::Impl::log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
        if (SBYTE3(v118) >= 0)
        {
          v88 = buf;
        }

        else
        {
          v88 = *buf;
        }

        *__p = 136315650;
        *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
        v120 = 1024;
        v121 = 345;
        v122 = 2080;
        v123 = v88;
        v23 = "%25s:%-5d Multiple channel lock elements for block format '%s'";
        goto LABEL_85;
      }

      goto LABEL_87;
    }

    *(v6 - 116) = 1;
    *(v6 - 124) = 0;
    if (!a3)
    {
      goto LABEL_325;
    }

    v95 = *a3;
    if (!*a3)
    {
      goto LABEL_325;
    }

    v96 = 0;
    v97 = 0;
    v98 = (a3 + 2);
    while (1)
    {
      v99 = *(v98 - 1);
      v100 = strcmp(v95, "azimuthRange");
      if (!v100)
      {
        break;
      }

      v100 = strcmp(v95, "positionRange");
      if (!v100)
      {
        if ((v96 & 1) != 0 && !v97)
        {
          goto LABEL_299;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v99);
        v100 = CA::ADMBuilder::Impl::parse_float(this, __p);
        v101 = *&v100;
        if (!HIDWORD(v100))
        {
          v101 = 0.0;
        }

        *(v6 - 120) = v101;
        if (SBYTE3(v123) < 0)
        {
          operator delete(*__p);
        }

        v97 = 1;
LABEL_278:
        v96 = 1;
      }

      v103 = *v98;
      v98 += 2;
      v95 = v103;
      if (!v103)
      {
        v104 = 0;
        goto LABEL_300;
      }
    }

    if ((v96 & 1) != 0 && v97 == 1)
    {
LABEL_299:
      v104 = 1;
LABEL_300:
      if (v96)
      {
        if (*(v6 - 151) == 1)
        {
          v106 = v96 != 1 || v97 != *(v6 - 152);
          v104 |= v106;
        }

        else
        {
          *(v6 - 152) = v97 | (v96 << 8);
        }
      }

      if (!*(this + 158) && v104)
      {
        v107 = CA::ADMBuilder::Impl::log(v100);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(buf, v6 - 480, "");
          v108 = SBYTE3(v118) >= 0 ? buf : *buf;
          *__p = 136315650;
          *&__p[4] = "ADMBuilderParseBlockFormat.cpp";
          v120 = 1024;
          v121 = 387;
          v122 = 2080;
          v123 = v108;
          _os_log_impl(&dword_18F5DF000, v107, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems used in block format '%s'", __p, 0x1Cu);
          if (SBYTE3(v118) < 0)
          {
            operator delete(*buf);
          }
        }

        v40 = -66603;
LABEL_88:
        *(this + 158) = v40;
LABEL_89:
        v33 = 1;
        goto LABEL_90;
      }

LABEL_325:
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v99);
    v100 = CA::ADMBuilder::Impl::parse_float(this, __p);
    v102 = *&v100;
    if (!HIDWORD(v100))
    {
      v102 = 0.0;
    }

    *(v6 - 120) = v102;
    if (SBYTE3(v123) < 0)
    {
      operator delete(*__p);
    }

    v97 = 0;
    goto LABEL_278;
  }

  if (strcmp(__s1, "zoneExclusion"))
  {
    if (!strcmp(__s1, "screenRef"))
    {
      operator new();
    }

    if (!strcmp(__s1, "equation"))
    {
      operator new();
    }

    if (!strcmp(__s1, "order"))
    {
      operator new();
    }

    if (!strcmp(__s1, "degree"))
    {
      operator new();
    }

    if (!strcmp(__s1, "normalization"))
    {
      operator new();
    }

    if (!strcmp(__s1, "nfcRefDist"))
    {
      operator new();
    }

    goto LABEL_89;
  }

  v33 = 78;
LABEL_90:
  v41 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_18F7AFFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::parse_block_format_matrix(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v5 = *(*(*(*this + 128) - 16) + 152);
  if (!strcmp(__s1, "coefficient"))
  {
    LOBYTE(v37) = 0;
    v38 = 0;
    LOBYTE(v39) = 0;
    v40 = 0;
    LOBYTE(v41) = 0;
    v42 = 0;
    LOBYTE(v43) = 0;
    v44 = 0;
    LOBYTE(v45) = 0;
    v46 = 0;
    LOBYTE(v47) = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    if (!a3 || (v7 = *a3) == 0)
    {
LABEL_31:
      v20 = *(v5 - 192);
      v19 = *(v5 - 184);
      if (v20 >= v19)
      {
        v22 = *(v5 - 200);
        v23 = 0x8E38E38E38E38E39 * ((v20 - v22) >> 4);
        if (v23 + 1 > 0x1C71C71C71C71C7)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v24 = 0x8E38E38E38E38E39 * ((v19 - v22) >> 4);
        v25 = 2 * v24;
        if (2 * v24 <= v23 + 1)
        {
          v25 = v23 + 1;
        }

        if (v24 >= 0xE38E38E38E38E3)
        {
          v26 = 0x1C71C71C71C71C7;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          std::allocator<CA::ADMMatrixCoefficient>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 144 * v23;
        std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::construct[abi:ne200100]<CA::ADMMatrixCoefficient,CA::ADMMatrixCoefficient,void,0>((144 * v23), &v37);
        v21 = 144 * v23 + 144;
        v28 = *(v5 - 200);
        v29 = *(v5 - 192);
        v30 = v27 + v28 - v29;
        if (v29 != v28)
        {
          v31 = (v27 + v28 - v29);
          v32 = *(v5 - 200);
          do
          {
            std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::construct[abi:ne200100]<CA::ADMMatrixCoefficient,CA::ADMMatrixCoefficient,void,0>(v31, v32);
            v32 += 144;
            v31 += 9;
          }

          while (v32 != v29);
          do
          {
            std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::destroy[abi:ne200100]<CA::ADMMatrixCoefficient,void,0>(v28);
            v28 += 144;
          }

          while (v28 != v29);
        }

        v33 = *(v5 - 200);
        *(v5 - 200) = v30;
        *&v34 = v33;
        *(&v34 + 1) = *(v5 - 184);
        *(v5 - 192) = v21;
        while (v34 != v33)
        {
          *&v34 = v34 - 144;
          v35 = v34;
          std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::destroy[abi:ne200100]<CA::ADMMatrixCoefficient,void,0>(v34);
          v34 = v35;
        }

        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::construct[abi:ne200100]<CA::ADMMatrixCoefficient,CA::ADMMatrixCoefficient,void,0>(*(v5 - 192), &v37);
        v21 = v20 + 144;
        *(v5 - 192) = v20 + 144;
      }

      *(v5 - 192) = v21;
      operator new();
    }

    v8 = (a3 + 2);
    while (1)
    {
      v9 = *(v8 - 1);
      if (!strcmp(v7, "gainUnit"))
      {
        if ((v38 & 1) == 0)
        {
          v38 = 1;
          v37 = 1065353216;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, v9);
        v14 = CA::ADMBuilder::Impl::parse_gain_unit(this, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v14 >= 0x100u)
        {
          BYTE4(v37) = v14;
        }

        goto LABEL_30;
      }

      if (!strcmp(v7, "gain"))
      {
        if ((v38 & 1) == 0)
        {
          v38 = 1;
          v37 = 0;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, v9);
        v15 = CA::ADMBuilder::Impl::parse_float(this, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (HIDWORD(v15))
        {
          LODWORD(v37) = v15;
        }

        goto LABEL_30;
      }

      v10 = strcmp(v7, "gainVar");
      v11 = &v39;
      if (!v10)
      {
        goto LABEL_13;
      }

      if (!strcmp(v7, "phase"))
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, v9);
        v16 = CA::ADMBuilder::Impl::parse_float(this, &__p);
        v41 = v16;
        v42 = BYTE4(v16);
        goto LABEL_28;
      }

      v12 = strcmp(v7, "phaseVar");
      v11 = &v43;
      if (!v12)
      {
        goto LABEL_13;
      }

      if (!strcmp(v7, "delay"))
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, v9);
        v17 = CA::ADMBuilder::Impl::parse_float(this, &__p);
        v45 = v17;
        v46 = BYTE4(v17);
LABEL_28:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_30;
      }

      v13 = strcmp(v7, "delayVar");
      v11 = &v47;
      if (!v13)
      {
LABEL_13:
        std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(v11, v9);
      }

LABEL_30:
      v18 = *v8;
      v8 += 2;
      v7 = v18;
      if (!v18)
      {
        goto LABEL_31;
      }
    }
  }

  return 1;
}

void sub_18F7B0518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  CA::ADMMatrixCoefficient::~ADMMatrixCoefficient(&a17);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::construct[abi:ne200100]<CA::ADMMatrixCoefficient,CA::ADMMatrixCoefficient,void,0>(__n128 *a1, uint64_t a2)
{
  v2 = *a2;
  a1->n128_u32[2] = *(a2 + 8);
  a1->n128_u64[0] = v2;
  a1[1].n128_u8[0] = 0;
  a1[2].n128_u8[8] = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 16);
    a1[2].n128_u64[0] = *(a2 + 32);
    a1[1] = v3;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    a1[2].n128_u8[8] = 1;
  }

  v4 = *(a2 + 48);
  a1[3].n128_u8[8] = 0;
  a1[3].n128_u64[0] = v4;
  a1[5].n128_u8[0] = 0;
  if (*(a2 + 80) == 1)
  {
    v5 = *(a2 + 56);
    a1[4].n128_u64[1] = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    a1[5].n128_u8[0] = 1;
  }

  v6 = *(a2 + 88);
  a1[6].n128_u8[0] = 0;
  a1[5].n128_u64[1] = v6;
  a1[7].n128_u8[8] = 0;
  if (*(a2 + 120) == 1)
  {
    v7 = *(a2 + 96);
    a1[7].n128_u64[0] = *(a2 + 112);
    a1[6] = v7;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    a1[7].n128_u8[8] = 1;
  }

  result = *(a2 + 128);
  a1[8] = result;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  return result;
}

void CA::ADMMatrixCoefficient::~ADMMatrixCoefficient(CA::ADMMatrixCoefficient *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::allocator<CA::ADMMatrixCoefficient>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<CA::ADMMatrixCoefficient>>::destroy[abi:ne200100]<CA::ADMMatrixCoefficient,void,0>(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

uint64_t CA::ADMBuilder::Impl::parse_block_format_zone_exclusion(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(*(*(*this + 128) - 16) + 152);
  if (strcmp(__s1, "zone"))
  {
    goto LABEL_2;
  }

  if (!a3)
  {
    LOBYTE(v65) = 0;
    LOBYTE(v66) = 0;
    LOBYTE(v12) = 0;
    LOBYTE(v13) = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    LOBYTE(v14) = 0;
    LOBYTE(v60) = 0;
    v24 = 0;
    LOBYTE(v11) = 0;
LABEL_70:
    v25 = 0;
    LODWORD(v59) = v6;
    LODWORD(v57) = v6;
    goto LABEL_71;
  }

  v11 = *a3;
  if (!*a3)
  {
    LOBYTE(v65) = 0;
    LOBYTE(v66) = 0;
    LOBYTE(v12) = 0;
    LOBYTE(v13) = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    LOBYTE(v14) = 0;
    LOBYTE(v60) = 0;
    v24 = 0;
    goto LABEL_70;
  }

  LOBYTE(v65) = 0;
  LOBYTE(v66) = 0;
  LOBYTE(v12) = 0;
  LOBYTE(v13) = 0;
  v61 = 0;
  LOBYTE(v62) = 0;
  LOBYTE(v14) = 0;
  v53 = 0;
  v54 = 0;
  v15 = 0;
  v16 = 0;
  v17 = (a3 + 2);
  LODWORD(v63) = v6;
  LODWORD(v58) = v6;
  LODWORD(v55) = v6;
  LOBYTE(v56) = 0;
  LODWORD(v59) = v6;
  LOBYTE(v60) = 0;
  LODWORD(v57) = v6;
  while (1)
  {
    v18 = *(v17 - 1);
    v19 = strcmp(v11, "minX");
    if (!v19)
    {
      break;
    }

    v19 = strcmp(v11, "maxX");
    if (v19)
    {
      v19 = strcmp(v11, "minY");
      if (v19)
      {
        v19 = strcmp(v11, "maxY");
        if (v19)
        {
          v19 = strcmp(v11, "minZ");
          if (v19)
          {
            v19 = strcmp(v11, "maxZ");
            if (v19)
            {
              v19 = strcmp(v11, "minAzimuth");
              if (v19)
              {
                v19 = strcmp(v11, "maxAzimuth");
                if (v19)
                {
                  v19 = strcmp(v11, "minElevation");
                  if (v19)
                  {
                    v19 = strcmp(v11, "maxElevation");
                    if (!v19)
                    {
                      if ((v15 & 1) != 0 && v16 == 1)
                      {
                        goto LABEL_81;
                      }

                      std::string::basic_string[abi:ne200100]<0>(buf, v18);
                      v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
                      v20 = v19;
                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      v16 = 0;
                      v15 = 1;
                      v59 = v20 >> 8;
                      v60 = HIDWORD(v20);
                      v61 = v20;
                    }
                  }

                  else
                  {
                    if ((v15 & 1) != 0 && v16 == 1)
                    {
                      goto LABEL_81;
                    }

                    std::string::basic_string[abi:ne200100]<0>(buf, v18);
                    v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
                    v14 = v19;
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }

                    v16 = 0;
                    v15 = 1;
                    v55 = v14 >> 8;
                    v62 = HIDWORD(v14);
                  }
                }

                else
                {
                  if ((v15 & 1) != 0 && v16 == 1)
                  {
                    goto LABEL_81;
                  }

                  std::string::basic_string[abi:ne200100]<0>(buf, v18);
                  v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
                  v13 = v19;
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  v16 = 0;
                  v15 = 1;
                  v58 = v13 >> 8;
                  v65 = HIDWORD(v13);
                }
              }

              else
              {
                if ((v15 & 1) != 0 && v16 == 1)
                {
                  goto LABEL_81;
                }

                std::string::basic_string[abi:ne200100]<0>(buf, v18);
                v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
                v12 = v19;
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                v16 = 0;
                v15 = 1;
                v63 = v12 >> 8;
                v66 = HIDWORD(v12);
              }

              goto LABEL_51;
            }

            if ((v15 & 1) != 0 && !v16)
            {
              goto LABEL_81;
            }

            std::string::basic_string[abi:ne200100]<0>(buf, v18);
            v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
            v53 = v19;
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            if ((v15 & 1) != 0 && !v16)
            {
              goto LABEL_81;
            }

            std::string::basic_string[abi:ne200100]<0>(buf, v18);
            v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
            v22 = v19;
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v54 = v22;
            v56 = HIDWORD(v22);
            v57 = v22 >> 8;
          }
        }

        else
        {
          if ((v15 & 1) != 0 && !v16)
          {
            goto LABEL_81;
          }

          std::string::basic_string[abi:ne200100]<0>(buf, v18);
          v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
          v21 = v19;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v61 = v21;
          v59 = v21 >> 8;
          v60 = HIDWORD(v21);
        }
      }

      else
      {
        if ((v15 & 1) != 0 && !v16)
        {
          goto LABEL_81;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, v18);
        v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
        v14 = v19;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v55 = v14 >> 8;
        v62 = HIDWORD(v14);
      }
    }

    else
    {
      if ((v15 & 1) != 0 && !v16)
      {
        goto LABEL_81;
      }

      std::string::basic_string[abi:ne200100]<0>(buf, v18);
      v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
      v13 = v19;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v58 = v13 >> 8;
      v65 = HIDWORD(v13);
    }

LABEL_50:
    v16 = 1;
    v15 = 1;
LABEL_51:
    v23 = *v17;
    v17 += 2;
    v11 = v23;
    if (!v23)
    {
      v38 = 0;
      if (v15)
      {
        goto LABEL_84;
      }

LABEL_100:
      v25 = v53;
      LOBYTE(v11) = v54;
      v7 = v55;
      v24 = v56;
      v8 = v58;
      v9 = v63;
      goto LABEL_103;
    }
  }

  if ((v15 & 1) == 0 || v16)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, v18);
    v19 = CA::ADMBuilder::Impl::parse_float(this, buf);
    v12 = v19;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v63 = v12 >> 8;
    v66 = HIDWORD(v12);
    goto LABEL_50;
  }

LABEL_81:
  v38 = 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_84:
  if (*(v5 - 151) != 1)
  {
    *(v5 - 152) = v16 | (v15 << 8);
    goto LABEL_100;
  }

  v7 = v55;
  v8 = v58;
  v9 = v63;
  v39 = v15 != 1 || v16 != *(v5 - 152);
  v25 = v53;
  LOBYTE(v11) = v54;
  v24 = v56;
  v38 |= v39;
LABEL_103:
  if (*(this + 158) || !v38)
  {
LABEL_71:
    v26 = *(v5 - 104);
    v27 = *(v5 - 96);
    if (v26 >= v27)
    {
      v29 = v5;
      v30 = v7;
      v64 = v29;
      v33 = *(v29 - 112);
      v32 = v29 - 112;
      v31 = v33;
      v34 = 0x8E38E38E38E38E39 * ((v26 - v33) >> 3);
      v35 = v34 + 1;
      if (v34 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v36 = 0x8E38E38E38E38E39 * ((v27 - v31) >> 3);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x1C71C71C71C71C7)
      {
        v37 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        std::allocator<CA::ADMZone>::allocate_at_least[abi:ne200100](v37);
      }

      v40 = 72 * v34;
      *(v40 + 4) = v66;
      *v40 = v12 | (v9 << 8);
      *(v40 + 12) = v65;
      *(v40 + 8) = v13 | (v8 << 8);
      *(v40 + 20) = v62;
      *(v40 + 16) = v14 | (v30 << 8);
      *(v40 + 28) = v60;
      *(v40 + 24) = v61 | (v59 << 8);
      *(v40 + 36) = v24;
      *(v40 + 32) = v11 | (v57 << 8);
      *(v40 + 44) = BYTE4(v25);
      *(v40 + 40) = v25;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      v28 = 72 * v34 + 72;
      v67 = (v40 + 72);
      *(v40 + 48) = 0;
      v5 = v64;
      v42 = *(v64 - 112);
      v41 = *(v64 - 104);
      *buf = v32;
      *&buf[8] = &v69;
      *&buf[16] = &__p;
      v43 = v40 + v42 - v41;
      __p.__r_.__value_.__r.__words[0] = v43;
      v69 = v43;
      if (v42 == v41)
      {
        buf[24] = 1;
      }

      else
      {
        v44 = v42;
        v45 = v40 + v42 - v41;
        do
        {
          v46 = *v44;
          v47 = v44[1];
          *(v45 + 29) = *(v44 + 29);
          *v45 = v46;
          *(v45 + 16) = v47;
          v48 = v44[3];
          *(v45 + 64) = *(v44 + 8);
          *(v45 + 48) = v48;
          *(v44 + 7) = 0;
          *(v44 + 8) = 0;
          *(v44 + 6) = 0;
          v44 = (v44 + 72);
          v45 += 72;
        }

        while (v44 != v41);
        __p.__r_.__value_.__r.__words[0] = v45;
        buf[24] = 1;
        do
        {
          if (*(v42 + 71) < 0)
          {
            operator delete(*(v42 + 6));
          }

          v42 = (v42 + 72);
        }

        while (v42 != v41);
      }

      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CA::ADMZone>,CA::ADMZone*>>::~__exception_guard_exceptions[abi:ne200100](buf);
      v49 = *(v64 - 112);
      *(v64 - 112) = v43;
      *(v64 - 104) = v67;
      if (v49)
      {
        operator delete(v49);
      }
    }

    else
    {
      *v26 = v12 | (v9 << 8);
      *(v26 + 4) = v66;
      *(v26 + 8) = v13 | (v8 << 8);
      *(v26 + 12) = v65;
      *(v26 + 16) = v14 | (v7 << 8);
      *(v26 + 20) = v62;
      *(v26 + 24) = v61 | (v59 << 8);
      *(v26 + 28) = v60;
      *(v26 + 32) = v11 | (v57 << 8);
      *(v26 + 36) = v24;
      *(v26 + 40) = v25;
      *(v26 + 44) = BYTE4(v25);
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      v28 = v26 + 72;
      *(v26 + 48) = 0;
    }

    *(v5 - 104) = v28;
    operator new();
  }

  v51 = CA::ADMBuilder::Impl::log(v19);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, v5 - 480, "");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "ADMBuilderParseBlockFormat.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 574;
    *&buf[18] = 2080;
    *&buf[20] = p_p;
    _os_log_impl(&dword_18F5DF000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems used in block format '%s'", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *(this + 158) = -66603;
LABEL_2:
  result = 1;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}