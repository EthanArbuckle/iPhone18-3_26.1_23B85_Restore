atomic_ullong *WebKit::MediaPlayerPrivateRemote::didReceiveMessage(WebKit::MediaPlayerPrivateRemote *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v223 = *MEMORY[0x1E69E9840];
  v6 = (this + 48);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x147:
      WebKit::MediaPlayerPrivateRemote::activeSourceBuffersChanged(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x148:
      v17 = *(a3 + 1);
      v57 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v58 = v57 - *a3;
      v20 = v17 >= v58;
      v59 = v17 - v58;
      if (!v20 || v59 <= 7)
      {
        goto LABEL_415;
      }

      *(a3 + 2) = v57 + 1;
      if (!v57)
      {
        goto LABEL_417;
      }

      v61 = *v57;
      IPC::Decoder::decode<WTF::MediaTime>(a3, &v206);
      if ((v207 & 1) == 0)
      {
        goto LABEL_321;
      }

      IPC::Decoder::decode<WTF::MediaTime>(a3, &v210);
      if ((v211 & 1) == 0)
      {
        goto LABEL_321;
      }

      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v199);
      if ((v199[2] & 1) == 0)
      {
        v187 = *a3;
        v188 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v189 = *(a3 + 3);
        if (!v189)
        {
          goto LABEL_321;
        }

        if (!v188)
        {
          goto LABEL_321;
        }

        (*(*v189 + 16))(v189, v187);
        if ((v199[2] & 1) == 0)
        {
          goto LABEL_321;
        }
      }

      if ((v207 & 1) == 0 || (v211 & 1) == 0)
      {
        goto LABEL_334;
      }

      *buf = v61;
      *&buf[8] = v206;
      *&buf[24] = v210;
      *&buf[40] = *v199;
      buf[56] = 1;
      WebKit::MediaPlayerPrivateRemote::addDataCue(this, v61, &buf[8], &buf[24], v199[0], v199[1]);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x149:
      v17 = *(a3 + 1);
      v49 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v50 = v49 - *a3;
      v20 = v17 >= v50;
      v51 = v17 - v50;
      if (!v20 || v51 <= 7)
      {
        goto LABEL_415;
      }

      *(a3 + 2) = v49 + 1;
      if (!v49)
      {
        goto LABEL_417;
      }

      v53 = *v49;
      IPC::Decoder::decode<WTF::MediaTime>(a3, &v206);
      if ((v207 & 1) == 0)
      {
        goto LABEL_321;
      }

      IPC::Decoder::decode<WTF::MediaTime>(a3, &v210);
      if ((v211 & 1) == 0)
      {
        goto LABEL_321;
      }

      IPC::Decoder::decode<WebCore::SerializedPlatformDataCueValue>(v199, a3);
      if (LOBYTE(v199[7]) != 1)
      {
        goto LABEL_321;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v208);
      if ((v209 & 1) == 0)
      {
        v54 = *a3;
        v182 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v183 = *(a3 + 3);
        if (!v183 || !v182 || ((*(*v183 + 16))(v183, v54), (v209 & 1) == 0))
        {
          buf[0] = 0;
          buf[104] = 0;
          if ((v199[7] & 1) != 0 && LOBYTE(v199[6]) == 1)
          {
            WebCore::SerializedPlatformDataCueValue::Data::~Data(v199, v54);
          }

          goto LABEL_321;
        }
      }

      if ((v207 & 1) == 0 || (v211 & 1) == 0 || (v199[7] & 1) == 0)
      {
        goto LABEL_334;
      }

      *buf = v53;
      *&buf[8] = v206;
      *&buf[24] = v210;
      buf[40] = 0;
      buf[88] = 0;
      if (LOBYTE(v199[6]) != 1)
      {
        *&buf[96] = v208;
        buf[104] = 1;
        goto LABEL_284;
      }

      v55 = *&v199[2];
      *&buf[40] = *v199;
      memset(v199, 0, 32);
      *&buf[56] = v55;
      buf[72] = 0;
      buf[80] = -1;
      if (LOBYTE(v199[5]))
      {
        if (LOBYTE(v199[5]) == 255)
        {
          goto LABEL_283;
        }

        v56 = v199[4];
        v199[4] = 0;
      }

      else
      {
        v56 = 0;
      }

      *&buf[72] = v56;
      buf[80] = v199[5];
LABEL_283:
      buf[88] = 1;
      *&buf[96] = v208;
      buf[104] = 1;
      WebCore::SerializedPlatformDataCueValue::Data::~Data(v199, v54);
LABEL_284:
      WebKit::MediaPlayerPrivateRemote::addDataCueWithType(this, v53, &buf[8], &buf[24], &buf[40], &buf[96]);
      if (buf[104])
      {
        v114 = *&buf[96];
        *&buf[96] = 0;
        if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v114, v27);
        }

        if (buf[88] == 1)
        {
          goto LABEL_289;
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x14A:
      IPC::Decoder::decode<std::tuple<unsigned long long,WebCore::GenericCueData>>(buf, a3);
      if (v217 == 1)
      {
        WebKit::MediaPlayerPrivateRemote::addGenericCue(this, *buf, &buf[8]);
        goto LABEL_176;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x14B:
      IPC::Decoder::decode<WebKit::AudioTrackPrivateRemoteConfiguration>(buf, a3);
      if ((buf[72] & 1) == 0)
      {
        goto LABEL_321;
      }

      v199[0] = *buf;
      *&v199[1] = *&buf[8];
      *&v199[3] = *&buf[24];
      LODWORD(v199[5]) = *&buf[40];
      WORD2(v199[5]) = *&buf[44];
      v199[6] = *&buf[48];
      *&v199[7] = *&buf[56];
      LOBYTE(v199[9]) = 1;
      WebKit::MediaPlayerPrivateRemote::addRemoteAudioTrack(this, v199);
      if (v199[9])
      {
        goto LABEL_87;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x14C:
      IPC::Decoder::decode<WebKit::TextTrackPrivateRemoteConfiguration>(buf, a3);
      if ((buf[64] & 1) == 0)
      {
        goto LABEL_321;
      }

      v199[0] = *buf;
      *&v199[1] = *&buf[8];
      v199[3] = *&buf[24];
      *&v199[4] = *&buf[32];
      *(&v199[5] + 4) = *&buf[44];
      LOBYTE(v199[8]) = 1;
      WebKit::MediaPlayerPrivateRemote::addRemoteTextTrack(this, v199);
      if (v199[8])
      {
        v47 = v199[3];
        v199[3] = 0;
        if (!v47)
        {
          goto LABEL_164;
        }

        goto LABEL_162;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x14D:
      IPC::Decoder::decode<WebKit::VideoTrackPrivateRemoteConfiguration>(buf, a3);
      if (BYTE8(v216) != 1)
      {
        goto LABEL_321;
      }

      v199[0] = *buf;
      *&v199[1] = *&buf[8];
      *&v199[3] = *&buf[24];
      LODWORD(v199[5]) = *&buf[40];
      WORD2(v199[5]) = *&buf[44];
      v199[6] = *&buf[48];
      *(&v199[12] + 5) = *&buf[101];
      *&v199[11] = *&buf[88];
      *&v199[9] = *&buf[72];
      *&v199[7] = *&buf[56];
      v200 = 0;
      v202 = 0;
      if (v216 == 1)
      {
        v200 = buf[112];
        v201 = *&buf[120];
        v202 = 1;
      }

      v203 = 1;
      WebKit::MediaPlayerPrivateRemote::addRemoteVideoTrack(this, v199);
      if (v203)
      {
        if (v202 == 1)
        {
          v46 = v201;
          v201 = 0;
          if (v46)
          {
            if (*v46 == 1)
            {
              goto LABEL_335;
            }

            --*v46;
          }
        }

        goto LABEL_87;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x14E:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerState>>(buf, a3);
      if (LOBYTE(v221[0]) == 1)
      {
        WebKit::MediaPlayerPrivateRemote::characteristicChanged(this, buf);
        goto LABEL_193;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x151:
      IPC::Decoder::decode<std::tuple<WebKit::MediaTimeUpdateData>>(buf, a3);
      if (buf[32] == 1)
      {
        WebKit::MediaPlayerPrivateRemote::currentTimeChanged(this, buf);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x152:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerState>>(buf, a3);
      if (LOBYTE(v221[0]) == 1)
      {
        WebKit::MediaPlayerPrivateRemote::durationChanged(this, buf);
        goto LABEL_193;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x153:
      v88 = IPC::Decoder::decode<std::tuple<long long>>(a3);
      if (v89)
      {
        WebKit::MediaPlayerPrivateRemote::engineFailedToLoad(this, v88);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x154:
      WebKit::MediaPlayerPrivateRemote::firstVideoFrameAvailable(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x159:
      v34 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v34 & 0x100) != 0)
      {
        WebKit::MediaPlayerPrivateRemote::muteChanged(this, v34 & 1);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x15A:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerState>>(buf, a3);
      if (LOBYTE(v221[0]) == 1)
      {
        WebKit::MediaPlayerPrivateRemote::networkStateChanged(this, buf);
        goto LABEL_193;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x15B:
      v17 = *(a3 + 1);
      v62 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v63 = v62 - *a3;
      v20 = v17 >= v63;
      v64 = v17 - v63;
      if (!v20 || v64 <= 7)
      {
        goto LABEL_415;
      }

      *(a3 + 2) = v62 + 1;
      if (!v62)
      {
        goto LABEL_417;
      }

      v66 = *v62;
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        v184 = *a3;
        v185 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v186 = *(a3 + 3);
        if (!v186)
        {
          goto LABEL_321;
        }

        if (!v185)
        {
          goto LABEL_321;
        }

        (*(*v186 + 16))(v186, v184);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_321;
        }
      }

      WebKit::MediaPlayerPrivateRemote::parseWebVTTCueData(this, v66, *buf, *&buf[8]);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x15C:
      v67 = *(a3 + 1);
      v68 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v69 = v68 - *a3;
      v20 = v67 >= v69;
      v70 = v67 - v69;
      if (!v20 || v70 <= 7)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v190 = *(a3 + 3);
        if (v190)
        {
          if (v67)
          {
            (*(*v190 + 16))(v190);
            v67 = *(a3 + 1);
          }
        }

        else
        {
          v67 = 0;
        }

        goto LABEL_404;
      }

      *(a3 + 2) = v68 + 1;
      if (!v68)
      {
LABEL_404:
        *a3 = 0;
        *(a3 + 1) = 0;
        v191 = *(a3 + 3);
        if (v191 && v67)
        {
          (*(*v191 + 16))(v191);
        }

        goto LABEL_344;
      }

      v72 = *v68;
      IPC::ArgumentCoder<WebCore::ISOWebVTTCue,void>::decode(a3, v199);
      if ((v200 & 1) == 0)
      {
        v152 = *a3;
        v153 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v154 = *(a3 + 3);
        if (!v154 || !v153 || ((*(*v154 + 16))(v154, v152), (v200 & 1) == 0))
        {
LABEL_344:
          buf[0] = 0;
          buf[120] = 0;
          goto LABEL_345;
        }
      }

      *buf = v72;
      WebCore::ISOWebVTTCue::ISOWebVTTCue();
      buf[120] = 1;
      if ((v200 & 1) == 0)
      {
        goto LABEL_143;
      }

      MEMORY[0x19EB042B0](v199);
      if (buf[120])
      {
        goto LABEL_143;
      }

LABEL_345:
      v155 = *a3;
      v156 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v157 = *(a3 + 3);
      if (!v157)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      if (!v156)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      (*(*v157 + 16))(v157, v155);
      if ((buf[120] & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

LABEL_143:
      WebKit::MediaPlayerPrivateRemote::parseWebVTTCueDataStruct(this, *buf, &buf[8]);
      if (buf[120])
      {
        MEMORY[0x19EB042B0](&buf[8]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x15D:
      IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[16] & 1) != 0 || (v149 = *a3, v150 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v151 = *(a3 + 3)) != 0) && v150 && ((*(*v151 + 16))(v151, v149), (buf[16]))
      {
        WebKit::MediaPlayerPrivateRemote::parseWebVTTFileHeader(this, *buf, &buf[8]);
        if (buf[16])
        {
          v12 = *&buf[8];
          *&buf[8] = 0;
          if (v12)
          {
            goto LABEL_234;
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x15E:
      v17 = *(a3 + 1);
      v84 = *(a3 + 2);
      if (v17 <= &v84[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v196 = *(a3 + 3);
        if (v196)
        {
          if (v17)
          {
            (*(*v196 + 16))(v196);
            v17 = *(a3 + 1);
          }
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_415;
      }

      *(a3 + 2) = v84 + 1;
      if (!v84)
      {
        goto LABEL_415;
      }

      v85 = *v84;
      if (v85 >= 2)
      {
        goto LABEL_417;
      }

      IPC::Decoder::decode<WebKit::MediaTimeUpdateData>(v199, a3);
      if ((v199[4] & 1) == 0)
      {
        goto LABEL_321;
      }

      buf[0] = v85;
      *&buf[8] = *v199;
      *&buf[24] = *&v199[2];
      buf[40] = 1;
      WebKit::MediaPlayerPrivateRemote::playbackStateChanged(this, v85 & 1, &buf[8]);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x160:
      v14 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v15 & 1) == 0)
      {
        goto LABEL_321;
      }

      v16 = *&v14;
      IPC::Decoder::decode<WebKit::MediaTimeUpdateData>(v199, a3);
      if ((v199[4] & 1) == 0)
      {
        goto LABEL_321;
      }

      *buf = v16;
      *&buf[8] = *v199;
      *&buf[24] = *&v199[2];
      buf[40] = 1;
      WebKit::MediaPlayerPrivateRemote::rateChanged(this, &buf[8], v16);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x161:
      IPC::Decoder::decode<WebKit::RemoteMediaPlayerState>(v199, a3);
      if (v205 == 1)
      {
        v43 = IPC::Decoder::decode<WTFLogLevel>(a3);
        if ((v43 & 0x100) != 0)
        {
          if ((v205 & 1) == 0)
          {
            goto LABEL_334;
          }

          v107 = v43;
          std::__tuple_leaf<0ul,WebKit::RemoteMediaPlayerState,false>::__tuple_leaf[abi:sn200100]<WebKit::RemoteMediaPlayerState,0>(buf, v199);
          LOBYTE(v221[0]) = v107;
          v45 = 1;
        }

        else
        {
          v45 = 0;
          buf[0] = 0;
        }

        BYTE8(v221[0]) = v45;
        if (v205)
        {
          if (v200 == 1)
          {
            v108 = v199[12];
            if (v199[12])
            {
              v199[12] = 0;
              LODWORD(v199[13]) = 0;
              WTF::fastFree(v108, v44);
            }
          }

          v109 = v199[11];
          v199[11] = 0;
          if (v109 && atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v109, v44);
          }

          v110 = v199[10];
          v199[10] = 0;
          if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v110, v44);
          }
        }
      }

      else
      {
        buf[0] = 0;
        BYTE8(v221[0]) = 0;
      }

      if (BYTE8(v221[0]) & 1) != 0 || (v158 = *a3, v159 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v160 = *(a3 + 3)) != 0) && v159 && ((*(*v160 + 16))(v160, v158), (BYTE8(v221[0])))
      {
        WebKit::MediaPlayerPrivateRemote::readyStateChanged(this, buf, v221[0]);
        if (BYTE8(v221[0]))
        {
          goto LABEL_194;
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x162:
      v17 = *(a3 + 1);
      v92 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v93 = v92 - *a3;
      v20 = v17 >= v93;
      v94 = v17 - v93;
      if (!v20 || v94 <= 7)
      {
        goto LABEL_415;
      }

      *(a3 + 2) = v92 + 1;
      if (!v92)
      {
        goto LABEL_417;
      }

      v96 = *v92;
      IPC::Decoder::decode<WebKit::AudioTrackPrivateRemoteConfiguration>(v199, a3);
      if ((v199[9] & 1) == 0)
      {
        goto LABEL_321;
      }

      *buf = v96;
      *&buf[8] = v199[0];
      *&buf[16] = *&v199[1];
      *&buf[32] = *&v199[3];
      *&buf[48] = v199[5];
      *&buf[52] = WORD2(v199[5]);
      *&buf[56] = v199[6];
      *&buf[64] = *&v199[7];
      buf[80] = 1;
      WebKit::MediaPlayerPrivateRemote::remoteAudioTrackConfigurationChanged(this, v96, &buf[8]);
      if (buf[80])
      {
        goto LABEL_210;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x163:
      v17 = *(a3 + 1);
      v18 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 - *a3;
      v20 = v17 >= v19;
      v21 = v17 - v19;
      if (!v20 || v21 <= 7)
      {
        goto LABEL_415;
      }

      *(a3 + 2) = v18 + 1;
      if (!v18)
      {
        goto LABEL_417;
      }

      v23 = *v18;
      IPC::Decoder::decode<WebKit::TextTrackPrivateRemoteConfiguration>(v199, a3);
      if ((v199[8] & 1) == 0)
      {
        goto LABEL_321;
      }

      *buf = v23;
      *&buf[8] = v199[0];
      *&buf[16] = *&v199[1];
      *&buf[32] = v199[3];
      *&buf[40] = *&v199[4];
      *&buf[52] = *(&v199[5] + 4);
      buf[72] = 1;
      WebKit::MediaPlayerPrivateRemote::remoteTextTrackConfigurationChanged(this, v23, &buf[8]);
      if (buf[72])
      {
        v24 = *&buf[32];
        *&buf[32] = 0;
        if (!v24)
        {
          goto LABEL_213;
        }

        goto LABEL_211;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x164:
      v17 = *(a3 + 1);
      v37 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v38 = v37 - *a3;
      v20 = v17 >= v38;
      v39 = v17 - v38;
      if (!v20 || v39 <= 7)
      {
LABEL_415:
        *a3 = 0;
        *(a3 + 1) = 0;
        v197 = *(a3 + 3);
        if (v197)
        {
          if (v17)
          {
            (*(*v197 + 16))(v197);
            v17 = *(a3 + 1);
          }
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_417;
      }

      *(a3 + 2) = v37 + 1;
      if (!v37)
      {
LABEL_417:
        *a3 = 0;
        *(a3 + 1) = 0;
        v198 = *(a3 + 3);
        if (v198 && v17)
        {
          (*(*v198 + 16))(v198);
        }

        goto LABEL_321;
      }

      v41 = *v37;
      IPC::Decoder::decode<WebKit::VideoTrackPrivateRemoteConfiguration>(v199, a3);
      if (v203 != 1)
      {
        goto LABEL_321;
      }

      *buf = v41;
      *&buf[8] = v199[0];
      *&buf[16] = *&v199[1];
      *&buf[32] = *&v199[3];
      *&buf[48] = v199[5];
      *&buf[52] = WORD2(v199[5]);
      *&buf[56] = v199[6];
      *&buf[109] = *(&v199[12] + 5);
      *&buf[80] = *&v199[9];
      *&buf[96] = *&v199[11];
      *&buf[64] = *&v199[7];
      buf[120] = 0;
      BYTE8(v216) = 0;
      if (v202 == 1)
      {
        buf[120] = v200;
        *&v216 = v201;
        BYTE8(v216) = 1;
      }

      LOBYTE(v217) = 1;
      WebKit::MediaPlayerPrivateRemote::remoteVideoTrackConfigurationChanged(this, v41, &buf[8]);
      if (v217)
      {
        if (BYTE8(v216) == 1)
        {
          v42 = v216;
          *&v216 = 0;
          if (v42)
          {
            if (*v42 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v42;
            }
          }
        }

LABEL_210:
        v24 = *&buf[56];
        *&buf[56] = 0;
        if (v24)
        {
LABEL_211:
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v10);
          }
        }

LABEL_213:
        v97 = *&buf[24];
        *&buf[24] = 0;
        if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v97, v10);
        }

        v12 = *&buf[16];
        *&buf[16] = 0;
        if (v12)
        {
          goto LABEL_234;
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x165:
      IPC::Decoder::decode<std::tuple<unsigned long long,WTF::MediaTime,WTF::MediaTime,WebCore::SerializedPlatformDataCueValue>>(buf, a3);
      if (buf[96] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      WebKit::MediaPlayerPrivateRemote::removeDataCue(this, *buf, &buf[8], &buf[24], &buf[40]);
      goto LABEL_171;
    case 0x166:
      IPC::Decoder::decode<std::tuple<unsigned long long,WebCore::GenericCueData>>(buf, a3);
      if (v217 != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      WebKit::MediaPlayerPrivateRemote::removeGenericCue(this, *buf, &buf[8]);
      goto LABEL_176;
    case 0x167:
      v25 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v26)
      {
        WebKit::MediaPlayerPrivateRemote::removeRemoteAudioTrack(this, v25);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x168:
      v100 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v101)
      {
        WebKit::MediaPlayerPrivateRemote::removeRemoteTextTrack(this, v100);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x169:
      v98 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v99)
      {
        WebKit::MediaPlayerPrivateRemote::removeRemoteVideoTrack(this, v98);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x16A:
      v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v33 & 1) == 0)
      {
        goto LABEL_321;
      }

      WebKit::MediaPlayerPrivateRemote::removeResource(this, v32);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x16B:
      WebKit::MediaPlayerPrivateRemote::renderingModeChanged(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x16D:
      v73 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v74 & 1) == 0 || (v75 = v73, IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v199), (v204 & 1) == 0) && ((v164 = *a3, v165 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v166 = *(a3 + 3)) == 0) || !v165 || ((*(*v166 + 16))(v166, v164), (v204 & 1) == 0)))
      {
        buf[0] = 0;
        v220 = 0;
        goto LABEL_359;
      }

      v76 = *(a3 + 1);
      v77 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v78 = v77 - *a3;
      v20 = v76 >= v78;
      v79 = v76 - v78;
      if (v20 && v79 > 3)
      {
        *(a3 + 2) = v77 + 1;
        if (v77)
        {
          v81 = *v77;
          *buf = v75;
          std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(&buf[8], v199);
          v219 = v81;
          v82 = 1;
          goto LABEL_154;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v192 = *(a3 + 3);
        if (v192)
        {
          if (v76)
          {
            (*(*v192 + 16))(v192);
            v76 = *(a3 + 1);
          }
        }

        else
        {
          v76 = 0;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v193 = *(a3 + 3);
      if (v193 && v76)
      {
        (*(*v193 + 16))(v193);
      }

      v82 = 0;
      buf[0] = 0;
LABEL_154:
      v220 = v82;
      if (v204)
      {
        WebCore::ResourceRequest::~ResourceRequest(v199);
        v82 = v220;
      }

      if (v82)
      {
        goto LABEL_157;
      }

LABEL_359:
      v167 = *a3;
      v168 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v169 = *(a3 + 3);
      if (!v169)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      if (!v168)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      (*(*v169 + 16))(v169, v167);
      if ((v220 & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

LABEL_157:
      WebKit::MediaPlayerPrivateRemote::requestResource(this, *buf);
      if (v220)
      {
        WebCore::ResourceRequest::~ResourceRequest(&buf[8]);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x16E:
      WebKit::MediaPlayerPrivateRemote::resourceNotSupported(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x16F:
      IPC::Decoder::decode<std::tuple<WebKit::MediaTimeUpdateData>>(buf, a3);
      if (buf[32] == 1)
      {
        WebKit::MediaPlayerPrivateRemote::seeked(this, buf);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x170:
      IPC::Decoder::decode<std::tuple<WTF::URL>>(a3, buf);
      if (buf[40] != 1)
      {
        goto LABEL_232;
      }

      v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v10 & 1) == 0)
      {
        goto LABEL_232;
      }

      v29 = v28;
      while (1)
      {
        v30 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v31 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v31 == v30)
        {
          goto LABEL_229;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_229:
      v104 = WTF::fastMalloc(0x18);
      *v104 = &unk_1F10EEFD0;
      *(v104 + 1) = v29;
      *(v104 + 2) = a2;
      v199[0] = v104;
      if (buf[40])
      {
        WebKit::MediaPlayerPrivateRemote::sendH2Ping(this, buf, v199);
        v105 = v199[0];
        v199[0] = 0;
        if (v105)
        {
          (*(*v105 + 8))(v105);
        }

        goto LABEL_232;
      }

LABEL_334:
      __break(1u);
LABEL_335:
      WTF::JSONImpl::Value::operator delete();
LABEL_87:
      v47 = v199[6];
      v199[6] = 0;
      if (v47)
      {
LABEL_162:
        if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v10);
        }
      }

LABEL_164:
      v83 = v199[2];
      v199[2] = 0;
      if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v83, v10);
      }

      v12 = v199[1];
      v199[1] = 0;
      if (v12)
      {
        goto LABEL_234;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x172:
      v86 = IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(a3);
      if (v87)
      {
        WebKit::MediaPlayerPrivateRemote::sizeChanged(this, *&v86, *(&v86 + 1));
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x173:
      IPC::Decoder::decode<WebKit::RemoteMediaPlayerState>(v199, a3);
      if (v205 == 1)
      {
        IPC::Decoder::decode<WebKit::MediaTimeUpdateData>(&v210, a3);
        if (v212)
        {
          if ((v205 & 1) == 0)
          {
            goto LABEL_334;
          }

          std::__tuple_leaf<0ul,WebKit::RemoteMediaPlayerState,false>::__tuple_leaf[abi:sn200100]<WebKit::RemoteMediaPlayerState,0>(buf, v199);
          v221[0] = v210;
          v221[1] = v211;
          v103 = 1;
        }

        else
        {
          v103 = 0;
          buf[0] = 0;
        }

        v222 = v103;
        if (v205)
        {
          if (v200 == 1)
          {
            v111 = v199[12];
            if (v199[12])
            {
              v199[12] = 0;
              LODWORD(v199[13]) = 0;
              WTF::fastFree(v111, v102);
            }
          }

          v112 = v199[11];
          v199[11] = 0;
          if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v112, v102);
          }

          v113 = v199[10];
          v199[10] = 0;
          if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v113, v102);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v222 = 0;
      }

      if ((v222 & 1) == 0)
      {
        v161 = *a3;
        v162 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v163 = *(a3 + 3);
        if (!v163)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        if (!v162)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        (*(*v163 + 16))(v163, v161);
        if ((v222 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }
      }

      WebKit::MediaPlayerPrivateRemote::timeChanged(this, buf, v221);
      if ((v222 & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

LABEL_194:
      if (buf[112] == 1)
      {
        v90 = *&buf[96];
        if (*&buf[96])
        {
          *&buf[96] = 0;
          *&buf[104] = 0;
          WTF::fastFree(v90, v10);
        }
      }

      v91 = *&buf[88];
      *&buf[88] = 0;
      if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v91, v10);
      }

      v12 = *&buf[80];
      *&buf[80] = 0;
      if (v12)
      {
        goto LABEL_234;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x174:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerState>>(buf, a3);
      if (LOBYTE(v221[0]) == 1)
      {
        WebKit::MediaPlayerPrivateRemote::updateCachedState(this, buf);
LABEL_193:
        if (v221[0])
        {
          goto LABEL_194;
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x175:
      IPC::Decoder::decode<std::tuple<unsigned long long,WTF::MediaTime,WTF::MediaTime,WebCore::SerializedPlatformDataCueValue>>(buf, a3);
      if (buf[96] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      WebKit::MediaPlayerPrivateRemote::updateDataCue(this, *buf, &buf[8], &buf[24], &buf[40]);
LABEL_171:
      if ((buf[96] & 1) != 0 && buf[88] == 1)
      {
LABEL_289:
        WebCore::SerializedPlatformDataCueValue::Data::~Data(&buf[40], v27);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x176:
      IPC::Decoder::decode<std::tuple<unsigned long long,WebCore::GenericCueData>>(buf, a3);
      if (v217 != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
      }

      WebKit::MediaPlayerPrivateRemote::updateGenericCue(this, *buf, &buf[8]);
LABEL_176:
      if (v217)
      {
        WebCore::GenericCueData::~GenericCueData(&buf[8], v13);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x177:
      IPC::ArgumentCoder<WebCore::VideoPlaybackQualityMetrics,void>::decode(a3, buf);
      if (buf[32])
      {
        goto LABEL_21;
      }

      v146 = *a3;
      v147 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v148 = *(a3 + 3);
      if (!v148 || !v147)
      {
        goto LABEL_338;
      }

      (*(*v148 + 16))(v148, v146);
      if ((buf[32] & 1) == 0)
      {
        goto LABEL_390;
      }

LABEL_21:
      *v199 = *buf;
      *&v199[2] = *&buf[16];
      LOBYTE(v199[4]) = 1;
      WebKit::MediaPlayerPrivateRemote::updatePlaybackQualityMetrics(this, v199);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x178:
      v35 = IPC::Decoder::decode<std::tuple<double>>(a3);
      if (v36)
      {
        WebKit::MediaPlayerPrivateRemote::volumeChanged(this, *&v35);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    case 0x179:
      v48 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v48 & 0x100) != 0)
      {
        WebKit::MediaPlayerPrivateRemote::waitingForKeyChanged(this, v48 & 1);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
    default:
      if (*(a3 + 25) > 0x156u)
      {
        if (*(a3 + 25) > 0x15Eu)
        {
          switch(v9)
          {
            case 0x15Fu:
              IPC::ArgumentCoder<WebCore::VideoFrameMetadata,void>::decode(a3, v199);
              if (v199[12] & 1) != 0 || (v170 = *a3, v171 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v172 = *(a3 + 3)) != 0) && v171 && ((*(*v172 + 16))(v172, v170), (v199[12]))
              {
                IPC::Decoder::decode<WebKit::RemoteVideoFrameProxyProperties>(&v210, a3);
                if (v214 == 1)
                {
                  if ((v199[12] & 1) == 0)
                  {
                    goto LABEL_334;
                  }

                  *&buf[32] = *&v199[4];
                  *&buf[48] = *&v199[6];
                  *&buf[64] = *&v199[8];
                  *&buf[80] = *&v199[10];
                  *buf = *v199;
                  *&buf[16] = *&v199[2];
                  v217 = v213;
                  *&buf[112] = v211;
                  v216 = v212;
                  *&buf[96] = v210;
                  v218 = 1;
                  WebKit::MediaPlayerPrivateRemote::pushVideoFrameMetadata(this, buf, &buf[96]);
                  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
                }
              }

              goto LABEL_321;
            case 0x16Cu:
              IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
              if (v133)
              {
                WebKit::MediaPlayerPrivateRemote::reportGPUMemoryFootprint(this);
              }

              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
            case 0x171u:
              IPC::ArgumentCoder<WebCore::MessageForTesting,void>::decode(a3, buf);
              if (buf[16])
              {
                *v199 = *buf;
                LOBYTE(v199[2]) = 1;
                WebKit::MediaPlayerPrivateRemote::sendInternalMessage(this, v199);
                if (v199[2])
                {
                  v11 = v199[1];
                  v199[1] = 0;
                  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v11, v10);
                  }

                  v12 = v199[0];
                  v199[0] = 0;
                  if (v12)
                  {
LABEL_234:
                    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v12, v10);
                    }

                    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
                  }
                }

                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
              }

              v173 = *a3;
              v174 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v175 = *(a3 + 3);
              if (!v175 || !v174)
              {
LABEL_338:
                *a3 = 0;
                *(a3 + 1) = 0;
                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
              }

              (*(*v175 + 16))(v175, v173);
LABEL_390:
              v135 = *a3;
              v136 = *(a3 + 1);
              v137 = *(a3 + 3);
              *a3 = 0;
              *(a3 + 1) = 0;
              if (!v137)
              {
                return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
              }

LABEL_391:
              if (v136)
              {
                (*(*v137 + 16))(v137, v135);
              }

              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
          }

LABEL_320:
          v134 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v9 >= 0x107F)
            {
              v143 = 4223;
            }

            else
            {
              v143 = v9;
            }

            v144 = (&IPC::Detail::messageDescriptions)[3 * v143];
            v145 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v144;
            *&buf[12] = 2048;
            *&buf[14] = v145;
            _os_log_error_impl(&dword_19D52D000, v134, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
          }

LABEL_321:
          v135 = *a3;
          v136 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v137 = *(a3 + 3);
          if (!v137)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
          }

          goto LABEL_391;
        }

        if (v9 != 343)
        {
          if (v9 == 344)
          {
            IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a3, buf);
            if (buf[16] == 1)
            {
              WebKit::MediaPlayerPrivateRemote::mediaPlayerKeyNeeded(this, *buf, *&buf[8]);
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
          }

          goto LABEL_320;
        }

        IPC::ArgumentCoder<WebCore::HostingContext,void>::decode(a3, v199);
        if (v199[3] & 1) != 0 || (v176 = *a3, v177 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v178 = *(a3 + 3)) != 0) && v177 && ((*(*v178 + 16))(v178, v176), (v199[3]))
        {
          v124 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
          if (v125)
          {
            if ((v199[3] & 1) == 0)
            {
              goto LABEL_334;
            }

            v126 = v124;
            *buf = v199[0];
            WTF::MachSendRight::MachSendRight();
            v128 = v199[2];
            v199[2] = 0;
            *&buf[16] = v128;
            *&buf[24] = v126;
            v129 = 1;
          }

          else
          {
            v127 = *a3;
            v194 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v195 = *(a3 + 3);
            if (v195 && v194)
            {
              (*(*v195 + 16))(v195, v127);
            }

            v129 = 0;
            buf[0] = 0;
          }

          buf[32] = v129;
          if (v199[3])
          {
            v130 = v199[2];
            v199[2] = 0;
            if (v130)
            {
              WTF::fastFree(v130, v127);
            }

            WTF::MachSendRight::~MachSendRight(&v199[1]);
            v129 = buf[32];
          }

          if (v129)
          {
LABEL_314:
            WebKit::MediaPlayerPrivateRemote::layerHostingContextChanged(this, buf, &buf[24]);
            if (buf[32])
            {
              v132 = *&buf[16];
              *&buf[16] = 0;
              if (v132)
              {
                WTF::fastFree(v132, v131);
              }

              WTF::MachSendRight::~MachSendRight(&buf[8]);
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
          }
        }

        else
        {
          buf[0] = 0;
          buf[32] = 0;
        }

        v179 = *a3;
        v180 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v181 = *(a3 + 3);
        if (!v181)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        if (!v180)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        (*(*v181 + 16))(v181, v179);
        if ((buf[32] & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        goto LABEL_314;
      }

      if (*(a3 + 25) <= 0x154u)
      {
        if (v9 == 335)
        {
          v115 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v116 & 1) == 0)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
          }

          v117 = v115;
          while (1)
          {
            v118 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v119 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v119, v118 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v119 == v118)
            {
              goto LABEL_324;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_324:
          v139 = WTF::fastMalloc(0x18);
          *v139 = &unk_1F10EF020;
          v139[1] = v117;
          v139[2] = a2;
          *buf = v139;
          WebKit::AuxiliaryProcess::mainThreadPing(this, buf);
          v140 = *buf;
          *buf = 0;
          if (v140)
          {
            (*(*v140 + 8))(v140);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        if (v9 == 336)
        {
          v106 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v106 & 0x100) != 0)
          {
            WebKit::MediaPlayerPrivateRemote::currentPlaybackTargetIsWirelessChanged(this, v106 & 1);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
        }

        goto LABEL_320;
      }

      if (v9 == 341)
      {
        IPC::Decoder::decode<std::tuple<WTF::URL>>(a3, buf);
        if (buf[40] != 1)
        {
          goto LABEL_232;
        }

        v120 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v10 & 1) == 0)
        {
          goto LABEL_232;
        }

        v121 = v120;
        while (1)
        {
          v122 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v123 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v123, v122 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v123 == v122)
          {
            goto LABEL_327;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_327:
        v141 = WTF::fastMalloc(0x18);
        *v141 = &unk_1F10EEFF8;
        *(v141 + 1) = v121;
        *(v141 + 2) = a2;
        v199[0] = v141;
        if ((buf[40] & 1) == 0)
        {
          goto LABEL_334;
        }

        WebKit::MediaPlayerPrivateRemote::getRawCookies(this);
        v142 = v199[0];
        v199[0] = 0;
        if (v142)
        {
          (*(*v142 + 8))(v142);
        }

LABEL_232:
        if (buf[40] == 1)
        {
LABEL_233:
          v12 = *buf;
          *buf = 0;
          if (!v12)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
          }

          goto LABEL_234;
        }
      }

      else
      {
        IPC::Decoder::decode<std::tuple<WTF::String,std::span<unsigned char const,18446744073709551615ul>>>(a3, buf);
        if (buf[24] == 1)
        {
          WebKit::MediaPlayerPrivateRemote::initializationDataEncountered(this);
          if (buf[24])
          {
            goto LABEL_233;
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v6);
  }
}

uint64_t WebKit::MediaSourcePrivateRemote::MessageReceiver::didReceiveMessage(WebKit::MediaSourcePrivateRemote::MessageReceiver *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  (**this)(this);
  v6 = *(a3 + 25);
  if (v6 == 378)
  {
    IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
    if (BYTE2(v29) == 1)
    {
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v8)
      {
        a3 = v12;
        while (1)
        {
          v13 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v14 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v14 == v13)
          {
            goto LABEL_24;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_24:
        v19 = WTF::fastMalloc(0x18);
        *v19 = &unk_1F10EF070;
        v19[1] = a3;
        v19[2] = a2;
        v25 = v19;
        if ((v29 & 0x10000) == 0)
        {
          goto LABEL_32;
        }

        WebKit::MediaSourcePrivateRemote::MessageReceiver::proxySeekToTime(this, buf, &v25);
        v18 = v25;
        v25 = 0;
        if (v18)
        {
LABEL_26:
          (*(*v18 + 8))(v18);
        }
      }
    }
  }

  else if (v6 == 379)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::SeekTarget>,void>::decode<IPC::Decoder>(a3, buf);
    if ((v30 & 1) == 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v8 & 1) == 0)
      {
        break;
      }

      a3 = v7;
      while (1)
      {
        v10 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v11 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_20;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_20:
      v17 = WTF::fastMalloc(0x18);
      *v17 = &unk_1F10EF048;
      v17[1] = a3;
      v17[2] = a2;
      v25 = v17;
      if (v30)
      {
        WebKit::MediaSourcePrivateRemote::MessageReceiver::proxyWaitForTarget(this, buf, &v25);
        v18 = v25;
        v25 = 0;
        if (!v18)
        {
          return (*(*this + 8))(this, v8, v9);
        }

        goto LABEL_26;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      v8 = *a3;
      v9 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v24 = *(a3 + 3);
      if (v24)
      {
        if (v9)
        {
          (*(*v24 + 16))(v24, v8);
          if (v30)
          {
            continue;
          }
        }
      }

      return (*(*this + 8))(this, v8, v9);
    }
  }

  else
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v21 = 4223;
      }

      else
      {
        v21 = v6;
      }

      v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
      v23 = *(a3 + 7);
      *buf = 136315394;
      v27 = v22;
      v28 = 2048;
      v29 = v23;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v16 = *(a3 + 3);
    if (v16 && v9)
    {
      (*(*v16 + 16))(v16, v8);
    }
  }

  return (*(*this + 8))(this, v8, v9);
}

void WebKit::MediaSourcePrivateRemote::MessageReceiver::~MessageReceiver(WebKit::MediaSourcePrivateRemote::MessageReceiver *this, void *a2)
{
  *this = &unk_1F10EF098;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }
}

{
  *this = &unk_1F10EF098;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  WTF::fastFree(this, a2);
}

unint64_t IPC::Decoder::decode<WebKit::RemoteVideoFrameProxyProperties>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::decode(a2, a1);
  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::VideoCodecType>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v12;
        v1 = v12[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    a1 = v12;
    *v12 = 0;
    v12[1] = 0;
    v7 = v12[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
      a1 = v12;
    }

    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v12 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 < 4)
  {
    v5 = 1;
    return v4 | (v5 << 8);
  }

LABEL_9:
  v8 = *a1;
  v9 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v10 = a1[3];
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10, v8);
  }

  v5 = 0;
  v4 = 0;
  return v4 | (v5 << 8);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy13CreateDecoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringEbbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEEB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy13CreateDecoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringEbbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEEB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy13CreateDecoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringEbbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3224;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy12FlushDecoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEEE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy12FlushDecoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEEE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy12FlushDecoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3228;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy11DecodeFrameENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEExNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEF08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy11DecodeFrameENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEExNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEF08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy11DecodeFrameENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoDecoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEExNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3226;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy13CreateEncoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringERKNS_6VectorINSt3__14pairISH_SH_EELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbbNSF_27VideoEncoderScalabilityModeEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEF30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy13CreateEncoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringERKNS_6VectorINSt3__14pairISH_SH_EELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbbNSF_27VideoEncoderScalabilityModeEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEF30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy13CreateEncoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEN7WebCore14VideoCodecTypeERKNS_6StringERKNS_6VectorINSt3__14pairISH_SH_EELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbbNSF_27VideoEncoderScalabilityModeEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3225;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy11EncodeFrameENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS8_16SharedVideoFrameExNSt3__18optionalIyEEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEF58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy11EncodeFrameENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS8_16SharedVideoFrameExNSt3__18optionalIyEEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEF58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy11EncodeFrameENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS8_16SharedVideoFrameExNSt3__18optionalIyEEbONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3227;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy12FlushEncoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEF80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy12FlushEncoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEF80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy12FlushEncoderENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3229;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy14SetEncodeRatesENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEjjONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEFA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy14SetEncodeRatesENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEjjONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEFA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20LibWebRTCCodecsProxy14SetEncodeRatesENS2_10ConnectionEN6WebKit20LibWebRTCCodecsProxyES9_FvNS_23ObjectIdentifierGenericINS8_26VideoEncoderIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEjjONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3230;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<double>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[24] & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (v5 & 1) != 0 && (v6 = result, result = IPC::Decoder::decode<unsigned long long>(a1), (v7))
  {
    *a2 = v6;
    *(a2 + 8) = result;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v8;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,WTF::CString>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    goto LABEL_15;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_18;
  }

  v8 = *v4;
  v9 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v6 < v9 - v5 || v6 - (v9 - v5) <= 7)
  {
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    v13 = a2[3];
    if (v13)
    {
      if (v6)
      {
        (*(*v13 + 16))(v13);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_18;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14 && v6)
    {
      (*(*v14 + 16))(v14, v5);
    }

    goto LABEL_19;
  }

  a2[2] = (v9 + 1);
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = *v9;
  result = IPC::Decoder::decode<WTF::CString>(&v17, a2);
  if (v18 == 1)
  {
    *a1 = v8;
    *(a1 + 8) = v11;
    *(a1 + 16) = v17;
    *(a1 + 24) = 1;
    return result;
  }

LABEL_19:
  *a1 = 0;
  *(a1 + 24) = 0;
  v15 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::CString>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WTF::CString,void>::decode(a2, a1);
  if ((a1[8] & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,int,int,int>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 < v3 - v4 || v5 - (v3 - v4) <= 7)
  {
LABEL_26:
    v22 = result;
    v23 = a2;
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (!v17)
    {
      v5 = 0;
LABEL_28:
      v4 = 0;
      goto LABEL_29;
    }

    if (!v5)
    {
      goto LABEL_28;
    }

    (*(*v17 + 16))(v17);
    v4 = *v23;
    v5 = v23[1];
LABEL_29:
    *v23 = 0;
    v23[1] = 0;
    v18 = v23[3];
    if (v18)
    {
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  a2[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_37;
  }

  v7 = *v3;
  v8 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
  if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
  {
    goto LABEL_26;
  }

  v10 = (v8 | 4);
  a2[2] = v8 | 4;
  if (!v8)
  {
LABEL_37:
    v22 = result;
    v23 = a2;
    goto LABEL_29;
  }

  if (v5 >= v10 - v4 && v5 - (v10 - v4) > 3)
  {
    v12 = *v8;
    a2[2] = v8 + 8;
    v13 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v5 < v13 - v4 || v5 - (v13 - v4) <= 3)
    {
      goto LABEL_26;
    }

    v15 = *v10;
    a2[2] = v13 | 4;
    if (v13)
    {
      v16 = *v13;
      *result = v7;
      *(result + 8) = v12;
      *(result + 12) = v15;
      *(result + 16) = v16;
      *(result + 24) = 1;
      return result;
    }

    goto LABEL_37;
  }

  v22 = result;
  v23 = a2;
  *a2 = 0;
  a2[1] = 0;
  v19 = a2[3];
  if (v19)
  {
    if (v5)
    {
      (*(*v19 + 16))(v19);
      v4 = *v23;
      v5 = v23[1];
      v18 = v23[3];
      *v23 = 0;
      v23[1] = 0;
      if (v18)
      {
LABEL_42:
        if (v5)
        {
          (*(*v18 + 16))(v18, v4);
        }
      }
    }
  }

LABEL_32:
  *v22 = 0;
  v22[24] = 0;
  v20 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  result = v23[3];
  if (result && v20)
  {
    v21 = *(*result + 16);

    return v21();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,double>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v5);
    }

    goto LABEL_13;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = *v4;
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (v10)
  {
    *a1 = v8;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
    return result;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 16) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,unsigned long long,int,int>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 7)
      {
        goto LABEL_32;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 7)
        {
          goto LABEL_32;
        }

        a2[2] = (v11 + 1);
        if (v11)
        {
          v13 = *v11;
          v14 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
          if (v5 < v14 - v4 || v5 - (v14 - v4) <= 3)
          {
            goto LABEL_32;
          }

          v16 = (v14 | 4);
          a2[2] = v14 | 4;
          if (v14)
          {
            if (v5 >= v16 - v4 && v5 - (v16 - v4) > 3)
            {
              v18 = *v14;
              a2[2] = v14 + 8;
              v19 = *v16;
              *result = v7;
              *(result + 8) = v10;
              *(result + 16) = v13;
              *(result + 24) = v18;
              *(result + 28) = v19;
              *(result + 32) = 1;
              return result;
            }

            v25 = result;
            v26 = a2;
            *a2 = 0;
            a2[1] = 0;
            v22 = a2[3];
            if (v22)
            {
              if (v5)
              {
                (*(*v22 + 16))(v22);
                v4 = *v26;
                v5 = v26[1];
                v21 = v26[3];
                *v26 = 0;
                v26[1] = 0;
                if (v21)
                {
                  goto LABEL_48;
                }
              }
            }

            goto LABEL_38;
          }
        }
      }
    }

    v25 = result;
    v26 = a2;
    goto LABEL_35;
  }

LABEL_32:
  v25 = result;
  v26 = a2;
  *a2 = 0;
  a2[1] = 0;
  v20 = a2[3];
  if (!v20)
  {
    v5 = 0;
LABEL_34:
    v4 = 0;
    goto LABEL_35;
  }

  if (!v5)
  {
    goto LABEL_34;
  }

  (*(*v20 + 16))(v20);
  v4 = *v26;
  v5 = v26[1];
LABEL_35:
  *v26 = 0;
  v26[1] = 0;
  v21 = v26[3];
  if (v21)
  {
LABEL_48:
    if (v5)
    {
      (*(*v21 + 16))(v21, v4);
    }
  }

LABEL_38:
  *v25 = 0;
  v25[32] = 0;
  v23 = v26[1];
  *v26 = 0;
  v26[1] = 0;
  result = v26[3];
  if (result && v23)
  {
    v24 = *(*result + 16);

    return v24();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,double,int,unsigned long long,int>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
LABEL_27:
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_30:
    *a2 = 0;
    *(a2 + 1) = 0;
    v24 = *(a2 + 3);
    if (v24 && v6)
    {
      (*(*v24 + 16))(v24, v5);
    }

    goto LABEL_31;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_30;
  }

  v8 = *v4;
  result = IPC::Decoder::decode<unsigned long long>(a2);
  if (v10)
  {
    v6 = *(a2 + 1);
    v11 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v5 = *a2;
    v12 = v11 - *a2;
    v13 = v6 >= v12;
    v14 = v6 - v12;
    if (v13 && v14 > 3)
    {
      *(a2 + 2) = v11 + 1;
      if (!v11)
      {
        goto LABEL_30;
      }

      v16 = *v11;
      v17 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v6 >= v17 - v5 && v6 - (v17 - v5) > 7)
      {
        *(a2 + 2) = v17 + 1;
        if (!v17)
        {
          goto LABEL_30;
        }

        v19 = *v17;
        v20 = (v17 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v6 >= v20 - v5 && v6 - (v20 - v5) > 3)
        {
          *(a2 + 2) = v20 | 4;
          if (v20)
          {
            v22 = *v20;
            *a1 = v8;
            *(a1 + 8) = result;
            *(a1 + 16) = v16;
            *(a1 + 24) = v19;
            *(a1 + 32) = v22;
            *(a1 + 40) = 1;
            return result;
          }

          goto LABEL_30;
        }
      }
    }

    goto LABEL_27;
  }

LABEL_31:
  *a1 = 0;
  *(a1 + 40) = 0;
  v25 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v25)
  {
    v26 = *(*result + 16);

    return v26();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long,unsigned long long>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 7)
      {
        goto LABEL_33;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
        {
          goto LABEL_33;
        }

        a2[2] = v11 | 4;
        if (v11)
        {
          v13 = *v11;
          v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
          if (v5 < v14 - v4 || v5 - (v14 - v4) <= 7)
          {
            goto LABEL_33;
          }

          a2[2] = (v14 + 1);
          if (v14)
          {
            v16 = *v14;
            v17 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
            if (v5 < v17 - v4 || v5 - (v17 - v4) <= 7)
            {
              goto LABEL_33;
            }

            a2[2] = (v17 + 1);
            if (v17)
            {
              v19 = *v17;
              *result = v7;
              *(result + 8) = v10;
              *(result + 16) = v13;
              *(result + 24) = v16;
              *(result + 32) = v19;
              *(result + 40) = 1;
              return result;
            }
          }
        }
      }
    }

    v24 = result;
    v25 = a2;
    goto LABEL_36;
  }

LABEL_33:
  v24 = result;
  v25 = a2;
  *a2 = 0;
  a2[1] = 0;
  v20 = a2[3];
  if (!v20)
  {
    v5 = 0;
LABEL_35:
    v4 = 0;
    goto LABEL_36;
  }

  if (!v5)
  {
    goto LABEL_35;
  }

  (*(*v20 + 16))(v20);
  v4 = *v25;
  v5 = v25[1];
LABEL_36:
  *v25 = 0;
  v25[1] = 0;
  v21 = v25[3];
  if (v21 && v5)
  {
    (*(*v21 + 16))(v21, v4);
  }

  *v24 = 0;
  v24[40] = 0;
  v22 = v25[1];
  *v25 = 0;
  v25[1] = 0;
  result = v25[3];
  if (result && v22)
  {
    v23 = *(*result + 16);

    return v23();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 7)
      {
        goto LABEL_21;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
        {
          goto LABEL_21;
        }

        a2[2] = v11 | 4;
        if (v11)
        {
          v13 = *v11;
          *result = v7;
          *(result + 8) = v10;
          *(result + 16) = v13;
          *(result + 24) = 1;
          return result;
        }
      }
    }

    v18 = result;
    v19 = a2;
    goto LABEL_24;
  }

LABEL_21:
  v18 = result;
  v19 = a2;
  *a2 = 0;
  a2[1] = 0;
  v14 = a2[3];
  if (!v14)
  {
    v5 = 0;
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  (*(*v14 + 16))(v14);
  v4 = *v19;
  v5 = v19[1];
LABEL_24:
  *v19 = 0;
  v19[1] = 0;
  v15 = v19[3];
  if (v15 && v5)
  {
    (*(*v15 + 16))(v15, v4);
  }

  *v18 = 0;
  v18[24] = 0;
  v16 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  result = v19[3];
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long,int,unsigned long long>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 7)
      {
        goto LABEL_27;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
        {
          goto LABEL_27;
        }

        a2[2] = v11 | 4;
        if (v11)
        {
          v13 = *v11;
          v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
          if (v5 < v14 - v4 || v5 - (v14 - v4) <= 7)
          {
            goto LABEL_27;
          }

          a2[2] = (v14 + 1);
          if (v14)
          {
            v16 = *v14;
            *result = v7;
            *(result + 8) = v10;
            *(result + 16) = v13;
            *(result + 24) = v16;
            *(result + 32) = 1;
            return result;
          }
        }
      }
    }

    v21 = result;
    v22 = a2;
    goto LABEL_30;
  }

LABEL_27:
  v21 = result;
  v22 = a2;
  *a2 = 0;
  a2[1] = 0;
  v17 = a2[3];
  if (!v17)
  {
    v5 = 0;
LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  (*(*v17 + 16))(v17);
  v4 = *v22;
  v5 = v22[1];
LABEL_30:
  *v22 = 0;
  v22[1] = 0;
  v18 = v22[3];
  if (v18 && v5)
  {
    (*(*v18 + 16))(v18, v4);
  }

  *v21 = 0;
  v21[32] = 0;
  v19 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  result = v22[3];
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

_BYTE *IPC::Decoder::decode<std::tuple<unsigned long long,unsigned char>>(_BYTE *result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 < v3 - v4 || v5 - (v3 - v4) <= 7)
  {
    goto LABEL_11;
  }

  v7 = (v3 + 1);
  a2[2] = (v3 + 1);
  if (!v3)
  {
LABEL_20:
    v14 = result;
    v15 = a2;
    goto LABEL_14;
  }

  if (v5 > &v7[-v4])
  {
    v8 = *v3;
    a2[2] = v3 + 9;
    if (v3 != -8)
    {
      v9 = *v7;
      *result = v8;
      result[8] = v9;
      result[16] = 1;
      return result;
    }

    goto LABEL_20;
  }

LABEL_11:
  v14 = result;
  v15 = a2;
  *a2 = 0;
  a2[1] = 0;
  v10 = a2[3];
  if (!v10)
  {
    v5 = 0;
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  (*(*v10 + 16))(v10);
  v4 = *v15;
  v5 = v15[1];
LABEL_14:
  *v15 = 0;
  v15[1] = 0;
  v11 = v15[3];
  if (v11 && v5)
  {
    (*(*v11 + 16))(v11, v4);
  }

  *v14 = 0;
  v14[16] = 0;
  v12 = v15[1];
  *v15 = 0;
  v15[1] = 0;
  result = v15[3];
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    a2[1] = 0;
    v12 = a2[3];
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v5);
    }

    goto LABEL_13;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = *v4;
  result = IPC::Decoder::decode<WTF::CString>(&v15, a2);
  if (v16 == 1)
  {
    v10 = v15;
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = 1;
    return result;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 16) = 0;
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,int>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
      {
        goto LABEL_15;
      }

      a2[2] = v8 | 4;
      if (v8)
      {
        v10 = *v8;
        *result = v7;
        *(result + 8) = v10;
        *(result + 16) = 1;
        return result;
      }
    }

    v15 = result;
    v16 = a2;
    goto LABEL_18;
  }

LABEL_15:
  v15 = result;
  v16 = a2;
  *a2 = 0;
  a2[1] = 0;
  v11 = a2[3];
  if (!v11)
  {
    v5 = 0;
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  (*(*v11 + 16))(v11);
  v4 = *v16;
  v5 = v16[1];
LABEL_18:
  *v16 = 0;
  v16[1] = 0;
  v12 = v16[3];
  if (v12 && v5)
  {
    (*(*v12 + 16))(v12, v4);
  }

  *v15 = 0;
  v15[16] = 0;
  v13 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,WTF::CString,WTF::CString>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_23;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_23:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_24;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_23;
  }

  v8 = *v4;
  IPC::Decoder::decode<WTF::CString>(&v17, a2);
  if (v18 != 1)
  {
LABEL_24:
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_13;
  }

  result = IPC::Decoder::decode<WTF::CString>(&v19, a2);
  if (v20)
  {
    v11 = v17;
    *a1 = v8;
    *(a1 + 8) = v11;
    *(a1 + 16) = v19;
    *(a1 + 24) = 1;
    return result;
  }

  *a1 = 0;
  v12 = v17;
  *(a1 + 24) = 0;
  if (v12)
  {
    if (*v12 == 1)
    {
      WTF::fastFree(v12, v10);
    }

    else
    {
      --*v12;
    }
  }

LABEL_13:
  v13 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,float,float>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 < v3 - v4 || v5 - (v3 - v4) <= 7)
  {
LABEL_20:
    v19 = result;
    v20 = a2;
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (!v14)
    {
      v5 = 0;
LABEL_22:
      v4 = 0;
      goto LABEL_23;
    }

    if (!v5)
    {
      goto LABEL_22;
    }

    (*(*v14 + 16))(v14);
    v4 = *v20;
    v5 = v20[1];
LABEL_23:
    *v20 = 0;
    v20[1] = 0;
    v15 = v20[3];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_32:
    if (v5)
    {
      (*(*v15 + 16))(v15, v4);
    }

    goto LABEL_24;
  }

  a2[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_34;
  }

  v7 = *v3;
  v8 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
  if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
  {
    goto LABEL_20;
  }

  v10 = (v8 | 4);
  a2[2] = v8 | 4;
  if (!v8)
  {
LABEL_34:
    v19 = result;
    v20 = a2;
    goto LABEL_23;
  }

  if (v5 >= v10 - v4 && v5 - (v10 - v4) > 3)
  {
    v12 = *v8;
    a2[2] = v8 + 8;
    v13 = *v10;
    *result = v7;
    *(result + 8) = v12;
    *(result + 12) = v13;
    *(result + 16) = 1;
    return result;
  }

  v19 = result;
  v20 = a2;
  *a2 = 0;
  a2[1] = 0;
  v18 = a2[3];
  if (v18)
  {
    if (v5)
    {
      (*(*v18 + 16))(v18);
      v4 = *v20;
      v5 = v20[1];
      v15 = v20[3];
      *v20 = 0;
      v20[1] = 0;
      if (v15)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_24:
  *v19 = 0;
  v19[16] = 0;
  v16 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  result = v20[3];
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::CString,WTF::CString>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WTF::CString>(&v11, a2);
  if (v12 == 1)
  {
    result = IPC::Decoder::decode<WTF::CString>(&v13, a2);
    if (v14)
    {
      v6 = v13;
      *a1 = v11;
      *(a1 + 8) = v6;
      *(a1 + 16) = 1;
      return result;
    }

    *a1 = 0;
    v7 = v11;
    *(a1 + 16) = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::fastFree(v7, v5);
      }

      else
      {
        --*v7;
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  v8 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(atomic_ullong *result)
{
  v1 = result;
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10EF0E0;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainThread();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>(v5);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EF108;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainThread();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote((*(a1 + 8) - 48));

  return WTF::fastFree(v1, v2);
}

WebKit::MediaPlayerPrivateRemote *WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    WebKit::MediaPlayerPrivateRemote::~MediaPlayerPrivateRemote(result);
    result = WTF::fastFree(v4, v5);
  }

  v6 = 0;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v8 = *(v3 + 16) - 1;
  *(v3 + 16) = v8;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v9 = v8;
    result = WTF::Lock::unlockSlow(v3);
    if (v9)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebKit::RemoteMediaPlayerState>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebKit::RemoteMediaPlayerState>(v11, a2);
  if (v17 == 1)
  {
    result = std::__tuple_leaf<0ul,WebKit::RemoteMediaPlayerState,false>::__tuple_leaf[abi:sn200100]<WebKit::RemoteMediaPlayerState,0>(a1, v11);
    v6 = v17;
    a1[232] = 1;
    if (v6)
    {
      if (v16 == 1)
      {
        v7 = v14;
        if (v14)
        {
          v14 = 0;
          v15 = 0;
          WTF::fastFree(v7, v5);
        }
      }

      v8 = v13;
      v13 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }

      result = v12;
      v12 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[232] = 0;
  }

  if ((a1[232] & 1) == 0)
  {
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v9)
      {
        v10 = *(*result + 16);

        return v10();
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::RemoteMediaPlayerState>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::decode(a2, a1);
  if ((*(a1 + 232) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t std::__tuple_leaf<0ul,WebKit::RemoteMediaPlayerState,false>::__tuple_leaf[abi:sn200100]<WebKit::RemoteMediaPlayerState,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v7 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 80) = v7;
  v8 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  v9 = a1 + 96;
  *(v9 - 8) = v8;
  *(v9 + 16) = 0;
  if (*(a2 + 112) == 1)
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v9, (a2 + 96));
    *(a1 + 112) = 1;
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v12 = *(a2 + 168);
  v13 = *(a2 + 184);
  v14 = *(a2 + 200);
  *(a1 + 210) = *(a2 + 210);
  *(a1 + 200) = v14;
  *(a1 + 184) = v13;
  *(a1 + 168) = v12;
  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::MediaTimeUpdateData>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WebKit::MediaTimeUpdateData>(v10, a2);
  v5 = v11;
  if (v11 == 1)
  {
    v6 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    v7 = *a2;
    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      return (*(*result + 16))(result, v7);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::MediaTimeUpdateData>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::MediaTimeUpdateData,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<long long>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<long long>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::AudioTrackPrivateRemoteConfiguration>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::AudioTrackPrivateRemoteConfiguration,void>::decode(a2, a1);
  if ((*(a1 + 72) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::VideoTrackPrivateRemoteConfiguration>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::VideoTrackPrivateRemoteConfiguration,void>::decode(a2, a1);
  if ((*(a1 + 136) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::TextTrackPrivateRemoteConfiguration>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::TextTrackPrivateRemoteConfiguration,void>::decode(a2, a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 7)
  {
    *(a1 + 2) = v3 + 1;
    if (v3)
    {
      v13 = *v3;
      v14 = 1;
      return IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder,unsigned long long>(a1, &v13, a2);
    }

    v11 = a2;
    v12 = a1;
  }

  else
  {
    v11 = a2;
    v12 = a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      if (v2)
      {
        (*(*v10 + 16))(v10);
        v4 = *v12;
        v2 = *(v12 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_12:
  *v12 = 0;
  *(v12 + 1) = 0;
  result = *(v12 + 3);
  if (result)
  {
    if (v2)
    {
      result = (*(*result + 16))(result, v4);
    }
  }

  *v11 = 0;
  v11[16] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<unsigned long long,WTF::String>,void>::decode<IPC::Decoder,unsigned long long>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  do
  {
    if (*(a2 + 8))
    {
      v7 = v12;
      *a3 = *a2;
      *(a3 + 8) = v7;
      v8 = 1;
      goto LABEL_4;
    }

    __break(1u);
LABEL_6:
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      break;
    }

    result = (*(*result + 16))(result, v9);
  }

  while ((v13 & 1) != 0);
  v8 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 16) = v8;
  return result;
}

void IPC::Decoder::decode<WebCore::SerializedPlatformDataCueValue>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::SerializedPlatformDataCueValue,void>::decode(a2, a1);
  if ((a1[56] & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void WebCore::SerializedPlatformDataCueValue::Data::~Data(WebCore::SerializedPlatformDataCueValue::Data *this, WTF::StringImpl *a2)
{
  v3 = *(this + 40);
  if (v3 > 2)
  {
    if (v3 != 3 && v3 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (!*(this + 40))
  {
    goto LABEL_8;
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_8:
  *(this + 40) = -1;
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 1);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

void IPC::Decoder::decode<std::tuple<unsigned long long,WTF::MediaTime,WTF::MediaTime,WebCore::SerializedPlatformDataCueValue>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    goto LABEL_21;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_24;
  }

  v8 = *v4;
  IPC::Decoder::decode<WTF::MediaTime>(a2, &v18);
  if (v19)
  {
    IPC::Decoder::decode<WTF::MediaTime>(a2, &v20);
    if (v21)
    {
      IPC::Decoder::decode<WebCore::SerializedPlatformDataCueValue>(&v22, a2);
      if (v27 == 1)
      {
        if ((v19 & 1) == 0 || (v21 & 1) == 0)
        {
          __break(1u);
LABEL_21:
          *a2 = 0;
          *(a2 + 1) = 0;
          v13 = *(a2 + 3);
          if (v13)
          {
            if (v6)
            {
              (*(*v13 + 16))(v13);
              v5 = *a2;
              v6 = *(a2 + 1);
              goto LABEL_24;
            }
          }

          else
          {
            v6 = 0;
          }

          v5 = 0;
LABEL_24:
          *a2 = 0;
          *(a2 + 1) = 0;
          v14 = *(a2 + 3);
          if (v14 && v6)
          {
            (*(*v14 + 16))(v14, v5);
          }

          goto LABEL_25;
        }

        *a1 = v8;
        *(a1 + 8) = v18;
        *(a1 + 24) = v20;
        *(a1 + 40) = 0;
        *(a1 + 88) = 0;
        if (v26 != 1)
        {
          *(a1 + 96) = 1;
          return;
        }

        v10 = v23;
        *(a1 + 40) = v22;
        v22 = 0u;
        v23 = 0u;
        *(a1 + 56) = v10;
        *(a1 + 72) = 0;
        *(a1 + 80) = -1;
        v11 = v25;
        if (v25)
        {
          if (v25 == 255)
          {
LABEL_19:
            *(a1 + 88) = 1;
            *(a1 + 96) = 1;
            WebCore::SerializedPlatformDataCueValue::Data::~Data(&v22, v9);
            return;
          }

          v12 = v24;
          v24 = 0;
        }

        else
        {
          v12 = 0;
        }

        *(a1 + 72) = v12;
        *(a1 + 80) = v11;
        goto LABEL_19;
      }
    }
  }

LABEL_25:
  *a1 = 0;
  *(a1 + 96) = 0;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = *(a2 + 3);
  if (v16 && v15)
  {
    v17 = *(*v16 + 16);

    v17();
  }
}

void IPC::Decoder::decode<std::tuple<unsigned long long,WebCore::GenericCueData>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v22 = a2[3];
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_25;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_25:
    *a2 = 0;
    a2[1] = 0;
    v23 = a2[3];
    if (v23 && v6)
    {
      (*(*v23 + 16))(v23, v5);
    }

    goto LABEL_13;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_25;
  }

  v8 = *v4;
  IPC::ArgumentCoder<WebCore::GenericCueData,void>::decode(a2, &v24);
  if (v35 & 1) != 0 || (v16 = *a2, v17 = a2[1], *a2 = 0, a2[1] = 0, (v18 = a2[3]) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v35))
  {
    v10 = *v25;
    *(a1 + 8) = v24;
    *(a1 + 24) = v10;
    *(a1 + 48) = v26;
    v11 = v28;
    *(a1 + 88) = v29;
    *a1 = v8;
    *(a1 + 37) = *&v25[13];
    v26 = 0uLL;
    v12 = v27;
    v27 = 0;
    *(a1 + 64) = v12;
    v13 = v30;
    *(a1 + 72) = v11;
    *(a1 + 104) = v13;
    *(a1 + 112) = 0;
    if ((a1 + 8) == &v24)
    {
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    else
    {
      v14 = v31;
      v31 = 0uLL;
      *(a1 + 112) = v14;
      v15 = v32;
      v32 = 0;
      *(a1 + 128) = v15;
    }

    *(a1 + 136) = v33;
    *(a1 + 138) = v34;
    *(a1 + 144) = 1;
    WebCore::GenericCueData::~GenericCueData(&v24, v9);
    if (*(a1 + 144))
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 144) = 0;
LABEL_14:
  v19 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v20 = a2[3];
  if (v20 && v19)
  {
    v21 = *(*v20 + 16);

    v21();
  }
}

void IPC::Decoder::decode<std::tuple<WTF::URL>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::tuple<WTF::URL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[40] & 1) == 0)
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = *(a1 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote10SendH2PingENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_FvRKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEFD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote10SendH2PingENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_FvRKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEFD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote10SendH2PingENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_FvRKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7SecondsEN7WebCore13ResourceErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3233;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, WebCore::ResourceError *a2)
{
  if (*(a2 + 80))
  {
    v6 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 80) == 1)
    {
      IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(a1, a2);
      return;
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v5 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v5);
  if (*(a2 + 80))
  {
    goto LABEL_7;
  }

  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,std::span<unsigned char const,18446744073709551615ul>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::String,std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,std::span<unsigned char const,18446744073709551615ul>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v7);
  if (v8 == 1)
  {
    result = IPC::Decoder::decode<std::span<unsigned char const,18446744073709551615ul>>(a1, &v9);
    if (v10 == 1)
    {
      if (v8)
      {
        *a2 = v7;
        *(a2 + 8) = v9;
        *(a2 + 24) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *a2 = 0;
      v6 = v8;
      *(a2 + 24) = 0;
      if (v6)
      {
        result = v7;
        v7 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote13GetRawCookiesENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_KFvRKNS_3URLEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEFF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote13GetRawCookiesENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_KFvRKNS_3URLEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEFF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote13GetRawCookiesENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_KFvRKNS_3URLEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3232;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 144 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebCore::Cookie,void>::encode(a1, v6);
      v6 += 144;
      v7 -= 144;
    }

    while (v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote21CommitAllTransactionsENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EF020;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote21CommitAllTransactionsENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF020;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages24MediaPlayerPrivateRemote21CommitAllTransactionsENS2_10ConnectionEN6WebKit24MediaPlayerPrivateRemoteES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3231;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::SeekTarget>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::SeekTarget,void>::decode(a1, v10);
  if (v11)
  {
    v5 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v10[2];
    v6 = 1;
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      result = (*(*result + 16))(result, v7);
    }

    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 48) = v6;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39MediaSourcePrivateRemoteMessageReceiver18ProxyWaitForTargetENS2_10ConnectionEN6WebKit24MediaSourcePrivateRemote15MessageReceiverESA_FvRKN7WebCore10SeekTargetEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_9MediaTimeENSB_18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF048;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39MediaSourcePrivateRemoteMessageReceiver18ProxyWaitForTargetENS2_10ConnectionEN6WebKit24MediaSourcePrivateRemote15MessageReceiverESA_FvRKN7WebCore10SeekTargetEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_9MediaTimeENSB_18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF048;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39MediaSourcePrivateRemoteMessageReceiver18ProxyWaitForTargetENS2_10ConnectionEN6WebKit24MediaSourcePrivateRemote15MessageReceiverESA_FvRKN7WebCore10SeekTargetEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_9MediaTimeENSB_18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3235;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char *a2)
{
  if (a2[16])
  {
    v7 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[16] == 1)
    {
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
    }

LABEL_7:
    mpark::throw_bad_variant_access(v4);
  }

  v6 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if (a2[16])
  {
    goto LABEL_7;
  }

  return IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2);
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::MediaTime>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::MediaTime>(a1, &v9);
  v5 = v10;
  if (v10 == 1)
  {
    *a2 = v9;
    *(a2 + 16) = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39MediaSourcePrivateRemoteMessageReceiver15ProxySeekToTimeENS2_10ConnectionEN6WebKit24MediaSourcePrivateRemote15MessageReceiverESA_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EF070;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39MediaSourcePrivateRemoteMessageReceiver15ProxySeekToTimeENS2_10ConnectionEN6WebKit24MediaSourcePrivateRemote15MessageReceiverESA_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EF070;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39MediaSourcePrivateRemoteMessageReceiver15ProxySeekToTimeENS2_10ConnectionEN6WebKit24MediaSourcePrivateRemote15MessageReceiverESA_FvRKNS_9MediaTimeEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3234;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char *a2)
{
  if (a2[1] == 1)
  {
    v6 = 0;
    result = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (a2[1])
    {
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = 1;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }

  return result;
}

uint64_t WKURLCreateWithCFURL(WTF *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  Class = object_getClass(a1);
  if (_MergedGlobals_58 != -1)
  {
    dispatch_once(&_MergedGlobals_58, &__block_literal_global_10);
  }

  if (Class != qword_1ED641DC8)
  {
    WTF::bytesAsString(&v8, v1, v2);
    if (!v8)
    {
      return 0;
    }

    API::URL::create(&v8, &v9);
    if (v9)
    {
      v1 = *(v9 + 1);
    }

    else
    {
      v1 = 0;
    }

    v5 = v8;
    v8 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }

    return v1;
  }

  v6 = [CFRetain(v1) _apiObject];
  if ((*(*v6 + 2))(v6) == 23)
  {
    CFRetain(v6[1]);
    v1 = v6[1];
    CFRelease(v1);
    return v1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

void sub_19D9A7F8C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WKURLCopyCFURL(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 _apiObject];
    if ((*(*v2 + 16))(v2) != 23)
    {
      result = 105;
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    v2 = 0;
  }

  if (!v2[2])
  {
    return 0;
  }

  WTF::String::utf8();
  if (v8)
  {
    v3 = v8 + 16;
    v4 = *(v8 + 1);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v6 = CFURLCreateAbsoluteURLWithBytes(0, v3, v4, 0x8000100u, 0, 1u);
  if (v8)
  {
    if (*v8 == 1)
    {
      WTF::fastFree(v8, v5);
    }

    else
    {
      --*v8;
    }
  }

  return v6;
}

void sub_19D9A80C0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef WKObjCTypeWrapperGetObject(void *a1)
{
  if (a1 && WKGetTypeID(a1) == 8)
  {
    v2 = [a1 _apiObject];
    if ((*(*v2 + 2))(v2) == 8)
    {
      CFRetain(v2[1]);
      v3 = v2[1];
      if (!v3)
      {
        v4 = 0;
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v2[1];
LABEL_9:
        CFRelease(v4);
        return v3;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D9A81DCLL);
  }

  return 0;
}

uint64_t WKURLRequestCreateWithNSURLRequest(void *a1)
{
  if ([a1 HTTPBodyStream])
  {
    return 0;
  }

  v2 = [a1 copy];
  MEMORY[0x19EB06210](v5, v2);
  API::URLRequest::create(v5, &v6);
  if (v6)
  {
    v3 = *(v6 + 1);
  }

  else
  {
    v3 = 0;
  }

  v6 = 0;
  WebCore::ResourceRequest::~ResourceRequest(v5);
  if (v2)
  {
  }

  return v3;
}

void sub_19D9A829C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WebCore::ResourceRequest::~ResourceRequest(&a9);
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WKURLRequestCopyNSURLRequest(void *a1)
{
  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 24)
  {
    v2 = WebCore::ResourceRequest::nsURLRequest();

    return [v2 copy];
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

uint64_t WKURLResponseCreateWithNSURLResponse(void *a1)
{
  v1 = [a1 copy];
  WebCore::ResourceResponse::ResourceResponse(v6, v1);
  API::URLResponse::create(v6, &v8);
  if (v8)
  {
    v3 = *(v8 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = 0;
  v4 = v7;
  v7 = 0;
  if (v4)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v6, v2);
  if (v1)
  {
  }

  return v3;
}

void sub_19D9A83DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  v42 = a40;
  a40 = 0;
  if (v42)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a9, a2);
  if (v40)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WKURLResponseCopyNSURLResponse(void *a1)
{
  v1 = [a1 _apiObject];
  if ((*(*v1 + 16))(v1) == 25)
  {
    v2 = WebCore::ResourceResponse::nsURLResponse((v1 + 16));

    return [v2 copy];
  }

  else
  {
    result = 105;
    __break(0xC471u);
  }

  return result;
}

void *WebKit::PaymentSetupFeatures::PaymentSetupFeatures(void *a1, uint64_t *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 3)];
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      [v4 addObject:*(*v6 + 16)];
      v6 += 8;
      v7 -= 8;
    }

    while (v7);
  }

  *a1 = v4;
  return a1;
}

void sub_19D9A8518(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WebKit::PaymentSetupFeatures::operator WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 8) = 0;
  result = [*a1 count];
  v5 = result;
  if (result)
  {
    if (result >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v6 = WTF::fastMalloc((8 * result));
    *(a2 + 8) = v5;
    *a2 = v6;
  }

  else
  {
    v6 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *a1;
  result = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = result;
  if (result)
  {
    LODWORD(v9) = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (WebCore::ApplePaySetupFeature::supportsFeature())
        {
          v12 = WTF::fastMalloc(0x18);
          WebCore::ApplePaySetupFeature::ApplePaySetupFeature();
          v16 = v12;
          if (v9 == *(a2 + 8))
          {
            v13 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a2, v9 + 1, &v16);
            v9 = *(a2 + 12);
            v6 = *a2;
            v14 = *v13;
            *v13 = 0;
            *(v6 + 8 * v9) = v14;
          }

          else
          {
            v16 = 0;
            *(v6 + 8 * v9) = v12;
          }

          LODWORD(v9) = v9 + 1;
          *(a2 + 12) = v9;
          v15 = v16;
          v16 = 0;
          if (v15)
          {
            if (v15[2] == 1)
            {
              (*(*v15 + 8))(v15);
            }

            else
            {
              --v15[2];
            }
          }
        }

        ++v11;
      }

      while (v8 != v11);
      result = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

void WebKit::platformAutomaticReloadPaymentRequest(atomic_uint **this@<X0>, const WebCore::ApplePayAutomaticReloadPaymentRequest *a2@<X1>, void *a3@<X8>)
{
  v5 = objc_alloc((*MEMORY[0x1E69E2408])(this, a2));
  v6 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v29, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v29 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  v9 = v29;
  v10 = WebCore::platformAutomaticReloadSummaryItem();
  v11 = objc_alloc(MEMORY[0x1E695DFF8]);
  v12 = this[12];
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v28, v12);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }
  }

  else
  {
    v28 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v15 = [v11 initWithString:{v28, v28}];
  v16 = [v5 initWithPaymentDescription:v9 automaticReloadBilling:v10 managementURL:v15];
  *a3 = v16;
  if (v15)
  {
  }

  v17 = v28;
  v28 = 0;
  if (v17)
  {
  }

  v18 = v29;
  v29 = 0;
  if (v18)
  {
  }

  v19 = this[11];
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v29, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }

    [v16 setBillingAgreement:{v29, v28}];
    v21 = v29;
    v29 = 0;
    if (v21)
    {
    }
  }

  if (this[13])
  {
    v22 = objc_alloc(MEMORY[0x1E695DFF8]);
    v23 = this[13];
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v29, v23);
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v24);
      }
    }

    else
    {
      v29 = &stru_1F1147748;
      v25 = &stru_1F1147748;
    }

    v26 = [v22 initWithString:{v29, v28}];
    [v16 setTokenNotificationURL:v26];
    if (v26)
    {
    }

    v27 = v29;
    v29 = 0;
    if (v27)
    {
    }
  }
}

void sub_19D9A89DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::platformDeferredPaymentRequest(WebKit *this@<X0>, const WebCore::ApplePayDeferredPaymentRequest *a2@<X1>, void *a3@<X8>)
{
  v5 = objc_alloc((*MEMORY[0x1E69E23A0])(this, a2));
  v6 = *(this + 14);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v37, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v37 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  v9 = v37;
  v10 = WebCore::platformDeferredSummaryItem();
  v11 = objc_alloc(MEMORY[0x1E695DFF8]);
  v12 = *(this + 13);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v36, v12);
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }
  }

  else
  {
    v36 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v15 = [v11 initWithString:{v36, v36}];
  v16 = [v5 initWithPaymentDescription:v9 deferredBilling:v10 managementURL:v15];
  *a3 = v16;
  if (v15)
  {
  }

  v17 = v36;
  v36 = 0;
  if (v17)
  {
  }

  v18 = v37;
  v37 = 0;
  if (v18)
  {
  }

  v19 = *this;
  if (*this)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v37, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v20);
    }

    [v16 setBillingAgreement:{v37, v36}];
    v21 = v37;
    v37 = 0;
    if (v21)
    {
    }
  }

  v22 = *(this + 11);
  v23 = *(this + 12);
  if (v23)
  {
    v24 = MEMORY[0x1E695DFE8];
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v37, v23, v22);
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v25);
    }

    v26 = [v24 timeZoneWithName:{v37, v36}];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    v29 = v37;
    v37 = 0;
    if (v29)
    {
    }

    if (v27)
    {
      [v16 setFreeCancellationDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSince1970:", *(this + 11))}];
      [v16 setFreeCancellationDateTimeZone:v27];
    }
  }

  if (*(this + 15))
  {
    v30 = objc_alloc(MEMORY[0x1E695DFF8]);
    v31 = *(this + 15);
    if (v31)
    {
      atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v37, v31);
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v32);
      }
    }

    else
    {
      v37 = &stru_1F1147748;
      v33 = &stru_1F1147748;
    }

    v34 = [v30 initWithString:{v37, v36}];
    [v16 setTokenNotificationURL:v34];
    if (v34)
    {
    }

    v35 = v37;
    v37 = 0;
    if (v35)
    {
    }
  }
}

void sub_19D9A8DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL12wkNSURLClassv_block_invoke()
{
  result = objc_opt_class();
  qword_1ED641DC8 = result;
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::ApplePaySetupFeature,WTF::RawPtrTraits<WebCore::ApplePaySetupFeature>,WTF::DefaultRefDerefTraits<WebCore::ApplePaySetupFeature>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::LoadPing,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebKit::NetworkResourceLoadParameters &&)>(IPC::Decoder *a1, WebKit::NetworkConnectionToWebProcess *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::NetworkResourceLoadParameters>>(v4, a1);
  if (v5 == 1)
  {
    WebKit::NetworkConnectionToWebProcess::loadPing(a2, v4);
    if (v5)
    {
      WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v4, v3);
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PrefetchDNS,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::NetworkConnectionToWebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkConnectionToWebProcess::prefetchDNS(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SendH2Ping,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebKit::NetworkResourceLoadParameters &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::NetworkResourceLoadParameters &&::Seconds,WebCore::ResourceError> &&)> &&)>()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v16 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebKit::NetworkResourceLoadParameters>>(v14, v3);
  if (v15 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if (v6)
    {
      v8 = v7;
      while (1)
      {
        v9 = *v5;
        if ((*v5 & 1) == 0)
        {
          break;
        }

        v10 = *v5;
        atomic_compare_exchange_strong_explicit(v5, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10EF150;
      v11[1] = v8;
      v11[2] = v5;
      v13 = v11;
      if ((v15 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkConnectionToWebProcess::sendH2Ping(v2, v14, &v13);
      v12 = v13;
      v13 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v15 == 1)
  {
    WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v14, v6);
  }
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::PreconnectTo,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::NetworkResourceLoadParameters &&)>()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v16 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v0, &v9);
  if ((v10 & 1) != 0 && (IPC::Decoder::decode<WebKit::NetworkResourceLoadParameters>(v14, v3), v15 == 1))
  {
    if ((v10 & 1) == 0)
    {
      __break(1u);
    }

    v11 = v9;
    WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(v12, v14);
    v13 = 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }

    WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v14, v4);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
    v13 = 0;
  }

  v6 = *v3;
  v7 = *(v3 + 1);
  *v3 = 0;
  *(v3 + 1) = 0;
  v8 = *(v3 + 3);
  if (v8)
  {
    if (v7)
    {
      (*(*v8 + 16))(v8, v6);
      if (v13)
      {
LABEL_6:
        WebKit::NetworkConnectionToWebProcess::preconnectTo(v2, v11, SBYTE8(v11), v12);
        if (v13)
        {
          WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v12, v5);
        }
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::IsResourceLoadFinished,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10EF178;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkConnectionToWebProcess::isResourceLoadFinished(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::StartDownload,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,std::optional<WebCore::SecurityOriginData> const&,std::optional<WebKit::NavigatingToAppBoundDomain>,WTF::String const&,WebCore::FromDownloadAttribute,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>(uint64_t *a1, void *a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    LOBYTE(v76) = 0;
    v106 = 0;
    goto LABEL_56;
  }

  v6 = v4;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, &v49);
  if ((v69 & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a1, &v107);
    if (v111 != 1)
    {
      LOBYTE(v76) = 0;
      v106 = 0;
      goto LABEL_33;
    }

    v8 = IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(a1);
    if ((v8 & 0x10000) == 0 || (v10 = v8, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v70), (v71 & 1) == 0) && ((v9 = *a1, v42 = a1[1], *a1 = 0, a1[1] = 0, (v43 = a1[3]) == 0) || !v42 || ((*(*v43 + 16))(v43, v9), (v71 & 1) == 0)))
    {
      LOBYTE(v76) = 0;
      v106 = 0;
      goto LABEL_24;
    }

    v11 = a1[1];
    v12 = a1[2];
    v9 = *a1;
    if (v11 <= &v12[-*a1])
    {
      break;
    }

    a1[2] = (v12 + 1);
    if (!v12)
    {
      goto LABEL_86;
    }

    v13 = *v12;
    if (v13 >= 2)
    {
      goto LABEL_89;
    }

    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v72);
    if ((v73 & 1) == 0)
    {
      v9 = *a1;
      v40 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v41 = a1[3];
      if (!v41)
      {
        goto LABEL_70;
      }

      if (!v40)
      {
        goto LABEL_70;
      }

      (*(*v41 + 16))(v41, v9);
      if ((v73 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v74);
    if ((v75 & 1) == 0)
    {
      v9 = *a1;
      v38 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v39 = a1[3];
      if (!v39 || !v38 || ((*(*v39 + 16))(v39, v9), (v75 & 1) == 0))
      {
        v22 = 0;
        LOBYTE(v76) = 0;
        goto LABEL_19;
      }
    }

    if (v69 & 1) != 0 && (v111 & 1) != 0 && (v71 & 1) != 0 && (v73)
    {
      v14 = v49;
      v49 = 0;
      v76 = v6;
      v77 = v14;
      v78 = v50;
      v79 = v51;
      LODWORD(v50) = v50 & 0xFFFFFFFE;
      v15 = v52;
      v52 = 0;
      v80 = v15;
      v81 = v53;
      v82 = v54;
      LODWORD(v53) = v53 & 0xFFFFFFFE;
      v83 = v55;
      v16 = v56;
      v56 = 0u;
      v84 = v16;
      *&v16 = v57;
      v57 = 0;
      v85 = v16;
      v17 = v58;
      v58 = 0;
      v86 = v17;
      *&v16 = v59;
      v59 = 0;
      v87 = v16;
      v18 = v60;
      v60 = 0;
      v88 = v18;
      *&v16 = v61;
      v61 = 0;
      v89 = v16;
      v91 = v63;
      v90 = v62;
      v19 = v64;
      v64 = 0u;
      v92 = v19;
      v95 = v67;
      v93 = v65;
      v94 = v66;
      v20 = v68;
      v65 = 0;
      v68 = 0;
      v96 = v20;
      LOBYTE(v97) = 0;
      v100 = 0;
      if (v110 != 1)
      {
LABEL_18:
        v101 = v10;
        v21 = v70;
        v70 = 0;
        v102 = v21;
        v103 = v13;
        v104 = v72;
        v105 = v74;
        v22 = 1;
LABEL_19:
        v106 = v22;
        goto LABEL_20;
      }

      v99 = -1;
      if (!v109)
      {
        v30 = v107;
        v107 = 0uLL;
        v97 = v30;
        v98 = v108;
        goto LABEL_53;
      }

      if (v109 != 255)
      {
        v97 = v107;
LABEL_53:
        v99 = v109;
      }

      v100 = 1;
      goto LABEL_18;
    }

    __break(1u);
LABEL_63:
    v35 = *a1;
    v36 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v37 = a1[3];
    if (v37)
    {
      if (v36)
      {
        (*(*v37 + 16))(v37, v35);
        if (v69)
        {
          continue;
        }
      }
    }

    LOBYTE(v76) = 0;
    v106 = 0;
    goto LABEL_35;
  }

  *a1 = 0;
  a1[1] = 0;
  v44 = a1[3];
  if (v44)
  {
    if (v11)
    {
      (*(*v44 + 16))(v44);
      v11 = a1[1];
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_86:
  *a1 = 0;
  a1[1] = 0;
  v45 = a1[3];
  if (v45)
  {
    if (v11)
    {
      (*(*v45 + 16))(v45);
      v9 = *a1;
      v11 = a1[1];
      goto LABEL_89;
    }
  }

  else
  {
    v11 = 0;
  }

  v9 = 0;
LABEL_89:
  *a1 = 0;
  a1[1] = 0;
  v46 = a1[3];
  if (v46)
  {
    if (v11)
    {
      (*(*v46 + 16))(v46, v9);
      v47 = a1[3];
      v9 = *a1;
      v48 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (v47)
      {
        if (v48)
        {
          (*(*v47 + 16))(v47, v9);
        }
      }
    }
  }

LABEL_70:
  LOBYTE(v76) = 0;
  v106 = 0;
LABEL_20:
  if (v71)
  {
    v23 = v70;
    v70 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v9);
      }
    }
  }

LABEL_24:
  if ((v111 & 1) != 0 && v110 == 1 && !v109)
  {
    v24 = *(&v107 + 1);
    *(&v107 + 1) = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v9);
    }

    v25 = v107;
    *&v107 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v9);
    }
  }

LABEL_33:
  if (v69)
  {
    WebCore::ResourceRequest::~ResourceRequest(&v49);
  }

LABEL_35:
  if ((v106 & 1) == 0)
  {
LABEL_56:
    v31 = *a1;
    v32 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v33 = a1[3];
    if (v33)
    {
      v34 = v32 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      return;
    }

    (*(*v33 + 16))(v33, v31);
    if ((v106 & 1) == 0)
    {
      return;
    }
  }

  WebKit::NetworkConnectionToWebProcess::startDownload(a2, v76, &v77, &v97, v101, &v102, v103, v7, v104, SBYTE8(v104), v105, SBYTE8(v105));
  if (v106)
  {
    v27 = v102;
    v102 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    if (v100 == 1)
    {
      if (!v99)
      {
        v28 = *(&v97 + 1);
        *(&v97 + 1) = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v26);
        }

        v29 = v97;
        *&v97 = 0;
        if (v29)
        {
          if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v26);
          }
        }
      }

      v99 = -1;
    }

    WebCore::ResourceRequest::~ResourceRequest(&v77);
  }
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::ConvertMainResourceLoadToDownload,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,std::optional<WebCore::SecurityOriginData> const&,WebCore::ResourceResponse const&,std::optional<WebKit::NavigatingToAppBoundDomain>)>(IPC::Decoder *a1, uint64_t *a2)
{
  v152 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v49);
  if (v50 != 1 || (v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v5 & 1) == 0))
  {
    LOBYTE(v96) = 0;
    v146 = 0;
    goto LABEL_52;
  }

  v6 = v4;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, &v51);
  if ((v71 & 1) == 0)
  {
    goto LABEL_57;
  }

  while (1)
  {
    IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a1, &v147);
    if (v151 != 1)
    {
      LOBYTE(v96) = 0;
      v146 = 0;
      goto LABEL_30;
    }

    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a1, &v72);
    if ((v95 & 1) == 0)
    {
      v8 = *a1;
      v47 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v48 = *(a1 + 3);
      if (!v48 || !v47 || ((*(*v48 + 16))(v48, v8), (v95 & 1) == 0))
      {
        LOBYTE(v96) = 0;
        v146 = 0;
        goto LABEL_21;
      }
    }

    v7 = IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(a1);
    if ((v7 & 0x10000) == 0)
    {
      v9 = 0;
      LOBYTE(v96) = 0;
      goto LABEL_17;
    }

    if (v50 & 1) != 0 && (v71 & 1) != 0 && (v151 & 1) != 0 && (v95)
    {
      break;
    }

    __break(1u);
LABEL_57:
    v44 = *a1;
    v45 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (v46)
    {
      if (v45)
      {
        (*(*v46 + 16))(v46, v44);
        if (v71)
        {
          continue;
        }
      }
    }

    LOBYTE(v96) = 0;
    v146 = 0;
    goto LABEL_32;
  }

  v96 = v49;
  v10 = v51;
  v51 = 0;
  v97 = v6;
  v98 = v10;
  v99 = v52;
  v100 = v53;
  LODWORD(v52) = v52 & 0xFFFFFFFE;
  v11 = v54;
  v54 = 0;
  v101 = v11;
  v102 = v55;
  v103 = v56;
  LODWORD(v55) = v55 & 0xFFFFFFFE;
  v12 = v58;
  v58 = 0u;
  v105 = v12;
  v13 = v59;
  v59 = 0;
  v104 = v57;
  v106 = v13;
  v14 = v60;
  v60 = 0;
  v107 = v14;
  v15 = v61;
  v61 = 0;
  v108 = v15;
  v16 = v62;
  v62 = 0;
  v109 = v16;
  v17 = v63;
  v63 = 0;
  v110 = v17;
  v112 = v65;
  v111 = v64;
  v18 = v66;
  v66 = 0u;
  v113 = v18;
  v116 = v69;
  v114 = v67;
  v115 = v68;
  v19 = v70;
  v67 = 0;
  v70 = 0;
  v117 = v19;
  LOBYTE(v118) = 0;
  v121 = 0;
  if (v150 == 1)
  {
    v120 = -1;
    if (v149)
    {
      if (v149 == 255)
      {
        goto LABEL_50;
      }

      v118 = v147;
    }

    else
    {
      v40 = v147;
      v147 = 0uLL;
      v118 = v40;
      v119 = v148;
    }

    v120 = v149;
LABEL_50:
    v121 = 1;
  }

  v20 = v73;
  LODWORD(v73) = v73 & 0xFFFFFFFE;
  v21 = v72;
  v22 = v75;
  v72 = 0;
  v123 = v20;
  v124 = v74;
  v75 = 0;
  v122 = v21;
  v125 = v22;
  v126 = v76;
  v23 = v77;
  v77 = 0uLL;
  v24 = v78;
  v78 = 0uLL;
  v127 = v23;
  v128 = v24;
  v25 = v79;
  v79 = 0;
  v129 = v25;
  v26 = v80;
  v80 = 0;
  v130 = v26;
  v27 = v81;
  v81 = 0;
  v131 = v27;
  v28 = v82;
  v82 = 0;
  v132 = v28;
  LOBYTE(v133) = 0;
  v134 = 0;
  if (v84 == 1)
  {
    v39 = v83;
    v83 = 0;
    v133 = v39;
    v134 = 1;
  }

  v135 = v85;
  v136 = v86;
  *(v142 + 11) = *(v92 + 11);
  v140 = v90;
  v141 = v91;
  v142[0] = v92[0];
  v138 = v88;
  v139 = v89;
  v29 = v87;
  v30 = v93;
  v87 = 0;
  v93 = 0;
  v137 = v29;
  cf = v30;
  v144 = v94;
  v9 = 1;
  v145 = v7;
LABEL_17:
  v146 = v9;
  if (v95)
  {
    v31 = v93;
    v93 = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v72, v8);
  }

LABEL_21:
  if ((v151 & 1) != 0 && v150 == 1 && !v149)
  {
    v32 = *(&v147 + 1);
    *(&v147 + 1) = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v8);
    }

    v33 = v147;
    *&v147 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v8);
    }
  }

LABEL_30:
  if (v71)
  {
    WebCore::ResourceRequest::~ResourceRequest(&v51);
  }

LABEL_32:
  if ((v146 & 1) == 0)
  {
LABEL_52:
    v41 = *a1;
    v42 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (!v43)
    {
      return;
    }

    if (!v42)
    {
      return;
    }

    (*(*v43 + 16))(v43, v41);
    if ((v146 & 1) == 0)
    {
      return;
    }
  }

  WebKit::NetworkConnectionToWebProcess::convertMainResourceLoadToDownload(a2, v96, SBYTE8(v96), v97, &v98, &v118, &v122, v145);
  if (v146)
  {
    v35 = cf;
    cf = 0;
    if (v35)
    {
      CFRelease(v35);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(&v122, v34);
    if (v121 == 1)
    {
      if (!v120)
      {
        v37 = *(&v118 + 1);
        *(&v118 + 1) = 0;
        if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v36);
        }

        v38 = v118;
        *&v118 = 0;
        if (v38)
        {
          if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v36);
          }
        }
      }

      v120 = -1;
    }

    WebCore::ResourceRequest::~ResourceRequest(&v98);
  }
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::SetCookiesFromDOM,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WebCore::SameSiteInfo const&,WTF::URL const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebCore::RequiresScriptTrackingPrivacy,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, void *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v50);
  if ((v53 & 1) == 0)
  {
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    v28 = !v27 || v26 == 0;
    if (v28 || ((*(*v27 + 16))(v27, v25), (v53 & 1) == 0))
    {
LABEL_46:
      v29 = *a1;
      v30 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v31 = *(a1 + 3);
      if (v31 && v30)
      {
        (*(*v31 + 16))(v31, v29);
      }

      return;
    }
  }

  v8 = IPC::Decoder::decode<WebCore::SameSiteInfo>(a1);
  if ((v8 & 0x1000000) != 0)
  {
    v11 = v8;
    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v54);
    if ((v57 & 1) == 0)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v2 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v9 & 1) == 0 || (v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v9 & 1) == 0))
      {
        v10 = 0;
        LOBYTE(v36) = 0;
        v49 = 0;
        goto LABEL_15;
      }

      v3 = v12;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v58);
      if ((v59 & 1) == 0)
      {
        v9 = *a1;
        v34 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v35 = *(a1 + 3);
        if (!v35 || !v34 || ((*(*v35 + 16))(v35, v9), (v59 & 1) == 0))
        {
          v10 = 0;
          LOBYTE(v36) = 0;
          v49 = 0;
          goto LABEL_15;
        }
      }

      v13 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a1);
      v4 = v13;
      if (v13 <= 0xFFu)
      {
        break;
      }

      v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v53 & 1) != 0 && (v57 & 1) != 0 && (v59)
      {
        v5 = v14;
        v15 = v50;
        v50 = 0;
        v36 = v15;
        v37 = v51;
        v38 = v52;
        LODWORD(v51) = v51 & 0xFFFFFFFE;
        v39 = v11;
        v40 = BYTE2(v11);
        v16 = v54;
        v54 = 0;
        v41 = v16;
        v42 = v55;
        v43 = v56;
        LODWORD(v55) = v55 & 0xFFFFFFFE;
        v44 = v2;
        v45 = v3;
        v17 = v58;
        v58 = 0;
        v46 = v17;
        v47 = v4;
        v10 = 1;
        v48 = v14;
        goto LABEL_37;
      }

      __break(1u);
LABEL_50:
      v9 = *a1;
      v32 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v33 = *(a1 + 3);
      if (v33)
      {
        if (v32)
        {
          (*(*v33 + 16))(v33, v9);
          if (v57)
          {
            continue;
          }
        }
      }

      goto LABEL_3;
    }

    v10 = 0;
    LOBYTE(v36) = 0;
LABEL_37:
    v49 = v10;
    if (v59)
    {
      v24 = v58;
      v58 = 0;
      if (v24)
      {
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v9);
        }
      }
    }

LABEL_15:
    if (v57)
    {
      v18 = v54;
      v54 = 0;
      if (v18)
      {
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v9);
        }
      }
    }
  }

  else
  {
LABEL_3:
    v10 = 0;
    LOBYTE(v36) = 0;
    v49 = 0;
  }

  if ((v53 & 1) != 0 && (v19 = v50, v50 = 0, v19) && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
    if ((v10 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_46;
  }

  WebKit::NetworkConnectionToWebProcess::setCookiesFromDOM(a2, &v36, &v39, &v41, v2, v3, &v46, v4 & 1, v5);
  if (v49)
  {
    v21 = v46;
    v46 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    v22 = v41;
    v41 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v20);
    }

    v23 = v36;
    v36 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }
    }
  }
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::SetRawCookie,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WebCore::Cookie const&,WebCore::ShouldPartitionCookie)>(IPC::Decoder *a1, void *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v50);
  if ((v53 & 1) == 0)
  {
    v22 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    v25 = !v24 || v23 == 0;
    if (v25 || ((*(*v24 + 16))(v24, v22), (v53 & 1) == 0))
    {
      LOBYTE(v33) = 0;
      v49 = 0;
      goto LABEL_21;
    }
  }

  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v54);
  if (v57 & 1) != 0 || (v4 = *a1, v26 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v27 = *(a1 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v4), (v57))
  {
    IPC::Decoder::decode<WebCore::Cookie>(a1, &v58);
    if (v68 != 1)
    {
      LOBYTE(v33) = 0;
      v49 = 0;
LABEL_13:
      if (v57)
      {
        v13 = v54;
        v54 = 0;
        if (v13)
        {
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v4);
          }
        }
      }

      goto LABEL_17;
    }

    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    v4 = *a1;
    if (v5 <= &v6[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v28 = *(a1 + 3);
      if (v28)
      {
        if (v5)
        {
          (*(*v28 + 16))(v28);
          v5 = *(a1 + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v6 + 1;
      if (v6)
      {
        v7 = *v6;
        if (v7 < 2)
        {
          if ((v53 & 1) == 0 || (v57 & 1) == 0)
          {
            __break(1u);
            goto LABEL_31;
          }

          v33 = v50;
          v34 = v51;
          LODWORD(v51) = v51 & 0xFFFFFFFE;
          v36 = v54;
          v8 = v55;
          LODWORD(v55) = v55 & 0xFFFFFFFE;
          v40 = v60;
          v50 = 0;
          v35 = v52;
          v54 = 0;
          v37 = v8;
          v38 = v56;
          v9 = v58;
          v10 = v59;
          v58 = 0u;
          v59 = 0u;
          v39[0] = v9;
          v39[1] = v10;
          v60 = 0;
          *&v41[11] = *(v61 + 11);
          *v41 = v61[0];
          v11 = v62;
          v62 = 0u;
          v42 = v11;
          v43 = v63;
          v44 = v64;
          LODWORD(v63) = v63 & 0xFFFFFFFE;
          v45 = v65;
          *&v8 = v66;
          v65 = 0;
          v66 = 0;
          v46 = v8;
          v47 = v67;
          v12 = 1;
          v48 = v7;
          goto LABEL_10;
        }

LABEL_53:
        *a1 = 0;
        *(a1 + 1) = 0;
        v30 = *(a1 + 3);
        if (v30)
        {
          if (v5)
          {
            (*(*v30 + 16))(v30, v4);
            v31 = *(a1 + 3);
            v4 = *a1;
            v32 = *(a1 + 1);
            *a1 = 0;
            *(a1 + 1) = 0;
            if (v31)
            {
              if (v32)
              {
                (*(*v31 + 16))(v31, v4);
              }
            }
          }
        }

        v12 = 0;
        LOBYTE(v33) = 0;
LABEL_10:
        v49 = v12;
        if (v68)
        {
          WebCore::Cookie::~Cookie(&v58, v4);
        }

        goto LABEL_13;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v5)
      {
        (*(*v29 + 16))(v29);
        v4 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_53;
  }

  LOBYTE(v33) = 0;
  v49 = 0;
LABEL_17:
  if (v53)
  {
    v14 = v50;
    v50 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v4);
      }
    }
  }

LABEL_21:
  if ((v49 & 1) == 0)
  {
LABEL_31:
    v19 = *a1;
    v20 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (!v21)
    {
      return;
    }

    if (!v20)
    {
      return;
    }

    (*(*v21 + 16))(v21, v19);
    if ((v49 & 1) == 0)
    {
      return;
    }
  }

  WebKit::NetworkConnectionToWebProcess::setRawCookie(a2, &v33);
  if (v49)
  {
    WebCore::Cookie::~Cookie(v39, v15);
    v17 = v36;
    v36 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v33;
    v33 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::DeleteCookie,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v39);
  if ((v42 & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v43);
    if ((v46 & 1) == 0)
    {
      v6 = *a2;
      v27 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v28 = *(a2 + 3);
      if (!v28 || !v27 || ((*(*v28 + 16))(v28, v6), (v46 & 1) == 0))
      {
        v9 = 0;
        LOBYTE(v31) = 0;
        v38 = 0;
        goto LABEL_10;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v47);
    if ((v48 & 1) == 0)
    {
      v6 = *a2;
      v29 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v30 = *(a2 + 3);
      if (!v30)
      {
        break;
      }

      if (!v29)
      {
        break;
      }

      (*(*v30 + 16))(v30, v6);
      if ((v48 & 1) == 0)
      {
        break;
      }
    }

    if (v42 & 1) != 0 && (v46)
    {
      v7 = v39;
      v39 = 0;
      v31 = v7;
      v32 = v40;
      v33 = v41;
      LODWORD(v40) = v40 & 0xFFFFFFFE;
      v8 = v43;
      v43 = 0;
      v34 = v8;
      v35 = v44;
      v36 = v45;
      LODWORD(v44) = v44 & 0xFFFFFFFE;
      v37 = v47;
      v9 = 1;
      v38 = 1;
      goto LABEL_7;
    }

    __break(1u);
LABEL_36:
    v21 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v23 = *(a2 + 3);
    if (v23)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      (*(*v23 + 16))(v23, v21);
      if (v42)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  v9 = 0;
  LOBYTE(v31) = 0;
  v38 = 0;
  if ((v46 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = v43;
  v43 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

LABEL_10:
  if (v42)
  {
    v11 = v39;
    v39 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v6);
        if (v9)
        {
          goto LABEL_14;
        }

LABEL_41:
        v25 = *a2;
        v26 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result && v26)
        {
          return (*(*result + 16))(result, v25);
        }

        return result;
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_14:
  v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  v14 = v12;
  while (1)
  {
    v15 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v16 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v15)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
  v17 = WTF::fastMalloc(0x18);
  *v17 = &unk_1F10EF1C8;
  *(v17 + 1) = v14;
  *(v17 + 2) = a1;
  v43 = v17;
  WebKit::NetworkConnectionToWebProcess::deleteCookie(a3, &v31, &v34, &v37, &v43);
  result = v43;
  v43 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v38)
  {
LABEL_23:
    v19 = v37;
    v37 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v13);
    }

    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v13);
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::CookiesForDOMAsync,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WebCore::SameSiteInfo const&,WTF::URL const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IncludeSecureCookies,WebCore::CookieStoreGetOptions &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
{
  v4 = a2;
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v55);
  if ((v58 & 1) == 0)
  {
    v35 = *v4;
    v36 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v37 = v4[3];
    v38 = !v37 || v36 == 0;
    if (v38 || ((*(*v37 + 16))(v37, v35), (v58 & 1) == 0))
    {
      LOBYTE(v41) = 0;
      v54 = 0;
      goto LABEL_27;
    }
  }

  v6 = IPC::Decoder::decode<WebCore::SameSiteInfo>(v4);
  if ((v6 & 0x1000000) != 0)
  {
    v8 = v6;
    IPC::ArgumentCoder<WTF::URL,void>::decode(v4, &v59);
    if (v62 & 1) != 0 || (v7 = *v4, v39 = v4[1], *v4 = 0, v4[1] = 0, (v40 = v4[3]) != 0) && v39 && ((*(*v40 + 16))(v40, v7), (v62))
    {
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v63);
      if (v64 & 1) != 0 || (v7 = *v4, v31 = v4[1], *v4 = 0, v4[1] = 0, (v32 = v4[3]) != 0) && v31 && ((*(*v32 + 16))(v32, v7), (v64))
      {
        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v65);
        if (v66 & 1) != 0 || (v7 = *v4, v29 = v4[1], *v4 = 0, v4[1] = 0, (v30 = v4[3]) != 0) && v29 && ((*(*v30 + 16))(v30, v7), (v66))
        {
          v9 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(v4);
          if ((v9 & 0x100) != 0)
          {
            v10 = v9;
            IPC::ArgumentCoder<WebCore::CookieStoreGetOptions,void>::decode(v4, &v67);
            if (v68)
            {
              IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v69);
              if (v70 & 1) != 0 || (v7 = *v4, v25 = v4[1], *v4 = 0, v4[1] = 0, (v26 = v4[3]) != 0) && v25 && ((*(*v26 + 16))(v26, v7), (v70))
              {
                if ((v58 & 1) == 0 || (v62 & 1) == 0 || (v64 & 1) == 0 || (v66 & 1) == 0)
                {
                  goto LABEL_55;
                }

                v11 = v55;
                v55 = 0;
                v41 = v11;
                v42 = v56;
                v43 = v57;
                LODWORD(v56) = v56 & 0xFFFFFFFE;
                v44 = v8;
                v45 = BYTE2(v8);
                v12 = v59;
                v59 = 0;
                v46 = v12;
                v47 = v60;
                v48 = v61;
                LODWORD(v60) = v60 & 0xFFFFFFFE;
                v49 = v63;
                v50 = v65;
                v51 = v10;
                v13 = v67;
                *&v67 = 0;
                *v52 = v13;
                v53 = v69;
                v54 = 1;
              }

              else
              {
                LOBYTE(v41) = 0;
                v27 = *(&v67 + 1);
                v54 = 0;
                if (*(&v67 + 1) && atomic_fetch_add_explicit(*(&v67 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v27, v7);
                }
              }

              v14 = v67;
              if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v14, v7);
              }

              goto LABEL_19;
            }

            v7 = *v4;
            v33 = v4[1];
            *v4 = 0;
            v4[1] = 0;
            v34 = v4[3];
            if (v34 && v33)
            {
              (*(*v34 + 16))(v34, v7);
            }
          }
        }
      }

      LOBYTE(v41) = 0;
      v54 = 0;
LABEL_19:
      if (v62)
      {
        v15 = v59;
        v59 = 0;
        if (v15)
        {
          if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v7);
          }
        }
      }

      goto LABEL_23;
    }
  }

  LOBYTE(v41) = 0;
  v54 = 0;
LABEL_23:
  if (v58)
  {
    v16 = v55;
    v55 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v7);
      }
    }
  }

LABEL_27:
  if ((v54 & 1) == 0)
  {
    goto LABEL_56;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v4 = result;
    while (1)
    {
      v19 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v20 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_34;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_34:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10EF1F0;
    *(v21 + 1) = v4;
    *(v21 + 2) = a1;
    v59 = v21;
    if (v54)
    {
      WebKit::NetworkConnectionToWebProcess::cookiesForDOMAsync(a3, &v41, &v44, &v46, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52, v53, *(&v53 + 1), &v59);
      result = v59;
      v59 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v18 = *v4;
    v28 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    result = v4[3];
    if (result)
    {
      if (v28)
      {
        result = (*(*result + 16))(result, v18);
        if (v54)
        {
          continue;
        }
      }
    }

    break;
  }

  if (v54 == 1)
  {
    v22 = v52[1];
    v52[1] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }

    v23 = v52[0];
    v52[0] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v18);
    }

    v24 = v46;
    v46 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    result = v41;
    v41 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SetCookieFromDOMAsync,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WebCore::SameSiteInfo const&,WTF::URL const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::Cookie &&,WebCore::RequiresScriptTrackingPrivacy,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
{
  v4 = a2;
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v59);
  if (v62 & 1) != 0 || ((v34 = *v4, v35 = v4[1], *v4 = 0, v4[1] = 0, (v36 = v4[3]) != 0) ? (v37 = v35 == 0) : (v37 = 1), !v37 && ((*(*v36 + 16))(v36, v34), (v62)))
  {
    v6 = IPC::Decoder::decode<WebCore::SameSiteInfo>(v4);
    if (v6 & 0x1000000) != 0 && ((v8 = v6, IPC::ArgumentCoder<WTF::URL,void>::decode(v4, &v63), (v66) || (v7 = *v4, v38 = v4[1], *v4 = 0, v4[1] = 0, (v39 = v4[3]) != 0) && v38 && ((*(*v39 + 16))(v39, v7), (v66)))
    {
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v67);
      if ((v68 & 1) != 0 || (v7 = *v4, v22 = v4[1], *v4 = 0, v4[1] = 0, (v23 = v4[3]) != 0) && v22 && ((*(*v23 + 16))(v23, v7), (v68)) && ((IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v69), (v70) || (v7 = *v4, v20 = v4[1], *v4 = 0, v4[1] = 0, (v21 = v4[3]) != 0) && v20 && ((*(*v21 + 16))(v21, v7), (v70)) && (IPC::Decoder::decode<WebCore::Cookie>(v4, &v71), v81 == 1))
      {
        v9 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(v4);
        if (v9 > 0xFFu)
        {
          v10 = v9;
          IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v82);
          if (v83 & 1) != 0 || (v7 = *v4, v18 = v4[1], *v4 = 0, v4[1] = 0, (v19 = v4[3]) != 0) && v18 && ((*(*v19 + 16))(v19, v7), (v83))
          {
            if ((v62 & 1) == 0 || (v66 & 1) == 0 || (v68 & 1) == 0 || (v70 & 1) == 0 || (v81 & 1) == 0)
            {
              goto LABEL_54;
            }

            v11 = v59;
            v59 = 0;
            v40 = v11;
            v41 = v60;
            v42 = v61;
            LODWORD(v60) = v60 & 0xFFFFFFFE;
            v43 = v8;
            v44 = BYTE2(v8);
            v12 = v63;
            v63 = 0;
            v45 = v12;
            v46 = v64;
            v47 = v65;
            LODWORD(v64) = v64 & 0xFFFFFFFE;
            v48 = v67;
            v49 = v69;
            v13 = v72;
            v50[0] = v71;
            v71 = 0u;
            v72 = 0u;
            v50[1] = v13;
            v14 = v73;
            v73 = 0;
            v51 = v14;
            *(v52 + 11) = *(v74 + 11);
            v15 = v75;
            v75 = 0u;
            v52[0] = v74[0];
            v52[2] = v15;
            v52[3] = v76;
            v52[4] = v77;
            LODWORD(v76) = v76 & 0xFFFFFFFE;
            v53 = v78;
            v16 = v79;
            v78 = 0;
            v79 = 0;
            v54 = v16;
            v55 = v80;
            v56 = v10;
            v17 = 1;
            v57 = v82;
          }

          else
          {
            v17 = 0;
            LOBYTE(v40) = 0;
          }

          v58 = v17;
        }

        else
        {
          LOBYTE(v40) = 0;
          v58 = 0;
        }

        if (v81)
        {
          WebCore::Cookie::~Cookie(&v71, v7);
        }
      }

      else
      {
        LOBYTE(v40) = 0;
        v58 = 0;
      }

      if (v66)
      {
        v24 = v63;
        v63 = 0;
        if (v24)
        {
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v7);
          }
        }
      }
    }

    else
    {
      LOBYTE(v40) = 0;
      v58 = 0;
    }

    if (v62)
    {
      v25 = v59;
      v59 = 0;
      if (v25)
      {
        if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v7);
        }
      }
    }
  }

  else
  {
    LOBYTE(v40) = 0;
    v58 = 0;
  }

  if ((v58 & 1) == 0)
  {
    goto LABEL_55;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v27 & 1) == 0)
    {
      break;
    }

    v4 = result;
    while (1)
    {
      v28 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v29 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v29 == v28)
      {
        goto LABEL_43;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_43:
    v30 = WTF::fastMalloc(0x18);
    *v30 = &unk_1F10EF218;
    v30[1] = v4;
    v30[2] = a1;
    *&v71 = v30;
    if (v58)
    {
      WebKit::NetworkConnectionToWebProcess::setCookieFromDOMAsync(a3, &v40, &v43, &v45, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v56, v57, *(&v57 + 1), &v71);
      result = v71;
      *&v71 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v27 = *v4;
    v33 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    result = v4[3];
    if (result)
    {
      if (v33)
      {
        result = (*(*result + 16))(result, v27);
        if (v58)
        {
          continue;
        }
      }
    }

    break;
  }

  if (v58 == 1)
  {
    WebCore::Cookie::~Cookie(v50, v27);
    v32 = v45;
    v45 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v31);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::SubscribeToCookieChangeNotifications,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, void *a3)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v43);
  if ((v46 & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v47);
    if ((v50 & 1) == 0)
    {
      v9 = *a2;
      v31 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v32 = *(a2 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v9), (v50 & 1) == 0))
      {
        v14 = 0;
        LOBYTE(v33) = 0;
        v42 = 0;
        goto LABEL_14;
      }
    }

    v3 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v4 = v10;
    v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v9 & 1) == 0)
    {
      break;
    }

    if (v46 & 1) != 0 && (v50)
    {
      v5 = v11;
      v12 = v43;
      v43 = 0;
      v33 = v12;
      v34 = v44;
      v35 = v45;
      LODWORD(v44) = v44 & 0xFFFFFFFE;
      v13 = v47;
      v47 = 0;
      v36 = v13;
      v37 = v48;
      v38 = v49;
      LODWORD(v48) = v48 & 0xFFFFFFFE;
      v39 = v3;
      v40 = v4;
      v14 = 1;
      v41 = v11;
      goto LABEL_10;
    }

    __break(1u);
LABEL_37:
    v25 = *a2;
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      v28 = v26 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      (*(*v27 + 16))(v27, v25);
      if (v46)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  v14 = 0;
  LOBYTE(v33) = 0;
LABEL_10:
  v42 = v14;
  if (v50)
  {
    v15 = v47;
    v47 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v9);
      }
    }
  }

LABEL_14:
  if (v46)
  {
    v16 = v43;
    v43 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v9);
        if (v14)
        {
          goto LABEL_18;
        }

LABEL_42:
        v29 = *a2;
        v30 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result && v30)
        {
          return (*(*result + 16))(result, v29);
        }

        return result;
      }
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = v17;
  while (1)
  {
    v20 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v21 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v20)
    {
      goto LABEL_24;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_24:
  v22 = WTF::fastMalloc(0x18);
  *v22 = &unk_1F10EF240;
  *(v22 + 1) = v19;
  *(v22 + 2) = a1;
  v47 = v22;
  WebKit::NetworkConnectionToWebProcess::subscribeToCookieChangeNotifications(a3, &v33, &v36, v3, v4, v5, &v47);
  result = v47;
  v47 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v42)
  {
LABEL_27:
    v24 = v36;
    v36 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UnsubscribeFromCookieChangeNotifications,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&)>(IPC::Decoder *a1, WebKit::NetworkConnectionToWebProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v9 = *(a1 + 3)) != 0) ? (v10 = v8 == 0) : (v10 = 1), !v10 && ((*(*v9 + 16))(v9, v7), (v12)))
  {
    WebKit::NetworkConnectionToWebProcess::unsubscribeFromCookieChangeNotifications(a2, &v11, v4);
    if (v12)
    {
      v6 = v11;
      v11 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalFileBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::String const&,WTF::String const&,WebKit::SandboxExtensionHandle &&,WTF::String const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v43);
  if ((v46 & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v47);
    if ((v48 & 1) == 0)
    {
      v9 = *a1;
      v29 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v30 = *(a1 + 3);
      if (!v30 || !v29 || ((*(*v30 + 16))(v30, v9), (v48 & 1) == 0))
      {
        v10 = 0;
        LOBYTE(v35) = 0;
        v42 = 0;
        goto LABEL_20;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v49);
    if ((v50 & 1) == 0)
    {
      v9 = *a1;
      v31 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v9), (v50 & 1) == 0))
      {
        v10 = 0;
        LOBYTE(v35) = 0;
        v42 = 0;
        goto LABEL_16;
      }
    }

    IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a1, &v51);
    if ((v52 & 1) == 0)
    {
      v9 = *a1;
      v20 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v21 = *(a1 + 3);
      if (!v21 || !v20 || ((*(*v21 + 16))(v21, v9), (v52 & 1) == 0))
      {
        v10 = 0;
        LOBYTE(v35) = 0;
        v42 = 0;
        goto LABEL_12;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v53);
    if ((v54 & 1) == 0)
    {
      v9 = *a1;
      v33 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v34 = *(a1 + 3);
      if (!v34)
      {
        break;
      }

      if (!v33)
      {
        break;
      }

      (*(*v34 + 16))(v34, v9);
      if ((v54 & 1) == 0)
      {
        break;
      }
    }

    if (v46 & 1) != 0 && (v48 & 1) != 0 && (v50 & 1) != 0 && (v52)
    {
      v4 = v43;
      v43 = 0;
      v35 = v4;
      v36 = v44;
      v37 = v45;
      LODWORD(v44) = v44 & 0xFFFFFFFE;
      v5 = v47;
      v47 = 0;
      v6 = v49;
      v49 = 0;
      v38 = v5;
      v39 = v6;
      v7 = v51;
      v51 = 0;
      v40 = v7;
      v41 = v53;
      v8 = 1;
      v42 = 1;
LABEL_11:
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v51);
      v10 = v8;
      goto LABEL_12;
    }

    __break(1u);
LABEL_43:
    v22 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      (*(*v24 + 16))(v24, v22);
      if (v46)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  v8 = 0;
  v10 = 0;
  LOBYTE(v35) = 0;
  v42 = 0;
  if (v52)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v50)
  {
    v11 = v49;
    v49 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }
    }
  }

LABEL_16:
  if (v48)
  {
    v12 = v47;
    v47 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }
    }
  }

LABEL_20:
  if ((v46 & 1) != 0 && (v13 = v43, v43 = 0, v13) && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
    if (v10)
    {
LABEL_24:
      WebKit::NetworkConnectionToWebProcess::registerInternalFileBlobURL(a2, &v35, &v38, &v39, &v40);
      if (v42)
      {
        v15 = v41;
        v41 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v40);
        v17 = v39;
        v39 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v16);
        }

        v18 = v38;
        v38 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v16);
        }

        v19 = v35;
        v35 = 0;
        if (v19)
        {
          if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v16);
          }
        }
      }

      return;
    }
  }

  else if (v10)
  {
    goto LABEL_24;
  }

LABEL_48:
  v26 = *a1;
  v27 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = *(a1 + 3);
  if (v28 && v27)
  {
    (*(*v28 + 16))(v28, v26);
  }
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)>(IPC::Decoder *a1, void *a2)
{
  IPC::Decoder::decode<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>(v5, a1);
  if (v5[64] == 1)
  {
    WebKit::NetworkConnectionToWebProcess::registerInternalBlobURL(a2, v5);
  }

  return std::optional<std::tuple<WTF::URL,WTF::Vector<WebCore::BlobPart,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>>::~optional(v5, v3);
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,WebCore::PolicyContainer &&,std::optional<WebCore::SecurityOriginData> const&)>(IPC::Decoder *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>>(v5, a1);
  if (v9 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::registerBlobURL(a2, v5, &v6, &v7, &v8);
    if (v9)
    {
      return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,WTF::URL,WTF::URL,WebCore::PolicyContainer,std::optional<WebCore::SecurityOriginData>>::~__tuple_impl(v5, v4);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalBlobURLOptionallyFileBacked,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL &&,WTF::URL &,WTF::String const&,WTF::URL &&&&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v39);
  if ((v42 & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v43);
    if ((v46 & 1) == 0)
    {
      v4 = *a1;
      v24 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v25 = *(a1 + 3);
      if (!v25 || !v24 || ((*(*v25 + 16))(v25, v4), (v46 & 1) == 0))
      {
        v8 = 0;
        LOBYTE(v30) = 0;
        v38 = 0;
        goto LABEL_16;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v47);
    if ((v48 & 1) == 0)
    {
      v4 = *a1;
      v26 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v27 = *(a1 + 3);
      if (!v27 || !v26 || ((*(*v27 + 16))(v27, v4), (v48 & 1) == 0))
      {
        v8 = 0;
        LOBYTE(v30) = 0;
        v38 = 0;
        goto LABEL_12;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v49);
    if ((v50 & 1) == 0)
    {
      v4 = *a1;
      v28 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v29 = *(a1 + 3);
      if (!v29)
      {
        break;
      }

      if (!v28)
      {
        break;
      }

      (*(*v29 + 16))(v29, v4);
      if ((v50 & 1) == 0)
      {
        break;
      }
    }

    if (v42 & 1) != 0 && (v46 & 1) != 0 && (v48)
    {
      v5 = v39;
      v39 = 0;
      v30 = v5;
      v31 = v40;
      v32 = v41;
      LODWORD(v40) = v40 & 0xFFFFFFFE;
      v6 = v43;
      v43 = 0;
      v33 = v6;
      v34 = v44;
      v35 = v45;
      LODWORD(v44) = v44 & 0xFFFFFFFE;
      v7 = v47;
      v47 = 0;
      v36 = v7;
      v37 = v49;
      v8 = 1;
      v38 = 1;
      goto LABEL_9;
    }

    __break(1u);
LABEL_37:
    v17 = *a1;
    v18 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      (*(*v19 + 16))(v19, v17);
      if (v42)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  v8 = 0;
  LOBYTE(v30) = 0;
  v38 = 0;
  if ((v48 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = v47;
  v47 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

LABEL_12:
  if (v46)
  {
    v10 = v43;
    v43 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v4);
      }
    }
  }

LABEL_16:
  if ((v42 & 1) != 0 && (v11 = v39, v39 = 0, v11) && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
    if (v8)
    {
LABEL_20:
      WebKit::NetworkConnectionToWebProcess::registerInternalBlobURLOptionallyFileBacked(a2, &v30, &v33, &v36);
      if (v38)
      {
        v13 = v37;
        v37 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }

        v14 = v36;
        v36 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v12);
        }

        v15 = v33;
        v33 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v12);
        }

        v16 = v30;
        v30 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v12);
          }
        }
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_20;
  }

LABEL_42:
  v21 = *a1;
  v22 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v23 = *(a1 + 3);
  if (v23 && v22)
  {
    (*(*v23 + 16))(v23, v21);
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterInternalBlobURLForSlice,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,WTF::URL const&,long long,long long,WTF::String const&)>(IPC::Decoder *a1, WebKit::NetworkConnectionToWebProcess *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v37);
  if ((v40 & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v41);
    if ((v44 & 1) == 0)
    {
      v6 = *a1;
      v23 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v24 = *(a1 + 3);
      if (!v24 || !v23 || ((*(*v24 + 16))(v24, v6), (v44 & 1) == 0))
      {
        v10 = 0;
        LOBYTE(v27) = 0;
        v36 = 0;
        goto LABEL_15;
      }
    }

    v2 = IPC::Decoder::decode<long long>(a1);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = IPC::Decoder::decode<long long>(a1);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v3 = v7;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v45);
    if ((v46 & 1) == 0)
    {
      v6 = *a1;
      v25 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (!v26 || !v25 || ((*(*v26 + 16))(v26, v6), (v46 & 1) == 0))
      {
        v10 = 0;
        LOBYTE(v27) = 0;
        goto LABEL_9;
      }
    }

    if (v40 & 1) != 0 && (v44)
    {
      v8 = v37;
      v37 = 0;
      v27 = v8;
      v28 = v38;
      v29 = v39;
      LODWORD(v38) = v38 & 0xFFFFFFFE;
      v9 = v41;
      v41 = 0;
      v30 = v9;
      v31 = v42;
      v32 = v43;
      LODWORD(v42) = v42 & 0xFFFFFFFE;
      v33 = v2;
      v34 = v3;
      v10 = 1;
      v35 = v45;
LABEL_9:
      v36 = v10;
      goto LABEL_11;
    }

    __break(1u);
LABEL_33:
    v17 = *a1;
    v18 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      (*(*v19 + 16))(v19, v17);
      if (v40)
      {
        continue;
      }
    }

    goto LABEL_38;
  }

  v10 = 0;
  LOBYTE(v27) = 0;
  v36 = 0;
LABEL_11:
  if (v44)
  {
    v11 = v41;
    v41 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v6);
      }
    }
  }

LABEL_15:
  if ((v40 & 1) != 0 && (v12 = v37, v37 = 0, v12) && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
    if (v10)
    {
LABEL_19:
      result = WebKit::NetworkConnectionToWebProcess::registerInternalBlobURLForSlice(a2, &v27, &v30, v2, v3, &v35);
      if (v36)
      {
        v15 = v35;
        v35 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        v16 = v30;
        v30 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        result = v27;
        v27 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v14);
          }
        }
      }

      return result;
    }
  }

  else if (v10)
  {
    goto LABEL_19;
  }

LABEL_38:
  v21 = *a1;
  v22 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v22)
  {
    return (*(*result + 16))(result, v21);
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UnregisterBlobURL,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,std::optional<WebCore::SecurityOriginData> const&)>(IPC::Decoder *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v5, a1);
  if (v6[40] == 1)
  {
    WebKit::NetworkConnectionToWebProcess::unregisterBlobURL(a2, v5, v6);
  }

  return std::optional<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>>::~optional(v5, v3);
}

void *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a2, v12);
  if (v13 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10EF268;
      result[1] = v8;
      result[2] = a1;
      v11 = result;
      if ((v13 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkConnectionToWebProcess::writeBlobsToTemporaryFilesForIndexedDB(a3, v12, &v11);
      result = v11;
      v11 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v13 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v7);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RegisterBlobURLHandle,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,std::optional<WebCore::SecurityOriginData> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v7, a1);
  if (v12 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::registerBlobURLHandle(a2, v7, &v8);
    if (v12)
    {
      if (v11 == 1)
      {
        if (!v10)
        {
          v5 = v9;
          v9 = 0;
          if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, v4);
          }

          v6 = v8;
          v8 = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v4);
          }
        }

        v10 = -1;
      }

      result = v7[0];
      v7[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::UnregisterBlobURLHandle,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::URL const&,std::optional<WebCore::SecurityOriginData> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v7, a1);
  if (v12 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::unregisterBlobURLHandle(a2, v7, &v8);
    if (v12)
    {
      if (v11 == 1)
      {
        if (!v10)
        {
          v5 = v9;
          v9 = 0;
          if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, v4);
          }

          v6 = v8;
          v8 = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v4);
          }
        }

        v10 = -1;
      }

      result = v7[0];
      v7[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkConnectionToWebProcess::RegisterBlobPathForTesting,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::NetworkConnectionToWebProcess *a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v15 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v15)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(0x18);
      *result = &unk_1F10EF290;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkConnectionToWebProcess::registerBlobPathForTesting(a3, &v14, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkConnectionToWebProcess::CreateSocketChannel,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::ResourceRequest const&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,BOOL,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>,WebCore::StoredCredentialsPolicy)>(IPC::Decoder *a1, uint64_t a2)
{
  v89 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a1, v60);
  if (v61 & 1) != 0 || ((v32 = *a1, v33 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v34 = *(a1 + 3)) != 0) ? (v35 = v33 == 0) : (v35 = 1), !v35 && ((*(*v34 + 16))(v34, v32), (v61)))
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v62);
    if (v63 & 1) != 0 || (v50 = *a1, v51 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v52 = *(a1 + 3)) != 0) && v51 && ((*(*v52 + 16))(v52, v50), (v63))
    {
      v5 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a1);
      if (v6)
      {
        v7 = v5;
        v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
        if (v9)
        {
          v10 = v8;
          IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v64);
          if (v65 & 1) != 0 || (v9 = *a1, v38 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v39 = *(a1 + 3)) != 0) && v38 && ((*(*v39 + 16))(v39, v9), (v65))
          {
            IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v66);
            if ((v67 & 1) == 0)
            {
              goto LABEL_62;
            }

            while (1)
            {
              IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, &v82);
              if ((v88 & 1) == 0)
              {
                v9 = *a1;
                v28 = *(a1 + 1);
                *a1 = 0;
                *(a1 + 1) = 0;
                v29 = *(a1 + 3);
                if (!v29)
                {
                  goto LABEL_67;
                }

                if (!v28)
                {
                  goto LABEL_67;
                }

                (*(*v29 + 16))(v29, v9);
                if ((v88 & 1) == 0)
                {
                  goto LABEL_67;
                }
              }

              v11 = *(a1 + 1);
              v12 = *(a1 + 2);
              v9 = *a1;
              if (v11 <= &v12[-*a1])
              {
                break;
              }

              v13 = v12 + 1;
              *(a1 + 2) = v12 + 1;
              if (!v12)
              {
                goto LABEL_111;
              }

              v14 = *v12;
              if (v14 >= 2)
              {
                goto LABEL_119;
              }

              if (v11 <= v13 - v9)
              {
                v55 = 0;
                v56 = 0;
                *a1 = 0;
                *(a1 + 1) = 0;
                v57 = *(a1 + 3);
                if (v57)
                {
                  (*(*v57 + 16))(v57);
                  v56 = *a1;
                  v55 = *(a1 + 1);
                }

LABEL_116:
                *a1 = 0;
                *(a1 + 1) = 0;
                v58 = *(a1 + 3);
                if (v58 && v55)
                {
                  (*(*v58 + 16))(v58, v56, v55);
LABEL_125:
                  v9 = *a1;
                  v11 = *(a1 + 1);
LABEL_119:
                  *a1 = 0;
                  *(a1 + 1) = 0;
                  v59 = *(a1 + 3);
                  if (v59 && v11)
                  {
                    (*(*v59 + 16))(v59, v9);
                  }

LABEL_16:
                  v19 = 0;
                  v68[0] = 0;
                  goto LABEL_29;
                }

LABEL_117:
                v11 = 0;
                goto LABEL_118;
              }

              *(a1 + 2) = v12 + 2;
              if (v12 == -1)
              {
                v55 = v11;
                v56 = v9;
                goto LABEL_116;
              }

              v15 = *v13;
              if (v15 >= 2)
              {
                goto LABEL_119;
              }

              v16 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a1);
              if ((v16 & 0x10000) == 0)
              {
                goto LABEL_16;
              }

              v17 = v16;
              v18 = IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(a1);
              if ((v18 & 0x100) == 0)
              {
                goto LABEL_16;
              }

              if (v61 & 1) != 0 && (v63 & 1) != 0 && (v65 & 1) != 0 && (v67 & 1) != 0 && (v88)
              {
                v20 = v18;
                std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v68, v60);
                v21 = v62;
                v62 = 0;
                v69 = v21;
                *v70 = v7;
                *v71 = v10;
                *v72 = v64;
                *v73 = v66;
                LOBYTE(v74[0]) = 0;
                v76 = -1;
                if (!v84)
                {
                  v22 = v82;
                  v82 = 0uLL;
                  *v74 = v22;
                  v75 = v83;
                  goto LABEL_24;
                }

                if (v84 != 255)
                {
                  *v74 = v82;
LABEL_24:
                  v76 = v84;
                }

                LOBYTE(v77[0]) = 0;
                v79 = -1;
                if (!v87)
                {
                  v23 = v85;
                  v85 = 0uLL;
                  *v77 = v23;
                  v78 = v86;
                  goto LABEL_27;
                }

                if (v87 != 255)
                {
                  *v77 = v85;
LABEL_27:
                  v79 = v87;
                }

                v80[0] = v14;
                v80[1] = v15;
                *v81 = v17;
                v19 = 1;
                v81[2] = v20;
LABEL_29:
                v81[6] = v19;
                if (v88)
                {
                  if (!v87)
                  {
                    v24 = *(&v85 + 1);
                    *(&v85 + 1) = 0;
                    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v24, v9);
                    }

                    v25 = v85;
                    *&v85 = 0;
                    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v25, v9);
                    }
                  }

                  v87 = -1;
                  if (!v84)
                  {
                    v26 = *(&v82 + 1);
                    *(&v82 + 1) = 0;
                    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v26, v9);
                    }

                    v27 = v82;
                    *&v82 = 0;
                    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v27, v9);
                    }
                  }
                }

                goto LABEL_68;
              }

              __break(1u);
LABEL_62:
              v9 = *a1;
              v36 = *(a1 + 1);
              *a1 = 0;
              *(a1 + 1) = 0;
              v37 = *(a1 + 3);
              if (v37)
              {
                if (v36)
                {
                  (*(*v37 + 16))(v37, v9);
                  if (v67)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_67;
            }

            *a1 = 0;
            *(a1 + 1) = 0;
            v53 = *(a1 + 3);
            if (v53)
            {
              if (v11)
              {
                (*(*v53 + 16))(v53);
                v11 = *(a1 + 1);
              }
            }

            else
            {
              v11 = 0;
            }

LABEL_111:
            *a1 = 0;
            *(a1 + 1) = 0;
            v54 = *(a1 + 3);
            if (!v54)
            {
              goto LABEL_117;
            }

            if (v11)
            {
              (*(*v54 + 16))(v54);
              goto LABEL_125;
            }

LABEL_118:
            v9 = 0;
            goto LABEL_119;
          }
        }
      }

      else
      {
        v9 = *a1;
        v30 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v31 = *(a1 + 3);
        if (v31 && v30)
        {
          (*(*v31 + 16))(v31, v9);
        }
      }

LABEL_67:
      v68[0] = 0;
      v81[6] = 0;
LABEL_68:
      if (v63)
      {
        v40 = v62;
        v62 = 0;
        if (v40)
        {
          if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v9);
          }
        }
      }
    }

    else
    {
      v68[0] = 0;
      v81[6] = 0;
    }

    if (v61)
    {
      WebCore::ResourceRequest::~ResourceRequest(v60);
    }
  }

  else
  {
    v68[0] = 0;
    v81[6] = 0;
  }

  if (v81[6] & 1) != 0 || (v47 = *a1, v48 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v49 = *(a1 + 3)) != 0) && v48 && ((*(*v49 + 16))(v49, v47), (v81[6]))
  {
    WebKit::NetworkConnectionToWebProcess::createSocketChannel(a2, v68, &v69, *v70, *v71, *v72, *&v72[2], v4, v73[0], v73[1], v74, *v80, *v81, v81[2]);
    if (v81[6])
    {
      if (!v79)
      {
        v42 = v77[1];
        v77[1] = 0;
        if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v41);
        }

        v43 = v77[0];
        v77[0] = 0;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v41);
        }
      }

      v79 = -1;
      if (!v76)
      {
        v44 = v74[1];
        v74[1] = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v41);
        }

        v45 = v74[0];
        v74[0] = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v41);
        }
      }

      v76 = -1;
      v46 = v69;
      v69 = 0;
      if (v46)
      {
        if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v41);
        }
      }

      WebCore::ResourceRequest::~ResourceRequest(v68);
    }
  }
}

uint64_t IPC::handleMessage<Messages::NetworkConnectionToWebProcess::RemoveStorageAccessForFrame,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v4 & 1) != 0 && (IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v5))
  {

    return WebKit::NetworkConnectionToWebProcess::removeStorageAccessForFrame(a2);
  }

  else
  {
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkConnectionToWebProcess::LogUserInteraction,IPC::Connection,WebKit::NetworkConnectionToWebProcess,WebKit::NetworkConnectionToWebProcess,void ()(WebCore::RegistrableDomain &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::RegistrableDomain>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::NetworkConnectionToWebProcess::logUserInteraction(a2, &v5);
    if (v6)
    {
      result = v5;
      v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}