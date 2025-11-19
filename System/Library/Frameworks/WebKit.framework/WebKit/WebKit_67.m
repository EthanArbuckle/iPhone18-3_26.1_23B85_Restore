void WebKit::RemoteDisplayListRecorder::didReceiveStreamMessage(atomic_uint *this, IPC::StreamServerConnection *a2, unsigned __int8 **a3, __n128 a4)
{
  v229 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 2, 1u);
  v8 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x417:
      v206 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v206 & 0x100000000) != 0)
      {
        WebKit::RemoteDisplayListRecorder::applyDeviceScaleFactor(this, *&v206);
      }

      goto LABEL_146;
    case 0x418:
      WebKit::RemoteDisplayListRecorder::applyFillPattern(this);
      goto LABEL_146;
    case 0x419:
      WebKit::RemoteDisplayListRecorder::applyStrokePattern(this);
      goto LABEL_146;
    case 0x41A:
      buf.m_rect.m_location = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
      LOBYTE(buf.m_rect.m_size.m_width) = v207;
      if (v207)
      {
        WebKit::RemoteDisplayListRecorder::beginPage(this, &buf);
      }

      goto LABEL_146;
    case 0x41B:
      v172 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v172 & 0x100000000) == 0)
      {
        goto LABEL_146;
      }

      v173 = *&v172;
      v174 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v174 + 616))(v173);
      goto LABEL_147;
    case 0x41C:
      if ((IPC::Decoder::decode<std::tuple<WebCore::CompositeMode>>(a3) & 0xFFFFFF) >= 0x10000)
      {
        WebKit::RemoteDisplayListRecorder::beginTransparencyLayerWithCompositeMode(this);
      }

      goto LABEL_146;
    case 0x41D:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::clearRect(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x41E:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::clip(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x41F:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::clipOut(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x420:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRoundedRect>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((v226 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::clipOutRoundedRect(this, &buf);
      goto LABEL_146;
    case 0x421:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipOutToPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(a3, this);
      goto LABEL_146;
    case 0x422:
      IPC::ArgumentCoder<WebCore::Path,void>::decode(a3, a2, &v221);
      if ((v224 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        v228 = 0;
        goto LABEL_161;
      }

      v94 = IPC::Decoder::decode<WebCore::WindRule>(a3);
      LOBYTE(buf.m_rect.m_location.m_x) = 0;
      if ((v94 & 0x100) != 0)
      {
        BYTE8(v226) = -1;
        v95 = v223;
        if (v223 == 2)
        {
          m_location = v221.m_rect.m_location;
          v221.m_rect.m_location = 0;
          buf.m_rect.m_location = m_location;
        }

        else if (v223)
        {
          if (v223 != 1)
          {
            goto LABEL_155;
          }

          buf = v221;
          *&v226 = v222;
        }

        BYTE8(v226) = v223;
LABEL_155:
        LOBYTE(v227.m_colorAndFlags) = v94;
        v97 = 1;
        goto LABEL_156;
      }

      v97 = 0;
      v95 = v223;
LABEL_156:
      v228 = v97;
      if (v95 >= 2 && v95 != 255)
      {
        v98 = v221.m_rect.m_location;
        v221.m_rect.m_location = 0;
        if (v98)
        {
          if (atomic_fetch_add(v98 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v98 + 2);
            (*(*v98 + 8))(v98);
          }
        }
      }

LABEL_161:
      if ((v228 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::clipPath(this);
      if ((v228 & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_33:
      if (BYTE8(v226) < 2u)
      {
        goto LABEL_146;
      }

      if (BYTE8(v226) == 255)
      {
        goto LABEL_146;
      }

      v33 = buf.m_rect.m_location;
      buf.m_rect.m_location = 0;
      if (!v33)
      {
        goto LABEL_146;
      }

      goto LABEL_46;
    case 0x423:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRoundedRect>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((v226 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::clipRoundedRect(this, &buf);
      goto LABEL_146;
    case 0x424:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipToImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x425:
      IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(a3, &buf);
      if ((v226 & 1) == 0)
      {
        goto LABEL_423;
      }

      v221 = buf;
      LOBYTE(v222) = 1;
      v35 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v35 + 680))();
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x426:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawControlPart,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::ControlPart,WTF::RawPtrTraits<WebCore::ControlPart>,WTF::DefaultRefDerefTraits<WebCore::ControlPart>> &&,WebCore::FloatRoundedRect const&,float,WebCore::ControlStyle const&)>(a3, this, a4);
      goto LABEL_146;
    case 0x427:
      v63 = a3[1];
      v64 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      v65 = *a3;
      v66 = (v64 - *a3);
      v47 = v63 >= v66;
      v67 = v63 - v66;
      if (!v47 || v67 <= 7)
      {
        goto LABEL_435;
      }

      a3[2] = (v64 + 1);
      if (!v64)
      {
        goto LABEL_436;
      }

      if (!v65)
      {
        goto LABEL_423;
      }

      v69 = *v64;
      if (*v64 - 1 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_423;
      }

      v70 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF8);
      v71 = (v70 - v65);
      v47 = v63 >= v71;
      v72 = v63 - v71;
      if (!v47 || v72 <= 7)
      {
LABEL_435:
        IPC::Decoder::markInvalid(a3);
LABEL_436:
        IPC::Decoder::markInvalid(a3);
        if (!*a3)
        {
          goto LABEL_423;
        }

        goto LABEL_437;
      }

      a3[2] = (v70 + 1);
      if (!v70)
      {
        goto LABEL_436;
      }

      if ((*v70 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::drawDecomposedGlyphs(this, v69, *v70);
      if (this)
      {
        goto LABEL_147;
      }

      return;
    case 0x428:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawDotsForDocumentMarker,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WebCore::DocumentMarkerLineStyle const&)>(a3, this);
      goto LABEL_146;
    case 0x429:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawEllipse,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x42A:
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v217);
      if ((v218 & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Filter,void>::decode(a3, &v219);
      if (v220 != 1)
      {
        goto LABEL_423;
      }

      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_437;
      }

      buf.m_rect = v221.m_rect;
      *&buf.m_radii.m_topLeft.m_width = v217;
      v177 = v219;
      v219 = 0;
      buf.m_radii.m_bottomLeft = v177;
      LOBYTE(buf.m_radii.m_bottomRight.m_width) = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v219, v176);
      WebKit::RemoteDisplayListRecorder::drawFilteredImageBuffer(this, *&buf.m_rect.m_location, SLOBYTE(buf.m_rect.m_size.m_width), &buf.m_radii, &buf.m_radii.m_bottomLeft);
      if (LOBYTE(buf.m_radii.m_bottomRight.m_width))
      {
        WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&buf.m_radii.m_bottomLeft, v178);
      }

      goto LABEL_146;
    case 0x42B:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawFocusRingPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&,float,WebCore::Color const&)>(a3, this);
      goto LABEL_146;
    case 0x42C:
      IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      v187 = a3[1];
      v188 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v189 = *a3;
      v190 = (v188 - *a3);
      v47 = v187 >= v190;
      v191 = v187 - v190;
      if (!v47 || v191 <= 3)
      {
        goto LABEL_488;
      }

      a3[2] = (v188 + 1);
      if (!v188)
      {
        goto LABEL_489;
      }

      v4 = *v188;
      v193 = ((v188 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      v194 = (v193 - v189);
      v47 = v187 >= v194;
      v195 = v187 - v194;
      if (!v47 || v195 <= 3)
      {
LABEL_488:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_489;
      }

      a3[2] = (v193 + 1);
      if (!v193)
      {
LABEL_489:
        IPC::Decoder::markInvalid(a3);
        v201 = 0;
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 0;
        goto LABEL_372;
      }

      v5 = *v193;
      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if (LOBYTE(v217.m_size.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(v217.m_size.m_width)))
      {
        if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_437;
        }

        v198 = v221.m_rect.m_location;
        v221.m_rect.m_location = 0;
        buf.m_rect.m_location = v198;
        m_size = v221.m_rect.m_size;
        v221.m_rect.m_size.m_height = 0.0;
        buf.m_rect.m_size = m_size;
        buf.m_radii.m_topLeft.m_width = v4;
        buf.m_radii.m_topLeft.m_height = v5;
        buf.m_radii.m_topRight = v217.m_location;
        v200 = 1;
        v201 = 1;
      }

      else
      {
        v200 = 0;
        v201 = 0;
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
      }

      LOBYTE(buf.m_radii.m_bottomLeft.m_width) = v200;
LABEL_372:
      if (LOBYTE(v221.m_radii.m_topLeft.m_width))
      {
        v202 = v221.m_rect.m_location;
        if (v221.m_rect.m_location)
        {
          v221.m_rect.m_location = 0;
          v221.m_rect.m_size.m_width = 0.0;
          WTF::fastFree(v202, v197);
        }
      }

      if (v201)
      {
        WebKit::RemoteDisplayListRecorder::drawFocusRingRects(this, v4, v5);
        if (LOBYTE(buf.m_radii.m_bottomLeft.m_width))
        {
          if ((*&buf.m_radii.m_topRight & 0x8000000000000) != 0)
          {
            v212 = (*&buf.m_radii.m_topRight & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((*&buf.m_radii.m_topRight & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v212);
              WTF::fastFree(v212, v90);
            }
          }

          v92 = buf.m_rect.m_location;
          if (buf.m_rect.m_location)
          {
            buf.m_rect.m_location = 0;
            buf.m_rect.m_size.m_width = 0.0;
            goto LABEL_307;
          }
        }
      }

      else
      {
LABEL_424:
        IPC::Decoder::markInvalid(a3);
      }

      goto LABEL_146;
    case 0x42D:
      v115 = a3[1];
      v116 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      v117 = *a3;
      v118 = (v116 - *a3);
      v47 = v115 >= v118;
      v119 = v115 - v118;
      if (!v47 || v119 <= 7)
      {
        goto LABEL_435;
      }

      a3[2] = (v116 + 1);
      if (!v116)
      {
        goto LABEL_436;
      }

      if (!v117)
      {
        goto LABEL_423;
      }

      v121 = *v116;
      if ((*v116 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder>(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      v122 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v123 & 1) == 0)
      {
        goto LABEL_423;
      }

      v124 = v122;
      v125 = IPC::Decoder::decode<WebCore::FontSmoothingMode>(a3);
      if ((v125 & 0x100) == 0)
      {
        goto LABEL_424;
      }

      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_437;
      }

      v221.m_rect = buf.m_rect;
      v221.m_radii.m_topLeft = buf.m_radii.m_topLeft;
      WebKit::RemoteDisplayListRecorder::drawGlyphs(this, v121, &v221, v125, *&v124, *(&v124 + 1));
      goto LABEL_146;
    case 0x42E:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::drawImageBuffer(this, *&buf.m_rect.m_location);
      goto LABEL_146;
    case 0x42F:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawLine,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatPoint const&,WebCore::FloatPoint const&)>(a3, this);
      goto LABEL_146;
    case 0x430:
      v142 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v143 & 1) == 0)
      {
        goto LABEL_423;
      }

      v144 = a3[1];
      v145 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v146 = *a3;
      v147 = (v145 - *a3);
      v47 = v144 >= v147;
      v148 = v144 - v147;
      if (!v47 || v148 < 4)
      {
        goto LABEL_422;
      }

      a3[2] = (v145 + 1);
      if (!v145)
      {
        goto LABEL_423;
      }

      v150 = *v145;
      v151 = ((v145 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v144 < v151 - v146 || &v144[-(v151 - v146)] < 8)
      {
        goto LABEL_421;
      }

      v153 = (v151 + 1);
      a3[2] = (v151 + 1);
      if (!v151)
      {
        goto LABEL_422;
      }

      v154 = v142;
      v155 = *v151;
      if (*v151)
      {
        if (v155 >> 61)
        {
          goto LABEL_423;
        }

        v156 = (v151 + 11) & 0xFFFFFFFFFFFFFFF8;
        v157 = 8 * v155;
        if (v144 < v156 - v146 || &v144[-(v156 - v146)] < v157)
        {
          goto LABEL_422;
        }

        v153 = (v157 + v156);
        a3[2] = v153;
        if (!v156)
        {
          goto LABEL_423;
        }
      }

      else
      {
        v156 = 0;
      }

      if (v144 <= v153 - v146)
      {
        goto LABEL_421;
      }

      v159 = v153 + 1;
      a3[2] = v153 + 1;
      if (!v153)
      {
        goto LABEL_422;
      }

      v160 = *v153;
      if (v160 > 1)
      {
        goto LABEL_423;
      }

      if (v144 <= v159 - v146)
      {
        goto LABEL_421;
      }

      a3[2] = v153 + 2;
      if (v153 == -1)
      {
        goto LABEL_422;
      }

      v161 = *v159;
      if (v161 > 1)
      {
        goto LABEL_423;
      }

      v162 = IPC::Decoder::decode<WebCore::StrokeStyle>(a3);
      if (v162 < 0x100u)
      {
        goto LABEL_424;
      }

      buf.m_rect.m_location = v154;
      buf.m_rect.m_size.m_width = v150;
      buf.m_radii.m_topLeft = v156;
      buf.m_radii.m_topRight = v155;
      LOBYTE(buf.m_radii.m_bottomLeft.m_width) = v160;
      BYTE1(buf.m_radii.m_bottomLeft.m_width) = v161;
      BYTE2(buf.m_radii.m_bottomLeft.m_width) = v162;
      LOBYTE(buf.m_radii.m_bottomRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::drawLinesForText(this, &buf, v156, v155, v160 & 1, v161 & 1, v162, v150);
      goto LABEL_146;
    case 0x431:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::drawNativeImage(this, *&buf.m_rect.m_location);
      goto LABEL_146;
    case 0x432:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(a3, this);
      goto LABEL_146;
    case 0x433:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(a3, this);
      goto LABEL_146;
    case 0x434:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternNativeImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(a3, this);
      goto LABEL_146;
    case 0x435:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,float>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_height) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::drawRect(this, &buf.m_rect, buf.m_radii.m_topLeft.m_width);
      goto LABEL_146;
    case 0x436:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawSystemImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::SystemImage,WTF::RawPtrTraits<WebCore::SystemImage>,WTF::DefaultRefDerefTraits<WebCore::SystemImage>> &&,WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x437:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawVideoFrame,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebKit::SharedVideoFrame &&,WebCore::FloatRect const&,WebKit::SharedVideoFrame &&::ImageOrientation,BOOL)>(a3, this);
      goto LABEL_146;
    case 0x438:
      WebKit::RemoteDisplayListRecorder::endPage(this);
      goto LABEL_146;
    case 0x439:
      v171 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v171 + 632))();
      goto LABEL_147;
    case 0x43A:
      IPC::ArgumentCoder<WebCore::PathArc,void>::decode(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      v221.m_rect = buf.m_rect;
      v221.m_radii.m_topLeft = buf.m_radii.m_topLeft;
      LOBYTE(v221.m_radii.m_topRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::fillArc(this, &v221);
      goto LABEL_146;
    case 0x43B:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillBezierCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataBezierCurve const&)>(a3, this);
      goto LABEL_146;
    case 0x43C:
      IPC::ArgumentCoder<std::tuple<WebCore::PathClosedArc>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillClosedArc(this, &buf);
      goto LABEL_146;
    case 0x43D:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if (LOBYTE(v217.m_size.m_width))
      {
        goto LABEL_175;
      }

      goto LABEL_438;
    case 0x43E:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::fillEllipse(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x43F:
      IPC::ArgumentCoder<std::tuple<WebCore::PathDataLine>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillLine(this, &buf);
      goto LABEL_146;
    case 0x440:
      IPC::ArgumentCoder<WebCore::Path,void>::decode(a3, a2, &buf);
      if (LOBYTE(v227.m_colorAndFlags) != 1)
      {
        goto LABEL_423;
      }

      LOBYTE(v221.m_rect.m_location.m_x) = 0;
      v223 = -1;
      if (BYTE8(v226) == 2)
      {
        v221.m_rect.m_location = buf.m_rect.m_location;
LABEL_62:
        v223 = BYTE8(v226);
        goto LABEL_63;
      }

      if (!BYTE8(v226))
      {
        goto LABEL_62;
      }

      if (BYTE8(v226) == 1)
      {
        v221 = buf;
        v222 = v226;
        goto LABEL_62;
      }

LABEL_63:
      v224 = 1;
      v41 = (*(**(this + 3) + 16))(*(this + 3));
      (*(*v41 + 184))(v41, &v221);
      goto LABEL_42;
    case 0x441:
      IPC::ArgumentCoder<std::tuple<WebCore::PathSegment>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillPathSegment(this, &buf);
      goto LABEL_146;
    case 0x442:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillQuadCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataQuadCurve const&)>(a3, this);
      goto LABEL_146;
    case 0x443:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      v93 = IPC::Decoder::decode<WebCore::LockHistory>(a3);
      if (v93 <= 0xFFu)
      {
        goto LABEL_424;
      }

      buf.m_rect = v221.m_rect;
      LOBYTE(buf.m_radii.m_topLeft.m_width) = v93;
      LOBYTE(buf.m_radii.m_topLeft.m_height) = 1;
      WebKit::RemoteDisplayListRecorder::fillRect(this);
      goto LABEL_146;
    case 0x444:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      buf.m_rect = v221.m_rect;
      buf.m_radii.m_topLeft = v217.m_location;
      LOBYTE(buf.m_radii.m_topRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::fillRectWithColor(this, &buf.m_rect, &buf.m_radii);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_186;
    case 0x445:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Gradient,void>::decode(a3, &v217);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      buf.m_rect = v221.m_rect;
      v180 = v217.m_location;
      v217.m_location = 0;
      buf.m_radii.m_topLeft = v180;
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v217, v179);
      LOBYTE(buf.m_radii.m_topRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::fillRectWithGradient(this);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_146;
      }

      p_m_radii = &buf.m_radii;
      goto LABEL_239;
    case 0x446:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillRectWithGradientAndSpaceTransform,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&,WebCore::RequiresClipToRect)>(a3, this);
      goto LABEL_146;
    case 0x447:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v217);
      if ((v218 & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a3, &v221);
      if ((v222 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v222 & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v219);
      if ((v220 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v220 & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      if ((v222 & 1) == 0)
      {
        goto LABEL_437;
      }

      buf.m_rect = v217;
      buf.m_radii = *&v221.m_rect.m_location.m_x;
      v226 = *&v221.m_radii.m_bottomLeft.m_width;
      v227.m_colorAndFlags = v219;
      v228 = 1;
      WebKit::RemoteDisplayListRecorder::fillRectWithRoundedHole(this, &buf.m_rect, &buf.m_radii, &v227);
      if (v228)
      {
        m_colorAndFlags = v227.m_colorAndFlags;
        if ((v227.m_colorAndFlags & 0x8000000000000) != 0)
        {
          goto LABEL_141;
        }
      }

      goto LABEL_146;
    case 0x448:
      IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a3, &v221);
      if ((v222 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v222 & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
        {
          LOBYTE(buf.m_rect.m_location.m_x) = 0;
          LOBYTE(v227.m_colorAndFlags) = 0;
          goto LABEL_138;
        }
      }

      v88 = a3[2];
      if (a3[1] <= v88 - *a3)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_466;
      }

      a3[2] = v88 + 1;
      if (!v88)
      {
LABEL_466:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_467;
      }

      v89 = *v88;
      if ((v89 - 1) > 0x11)
      {
LABEL_467:
        IPC::Decoder::markInvalid(a3);
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(v227.m_colorAndFlags) = 0;
        if ((LOBYTE(v217.m_size.m_width) & 1) != 0 && (*&v217.m_location & 0x8000000000000) != 0)
        {
          v214 = (*&v217.m_location & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((*&v217.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v214);
            WTF::fastFree(v214, v213);
          }
        }

LABEL_138:
        if ((v227.m_colorAndFlags & 1) == 0)
        {
          goto LABEL_424;
        }

        WebKit::RemoteDisplayListRecorder::fillRoundedRect(this);
        if ((v227.m_colorAndFlags & 1) == 0)
        {
          goto LABEL_146;
        }

        m_colorAndFlags = v226;
        if ((v226 & 0x8000000000000) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_141;
      }

      if (v222)
      {
        buf = v221;
        *&v226 = v217.m_location;
        BYTE8(v226) = v89;
        LOBYTE(v227.m_colorAndFlags) = 1;
        goto LABEL_138;
      }

LABEL_437:
      __break(1u);
LABEL_438:
      IPC::Decoder::markInvalid(a3);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 0;
        goto LABEL_184;
      }

LABEL_175:
      v101 = a3[1];
      v100 = a3[2];
      v102 = *a3;
      if (v101 <= v100 - *a3)
      {
        goto LABEL_471;
      }

      v103 = v100 + 1;
      a3[2] = v100 + 1;
      if (!v100)
      {
LABEL_472:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_473;
      }

      v104 = *v100;
      if (v104 >= 0xE)
      {
LABEL_473:
        IPC::Decoder::markInvalid(a3);
        v107 = 0;
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        goto LABEL_182;
      }

      if (v101 <= v103 - v102)
      {
LABEL_471:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_472;
      }

      a3[2] = v100 + 2;
      if (v100 == -1)
      {
        goto LABEL_472;
      }

      v105 = *v103;
      if ((v105 - 1) >= 0x12)
      {
        goto LABEL_473;
      }

      buf.m_rect = v221.m_rect;
      v106 = v217.m_location;
      v217.m_location = 0;
      buf.m_radii.m_topLeft = v106;
      LOBYTE(buf.m_radii.m_topRight.m_width) = v104;
      BYTE1(buf.m_radii.m_topRight.m_width) = v105;
      v107 = 1;
LABEL_182:
      LOBYTE(buf.m_radii.m_bottomLeft.m_width) = v107;
      if ((LOBYTE(v217.m_size.m_width) & 1) != 0 && (*&v217.m_location & 0x8000000000000) != 0)
      {
        v181 = (*&v217.m_location & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&v217.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v181);
          WTF::fastFree(v181, v99);
        }
      }

LABEL_184:
      if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillCompositedRect(this);
      if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_186:
      m_colorAndFlags = buf.m_radii.m_topLeft;
      if ((*&buf.m_radii.m_topLeft & 0x8000000000000) != 0)
      {
LABEL_141:
        v92 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) != 1)
        {
          goto LABEL_146;
        }

        atomic_store(1u, v92);
        goto LABEL_307;
      }

LABEL_146:
      if (this)
      {
LABEL_147:
        if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, this + 2);
          (*(*this + 8))(this);
        }
      }

      return;
    case 0x449:
      WebKit::RemoteDisplayListRecorder::resetClip(this);
      goto LABEL_146;
    case 0x44A:
      v56 = (*(**(this + 3) + 16))(*(this + 3), a2);
      (*(*v56 + 112))(v56, 1);
      goto LABEL_147;
    case 0x44B:
      v182 = a3[1];
      v183 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v184 = (v183 - *a3);
      v47 = v182 >= v184;
      v185 = v182 - v184;
      if (!v47 || v185 <= 3)
      {
        goto LABEL_422;
      }

      a3[2] = (v183 + 1);
      if (!v183)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::rotate(this, *v183);
      goto LABEL_146;
    case 0x44C:
      v55 = (*(**(this + 3) + 16))(*(this + 3), a2);
      (*(*v55 + 104))(v55, 1);
      goto LABEL_147;
    case 0x44D:
      buf.m_rect.m_location = IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(a3);
      LOBYTE(buf.m_rect.m_size.m_width) = v127;
      if (v127)
      {
        v128 = *(*(**(this + 3) + 16))(*(this + 3));
        (*(v128 + 656))();
      }

      goto LABEL_146;
    case 0x44E:
      v87 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v87 & 0x100000000) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setAlpha(this, *&v87);
      }

      goto LABEL_146;
    case 0x44F:
      IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(a3, &buf);
      if ((v226 & 1) == 0)
      {
        goto LABEL_423;
      }

      v221 = buf;
      LOBYTE(v222) = 1;
      v57 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v57 + 688))();
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x450:
      v133 = IPC::Decoder::decode<std::tuple<WebCore::CompositeMode>>(a3);
      if ((v133 & 0xFFFFFF) < 0x10000)
      {
        goto LABEL_146;
      }

      v134 = v133;
      v135 = (*(**(this + 3) + 16))(*(this + 3));
      WebCore::GraphicsContext::setCompositeMode(v135, v134);
      goto LABEL_147;
    case 0x451:
      v204 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v204 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setDrawLuminanceMask(this, v204 & 1);
      }

      goto LABEL_146;
    case 0x452:
      v136 = a3[2];
      if (a3[1] <= v136 - *a3)
      {
        goto LABEL_420;
      }

      a3[2] = v136 + 1;
      if (!v136)
      {
        goto LABEL_421;
      }

      v137 = *v136;
      if (v137 >= 2)
      {
        goto LABEL_422;
      }

      if (v137)
      {
        IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::decode(a3, &buf);
        if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
        {
          IPC::Decoder::markInvalid(a3);
          if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
          {
            goto LABEL_423;
          }
        }

        *(&v221.m_rect.m_location.m_y + 3) = buf.m_rect.m_size.m_width;
        v221.m_rect.m_location = *(&buf.m_rect.m_location + 1);
        buf.m_rect.m_size.m_width = *(&v221.m_rect.m_location.m_y + 3);
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 1;
      }

      else
      {
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 0;
      }

      WebKit::RemoteDisplayListRecorder::setDropShadow(this, &buf);
      if (LOBYTE(buf.m_radii.m_bottomLeft.m_width) == 1)
      {
        goto LABEL_186;
      }

      goto LABEL_146;
    case 0x453:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setFillCachedGradient(this, *&buf.m_rect.m_location);
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x454:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetFillColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(a3, this);
      goto LABEL_146;
    case 0x455:
      IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setFillGradient(this);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_146;
      }

      p_m_radii = &buf;
LABEL_239:
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(p_m_radii, v131);
      goto LABEL_146;
    case 0x456:
      v58 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
      if ((v58 & 0x100000000) == 0)
      {
        goto LABEL_423;
      }

      v59 = v58;
      v60 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect.m_location = (v59 | 0x1104000000000000);
      WebCore::GraphicsContext::setFillColor(v60, &buf);
      if ((*&buf.m_rect.m_location & 0x8000000000000) != 0)
      {
        v62 = (*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v62);
          WTF::fastFree(v62, v61);
        }
      }

      goto LABEL_147;
    case 0x457:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::PatternParameters>>(&buf, a3);
      if (LOBYTE(v227.m_colorAndFlags) == 1)
      {
        WebKit::RemoteDisplayListRecorder::setFillPattern(this, *&buf.m_rect.m_location);
      }

      goto LABEL_146;
    case 0x458:
      v139 = IPC::Decoder::decode<WebCore::WindRule>(a3);
      if ((v139 & 0x100) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setFillRule(this, v139 & 1);
      goto LABEL_146;
    case 0x459:
      v140 = a3[2];
      if (a3[1] <= v140 - *a3)
      {
        goto LABEL_421;
      }

      a3[2] = v140 + 1;
      if (!v140)
      {
        goto LABEL_422;
      }

      v141 = *v140;
      if (v141 >= 5)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::setImageInterpolationQuality(this, v141);
      goto LABEL_146;
    case 0x45A:
      v110 = a3[2];
      if (a3[1] <= v110 - *a3)
      {
        goto LABEL_421;
      }

      a3[2] = v110 + 1;
      if (!v110)
      {
        goto LABEL_422;
      }

      if (*v110 >= 3u)
      {
        goto LABEL_423;
      }

      v111 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v111 + 304))();
      goto LABEL_147;
    case 0x45B:
      IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_423;
        }
      }

      if (buf.m_rect.m_size)
      {
        WTF::EmbeddedFixedVector<double,WTF::FastMalloc>::create<double const,18446744073709551615ul>(*&buf.m_rect.m_location, *&buf.m_rect.m_size, &v221);
        v163 = v221.m_rect.m_location;
      }

      else
      {
        v163 = 0;
      }

      v164 = a3[1];
      v165 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v166 = (v165 - *a3);
      v47 = v164 >= v166;
      v167 = v164 - v166;
      if (v47 && v167 > 3)
      {
        a3[2] = (v165 + 1);
        if (v165)
        {
          v169 = *v165;
          buf.m_rect.m_location = v163;
          buf.m_rect.m_size.m_width = v169;
          LOBYTE(buf.m_radii.m_topLeft.m_width) = 1;
          WebKit::RemoteDisplayListRecorder::setLineDash(this, &buf, v169);
          if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
          {
            goto LABEL_146;
          }

          v92 = buf.m_rect.m_location;
          buf.m_rect.m_location = 0;
          if (!v92)
          {
            goto LABEL_146;
          }

LABEL_307:
          WTF::fastFree(v92, v90);
          goto LABEL_146;
        }
      }

      else
      {
        IPC::Decoder::markInvalid(a3);
      }

      IPC::Decoder::markInvalid(a3);
      if (v163)
      {
        WTF::fastFree(v163, v215);
      }

      goto LABEL_424;
    case 0x45C:
      v108 = a3[2];
      if (a3[1] <= v108 - *a3)
      {
        goto LABEL_421;
      }

      a3[2] = v108 + 1;
      if (!v108)
      {
        goto LABEL_422;
      }

      if (*v108 >= 3u)
      {
        goto LABEL_423;
      }

      v109 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v109 + 320))();
      goto LABEL_147;
    case 0x45D:
      v112 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v112 & 0x100000000) == 0)
      {
        goto LABEL_146;
      }

      v113 = *&v112;
      v114 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v114 + 328))(v113);
      goto LABEL_147;
    case 0x45E:
      v175 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v175 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShadowsIgnoreTransforms(this, v175 & 1);
      }

      goto LABEL_146;
    case 0x45F:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameMemory,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::SharedMemoryHandle &&)>(a3, this);
      goto LABEL_146;
    case 0x460:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameSemaphore,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(IPC::Semaphore &&)>(a3, this);
      goto LABEL_146;
    case 0x461:
      v170 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v170 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShouldAntialias(this, v170 & 1);
      }

      goto LABEL_146;
    case 0x462:
      v203 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v203 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShouldSmoothFonts(this, v203 & 1);
      }

      goto LABEL_146;
    case 0x463:
      v126 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v126 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShouldSubpixelQuantizeFonts(this, v126 & 1);
      }

      goto LABEL_146;
    case 0x464:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>>(&buf, a3);
      if (BYTE8(v226) == 1)
      {
        WebKit::RemoteDisplayListRecorder::setStrokeCachedGradient(this, *&buf.m_rect.m_location);
      }

      goto LABEL_146;
    case 0x465:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(a3, this);
      goto LABEL_146;
    case 0x466:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeGradient,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&)>(a3, this);
      goto LABEL_146;
    case 0x467:
      v130 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
      if ((v130 & 0x100000000) == 0)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::setStrokePackedColor(this, v130);
      goto LABEL_146;
    case 0x468:
      v21 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
      if ((v21 & 0x100000000) == 0)
      {
        goto LABEL_423;
      }

      v22 = a3[1];
      v23 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v24 = (v23 - *a3);
      v47 = v22 >= v24;
      v25 = v22 - v24;
      if (!v47 || v25 <= 3)
      {
        goto LABEL_422;
      }

      a3[2] = (v23 + 1);
      if (!v23)
      {
        goto LABEL_423;
      }

      v27 = v21;
      v28 = *v23;
      v29 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect.m_location = (v27 | 0x1104000000000000);
      WebCore::GraphicsContext::setStrokeColor(v29, &buf);
      if ((*&buf.m_rect.m_location & 0x8000000000000) != 0)
      {
        v138 = (*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v138);
          WTF::fastFree(v138, v30);
        }
      }

LABEL_28:
      v31 = (*(**(this + 3) + 16))(*(this + 3));
      if (*(v31 + 156) != v28)
      {
        *(v31 + 156) = v28;
        *(v31 + 152) |= 8u;
      }

      (*(*v31 + 96))(v31, v31 + 8, 3);
      goto LABEL_147;
    case 0x469:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::PatternParameters>>(&buf, a3);
      if (LOBYTE(v227.m_colorAndFlags) == 1)
      {
        WebKit::RemoteDisplayListRecorder::setStrokePattern(this, *&buf.m_rect.m_location);
      }

      goto LABEL_146;
    case 0x46A:
      v129 = IPC::Decoder::decode<WebCore::StrokeStyle>(a3);
      if (v129 <= 0xFFu)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setStrokeStyle(this, v129);
      goto LABEL_146;
    case 0x46B:
      v36 = a3[1];
      v37 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v38 = (v37 - *a3);
      v47 = v36 >= v38;
      v39 = v36 - v38;
      if (!v47 || v39 <= 3)
      {
        goto LABEL_422;
      }

      a3[2] = (v37 + 1);
      if (!v37)
      {
        goto LABEL_423;
      }

      v28 = *v37;
      goto LABEL_28;
    case 0x46C:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStyle,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(std::optional<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>>)>(a3, this);
      goto LABEL_146;
    case 0x46D:
      v205 = IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::TextDrawingMode>>>(a3);
      if (v205 >= 0x100u)
      {
        WebKit::RemoteDisplayListRecorder::setTextDrawingMode(this, v205);
      }

      goto LABEL_146;
    case 0x46E:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetURLForRect,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::URL const&,WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x46F:
      IPC::ArgumentCoder<WebCore::PathArc,void>::decode(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      v221.m_rect = buf.m_rect;
      v221.m_radii.m_topLeft = buf.m_radii.m_topLeft;
      v32 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect = v221.m_rect;
      buf.m_radii.m_topLeft = v221.m_radii.m_topLeft;
      BYTE4(v226) = 5;
      BYTE8(v226) = 1;
      (*(*v32 + 192))(v32, &buf);
      goto LABEL_33;
    case 0x470:
      v74 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      v76 = v75;
      if ((v75 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
      }

      v77 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      v79 = v78;
      if ((v78 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
      }

      v80 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      v82 = v81;
      if ((v81 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
      }

      v84 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v83 & 1) == 0)
      {
        v216 = v83;
        IPC::Decoder::markInvalid(a3);
        v83 = v216;
      }

      if (!*a3)
      {
        goto LABEL_423;
      }

      if ((v76 & 1) == 0 || (v79 & 1) == 0 || (v82 & 1) == 0 || (v83 & 1) == 0)
      {
        goto LABEL_437;
      }

      v85 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect.m_location = v74;
      buf.m_rect.m_size = v77;
      buf.m_radii.m_topLeft = v80;
      buf.m_radii.m_topRight = v84;
      BYTE4(v226) = 14;
      BYTE8(v226) = 1;
      (*(*v85 + 192))(v85, &buf);
      if (BYTE8(v226) >= 2u && BYTE8(v226) != 255)
      {
        v86 = buf.m_rect.m_location;
        buf.m_rect.m_location = 0;
        if (v86)
        {
          if (atomic_fetch_add(v86 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v86 + 2);
            (*(*v86 + 8))(v86);
          }
        }
      }

      goto LABEL_147;
    case 0x471:
      IPC::ArgumentCoder<std::tuple<WebCore::PathClosedArc>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeClosedArc(this, &buf);
      goto LABEL_146;
    case 0x472:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::strokeEllipse(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x473:
      IPC::ArgumentCoder<std::tuple<WebCore::PathDataLine>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeLine(this, &buf);
      goto LABEL_146;
    case 0x474:
      IPC::ArgumentCoder<WebCore::PathDataLine,void>::decode(a3, &v221);
      if (LOBYTE(v221.m_radii.m_topLeft.m_width) != 1)
      {
        goto LABEL_423;
      }

      v9 = a3[1];
      v10 = a3[2];
      v11 = *a3;
      if (v9 <= v10 - *a3)
      {
        goto LABEL_420;
      }

      v12 = (v10 + 1);
      a3[2] = v10 + 1;
      if (!v10)
      {
        goto LABEL_421;
      }

      v13 = *v10;
      if (v13 > 1)
      {
        goto LABEL_422;
      }

      if (v13)
      {
        v14 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
        if ((v14 & 0x100000000) == 0)
        {
          goto LABEL_422;
        }

        v15 = v14 & 0x1FFFFFFFFLL;
        v9 = a3[1];
        v12 = a3[2];
        v11 = *a3;
      }

      else
      {
        v15 = 0;
      }

      if (v9 <= v12 - v11)
      {
LABEL_420:
        IPC::Decoder::markInvalid(a3);
      }

      else
      {
        a3[2] = (v12 + 1);
        if (v12)
        {
          if (*v12 > 1u)
          {
            goto LABEL_422;
          }

          if (!*v12)
          {
            v20 = 0;
LABEL_18:
            buf.m_rect = v221.m_rect;
            buf.m_radii.m_topLeft = v15;
            buf.m_radii.m_topRight = v20;
            LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 1;
            WebKit::RemoteDisplayListRecorder::strokeLineWithColorAndThickness(this, &buf, v15, v20);
            if (this)
            {
              goto LABEL_147;
            }

            return;
          }

          v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
          v17 = ((v12 & 0xFFFFFFFFFFFFFFFCLL) + 4);
          v18 = (v17 - v11);
          v47 = v9 >= v18;
          v19 = v9 - v18;
          if (v47 && v19 >= 4)
          {
            a3[2] = (v16 + 8);
            if (v17)
            {
              v20 = *v17 | 0x100000000;
              goto LABEL_18;
            }

LABEL_422:
            IPC::Decoder::markInvalid(a3);
LABEL_423:
            IPC::Decoder::markInvalid(a3);
            goto LABEL_424;
          }
        }
      }

LABEL_421:
      IPC::Decoder::markInvalid(a3);
      goto LABEL_422;
    case 0x475:
      IPC::ArgumentCoder<WebCore::Path,void>::decode(a3, a2, &buf);
      if (LOBYTE(v227.m_colorAndFlags) != 1)
      {
        goto LABEL_423;
      }

      LOBYTE(v221.m_rect.m_location.m_x) = 0;
      v223 = -1;
      if (BYTE8(v226) == 2)
      {
        v221.m_rect.m_location = buf.m_rect.m_location;
      }

      else if (BYTE8(v226))
      {
        if (BYTE8(v226) != 1)
        {
LABEL_41:
          v224 = 1;
          v34 = (*(**(this + 3) + 16))(*(this + 3));
          (*(*v34 + 192))(v34, &v221);
LABEL_42:
          if ((v224 & 1) != 0 && v223 >= 2u && v223 != 255)
          {
            v33 = v221.m_rect.m_location;
            v221.m_rect.m_location = 0;
            if (v33)
            {
LABEL_46:
              if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v33 + 2);
                (*(*v33 + 8))(v33);
              }
            }
          }

          goto LABEL_146;
        }

        v221 = buf;
        v222 = v226;
      }

      v223 = BYTE8(v226);
      goto LABEL_41;
    case 0x476:
      IPC::ArgumentCoder<std::tuple<WebCore::PathSegment>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokePathSegment(this, &buf);
      goto LABEL_146;
    case 0x477:
      IPC::ArgumentCoder<std::tuple<WebCore::PathDataQuadCurve>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeQuadCurve(this, &buf);
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x478:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,float>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_height) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeRect(this, &buf.m_rect, buf.m_radii.m_topLeft.m_width);
      goto LABEL_146;
    case 0x479:
      v42 = a3[1];
      v43 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v44 = *a3;
      v45 = (v43 - *a3);
      v47 = v42 >= v45;
      v46 = v42 - v45;
      v47 = v47 && v46 >= 4;
      if (!v47)
      {
        goto LABEL_422;
      }

      a3[2] = (v43 + 1);
      if (!v43)
      {
        goto LABEL_423;
      }

      v48 = *v43;
      v49 = ((v43 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      v50 = (v49 - v44);
      v47 = v42 >= v50;
      v51 = v42 - v50;
      if (!v47 || v51 < 4)
      {
        goto LABEL_422;
      }

      a3[2] = (v49 + 1);
      if (!v49)
      {
        goto LABEL_423;
      }

      v53 = *v49;
      v54 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v54 + 672))(v48, v53);
      goto LABEL_147;
    default:
      v208 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v209 = 4223;
        }

        else
        {
          v209 = v8;
        }

        v210 = (&IPC::Detail::messageDescriptions)[3 * v209];
        v211 = a3[7];
        buf.m_rect.m_location.m_x = 4.8151e-34;
        *&buf.m_rect.m_location.m_y = v210;
        LOWORD(buf.m_rect.m_size.m_height) = 2048;
        *(&buf.m_rect.m_size.m_height + 2) = v211;
        _os_log_error_impl(&dword_19D52D000, v208, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", &buf, 0x16u);
      }

      goto LABEL_424;
  }
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetFillColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::RemoteDisplayListRecorder::setFillColor(a2, &v5);
    if ((v6 & 1) != 0 && (v5 & 0x8000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::RemoteDisplayListRecorder::setStrokeColor(a2, &v5);
    if ((v6 & 1) != 0 && (v5 & 0x8000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

atomic_uchar ***IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeGradient,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>>(v5, a1);
  if (v6 == 1)
  {
    result = WebKit::RemoteDisplayListRecorder::setStrokeGradient(a2);
    if (v6)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v5, v4);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStyle,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(std::optional<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>>)>(IPC::Decoder *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_54;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (v5)
  {
    if (*v5 >= 2u)
    {
      goto LABEL_9;
    }

    if (!*v5)
    {
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      v44 = 1;
      goto LABEL_27;
    }

    if (v4 <= &v7[-v6])
    {
      v24 = 0;
      v25 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (v26)
      {
        (*(*v26 + 16))(v26);
        v25 = *a1;
        v24 = *(a1 + 1);
      }
    }

    else
    {
      *(a1 + 2) = v5 + 2;
      if (v5 != -1)
      {
        v8 = *v7;
        if (v8 > 2)
        {
LABEL_8:
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_9;
        }

        if (!*v7)
        {
          IPC::Decoder::decode<WebCore::GraphicsDropShadow>(&v28, a1);
          if (v30 != 1)
          {
            goto LABEL_8;
          }

          *&v34 = v28;
          DWORD2(v34) = DWORD2(v28);
          v35 = v29;
          v39 = 0;
LABEL_26:
          v40 = 1;
          mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(v42, &v34);
          v43 = 1;
          v44 = 1;
          if ((v40 & 1) == 0)
          {
            goto LABEL_27;
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(&v34, v18);
          if (v44)
          {
            goto LABEL_27;
          }

          goto LABEL_11;
        }

        if (v8 == 1)
        {
          v16 = IPC::ArgumentCoder<WebCore::GraphicsGaussianBlur,void>::decode(a1);
          if (v17)
          {
            *&v34 = v16;
            v39 = 1;
            goto LABEL_26;
          }
        }

        else
        {
          IPC::ArgumentCoder<WebCore::GraphicsColorMatrix,void>::decode(a1, &v28);
          if (v33)
          {
            v37 = v31;
            v38 = v32;
            v35 = v29;
            v36 = v30;
            v34 = v28;
            v39 = 2;
            goto LABEL_26;
          }
        }

        v6 = *a1;
        v21 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v22 = *(a1 + 3);
        if (!v22 || !v21)
        {
          goto LABEL_8;
        }

LABEL_48:
        (*(*v22 + 16))(v22, v6);
        goto LABEL_8;
      }

      v24 = v4;
      v25 = v6;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v24)
    {
      (*(*v27 + 16))(v27, v25, v24);
    }

    goto LABEL_8;
  }

LABEL_54:
  *a1 = 0;
  *(a1 + 1) = 0;
  v22 = *(a1 + 3);
  if (v22)
  {
    if (v4)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_9:
  *a1 = 0;
  *(a1 + 1) = 0;
  v9 = *(a1 + 3);
  if (v9 && v4)
  {
    (*(*v9 + 16))(v9, v6);
  }

  LOBYTE(v42[0]) = 0;
  v44 = 0;
LABEL_11:
  v10 = *a1;
  v11 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v12 = *(a1 + 3);
  if (!v12 || !v11 || ((*(*v12 + 16))(v12, v10), (v44 & 1) == 0))
  {
    LOBYTE(v34) = 0;
    v41 = 0;
    goto LABEL_13;
  }

LABEL_27:
  LOBYTE(v34) = 0;
  v40 = 0;
  if (v43 == 1)
  {
    mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(&v34, v42);
    v40 = 1;
    v41 = 1;
    if (v44 & 1) != 0 && (v43)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(v42, v19);
      if ((v41 & 1) == 0)
      {
LABEL_13:
        v13 = *a1;
        v14 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        result = *(a1 + 3);
        if (!result)
        {
          return result;
        }

        if (!v14)
        {
          return result;
        }

        result = (*(*result + 16))(result, v13);
        if ((v41 & 1) == 0)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v41 = 1;
  }

  LOBYTE(v42[0]) = 0;
  v43 = 0;
  if (v40 == 1)
  {
    mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(v42, &v34);
    v43 = 1;
  }

  result = WebKit::RemoteDisplayListRecorder::setStyle(a2, v42);
  if (v43 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(v42, v20);
  }

  if ((v41 & 1) != 0 && v40 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(&v34, v20);
  }

  return result;
}

atomic_uchar **IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipToImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v12 = v4 >= v7;
  v8 = v4 - v7;
  if (v12 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_18;
    }

    v10 = *v5;
    v11 = *v5 - 1;
    if (v6)
    {
      v12 = v11 >= 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v19);
      if (v20)
      {
        return WebKit::RemoteDisplayListRecorder::clipToImageBuffer(a2, v10);
      }

      v6 = *a1;
LABEL_15:
      v4 = *(a1 + 1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      goto LABEL_32;
    }

    v4 = 0;
LABEL_18:
    while (1)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v15 = *(a1 + 3);
      if (!v15)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_20;
      }

      v14 = (*(*v15 + 16))(v15);
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_32:
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v4 = *(a1 + 1);
      }
    }

    v4 = 0;
LABEL_20:
    v6 = 0;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (v16 && v4)
  {
    (*(*v16 + 16))(v16, v6);
  }

  v17 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v17)
  {
    v18 = *(*result + 2);

    return v18();
  }

  return result;
}

PathImpl *IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipOutToPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(IPC::Decoder *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::Path,void>::decode(a1, a2, v11);
  if (v14)
  {
    v9.m_data.impl_.data_.dummy_ = 0;
    v9.m_data.impl_.index_ = -1;
    if (v13 == 2)
    {
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = *&v11[0];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_5;
      }

      *&v9.m_data.impl_.data_.dummy_ = v11[0];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 1) = v11[1];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 2) = v11[2];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 6) = v12;
    }

    v9.m_data.impl_.index_ = v13;
LABEL_5:
    v10 = 1;
    result = WebKit::RemoteDisplayListRecorder::clipOutToPath(a2, &v9);
    if ((v10 & 1) != 0 && v9.m_data.impl_.index_ >= 2u && v9.m_data.impl_.index_ != 255)
    {
      result = v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr;
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }

    return result;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6)
  {
    (*(*result + 16))(result, v5);
    result = *(a1 + 3);
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (result && v7)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawSystemImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::SystemImage,WTF::RawPtrTraits<WebCore::SystemImage>,WTF::DefaultRefDerefTraits<WebCore::SystemImage>> &&,WebCore::FloatRect const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::SystemImage,void>::decode(a1, &v18);
  if (v19)
  {
    while (1)
    {
      v4 = IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v20);
      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v19)
      {
        v15 = v18;
        v16 = v20;
        v17 = 1;
        goto LABEL_5;
      }

      __break(1u);
LABEL_21:
      (*(*v4 + 16))(v4, v5);
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v11);
    }

    LOBYTE(v15) = 0;
    v17 = 0;
    if (v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14)
      {
        if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v14 + 2);
          (*(*v14 + 8))(v14, v11, v12);
        }
      }
    }
  }

  else
  {
    v5 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_16:
    LOBYTE(v15) = 0;
    v17 = 0;
  }

LABEL_5:
  if (v17)
  {
    result = WebKit::RemoteDisplayListRecorder::drawSystemImage(a2, &v15);
    if (v17)
    {
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v10)
    {
      return (*(*result + 16))(result, v9);
    }
  }

  return result;
}

atomic_uchar **IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternNativeImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>>(v4, a1);
  if (v5 == 1)
  {
    return WebKit::RemoteDisplayListRecorder::drawPatternNativeImage(a2, v4[0]);
  }

  return result;
}

atomic_uchar **IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>>(v4, a1);
  if (v5 == 1)
  {
    return WebKit::RemoteDisplayListRecorder::drawPatternImageBuffer(a2, v4[0]);
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawLine,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatPoint const&,WebCore::FloatPoint const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    if (v8)
    {
      v17 = v6;
      v18 = v7;
      v19 = 1;
      return WebKit::RemoteDisplayListRecorder::drawLine(a2, &v17, &v18);
    }

    v10 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12 && v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
LABEL_17:
      (*(*v12 + 16))(v12, v10);
    }
  }

  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawDotsForDocumentMarker,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WebCore::DocumentMarkerLineStyle const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v17);
  if (v18)
  {
    IPC::ArgumentCoder<WebCore::DocumentMarkerLineStyle,void>::decode(a1, v19);
    if (v21)
    {
      v13 = v17;
      v14[0] = v19[0];
      v15 = v20;
      v16 = 1;
      result = WebKit::RemoteDisplayListRecorder::drawDotsForDocumentMarker(a2, &v13, v14);
      if ((v16 & 1) != 0 && (v15 & 0x8000000000000) != 0)
      {
        result = (v15 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v5);
        }
      }

      return result;
    }

    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
LABEL_15:
      (*(*v8 + 16))(v8, v6);
    }
  }

  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawEllipse,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a1, &v8);
  if (v9)
  {
    return WebKit::RemoteDisplayListRecorder::drawEllipse(a2, &v8);
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6 != 0)
  {
    result = (*(*result + 16))(result, v5);
    if (v9)
    {
      return WebKit::RemoteDisplayListRecorder::drawEllipse(a2, &v8);
    }
  }

  return result;
}

PathImpl *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(IPC::Decoder *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::Path,void>::decode(a1, a2, v11);
  if (v14)
  {
    v9.m_data.impl_.data_.dummy_ = 0;
    v9.m_data.impl_.index_ = -1;
    if (v13 == 2)
    {
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = *&v11[0];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_5;
      }

      *&v9.m_data.impl_.data_.dummy_ = v11[0];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 1) = v11[1];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 2) = v11[2];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 6) = v12;
    }

    v9.m_data.impl_.index_ = v13;
LABEL_5:
    v10 = 1;
    result = WebKit::RemoteDisplayListRecorder::drawPath(a2, &v9);
    if ((v10 & 1) != 0 && v9.m_data.impl_.index_ >= 2u && v9.m_data.impl_.index_ != 255)
    {
      result = v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr;
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }

    return result;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6)
  {
    (*(*result + 16))(result, v5);
    result = *(a1 + 3);
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (result && v7)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawFocusRingPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&,float,WebCore::Color const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::Path>(v29, a1);
  if (v32 != 1)
  {
    v25.m_data.impl_.data_.dummy_ = 0;
    v28 = 0;
    goto LABEL_20;
  }

  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v4)
      {
        (*(*v21 + 16))(v21);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_41;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_41:
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22 && v4)
    {
      (*(*v22 + 16))(v22);
    }

    v25.m_data.impl_.data_.dummy_ = 0;
    v28 = 0;
    goto LABEL_14;
  }

  v10 = *v5;
  IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, &v23);
  if ((v24 & 1) == 0)
  {
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (!v20 || !v19 || ((*(*v20 + 16))(v20, v18), (v24 & 1) == 0))
    {
      v12 = 0;
      v25.m_data.impl_.data_.dummy_ = 0;
      goto LABEL_13;
    }
  }

  v25.m_data.impl_.data_.dummy_ = 0;
  v25.m_data.impl_.index_ = -1;
  if (v31 == 2)
  {
    v11 = *&v29[0];
    *&v29[0] = 0;
    v25.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = v11;
  }

  else if (v31)
  {
    if (v31 != 1)
    {
      goto LABEL_12;
    }

    *&v25.m_data.impl_.data_.dummy_ = v29[0];
    *(&v25.m_data.impl_.data_.tail_.tail_ + 1) = v29[1];
    *(&v25.m_data.impl_.data_.tail_.tail_ + 2) = v29[2];
    *(&v25.m_data.impl_.data_.tail_.tail_ + 6) = v30;
  }

  v25.m_data.impl_.index_ = v31;
LABEL_12:
  v26 = v10;
  v27.m_colorAndFlags = v23;
  v12 = 1;
LABEL_13:
  v28 = v12;
LABEL_14:
  if (v31 >= 2u && v31 != 255)
  {
    v13 = *&v29[0];
    *&v29[0] = 0;
    if (v13)
    {
      if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }
    }
  }

LABEL_20:
  if (v28)
  {
    result = WebKit::RemoteDisplayListRecorder::drawFocusRingPath(a2, &v25, v26, &v27);
    if (v28)
    {
      if ((v27.m_colorAndFlags & 0x8000000000000) != 0)
      {
        result = (v27.m_colorAndFlags & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v27.m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v15);
        }
      }

      if (v25.m_data.impl_.index_ >= 2u && v25.m_data.impl_.index_ != 255)
      {
        result = v25.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr;
        v25.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = 0;
        if (result)
        {
          if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result + 2);
            return (*(*result + 8))(result);
          }
        }
      }
    }
  }

  else
  {
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v17)
    {
      return (*(*result + 16))(result, v16);
    }
  }

  return result;
}

atomic_uchar ***IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillRectWithGradientAndSpaceTransform,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&,WebCore::RequiresClipToRect)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v22);
  if ((v23 & 1) == 0)
  {
    v11 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  IPC::ArgumentCoder<WebCore::Gradient,void>::decode(a1, &v24);
  if ((v25 & 1) == 0)
  {
    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (!v13 || !v12)
    {
      goto LABEL_6;
    }

LABEL_14:
    (*(*v13 + 16))(v13, v11);
    goto LABEL_6;
  }

  IPC::Decoder::decode<WebCore::AffineTransform>(v26, a1);
  if (v27 == 1)
  {
    v5 = IPC::Decoder::decode<WebCore::LockHistory>(a1);
    if (v5 > 0xFFu)
    {
      v17 = v26[0];
      v9 = v24;
      v24 = 0;
      v16 = v9;
      v18 = v26[1];
      v19 = v26[2];
      v20 = v5;
      v21 = 1;
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v24, v4);
      WebKit::RemoteDisplayListRecorder::fillRectWithGradientAndSpaceTransform(a2);
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v16, v10);
    }
  }

  WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v24, v4);
LABEL_6:
  v6 = *a1;
  v7 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v7)
    {
      return ((*result)[2])(result, v6);
    }
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillQuadCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataQuadCurve const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::PathDataQuadCurve>,void>::decode<IPC::Decoder>(&v8, a1);
  if (v9)
  {
    return WebKit::RemoteDisplayListRecorder::fillQuadCurve(a2, &v8);
  }

  v5 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillBezierCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataBezierCurve const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v20 = *a1;
    v21 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22 && v21 != 0)
    {
      (*(*v22 + 16))(v22, v20);
    }
  }

  v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = v8;
  if ((v8 & 1) == 0)
  {
    v24 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      if (v25)
      {
        (*(*v26 + 16))(v26, v24);
      }
    }
  }

  v10 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    v27 = *a1;
    v28 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v27);
      }
    }
  }

  v13 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v14 & 1) == 0)
  {
    v31 = *a1;
    v30 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v30)
      {
        v33 = v14;
        v34 = v13;
        (*(*v32 + 16))(v32, v31);
        v14 = v33;
        v13 = v34;
      }
    }
  }

  v15 = *a1;
  if (*a1)
  {
    if (v6 & 1) != 0 && (v9 & 1) != 0 && (v12 & 1) != 0 && (v14)
    {
      v35.start = v4;
      v35.controlPoint1 = v7;
      v35.controlPoint2 = v10;
      v35.endPoint = v13;
      v36 = 1;
      return WebKit::RemoteDisplayListRecorder::fillBezierCurve(a2, &v35);
    }

    __break(1u);
  }

  v17 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v17)
    {
      (*(*result + 16))(result, v15);
      result = *(a1 + 3);
      v18 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (result)
      {
        if (v18)
        {
          v19 = *(*result + 16);

          return v19();
        }
      }
    }
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawControlPart,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::ControlPart,WTF::RawPtrTraits<WebCore::ControlPart>,WTF::DefaultRefDerefTraits<WebCore::ControlPart>> &&,WebCore::FloatRoundedRect const&,float,WebCore::ControlStyle const&)>(unsigned int *a1, uint64_t a2, __n128 a3)
{
  IPC::ArgumentCoder<WebCore::ControlPart,void>::decode(a1, &v44, a3);
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a1, v46);
    if ((v47 & 1) == 0)
    {
      v29 = *a1;
      v30 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v31 = *(a1 + 3);
      if (!v31)
      {
        goto LABEL_43;
      }

      if (!v30)
      {
        goto LABEL_43;
      }

      (*(*v31 + 16))(v31, v29);
      if ((v47 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v5 = *(a1 + 1);
    v6 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = v6 - *a1;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (!v8 || v9 <= 3)
    {
      break;
    }

    *(a1 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_51;
    }

    v11 = *v6;
    IPC::ArgumentCoder<WebCore::ControlStyle,void>::decode(a1, &v48);
    if ((v52 & 1) == 0)
    {
      v22 = *a1;
      v23 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v24 = *(a1 + 3);
      if (!v24 || !v23 || ((*(*v24 + 16))(v24, v22), (v52 & 1) == 0))
      {
        v14 = 0;
        LOBYTE(v34) = 0;
        goto LABEL_13;
      }
    }

    if (v45 & 1) != 0 && (v47)
    {
      v35 = v46[0];
      v36 = v46[1];
      v12 = v44;
      v44 = 0;
      v34 = v12;
      v37 = v46[2];
      v38 = v11;
      v39 = v48;
      v40 = v49;
      v13 = v50;
      v50 = 0uLL;
      v14 = 1;
      v41 = v13;
      v42 = v51;
LABEL_13:
      v43 = v14;
      goto LABEL_14;
    }

    __break(1u);
LABEL_27:
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
      if (v45)
      {
        continue;
      }
    }

    LOBYTE(v34) = 0;
    v43 = 0;
    goto LABEL_18;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32)
  {
    if (v5)
    {
      (*(*v32 + 16))(v32);
      v5 = *(a1 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_51:
  *a1 = 0;
  *(a1 + 1) = 0;
  v33 = *(a1 + 3);
  if (v33 && v5)
  {
    (*(*v33 + 16))(v33);
  }

LABEL_43:
  LOBYTE(v34) = 0;
  v43 = 0;
LABEL_14:
  if (v45)
  {
    v15 = v44;
    v44 = 0;
    if (v15)
    {
      if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }
    }
  }

LABEL_18:
  if (v43)
  {
    result = WebKit::RemoteDisplayListRecorder::drawControlPart(a2, &v34, v38);
    if (v43)
    {
      if ((*(&v41 + 1) & 0x8000000000000) != 0)
      {
        v27 = (*(&v41 + 1) & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*(&v41 + 1) & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v27);
          WTF::fastFree(v27, v17);
        }
      }

      if ((v41 & 0x8000000000000) != 0)
      {
        v28 = (v41 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v41 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v28);
          WTF::fastFree(v28, v17);
        }
      }

      result = v34;
      v34 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }
  }

  else
  {
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v26)
    {
      return (*(*result + 16))(result, v25);
    }
  }

  return result;
}

StringImpl *IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetURLForRect,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::URL const&,WebCore::FloatRect const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v21);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v25);
    v5 = v26;
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v24)
    {
      v6 = v21;
      v21 = 0;
      v18.m_string.m_impl.m_ptr = v6;
      *(&v18 + 8) = v22;
      *&v18.m_hostEnd = v23;
      LODWORD(v22) = v22 & 0xFFFFFFFE;
      v19 = v25;
      v20 = 1;
      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      (*(*v12 + 16))(v12, v10);
      if (v24)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v4 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v16)
  {
    (*(*v17 + 16))(v17, v4);
  }

  LOBYTE(v18.m_string.m_impl.m_ptr) = 0;
  v20 = 0;
  if (v24)
  {
LABEL_5:
    v7 = v21;
    v21 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    result = WebKit::RemoteDisplayListRecorder::setURLForRect(a2, &v18, &v19);
    if (v20)
    {
      result = v18.m_string.m_impl.m_ptr;
      v18.m_string.m_impl.m_ptr = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v9);
        }
      }
    }

    return result;
  }

LABEL_21:
  v14 = *a1;
  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v15)
  {
    return (*(*result + 16))(result, v14);
  }

  return result;
}

void IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawVideoFrame,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebKit::SharedVideoFrame &&,WebCore::FloatRect const&,WebKit::SharedVideoFrame &&::ImageOrientation,BOOL)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::Decoder::decode<WebKit::SharedVideoFrame>(a1, &v24);
  if (v26 != 1)
  {
    v18[0] = 0;
    v23 = 0;
    goto LABEL_18;
  }

  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v27);
  if ((v28 & 1) == 0)
  {
    goto LABEL_32;
  }

  v4 = IPC::ArgumentCoder<WebCore::ImageOrientation,void>::decode(a1);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_25;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v8 = *v6;
    if (v8 >= 2)
    {
      goto LABEL_33;
    }

    if (v26)
    {
      v9 = v4;
      std::__tuple_leaf<0ul,WebKit::SharedVideoFrame,false>::__tuple_leaf[abi:sn200100]<WebKit::SharedVideoFrame,0>(v18, &v24);
      v20 = v27;
      v21 = v9;
      v22 = v8;
      v10 = 1;
      goto LABEL_9;
    }

    __break(1u);
LABEL_25:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v5)
      {
        (*(*v15 + 16))(v15);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (!v16)
  {
    v5 = 0;
LABEL_29:
    v7 = 0;
    goto LABEL_33;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  (*(*v16 + 16))(v16);
LABEL_32:
  v7 = *a1;
  v5 = *(a1 + 1);
LABEL_33:
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v5)
  {
    (*(*v17 + 16))(v17, v7);
  }

  v10 = 0;
  v18[0] = 0;
LABEL_9:
  v23 = v10;
  if ((v26 & 1) != 0 && v25[16] == 2)
  {
    WTF::MachSendRight::~MachSendRight(v25);
    v10 = v23;
  }

  if (v10)
  {
    goto LABEL_13;
  }

LABEL_18:
  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v13 = *(a1 + 3);
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    (*(*v13 + 16))(v13, v11);
    if (v23)
    {
LABEL_13:
      WebKit::RemoteDisplayListRecorder::drawVideoFrame(a2, v18);
      if ((v23 & 1) != 0 && v19[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v19);
      }
    }
  }
}

void IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameSemaphore,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(IPC::Semaphore &&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::RemoteDisplayListRecorder::setSharedVideoFrameSemaphore(a2, v3);
    if (v4)
    {
      IPC::Semaphore::destroy(v3);
      WTF::MachSendRight::~MachSendRight(v3);
    }
  }
}

void IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameMemory,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::SharedMemoryHandle &&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::RemoteDisplayListRecorder::setSharedVideoFrameMemory(a2, v3);
    if (v4)
    {
      WTF::MachSendRight::~MachSendRight(v3);
    }
  }
}

uint64_t WebKit::RemoteExternalTexture::didReceiveStreamMessage(WebKit::RemoteExternalTexture *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (!v3)
  {
    result = 92;
    __break(0xC471u);
    return result;
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a3 + 25);
      if (v14 >= 0x107F)
      {
        v14 = 4223;
      }

      v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
      *v19 = 136315138;
      *&v19[4] = v15;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteExternalTexture", v19, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 > 0x47B)
  {
    if (v10 == 1148)
    {
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
      if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
      {
        result = WebKit::RemoteExternalTexture::setLabel(this, v19);
        if (v19[8])
        {
          result = *v19;
          *v19 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v11);
            }
          }
        }
      }

      goto LABEL_24;
    }

    if (v10 != 1149)
    {
      goto LABEL_14;
    }

    result = WebKit::RemoteExternalTexture::undestroy(this);
  }

  else
  {
    if (v10 != 1146)
    {
      if (v10 == 1147)
      {
        result = WebKit::RemoteCompositorIntegration::destruct(this);
        goto LABEL_24;
      }

LABEL_14:
      v13 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v16 = 4223;
        }

        else
        {
          v16 = v10;
        }

        v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
        v18 = *(a3 + 7);
        *v19 = 136315394;
        *&v19[4] = v17;
        v20 = 2048;
        v21 = v18;
        _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }

      goto LABEL_24;
    }

    result = WebKit::RemoteExternalTexture::destroy(this);
  }

LABEL_24:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

uint64_t WebKit::RemoteFaceDetector::didReceiveStreamMessage(atomic_uint *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::RemoteBarcodeDetector::sharedPreferencesForWebProcess(this, v22);
  if (v22[24] == 1 && (v22[15] & 0x10) != 0)
  {
    atomic_fetch_add(this + 2, 1u);
    v10 = *(a3 + 25);
    if (v10 == 1150)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        v13 = result;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v11)
        {
          v14 = result;
          atomic_fetch_add(a2 + 2, 1u);
          v15 = WTF::fastMalloc(0x18);
          *v15 = &unk_1F10EC530;
          v15[1] = v14;
          v15[2] = a2;
          *buf = v15;
          WebKit::RemoteFaceDetector::detect(this, v13, buf);
          result = *buf;
          *buf = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }
      }
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v10;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        v24 = 2048;
        v25 = v21;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }
    }

    if (this && atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 2);
      return (*(*this + 8))(this, v11, v12);
    }
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a3 + 25);
      if (v17 >= 0x107F)
      {
        v17 = 4223;
      }

      v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteFaceDetector", buf, 0xCu);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v8)
      {
        return (*(*result + 16))(result, v7);
      }
    }
  }

  return result;
}

void *WebKit::RemoteGPU::didReceiveStreamMessage(WebKit::RemoteGPU *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(this + 28) & 0x4000) == 0)
  {
    v4 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a3 + 25);
      if (v28 >= 0x107F)
      {
        v28 = 4223;
      }

      v29 = (&IPC::Detail::messageDescriptions)[3 * v28];
      *buf = 136315138;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteGPU", buf, 0xCu);
    }

    v5 = *a3;
    v6 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v6)
      {
        return (*(*result + 16))(result, v5);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v9 = *(a3 + 25);
  if (v9 <= 0xFBA)
  {
    if (v9 == 1152)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v15)
      {
        result = WebKit::RemoteGPU::createCompositorIntegration(this, result);
      }

      goto LABEL_30;
    }

    if (v9 == 1153)
    {
      v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (*a3)
      {
        if ((v11 & 1) == 0)
        {
          __break(1u);
        }

        v12 = v10;
        v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v14)
        {
          *buf = v12;
          *&buf[8] = v13;
          buf[16] = 1;
          result = WebKit::RemoteGPU::createPresentationContext(this, buf, v13);
          goto LABEL_30;
        }

LABEL_21:
        v15 = *a3;
        v16 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v16)
        {
          result = (*(*result + 16))(result, v15);
        }

        goto LABEL_30;
      }

      v33 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v34 = *(a3 + 3);
      if (!v34 || !v33)
      {
        goto LABEL_21;
      }

      v35 = *(*v34 + 16);
LABEL_46:
      v35();
      goto LABEL_21;
    }

LABEL_20:
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v9 >= 0x107F)
      {
        v30 = 4223;
      }

      else
      {
        v30 = v9;
      }

      v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
      v32 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2048;
      *&buf[14] = v32;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (v9 != 4027)
  {
    if (v9 != 4028)
    {
      goto LABEL_20;
    }

    v18 = IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::decode(a3);
    if ((v18 & 0x100000000) == 0)
    {
      v36 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (!v37 || !v36)
      {
        goto LABEL_21;
      }

      v35 = *(*v37 + 16);
      goto LABEL_46;
    }

    v19 = v18;
    v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

    *buf = v19;
    *&buf[8] = v20;
    buf[16] = 1;
    v22 = *(a3 + 8);
    if (v22)
    {
      atomic_fetch_add(a2 + 2, 1u);
      v23 = WTF::fastMalloc(0x18);
      *v23 = &unk_1F10EC558;
      v23[1] = v22;
      v23[2] = a2;
      v38 = v23;
      WebKit::RemoteGPU::requestAdapter(this, buf, *&buf[8], &v38);
      result = v38;
      v38 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_30;
    }

LABEL_48:
    __break(0xC471u);
    JUMPOUT(0x19D905370);
  }

  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
  if (v15)
  {
    v25 = *(a3 + 8);
    if (v25)
    {
      v26 = result;
      atomic_fetch_add(a2 + 2, 1u);
      v27 = WTF::fastMalloc(0x18);
      *v27 = &unk_1F10EC580;
      v27[1] = v25;
      v27[2] = a2;
      *buf = v27;
      WebKit::RemoteGPU::isValid(this, v26, buf);
      result = *buf;
      *buf = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_30;
    }

    goto LABEL_48;
  }

LABEL_30:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v15, v16);
  }

  return result;
}

void WebKit::RemoteGPUProxy::didReceiveMessage(atomic_uint *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 7, 1u);
  v5 = *(a3 + 25);
  if (v5 == 1151)
  {
    v6 = *(a3 + 1);
    v7 = *(a3 + 2);
    v8 = *a3;
    if (v6 <= &v7[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v25 = *(a3 + 3);
      if (v25)
      {
        if (v6)
        {
          (*(*v25 + 16))(v25);
          v6 = *(a3 + 1);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v7 + 1;
      if (v7)
      {
        v9 = *v7;
        if (v9 < 2)
        {
          IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v29);
          if (v31)
          {
            while (1)
            {
              IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v32);
              if ((v34 & 1) == 0)
              {
                v22 = *a3;
                v23 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v24 = *(a3 + 3);
                if (!v24 || !v23 || (v10 = (*(*v24 + 16))(v24, v22), (v34 & 1) == 0))
                {
                  buf[0] = 0;
                  BYTE6(v38) = 0;
                  goto LABEL_10;
                }
              }

              if (v31)
              {
                break;
              }

              __break(1u);
LABEL_32:
              if (v12)
              {
                (*(*v10 + 16))(v10, v11);
                if (v31)
                {
                  continue;
                }
              }

              goto LABEL_26;
            }

            buf[0] = v9;
            WTF::MachSendRight::MachSendRight();
            v13 = v30;
            v30 = 0;
            HIDWORD(v36) = v13;
            WTF::MachSendRight::MachSendRight();
            v14 = v33;
            v33 = 0;
            *(&v38 + 2) = v14;
            BYTE6(v38) = 1;
            if (v34)
            {
              IPC::Semaphore::destroy(v32);
              WTF::MachSendRight::~MachSendRight(v32);
            }

LABEL_10:
            if (v31)
            {
              IPC::Semaphore::destroy(v29);
              WTF::MachSendRight::~MachSendRight(v29);
            }
          }

          else
          {
            v11 = *a3;
            v12 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v10 = *(a3 + 3);
            if (v10)
            {
              goto LABEL_32;
            }

LABEL_26:
            buf[0] = 0;
            BYTE6(v38) = 0;
          }

          if ((v38 & 0x1000000000000) != 0)
          {
LABEL_13:
            WebKit::RemoteGPUProxy::wasCreated(this, buf[0], &v36, &v37);
            if ((v38 & 0x1000000000000) != 0)
            {
              IPC::Semaphore::destroy(&v37);
              WTF::MachSendRight::~MachSendRight(&v37);
              IPC::Semaphore::destroy(&v36);
              WTF::MachSendRight::~MachSendRight(&v36);
            }

            goto LABEL_17;
          }

LABEL_45:
          v15 = *a3;
          v16 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v28 = *(a3 + 3);
          if (!v28)
          {
            goto LABEL_17;
          }

          if (!v16)
          {
            goto LABEL_17;
          }

          (*(*v28 + 16))(v28, v15);
          if ((v38 & 0x1000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }

LABEL_43:
        *a3 = 0;
        *(a3 + 1) = 0;
        v27 = *(a3 + 3);
        if (v27 && v6)
        {
          (*(*v27 + 16))(v27, v8);
        }

        buf[0] = 0;
        BYTE6(v38) = 0;
        goto LABEL_45;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v26 = *(a3 + 3);
    if (v26)
    {
      if (v6)
      {
        (*(*v26 + 16))(v26);
        v8 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_43;
  }

  v17 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v5 >= 0x107F)
    {
      v19 = 4223;
    }

    else
    {
      v19 = v5;
    }

    v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
    v21 = *(a3 + 7);
    *buf = 136315394;
    v36 = v20;
    v37 = 2048;
    v38 = v21;
    _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v15 = *a3;
  v16 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v18 = *(a3 + 3);
  if (v18 && v16)
  {
    (*(*v18 + 16))(v18, v15);
  }

LABEL_17:
  if (this)
  {
    if (atomic_fetch_add(this + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 7);
      (*(*this + 24))(this, v15, v16);
    }
  }
}

void WebKit::RemoteGraphicsContextGL::didReceiveStreamMessage(WebKit::RemoteGraphicsContextGL *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v1724 = *MEMORY[0x1E69E9840];
  if ((*(this + 104) & 0x800) != 0 && (*(this + 25) & 0x400000000) != 0)
  {
    atomic_fetch_add(this + 4, 1u);
    v5 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0x485:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::activeTexture(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::activeTexture(0);
        goto LABEL_461;
      case 0x486:
        v150 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v151 & 1) == 0)
        {
          goto LABEL_461;
        }

        v152 = v150;
        LODWORD(v1709[0]) = HIDWORD(v150);
        *buf = v150;
        if (v150 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        if (v150)
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        if (v152 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v152))
        {
          LODWORD(v1709[0]) = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, v1709);
        }

        v262 = *(this + 7);
        if (v262)
        {
          ++*(v262 + 2);
          WebCore::GraphicsContextGLANGLE::attachShader(v262);
          goto LABEL_537;
        }

        WebCore::GraphicsContextGLANGLE::attachShader(0);
        goto LABEL_461;
      case 0x48A:
        v13 = *(a3 + 1);
        v133 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v134 = *a3;
        v135 = v133 - *a3;
        v17 = v13 >= v135;
        v136 = v13 - v135;
        if (!v17 || v136 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v133 + 1;
        if (!v133)
        {
          goto LABEL_2774;
        }

        v138 = *v133;
        v139 = ((v133 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v13 < v139 - v134 || v13 - (v139 - v134) <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v139 + 1;
        if (!v139)
        {
          goto LABEL_2774;
        }

        v141 = *v139;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v1709);
        if ((v1709[1] & 1) == 0)
        {
          v1159 = *a3;
          v1160 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v1161 = *(a3 + 3);
          if (!v1161)
          {
            goto LABEL_2775;
          }

          if (!v1160)
          {
            goto LABEL_2775;
          }

          (*(*v1161 + 16))(v1161, v1159);
          if ((v1709[1] & 1) == 0)
          {
            goto LABEL_2775;
          }
        }

        *buf = v138;
        *&buf[4] = v141;
        *&buf[8] = v1709[0];
        buf[16] = 1;
        WebKit::RemoteGraphicsContextGL::bindAttribLocation(this, v138, v141, &buf[8]);
LABEL_257:
        if (buf[16])
        {
          v143 = *&buf[8];
          *&buf[8] = 0;
          if (v143)
          {
            if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
LABEL_2466:
              WTF::StringImpl::destroy(v143, v142);
            }
          }
        }

        goto LABEL_461;
      case 0x48B:
        v157 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v158 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v157);
        if (v157 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v157))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v261 = *(this + 7);
        if (v261)
        {
          ++*(v261 + 2);
          WebCore::GraphicsContextGLANGLE::bindBuffer(v261);
          goto LABEL_527;
        }

        WebCore::GraphicsContextGLANGLE::bindBuffer(0);
        goto LABEL_461;
      case 0x48E:
        v159 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v160 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v159);
        if (v159 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v159))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v261 = *(this + 7);
        if (v261)
        {
          ++*(v261 + 2);
          WebCore::GraphicsContextGLANGLE::bindFramebuffer(v261);
          goto LABEL_527;
        }

        WebCore::GraphicsContextGLANGLE::bindFramebuffer(0);
        goto LABEL_461;
      case 0x48F:
        v146 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v147 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v146);
        if (v146 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v146))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v261 = *(this + 7);
        if (v261)
        {
          ++*(v261 + 2);
          WebCore::GraphicsContextGLANGLE::bindRenderbuffer(v261);
          goto LABEL_527;
        }

        WebCore::GraphicsContextGLANGLE::bindRenderbuffer(0);
        goto LABEL_461;
      case 0x491:
        v153 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v154 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v153);
        if (v153 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v153))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v261 = *(this + 7);
        if (!v261)
        {
          WebCore::GraphicsContextGLANGLE::bindTexture(0);
          goto LABEL_461;
        }

        ++*(v261 + 2);
        WebCore::GraphicsContextGLANGLE::bindTexture(v261);
LABEL_527:
        if (*(v261 + 2) != 1)
        {
          --*(v261 + 2);
          goto LABEL_461;
        }

        goto LABEL_705;
      case 0x494:
        IPC::Decoder::decode<std::tuple<float,float,float,float>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::blendColor(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x495:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::blendEquation(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::blendEquation(0);
        goto LABEL_461;
      case 0x496:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v161 & 1) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::blendEquationSeparate(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::blendEquationSeparate(0);
        goto LABEL_461;
      case 0x499:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v105 & 1) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::blendFunc(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::blendFunc(0);
        goto LABEL_461;
      case 0x49A:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::blendFuncSeparate(this);
        }

        goto LABEL_461;
      case 0x4A1:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::clear(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::clear(0);
        goto LABEL_461;
      case 0x4A6:
        IPC::Decoder::decode<std::tuple<float,float,float,float>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::clearColor(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x4A7:
        v155 = IPC::Decoder::decode<std::tuple<float>>(a3);
        if ((v155 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::clearDepth(v6, *&v155);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::clearDepth(0, *&v155);
        goto LABEL_461;
      case 0x4A8:
        if ((IPC::Decoder::decode<std::tuple<int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::clearStencil(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::clearStencil(0);
        goto LABEL_461;
      case 0x4AA:
        v168 = *(a3 + 1);
        v169 = *(a3 + 2);
        v170 = *a3;
        if (v168 <= &v169[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v1596 = *(a3 + 3);
          if (v1596)
          {
            if (v168)
            {
              (*(*v1596 + 16))(v1596);
              v168 = *(a3 + 1);
            }
          }

          else
          {
            v168 = 0;
          }
        }

        else
        {
          v171 = v169 + 1;
          *(a3 + 2) = v169 + 1;
          if (v169)
          {
            if (*v169 >= 2u)
            {
              goto LABEL_2876;
            }

            if (v168 > &v171[-v170])
            {
              v172 = v169 + 2;
              *(a3 + 2) = v169 + 2;
              if (v169 == -1)
              {
                goto LABEL_2941;
              }

              if (*v171 >= 2u)
              {
                goto LABEL_2876;
              }

              if (v168 <= &v172[-v170])
              {
                goto LABEL_2824;
              }

              v173 = v169 + 3;
              *(a3 + 2) = v169 + 3;
              if (v169 == -2)
              {
LABEL_2941:
                v1570 = v168;
                v1571 = v170;
                goto LABEL_2826;
              }

              if (*v172 >= 2u)
              {
                goto LABEL_2876;
              }

              if (v168 > &v173[-v170])
              {
                *(a3 + 2) = v169 + 4;
                if (v169 != -3)
                {
                  if (*v173 < 2u)
                  {
                    WebKit::RemoteGraphicsContextGL::colorMask(this);
                    goto LABEL_461;
                  }

LABEL_2876:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1598 = *(a3 + 3);
                  if (v1598 && v168)
                  {
                    (*(*v1598 + 16))(v1598, v170);
                  }

                  v733 = *a3;
                  v1402 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v735 = *(a3 + 3);
                  if (!v735)
                  {
                    goto LABEL_461;
                  }

LABEL_2620:
                  if (!v1402)
                  {
LABEL_461:
                    if (atomic_fetch_add(this + 4, 0xFFFFFFFF) == 1)
                    {
                      atomic_store(1u, this + 4);
                      (*(*(this + 1) + 8))(this + 8);
                    }

                    return;
                  }

LABEL_2888:
                  (*(*v735 + 16))(v735, v733);
                  goto LABEL_461;
                }

                goto LABEL_2941;
              }
            }

LABEL_2824:
            v1570 = 0;
            v1571 = 0;
            *a3 = 0;
            *(a3 + 1) = 0;
            v1572 = *(a3 + 3);
            if (v1572)
            {
              (*(*v1572 + 16))(v1572);
              v1571 = *a3;
              v1570 = *(a3 + 1);
            }

LABEL_2826:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1573 = *(a3 + 3);
            if (v1573 && v1570)
            {
              (*(*v1573 + 16))(v1573, v1571, v1570);
LABEL_3081:
              v170 = *a3;
              v168 = *(a3 + 1);
              goto LABEL_2876;
            }

            goto LABEL_2874;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v1597 = *(a3 + 3);
        if (v1597)
        {
          if (v168)
          {
            (*(*v1597 + 16))(v1597);
            goto LABEL_3081;
          }

LABEL_2875:
          v170 = 0;
          goto LABEL_2876;
        }

LABEL_2874:
        v168 = 0;
        goto LABEL_2875;
      case 0x4AC:
        v167 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v167 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        *buf = v167;
        if (v167 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        if (v167)
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v262 = *(this + 7);
        if (v262)
        {
          ++*(v262 + 2);
          WebCore::GraphicsContextGLANGLE::compileShader(v262);
          goto LABEL_537;
        }

        WebCore::GraphicsContextGLANGLE::compileShader(0);
        goto LABEL_461;
      case 0x4B6:
        v75 = *(a3 + 1);
        v76 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v77 = *a3;
        v78 = v76 - *a3;
        v17 = v75 >= v78;
        v79 = v75 - v78;
        if (!v17 || v79 <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v76 + 1;
        if (!v76)
        {
          goto LABEL_2594;
        }

        v81 = *v76;
        v82 = ((v76 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v82 - v77 || v75 - (v82 - v77) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v82 + 1;
        if (!v82)
        {
          goto LABEL_2594;
        }

        v84 = *v82;
        v85 = ((v82 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v85 - v77 || v75 - (v85 - v77) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v85 + 1;
        if (!v85)
        {
          goto LABEL_2594;
        }

        v87 = *v85;
        v88 = ((v85 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v88 - v77 || v75 - (v88 - v77) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v88 + 1;
        if (!v88)
        {
          goto LABEL_2594;
        }

        v90 = *v88;
        v91 = ((v88 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v91 - v77 || v75 - (v91 - v77) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v91 + 1;
        if (!v91)
        {
          goto LABEL_2594;
        }

        v93 = *v91;
        v94 = ((v91 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v94 - v77 || v75 - (v94 - v77) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v94 + 1;
        if (!v94)
        {
          goto LABEL_2594;
        }

        v96 = *v94;
        v97 = ((v94 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v97 - v77 || v75 - (v97 - v77) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v97 + 1;
        if (!v97)
        {
          goto LABEL_2594;
        }

        v98 = *v97;
        v99 = ((v97 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v75 < v99 - v77 || v75 - (v99 - v77) <= 3)
        {
LABEL_2592:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1403 = *(a3 + 3);
          if (v1403)
          {
            if (v75)
            {
              (*(*v1403 + 16))(v1403);
              v75 = *(a3 + 1);
            }
          }

          else
          {
            v75 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v99 + 1;
          if (v99)
          {
            WebKit::RemoteGraphicsContextGL::copyTexImage2D(this, v81, v84, v87, v90, v93, v96, v98, *v99);
            goto LABEL_461;
          }
        }

LABEL_2594:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1404 = *(a3 + 3);
        if (v1404 && v75)
        {
          (*(*v1404 + 16))(v1404);
        }

        v733 = *a3;
        v1402 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (v735)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4B7:
        v108 = *(a3 + 1);
        v109 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v110 = *a3;
        v111 = v109 - *a3;
        v17 = v108 >= v111;
        v112 = v108 - v111;
        if (!v17 || v112 <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v109 + 1;
        if (!v109)
        {
          goto LABEL_2589;
        }

        v114 = *v109;
        v115 = ((v109 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v115 - v110 || v108 - (v115 - v110) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v115 + 1;
        if (!v115)
        {
          goto LABEL_2589;
        }

        v117 = *v115;
        v118 = ((v115 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v118 - v110 || v108 - (v118 - v110) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v118 + 1;
        if (!v118)
        {
          goto LABEL_2589;
        }

        v120 = *v118;
        v121 = ((v118 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v121 - v110 || v108 - (v121 - v110) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v121 + 1;
        if (!v121)
        {
          goto LABEL_2589;
        }

        v123 = *v121;
        v124 = ((v121 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v124 - v110 || v108 - (v124 - v110) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v124 + 1;
        if (!v124)
        {
          goto LABEL_2589;
        }

        v126 = *v124;
        v127 = ((v124 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v127 - v110 || v108 - (v127 - v110) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v127 + 1;
        if (!v127)
        {
          goto LABEL_2589;
        }

        v129 = *v127;
        v130 = ((v127 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v130 - v110 || v108 - (v130 - v110) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v130 + 1;
        if (!v130)
        {
          goto LABEL_2589;
        }

        v131 = *v130;
        v132 = ((v130 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v108 < v132 - v110 || v108 - (v132 - v110) <= 3)
        {
LABEL_2587:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1400 = *(a3 + 3);
          if (v1400)
          {
            if (v108)
            {
              (*(*v1400 + 16))(v1400);
              v108 = *(a3 + 1);
            }
          }

          else
          {
            v108 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v132 + 1;
          if (v132)
          {
            WebKit::RemoteGraphicsContextGL::copyTexSubImage2D(this, v114, v117, v120, v123, v126, v129, v131, *v132);
            goto LABEL_461;
          }
        }

LABEL_2589:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1401 = *(a3 + 3);
        if (v1401 && v108)
        {
          (*(*v1401 + 16))(v1401);
        }

        v733 = *a3;
        v1402 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (v735)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4B9:
        v191 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v191 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1709[0]) = v191;
        if (v191 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v101 = *(this + 7);
        if (v101)
        {
          ++*(v101 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createBuffer(v101);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createBuffer(0);
        goto LABEL_1481;
      case 0x4BA:
        v100 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v100 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1709[0]) = v100;
        if (v100 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v101 = *(this + 7);
        if (v101)
        {
          ++*(v101 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createFramebuffer(v101);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createFramebuffer(0);
        goto LABEL_1481;
      case 0x4BB:
        v107 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v107 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1709[0]) = v107;
        if (v107 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v101 = *(this + 7);
        if (v101)
        {
          ++*(v101 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createProgram(v101);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createProgram(0);
        goto LABEL_1481;
      case 0x4BE:
        v104 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v104 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1709[0]) = v104;
        if (v104 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v101 = *(this + 7);
        if (v101)
        {
          ++*(v101 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createRenderbuffer(v101);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createRenderbuffer(0);
        goto LABEL_1481;
      case 0x4C0:
        v148 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v149 & 1) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1709[0]) = v148;
        if (v148 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v101 = *(this + 7);
        if (v101)
        {
          ++*(v101 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createShader(v101);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createShader(0);
        goto LABEL_1481;
      case 0x4C1:
        v103 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v103 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1709[0]) = v103;
        if (v103 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v101 = *(this + 7);
        if (v101)
        {
          ++*(v101 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createTexture(v101);
LABEL_395:
          v192 = Buffer;
          if (*(v101 + 2) == 1)
          {
            (*(*v101 + 16))(v101);
          }

          else
          {
            --*(v101 + 2);
          }
        }

        else
        {
          Framebuffer = WebCore::GraphicsContextGLANGLE::createTexture(0);
LABEL_1481:
          v192 = Framebuffer;
        }

        LODWORD(v1714) = v192;
        if (v192)
        {
          goto LABEL_398;
        }

        goto LABEL_461;
      case 0x4C4:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::cullFace(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::cullFace(0);
        goto LABEL_461;
      case 0x4C5:
        v215 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v215 & 0x100000000) == 0 || (v215 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v215);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteBuffer(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteBuffer(0);
        goto LABEL_461;
      case 0x4C7:
        v106 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v106 & 0x100000000) == 0 || (v106 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v106);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteFramebuffer(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteFramebuffer(0);
        goto LABEL_461;
      case 0x4C8:
        v144 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v144 & 0x100000000) == 0 || (v144 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v144);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteProgram(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteProgram(0);
        goto LABEL_461;
      case 0x4CB:
        v156 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v156 & 0x100000000) == 0 || (v156 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v156);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteRenderbuffer(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteRenderbuffer(0);
        goto LABEL_461;
      case 0x4CD:
        v145 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v145 & 0x100000000) == 0 || (v145 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v145);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteShader(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteShader(0);
        goto LABEL_461;
      case 0x4CF:
        v224 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v224 & 0x100000000) == 0 || (v224 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v224);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteTexture(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteTexture(0);
        goto LABEL_461;
      case 0x4D2:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::depthFunc(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::depthFunc(0);
        goto LABEL_461;
      case 0x4D3:
        if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::depthMask(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::depthMask(0);
        goto LABEL_461;
      case 0x4D4:
        v222 = IPC::Decoder::decode<std::tuple<float,float>>(a3);
        if ((v223 & 1) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::depthRange(v6, *&v222, *(&v222 + 1));
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::depthRange(0, *&v222, *(&v222 + 1));
        goto LABEL_461;
      case 0x4D5:
        v72 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v73 & 1) == 0)
        {
          goto LABEL_461;
        }

        v74 = v72;
        LODWORD(v1709[0]) = HIDWORD(v72);
        *buf = v72;
        if (v72 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        if (v72)
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        if (v74 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v74))
        {
          LODWORD(v1709[0]) = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, v1709);
        }

        v262 = *(this + 7);
        if (v262)
        {
          ++*(v262 + 2);
          WebCore::GraphicsContextGLANGLE::detachShader(v262);
          goto LABEL_537;
        }

        WebCore::GraphicsContextGLANGLE::detachShader(0);
        goto LABEL_461;
      case 0x4D6:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::disable(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::disable(0);
        goto LABEL_461;
      case 0x4D7:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::disableVertexAttribArray(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::disableVertexAttribArray(0);
        goto LABEL_461;
      case 0x4D9:
        v62 = *(a3 + 1);
        v63 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v64 = *a3;
        v65 = v63 - *a3;
        v17 = v62 >= v65;
        v66 = v62 - v65;
        if (!v17 || v66 <= 3)
        {
          goto LABEL_2606;
        }

        *(a3 + 2) = v63 + 4;
        if (!v63)
        {
          goto LABEL_2608;
        }

        v68 = (v63 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v62 < v68 - v64 || v62 - (v68 - v64) <= 3)
        {
          goto LABEL_2606;
        }

        *(a3 + 2) = v68 + 4;
        if (!v68)
        {
          goto LABEL_2608;
        }

        v70 = (v68 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v62 >= v70 - v64 && v62 - (v70 - v64) > 3)
        {
          *(a3 + 2) = v70 + 4;
          if (v70)
          {
            v6 = *(this + 7);
            if (v6)
            {
              ++*(v6 + 2);
              WebCore::GraphicsContextGLANGLE::drawArrays(v6);
              goto LABEL_459;
            }

            WebCore::GraphicsContextGLANGLE::drawArrays(0);
            goto LABEL_461;
          }
        }

        else
        {
LABEL_2606:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1410 = *(a3 + 3);
          if (v1410)
          {
            if (v62)
            {
              (*(*v1410 + 16))(v1410);
              v62 = *(a3 + 1);
            }
          }

          else
          {
            v62 = 0;
          }
        }

LABEL_2608:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1411 = *(a3 + 3);
        if (v1411 && v62)
        {
          (*(*v1411 + 16))(v1411);
        }

        v733 = *a3;
        v1402 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (!v735)
        {
          goto LABEL_461;
        }

        goto LABEL_2620;
      case 0x4DC:
        IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::drawBuffers(this, *buf, *&buf[8]);
        }

        goto LABEL_461;
      case 0x4DD:
        IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::drawBuffersEXT(this, *buf, *&buf[8]);
        }

        goto LABEL_461;
      case 0x4DE:
        v179 = *(a3 + 1);
        v180 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v181 = *a3;
        v182 = v180 - *a3;
        v17 = v179 >= v182;
        v183 = v179 - v182;
        if (!v17 || v183 <= 3)
        {
          goto LABEL_2616;
        }

        *(a3 + 2) = v180 + 4;
        if (!v180)
        {
          goto LABEL_2618;
        }

        v185 = (v180 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v179 < v185 - v181 || v179 - (v185 - v181) <= 3)
        {
          goto LABEL_2616;
        }

        *(a3 + 2) = v185 + 4;
        if (!v185)
        {
          goto LABEL_2618;
        }

        v187 = (v185 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v179 < v187 - v181 || v179 - (v187 - v181) <= 3)
        {
          goto LABEL_2616;
        }

        *(a3 + 2) = v187 + 4;
        if (!v187)
        {
          goto LABEL_2618;
        }

        v189 = (v187 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v179 >= v189 - v181 && v179 - (v189 - v181) > 7)
        {
          *(a3 + 2) = v189 + 8;
          if (v189)
          {
            WebKit::RemoteGraphicsContextGL::drawElements(this);
            goto LABEL_461;
          }
        }

        else
        {
LABEL_2616:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1414 = *(a3 + 3);
          if (v1414)
          {
            if (v179)
            {
              (*(*v1414 + 16))(v1414);
              v179 = *(a3 + 1);
            }
          }

          else
          {
            v179 = 0;
          }
        }

LABEL_2618:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1415 = *(a3 + 3);
        if (v1415 && v179)
        {
          (*(*v1415 + 16))(v1415);
        }

        v733 = *a3;
        v1402 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (v735)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4E2:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::enable(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::enable(0);
        goto LABEL_461;
      case 0x4E3:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::enableVertexAttribArray(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::enableVertexAttribArray(0);
        goto LABEL_461;
      case 0x4E8:
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[8] & 1) != 0 || (v739 = *a3, v740 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v741 = *(a3 + 3)) != 0) && v740 && ((*(*v741 + 16))(v741, v739), (buf[8]))
        {
          WebKit::RemoteGraphicsContextGL::ensureExtensionEnabled(this);
          if (buf[8])
          {
            v143 = *buf;
            *buf = 0;
            if (v143)
            {
              if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                goto LABEL_2466;
              }
            }
          }
        }

        goto LABEL_461;
      case 0x4E9:
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::finish(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::finish(0);
        goto LABEL_461;
      case 0x4EA:
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::flush(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::flush(0);
        goto LABEL_461;
      case 0x4EB:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::framebufferRenderbuffer(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x4EC:
        v44 = *(a3 + 1);
        v45 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v46 = *a3;
        v47 = v45 - *a3;
        v17 = v44 >= v47;
        v48 = v44 - v47;
        if (!v17 || v48 <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v45 + 1;
        if (!v45)
        {
          goto LABEL_2613;
        }

        v50 = *v45;
        v51 = ((v45 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v44 < v51 - v46 || v44 - (v51 - v46) <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v51 + 1;
        if (!v51)
        {
          goto LABEL_2613;
        }

        v53 = *v51;
        v54 = ((v51 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v44 < v54 - v46 || v44 - (v54 - v46) <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v54 + 1;
        if (!v54)
        {
          goto LABEL_2613;
        }

        v56 = *v54;
        v57 = ((v54 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v44 < v57 - v46 || v44 - (v57 - v46) <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v57 + 1;
        if (!v57)
        {
          goto LABEL_2613;
        }

        v59 = *v57;
        v60 = (v57 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v44 >= v60 - v46 && v44 - (v60 - v46) > 3)
        {
          *(a3 + 2) = v60 + 4;
          if (v60)
          {
            WebKit::RemoteGraphicsContextGL::framebufferTexture2D(this, v50, v53, v56, v59);
            goto LABEL_461;
          }
        }

        else
        {
LABEL_2611:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1412 = *(a3 + 3);
          if (v1412)
          {
            if (v44)
            {
              (*(*v1412 + 16))(v1412);
              v44 = *(a3 + 1);
            }
          }

          else
          {
            v44 = 0;
          }
        }

LABEL_2613:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1413 = *(a3 + 3);
        if (v1413 && v44)
        {
          (*(*v1413 + 16))(v1413);
        }

        v733 = *a3;
        v1402 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (v735)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4EE:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::frontFace(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::frontFace(0);
        goto LABEL_461;
      case 0x4EF:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (!v6)
        {
          WebCore::GraphicsContextGLANGLE::generateMipmap(0);
          goto LABEL_461;
        }

        ++*(v6 + 2);
        WebCore::GraphicsContextGLANGLE::generateMipmap(v6);
LABEL_459:
        if (*(v6 + 2) != 1)
        {
          --*(v6 + 2);
          goto LABEL_461;
        }

        goto LABEL_552;
      case 0x4F1:
        v216 = *(a3 + 1);
        v217 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v218 = v217 - *a3;
        v17 = v216 >= v218;
        v219 = v216 - v218;
        if (!v17 || v219 <= 3)
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v1568 = *(a3 + 3);
          if (v1568)
          {
            if (v216)
            {
              (*(*v1568 + 16))(v1568);
              v216 = *(a3 + 1);
            }
          }

          else
          {
            v216 = 0;
          }

          goto LABEL_2821;
        }

        *(a3 + 2) = v217 + 1;
        if (!v217)
        {
LABEL_2821:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1569 = *(a3 + 3);
          if (v1569 && v216)
          {
            (*(*v1569 + 16))(v1569);
          }

          goto LABEL_1371;
        }

        v221 = *v217;
        IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[16] & 1) != 0 || (v736 = *a3, v737 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v738 = *(a3 + 3)) != 0) && v737 && ((*(*v738 + 16))(v738, v736), (buf[16]))
        {
          WebKit::RemoteGraphicsContextGL::invalidateFramebuffer(this, v221, *buf, *&buf[8]);
          goto LABEL_461;
        }

LABEL_1371:
        v733 = *a3;
        v734 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (!v735)
        {
          goto LABEL_461;
        }

        goto LABEL_2887;
      case 0x4F2:
        v31 = *(a3 + 1);
        v32 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v33 = v32 - *a3;
        v17 = v31 >= v33;
        v34 = v31 - v33;
        if (!v17 || v34 <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v32 + 1;
        if (!v32)
        {
          goto LABEL_2603;
        }

        v36 = *v32;
        IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          v730 = *a3;
          v731 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v732 = *(a3 + 3);
          if (!v732)
          {
            goto LABEL_1368;
          }

          if (!v731)
          {
            goto LABEL_1368;
          }

          (*(*v732 + 16))(v732, v730);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_1368;
          }
        }

        v31 = *(a3 + 1);
        v37 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v38 = *a3;
        v39 = v37 - *a3;
        v17 = v31 >= v39;
        v40 = v31 - v39;
        if (!v17 || v40 <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v37 + 4;
        if (!v37)
        {
          goto LABEL_2603;
        }

        v41 = (v37 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v31 < v41 - v38 || v31 - (v41 - v38) <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v41 + 4;
        if (!v41)
        {
          goto LABEL_2603;
        }

        v42 = (v41 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v31 < v42 - v38 || v31 - (v42 - v38) <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v42 + 4;
        if (!v42)
        {
          goto LABEL_2603;
        }

        v43 = (v42 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v31 < v43 - v38 || v31 - (v43 - v38) <= 3)
        {
LABEL_2601:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1408 = *(a3 + 3);
          if (v1408)
          {
            if (v31)
            {
              (*(*v1408 + 16))(v1408);
              v31 = *(a3 + 1);
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v43 + 4;
          if (v43)
          {
            WebKit::RemoteGraphicsContextGL::invalidateSubFramebuffer(this, v36, *buf, *&buf[8]);
            goto LABEL_461;
          }
        }

LABEL_2603:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1409 = *(a3 + 3);
        if (v1409 && v31)
        {
          (*(*v1409 + 16))(v1409);
        }

LABEL_1368:
        v733 = *a3;
        v734 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (v735)
        {
          goto LABEL_2887;
        }

        goto LABEL_461;
      case 0x4F5:
        v13 = *(a3 + 1);
        v162 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v163 = v162 - *a3;
        v17 = v13 >= v163;
        v164 = v13 - v163;
        if (!v17 || v164 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v162 + 1;
        if (!v162)
        {
          goto LABEL_2774;
        }

        v166 = *v162;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int>>(v1709, a3);
        if ((BYTE8(v1710) & 1) == 0)
        {
          goto LABEL_2775;
        }

        *buf = v166;
        *&buf[8] = *v1709;
        *&buf[24] = v1710;
        buf[32] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawArraysANGLE(this, v166, &buf[8]);
        goto LABEL_461;
      case 0x4F6:
        v13 = *(a3 + 1);
        v174 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v175 = v174 - *a3;
        v17 = v13 >= v175;
        v176 = v13 - v175;
        if (!v17 || v176 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v174 + 1;
        if (!v174)
        {
          goto LABEL_2774;
        }

        v178 = *v174;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int,int>>(v1709, a3);
        if ((v1711 & 1) == 0)
        {
          goto LABEL_2775;
        }

        *buf = v178;
        *&buf[8] = *v1709;
        *&buf[24] = v1710;
        buf[40] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawArraysInstancedANGLE(this, v178, &buf[8]);
        goto LABEL_461;
      case 0x4F7:
        v13 = *(a3 + 1);
        v14 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v15 = *a3;
        v16 = v14 - *a3;
        v17 = v13 >= v16;
        v18 = v13 - v16;
        if (!v17 || v18 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v14 + 1;
        if (!v14)
        {
          goto LABEL_2774;
        }

        v20 = *v14;
        v21 = ((v14 + 11) & 0xFFFFFFFFFFFFFFF8);
        if (v13 < v21 - v15 || v13 - (v21 - v15) <= 7)
        {
          goto LABEL_2770;
        }

        *(a3 + 2) = v21 + 1;
        if (!v21)
        {
          goto LABEL_2772;
        }

        v23 = *v21;
        if (!*v21)
        {
          v30 = 0;
          v29 = 0;
          v27 = 0;
          v25 = 0;
LABEL_38:
          *buf = v20;
          *&buf[8] = v23;
          *&buf[16] = v25;
          *&buf[24] = v27;
          *&buf[32] = v29;
          *&buf[40] = v30;
          buf[48] = 1;
          WebKit::RemoteGraphicsContextGL::multiDrawArraysInstancedBaseInstanceANGLE(this, v20, &buf[8]);
          goto LABEL_461;
        }

        if (!(v23 >> 62))
        {
          v24 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
          if (v24)
          {
            v25 = v24;
            v26 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
            if (v26)
            {
              v27 = v26;
              v28 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
              if (v28)
              {
                v29 = v28;
                v30 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
                if (v30)
                {
                  goto LABEL_38;
                }
              }
            }
          }
        }

        goto LABEL_2773;
      case 0x4F8:
        v13 = *(a3 + 1);
        v206 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v207 = v206 - *a3;
        v17 = v13 >= v207;
        v208 = v13 - v207;
        if (!v17 || v208 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v206 + 1;
        if (!v206)
        {
          goto LABEL_2774;
        }

        v210 = *v206;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int>>(v1709, a3);
        if (BYTE8(v1710) != 1)
        {
          goto LABEL_2775;
        }

        v13 = *(a3 + 1);
        v211 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v212 = v211 - *a3;
        v17 = v13 >= v212;
        v213 = v13 - v212;
        if (!v17 || v213 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v211 + 1;
        if (!v211)
        {
          goto LABEL_2774;
        }

        v214 = *v211;
        *buf = v210;
        *&buf[8] = *v1709;
        *&buf[24] = v1710;
        *&buf[32] = v214;
        buf[40] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawElementsANGLE(this, v210, &buf[8]);
        goto LABEL_461;
      case 0x4F9:
        v13 = *(a3 + 1);
        v193 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v194 = v193 - *a3;
        v17 = v13 >= v194;
        v195 = v13 - v194;
        if (!v17 || v195 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v193 + 1;
        if (!v193)
        {
          goto LABEL_2774;
        }

        v197 = *v193;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int,int>>(v1709, a3);
        if (v1711 != 1)
        {
          goto LABEL_2775;
        }

        v13 = *(a3 + 1);
        v198 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v199 = v198 - *a3;
        v17 = v13 >= v199;
        v200 = v13 - v199;
        if (!v17 || v200 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v198 + 1;
        if (!v198)
        {
          goto LABEL_2774;
        }

        v201 = *v198;
        *buf = v197;
        *&buf[8] = *v1709;
        *&buf[24] = v1710;
        *&buf[40] = v201;
        buf[48] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawElementsInstancedANGLE(this, v197, &buf[8]);
        goto LABEL_461;
      case 0x4FA:
        v13 = *(a3 + 1);
        v227 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v228 = *a3;
        v229 = v227 - *a3;
        v17 = v13 >= v229;
        v230 = v13 - v229;
        if (!v17 || v230 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v227 + 1;
        if (!v227)
        {
          goto LABEL_2774;
        }

        v232 = *v227;
        v233 = ((v227 + 11) & 0xFFFFFFFFFFFFFFF8);
        if (v13 >= v233 - v228 && v13 - (v233 - v228) > 7)
        {
          v235 = v233 + 1;
          *(a3 + 2) = v233 + 1;
          if (v233)
          {
            v236 = *v233;
            if (*v233)
            {
              if (v236 >> 62 || (v237 = IPC::Decoder::decodeSpan<unsigned int>(a3, v236)) == 0 || (v238 = v237, (v239 = IPC::Decoder::decodeSpan<unsigned int>(a3, v236)) == 0) || (v240 = v239, (v241 = IPC::Decoder::decodeSpan<unsigned int>(a3, v236)) == 0) || (v242 = v241, (v243 = IPC::Decoder::decodeSpan<unsigned int>(a3, v236)) == 0) || (v244 = v243, (v245 = IPC::Decoder::decodeSpan<unsigned int>(a3, v236)) == 0))
              {
LABEL_2773:
                v13 = *(a3 + 1);
LABEL_2774:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1543 = *(a3 + 3);
                if (v1543 && v13)
                {
                  (*(*v1543 + 16))(v1543);
                }

LABEL_2775:
                v1397 = *a3;
                v1544 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v1399 = *(a3 + 3);
                if (!v1399 || !v1544)
                {
                  goto LABEL_461;
                }

                goto LABEL_2926;
              }

              v246 = v236 & 0x3FFFFFFFFFFFFF00;
              v247 = v236;
              v13 = *(a3 + 1);
              v235 = *(a3 + 2);
              v228 = *a3;
            }

            else
            {
              v245 = 0;
              v247 = 0;
              v246 = 0;
              v244 = 0;
              v242 = 0;
              v240 = 0;
              v238 = 0;
            }

            v248 = ((v235 + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v13 >= v248 - v228 && v13 - (v248 - v228) > 3)
            {
              *(a3 + 2) = v248 + 1;
              if (!v248)
              {
                goto LABEL_2774;
              }

              v250 = *v248;
              *buf = v232;
              *&buf[8] = v246 | v247;
              *&buf[16] = v238;
              *&buf[24] = v240;
              *&buf[32] = v242;
              *&buf[40] = v244;
              *&buf[48] = v245;
              v1717 = v250;
              LOBYTE(v1719) = 1;
              WebKit::RemoteGraphicsContextGL::multiDrawElementsInstancedBaseVertexBaseInstanceANGLE(this, v232, &buf[8]);
              goto LABEL_461;
            }

LABEL_2739:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1540 = *(a3 + 3);
            if (!v1540)
            {
              v13 = 0;
              goto LABEL_2774;
            }

            if (v13)
            {
LABEL_3028:
              (*(*v1540 + 16))(v1540);
              goto LABEL_2773;
            }

            goto LABEL_2774;
          }
        }

        else
        {
LABEL_2770:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1542 = *(a3 + 3);
          if (v1542)
          {
            if (v13)
            {
              (*(*v1542 + 16))(v1542);
              v13 = *(a3 + 1);
            }
          }

          else
          {
            v13 = 0;
          }
        }

LABEL_2772:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1540 = *(a3 + 3);
        if (v1540 && v13)
        {
          goto LABEL_3028;
        }

        goto LABEL_2773;
      case 0x507:
        v225 = IPC::Decoder::decode<std::tuple<int,int>>(a3);
        if (v226)
        {
          WebKit::RemoteGraphicsContextGL::reshape(this, v225, SHIDWORD(v225));
        }

        goto LABEL_461;
      case 0x50E:
        IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSampleBufferDisplayLayer::setSharedVideoFrameMemory(this);
          if (buf[16])
          {
            goto LABEL_466;
          }
        }

        goto LABEL_461;
      case 0x50F:
        IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
        if (buf[8] != 1)
        {
          goto LABEL_461;
        }

        WebKit::RemoteSampleBufferDisplayLayer::setSharedVideoFrameSemaphore(this, buf);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_461;
        }

        IPC::Semaphore::destroy(buf);
LABEL_466:
        WTF::MachSendRight::~MachSendRight(buf);
        goto LABEL_461;
      case 0x511:
        v202 = *(a3 + 1);
        v203 = *(a3 + 2);
        v204 = *a3;
        if (v202 <= &v203[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v1599 = *(a3 + 3);
          if (v1599)
          {
            if (v202)
            {
              (*(*v1599 + 16))(v1599);
              v202 = *(a3 + 1);
            }
          }

          else
          {
            v202 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v203 + 1;
          if (v203)
          {
            v205 = *v203;
            if (v205 < 3)
            {
              WebKit::RemoteGraphicsContextGL::simulateEventForTesting(this, v205);
              goto LABEL_461;
            }

LABEL_2884:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1601 = *(a3 + 3);
            if (!v1601)
            {
              goto LABEL_461;
            }

            if (!v202)
            {
              goto LABEL_461;
            }

            (*(*v1601 + 16))(v1601, v204);
            v733 = *a3;
            v734 = *(a3 + 1);
            v735 = *(a3 + 3);
            *a3 = 0;
            *(a3 + 1) = 0;
            if (!v735)
            {
              goto LABEL_461;
            }

LABEL_2887:
            if (!v734)
            {
              goto LABEL_461;
            }

            goto LABEL_2888;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v1600 = *(a3 + 3);
        if (v1600)
        {
          if (v202)
          {
            (*(*v1600 + 16))(v1600);
            v204 = *a3;
            v202 = *(a3 + 1);
            goto LABEL_2884;
          }
        }

        else
        {
          v202 = 0;
        }

        v204 = 0;
        goto LABEL_2884;
      default:
        if (*(a3 + 25) > 0x4B1u)
        {
          switch(*(a3 + 25))
          {
            case 0x4DA:
              v251 = *(a3 + 1);
              v252 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v253 = *a3;
              v254 = v252 - *a3;
              v17 = v251 >= v254;
              v255 = v251 - v254;
              if (!v17 || v255 <= 3)
              {
                goto LABEL_2861;
              }

              *(a3 + 2) = v252 + 4;
              if (!v252)
              {
                goto LABEL_2863;
              }

              v257 = (v252 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v251 < v257 - v253 || v251 - (v257 - v253) <= 3)
              {
                goto LABEL_2861;
              }

              *(a3 + 2) = v257 + 4;
              if (!v257)
              {
                goto LABEL_2863;
              }

              v259 = (v257 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v251 < v259 - v253 || v251 - (v259 - v253) <= 3)
              {
                goto LABEL_2861;
              }

              *(a3 + 2) = v259 + 4;
              if (!v259)
              {
                goto LABEL_2863;
              }

              v260 = (v259 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v251 < v260 - v253 || v251 - (v260 - v253) <= 3)
              {
LABEL_2861:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1592 = *(a3 + 3);
                if (v1592)
                {
                  if (v251)
                  {
                    (*(*v1592 + 16))(v1592);
                    v251 = *(a3 + 1);
                  }
                }

                else
                {
                  v251 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v260 + 4;
                if (v260)
                {
                  WebKit::RemoteGraphicsContextGL::drawArraysInstanced(this);
                  goto LABEL_461;
                }
              }

LABEL_2863:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1593 = *(a3 + 3);
              if (v1593 && v251)
              {
                (*(*v1593 + 16))(v1593);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x4DB:
            case 0x4DC:
            case 0x4DD:
            case 0x4DE:
            case 0x4E0:
            case 0x4E1:
            case 0x4E2:
            case 0x4E3:
            case 0x4E4:
            case 0x4E5:
            case 0x4E6:
            case 0x4E7:
            case 0x4E8:
            case 0x4E9:
            case 0x4EA:
            case 0x4EB:
            case 0x4EC:
            case 0x4ED:
            case 0x4EE:
            case 0x4EF:
            case 0x4F1:
            case 0x4F2:
            case 0x4F5:
            case 0x4F6:
            case 0x4F7:
            case 0x4F8:
            case 0x4F9:
            case 0x4FA:
            case 0x4FB:
            case 0x4FD:
            case 0x4FF:
            case 0x500:
            case 0x501:
            case 0x502:
            case 0x505:
            case 0x506:
            case 0x507:
            case 0x508:
            case 0x50A:
            case 0x50B:
            case 0x50D:
            case 0x50E:
            case 0x50F:
            case 0x511:
            case 0x51A:
            case 0x51B:
            case 0x51E:
            case 0x51F:
            case 0x522:
            case 0x523:
            case 0x524:
            case 0x529:
            case 0x52A:
            case 0x52F:
            case 0x530:
            case 0x535:
            case 0x536:
            case 0x53B:
            case 0x53C:
            case 0x53D:
            case 0x53F:
            case 0x540:
            case 0x542:
            case 0x543:
            case 0x545:
            case 0x546:
            case 0x552:
            case 0x553:
            case 0x554:
            case 0x555:
            case 0x556:
              goto LABEL_674;
            case 0x4DF:
              v611 = *(a3 + 1);
              v612 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v613 = *a3;
              v614 = v612 - *a3;
              v17 = v611 >= v614;
              v615 = v611 - v614;
              if (!v17 || v615 <= 3)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v612 + 4;
              if (!v612)
              {
                goto LABEL_2868;
              }

              v617 = (v612 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v611 < v617 - v613 || v611 - (v617 - v613) <= 3)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v617 + 4;
              if (!v617)
              {
                goto LABEL_2868;
              }

              v619 = (v617 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v611 < v619 - v613 || v611 - (v619 - v613) <= 3)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v619 + 4;
              if (!v619)
              {
                goto LABEL_2868;
              }

              v620 = (v619 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v611 < v620 - v613 || v611 - (v620 - v613) <= 7)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v620 + 8;
              if (!v620)
              {
                goto LABEL_2868;
              }

              v621 = (v620 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v611 < v621 - v613 || v611 - (v621 - v613) <= 3)
              {
LABEL_2866:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1594 = *(a3 + 3);
                if (v1594)
                {
                  if (v611)
                  {
                    (*(*v1594 + 16))(v1594);
                    v611 = *(a3 + 1);
                  }
                }

                else
                {
                  v611 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v621 | 4;
                if (v621)
                {
                  WebKit::RemoteGraphicsContextGL::drawElementsInstanced(this);
                  goto LABEL_461;
                }
              }

LABEL_2868:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1595 = *(a3 + 3);
              if (v1595 && v611)
              {
                (*(*v1595 + 16))(v1595);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x4F0:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
              if ((v602 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::hint(v6);
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::hint(0);
              goto LABEL_461;
            case 0x4F3:
              v622 = IPC::Decoder::decode<std::tuple<float>>(a3);
              if ((v622 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::lineWidth(v6, *&v622);
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::lineWidth(0, *&v622);
              goto LABEL_461;
            case 0x4F4:
              v623 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v623 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              *buf = v623;
              if (v623 > 0xFFFFFFFD)
              {
                goto LABEL_461;
              }

              if (v623)
              {
                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::linkProgram(v262);
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::linkProgram(0);
              goto LABEL_461;
            case 0x4FC:
              v523 = *(a3 + 1);
              v595 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v596 = *a3;
              v597 = v595 - *a3;
              v17 = v523 >= v597;
              v598 = v523 - v597;
              if (!v17 || v598 <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v595 + 4;
              if (!v595)
              {
                goto LABEL_3023;
              }

              v600 = (v595 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v523 < v600 - v596 || v523 - (v600 - v596) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v600 + 4;
              if (!v600)
              {
                goto LABEL_3023;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::pixelStorei(v6);
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::pixelStorei(0);
              goto LABEL_461;
            case 0x4FE:
              v566 = IPC::Decoder::decode<std::tuple<float,float>>(a3);
              if ((v567 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::polygonOffset(v6, *&v566, *(&v566 + 1));
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::polygonOffset(0, *&v566, *(&v566 + 1));
              goto LABEL_461;
            case 0x503:
              IPC::Decoder::decode<WebCore::IntRect>(a3, v1709);
              if (v1710 != 1)
              {
                goto LABEL_2582;
              }

              v263 = *(a3 + 1);
              v568 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v569 = *a3;
              v570 = v568 - *a3;
              v17 = v263 >= v570;
              v571 = v263 - v570;
              if (!v17 || v571 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v568 + 1;
              if (!v568)
              {
                goto LABEL_2581;
              }

              v572 = *v568;
              v573 = ((v568 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v573 - v569 || v263 - (v573 - v569) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v573 + 1;
              if (!v573)
              {
                goto LABEL_2581;
              }

              v574 = *v573;
              v575 = ((v573 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v263 < v575 - v569 || v263 - (v575 - v569) <= 7)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v575 + 1;
              if (!v575)
              {
                goto LABEL_2581;
              }

              v576 = *v575;
              v577 = (v575 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v263 < v577 - v569 || v263 - (v577 - v569) <= 3)
              {
                goto LABEL_2579;
              }

              v578 = (v577 | 4);
              *(a3 + 2) = v577 | 4;
              if (!v577)
              {
                goto LABEL_2581;
              }

              if (v263 >= v578 - v569 && v263 - (v578 - v569) > 3)
              {
                v579 = *v577;
                *(a3 + 2) = v577 + 8;
                v580 = *v578;
                *buf = *v1709;
                *&buf[16] = v572;
                *&buf[20] = v574;
                *&buf[24] = v576;
                *&buf[32] = v579;
                *&buf[36] = v580;
                buf[40] = 1;
                WebKit::RemoteGraphicsContextGL::readPixelsBufferObject(this, buf);
                goto LABEL_461;
              }

              *a3 = 0;
              *(a3 + 1) = 0;
              v1620 = *(a3 + 3);
              if (v1620)
              {
                if (v263)
                {
                  (*(*v1620 + 16))(v1620);
                  v263 = *(a3 + 1);
                  v1396 = *(a3 + 3);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  if (v1396)
                  {
                    goto LABEL_2939;
                  }
                }
              }

              goto LABEL_2582;
            case 0x504:
              v523 = *(a3 + 1);
              v624 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v625 = *a3;
              v626 = v624 - *a3;
              v17 = v523 >= v626;
              v627 = v523 - v626;
              if (!v17 || v627 <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v624 + 4;
              if (!v624)
              {
                goto LABEL_3023;
              }

              v629 = (v624 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v523 < v629 - v625 || v523 - (v629 - v625) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v629 + 4;
              if (!v629)
              {
                goto LABEL_3023;
              }

              v631 = (v629 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v523 < v631 - v625 || v523 - (v631 - v625) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v631 + 4;
              if (!v631)
              {
                goto LABEL_3023;
              }

              v632 = (v631 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v523 < v632 - v625 || v523 - (v632 - v625) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v632 + 4;
              if (!v632)
              {
                goto LABEL_3023;
              }

              WebKit::RemoteGraphicsContextGL::renderbufferStorage(this);
              goto LABEL_461;
            case 0x509:
              v523 = *(a3 + 1);
              v524 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v525 = *a3;
              v526 = v524 - *a3;
              v17 = v523 >= v526;
              v527 = v523 - v526;
              if (!v17 || v527 <= 3)
              {
                goto LABEL_3021;
              }

              v529 = (v524 + 1);
              *(a3 + 2) = v524 + 1;
              if (!v524)
              {
                goto LABEL_3023;
              }

              if (v523 <= &v529[-v525])
              {
                *a3 = 0;
                *(a3 + 1) = 0;
                v1656 = *(a3 + 3);
                if (v1656)
                {
                  if (v523)
                  {
                    (*(*v1656 + 16))(v1656);
                    v523 = *(a3 + 1);
                  }
                }

                else
                {
                  v523 = 0;
                }

                goto LABEL_3021;
              }

              v530 = *v524;
              *(a3 + 2) = v524 + 5;
              if (v524 == -4)
              {
                goto LABEL_3021;
              }

              if (*v529 >= 2u)
              {
                goto LABEL_3023;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::sampleCoverage(v6, v530);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::sampleCoverage(0, v530);
              goto LABEL_461;
            case 0x50C:
              IPC::Decoder::decode<std::tuple<int,int,int,int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::scissor(this);
              }

              goto LABEL_461;
            case 0x510:
              IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
              if (buf[16] != 1)
              {
                goto LABEL_461;
              }

              WebKit::RemoteGraphicsContextGL::shaderSource(this, *buf, &buf[8]);
              goto LABEL_257;
            case 0x512:
              v453 = *(a3 + 1);
              v496 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v497 = *a3;
              v498 = v496 - *a3;
              v17 = v453 >= v498;
              v499 = v453 - v498;
              if (!v17 || v499 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v496 + 4;
              if (!v496)
              {
                goto LABEL_2802;
              }

              v501 = (v496 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v501 - v497 || v453 - (v501 - v497) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v501 + 4;
              if (!v501)
              {
                goto LABEL_2802;
              }

              v503 = (v501 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v503 - v497 || v453 - (v503 - v497) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v503 + 4;
              if (!v503)
              {
                goto LABEL_2802;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilFunc(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilFunc(0);
              goto LABEL_461;
            case 0x513:
              v453 = *(a3 + 1);
              v487 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v488 = *a3;
              v489 = v487 - *a3;
              v17 = v453 >= v489;
              v490 = v453 - v489;
              if (!v17 || v490 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v487 + 4;
              if (!v487)
              {
                goto LABEL_2802;
              }

              v492 = (v487 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v492 - v488 || v453 - (v492 - v488) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v492 + 4;
              if (!v492)
              {
                goto LABEL_2802;
              }

              v494 = (v492 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v494 - v488 || v453 - (v494 - v488) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v494 + 4;
              if (!v494)
              {
                goto LABEL_2802;
              }

              v495 = (v494 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v495 - v488 || v453 - (v495 - v488) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v495 + 4;
              if (!v495)
              {
                goto LABEL_2802;
              }

              WebKit::RemoteGraphicsContextGL::stencilFuncSeparate(this);
              goto LABEL_461;
            case 0x514:
              if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilMask(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilMask(0);
              goto LABEL_461;
            case 0x515:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
              if ((v554 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilMaskSeparate(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilMaskSeparate(0);
              goto LABEL_461;
            case 0x516:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
              if ((v483 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilOp(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilOp(0);
              goto LABEL_461;
            case 0x517:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::stencilOpSeparate(this);
              }

              goto LABEL_461;
            case 0x518:
              v263 = *(a3 + 1);
              v462 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v463 = *a3;
              v464 = v462 - *a3;
              v17 = v263 >= v464;
              v465 = v263 - v464;
              if (!v17 || v465 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v462 + 1;
              if (!v462)
              {
                goto LABEL_2581;
              }

              v467 = *v462;
              v468 = ((v462 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v468 - v463 || v263 - (v468 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v468 + 1;
              if (!v468)
              {
                goto LABEL_2581;
              }

              v470 = *v468;
              v471 = ((v468 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v471 - v463 || v263 - (v471 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v471 + 1;
              if (!v471)
              {
                goto LABEL_2581;
              }

              v472 = *v471;
              v473 = ((v471 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v473 - v463 || v263 - (v473 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v473 + 1;
              if (!v473)
              {
                goto LABEL_2581;
              }

              v474 = *v473;
              v475 = ((v473 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v475 - v463 || v263 - (v475 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v475 + 1;
              if (!v475)
              {
                goto LABEL_2581;
              }

              v476 = *v475;
              v477 = ((v475 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v477 - v463 || v263 - (v477 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v477 + 1;
              if (!v477)
              {
                goto LABEL_2581;
              }

              v478 = *v477;
              v479 = ((v477 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v479 - v463 || v263 - (v479 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v479 + 1;
              if (!v479)
              {
                goto LABEL_2581;
              }

              v480 = *v479;
              v481 = ((v479 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v481 - v463 || v263 - (v481 - v463) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v481 + 1;
              if (!v481)
              {
                goto LABEL_2581;
              }

              v482 = *v481;
              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
              if ((v1710 & 1) == 0)
              {
                v1563 = *a3;
                v1564 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v1565 = *(a3 + 3);
                if (!v1565)
                {
                  goto LABEL_2582;
                }

                if (!v1564)
                {
                  goto LABEL_2582;
                }

                (*(*v1565 + 16))(v1565, v1563);
                if ((v1710 & 1) == 0)
                {
                  goto LABEL_2582;
                }
              }

              *buf = v467;
              *&buf[4] = v470;
              *&buf[8] = v472;
              *&buf[12] = v474;
              *&buf[16] = v476;
              *&buf[20] = v478;
              *&buf[24] = v480;
              *&buf[28] = v482;
              *&buf[32] = *v1709;
              buf[48] = 1;
              WebKit::RemoteGraphicsContextGL::texImage2D0(this);
              goto LABEL_461;
            case 0x519:
              v531 = *(a3 + 1);
              v532 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v533 = *a3;
              v534 = v532 - *a3;
              v17 = v531 >= v534;
              v535 = v531 - v534;
              if (!v17 || v535 <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v532 + 1;
              if (!v532)
              {
                goto LABEL_2850;
              }

              v537 = *v532;
              v538 = ((v532 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v538 - v533 || v531 - (v538 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v538 + 1;
              if (!v538)
              {
                goto LABEL_2850;
              }

              v540 = *v538;
              v541 = ((v538 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v541 - v533 || v531 - (v541 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v541 + 1;
              if (!v541)
              {
                goto LABEL_2850;
              }

              v542 = *v541;
              v543 = ((v541 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v543 - v533 || v531 - (v543 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v543 + 1;
              if (!v543)
              {
                goto LABEL_2850;
              }

              v544 = *v543;
              v545 = ((v543 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v545 - v533 || v531 - (v545 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v545 + 1;
              if (!v545)
              {
                goto LABEL_2850;
              }

              v546 = *v545;
              v547 = ((v545 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v547 - v533 || v531 - (v547 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v547 + 1;
              if (!v547)
              {
                goto LABEL_2850;
              }

              v548 = *v547;
              v549 = ((v547 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v549 - v533 || v531 - (v549 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v549 + 1;
              if (!v549)
              {
                goto LABEL_2850;
              }

              v550 = *v549;
              v551 = ((v549 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v531 < v551 - v533 || v531 - (v551 - v533) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v551 + 1;
              if (!v551)
              {
                goto LABEL_2850;
              }

              v552 = *v551;
              v553 = ((v551 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v531 < v553 - v533 || v531 - (v553 - v533) <= 7)
              {
LABEL_2848:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1584 = *(a3 + 3);
                if (v1584)
                {
                  if (v531)
                  {
                    (*(*v1584 + 16))(v1584);
                    v531 = *(a3 + 1);
                  }
                }

                else
                {
                  v531 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v553 + 1;
                if (v553)
                {
                  WebKit::RemoteGraphicsContextGL::texImage2D1(this, v537, v540, v542, v544, v546, v548, v550, v552, *v553);
                  goto LABEL_461;
                }
              }

LABEL_2850:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1585 = *(a3 + 3);
              if (v1585 && v531)
              {
                (*(*v1585 + 16))(v1585);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x51C:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
              if ((v484 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::texParameterf(v6, *&v484);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::texParameterf(0, *&v484);
              goto LABEL_461;
            case 0x51D:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
              if ((v485 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::texParameteri(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::texParameteri(0);
              goto LABEL_461;
            case 0x520:
              v263 = *(a3 + 1);
              v412 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v413 = *a3;
              v414 = v412 - *a3;
              v17 = v263 >= v414;
              v415 = v263 - v414;
              if (!v17 || v415 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v412 + 1;
              if (!v412)
              {
                goto LABEL_2581;
              }

              v417 = *v412;
              v418 = ((v412 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v418 - v413 || v263 - (v418 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v418 + 1;
              if (!v418)
              {
                goto LABEL_2581;
              }

              v420 = *v418;
              v421 = ((v418 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v421 - v413 || v263 - (v421 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v421 + 1;
              if (!v421)
              {
                goto LABEL_2581;
              }

              v422 = *v421;
              v423 = ((v421 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v423 - v413 || v263 - (v423 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v423 + 1;
              if (!v423)
              {
                goto LABEL_2581;
              }

              v424 = *v423;
              v425 = ((v423 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v425 - v413 || v263 - (v425 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v425 + 1;
              if (!v425)
              {
                goto LABEL_2581;
              }

              v426 = *v425;
              v427 = ((v425 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v427 - v413 || v263 - (v427 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v427 + 1;
              if (!v427)
              {
                goto LABEL_2581;
              }

              v428 = *v427;
              v429 = ((v427 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v429 - v413 || v263 - (v429 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v429 + 1;
              if (!v429)
              {
                goto LABEL_2581;
              }

              v430 = *v429;
              v431 = ((v429 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 < v431 - v413 || v263 - (v431 - v413) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v431 + 1;
              if (!v431)
              {
                goto LABEL_2581;
              }

              v432 = *v431;
              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
              if ((v1710 & 1) == 0)
              {
                v1560 = *a3;
                v1561 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v1562 = *(a3 + 3);
                if (!v1562)
                {
                  goto LABEL_2582;
                }

                if (!v1561)
                {
                  goto LABEL_2582;
                }

                (*(*v1562 + 16))(v1562, v1560);
                if ((v1710 & 1) == 0)
                {
                  goto LABEL_2582;
                }
              }

              *buf = v417;
              *&buf[4] = v420;
              *&buf[8] = v422;
              *&buf[12] = v424;
              *&buf[16] = v426;
              *&buf[20] = v428;
              *&buf[24] = v430;
              *&buf[28] = v432;
              *&buf[32] = *v1709;
              buf[48] = 1;
              WebKit::RemoteGraphicsContextGL::texSubImage2D0(this);
              goto LABEL_461;
            case 0x521:
              v645 = *(a3 + 1);
              v646 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v647 = *a3;
              v648 = v646 - *a3;
              v17 = v645 >= v648;
              v649 = v645 - v648;
              if (!v17 || v649 <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v646 + 1;
              if (!v646)
              {
                goto LABEL_2840;
              }

              v651 = *v646;
              v652 = ((v646 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v652 - v647 || v645 - (v652 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v652 + 1;
              if (!v652)
              {
                goto LABEL_2840;
              }

              v654 = *v652;
              v655 = ((v652 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v655 - v647 || v645 - (v655 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v655 + 1;
              if (!v655)
              {
                goto LABEL_2840;
              }

              v656 = *v655;
              v657 = ((v655 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v657 - v647 || v645 - (v657 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v657 + 1;
              if (!v657)
              {
                goto LABEL_2840;
              }

              v658 = *v657;
              v659 = ((v657 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v659 - v647 || v645 - (v659 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v659 + 1;
              if (!v659)
              {
                goto LABEL_2840;
              }

              v660 = *v659;
              v661 = ((v659 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v661 - v647 || v645 - (v661 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v661 + 1;
              if (!v661)
              {
                goto LABEL_2840;
              }

              v662 = *v661;
              v663 = ((v661 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v663 - v647 || v645 - (v663 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v663 + 1;
              if (!v663)
              {
                goto LABEL_2840;
              }

              v664 = *v663;
              v665 = ((v663 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v645 < v665 - v647 || v645 - (v665 - v647) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v665 + 1;
              if (!v665)
              {
                goto LABEL_2840;
              }

              v666 = *v665;
              v667 = ((v665 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v645 < v667 - v647 || v645 - (v667 - v647) <= 7)
              {
LABEL_2838:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1580 = *(a3 + 3);
                if (v1580)
                {
                  if (v645)
                  {
                    (*(*v1580 + 16))(v1580);
                    v645 = *(a3 + 1);
                  }
                }

                else
                {
                  v645 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v667 + 1;
                if (v667)
                {
                  WebKit::RemoteGraphicsContextGL::texSubImage2D1(this, v651, v654, v656, v658, v660, v662, v664, v666, *v667);
                  goto LABEL_461;
                }
              }

LABEL_2840:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1581 = *(a3 + 3);
              if (v1581 && v645)
              {
                (*(*v1581 + 16))(v1581);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x525:
              v453 = *(a3 + 1);
              v515 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v516 = *a3;
              v517 = v515 - *a3;
              v17 = v453 >= v517;
              v518 = v453 - v517;
              if (!v17 || v518 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v515 + 4;
              if (!v515)
              {
                goto LABEL_2802;
              }

              v520 = ((v515 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 < v520 - v516 || v453 - (v520 - v516) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v520 + 1;
              if (!v520)
              {
                goto LABEL_2802;
              }

              v522 = *v520;
              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1f(v6, v522);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform1f(0, v522);
              goto LABEL_461;
            case 0x526:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform1fv();
              goto LABEL_461;
            case 0x527:
              IPC::Decoder::decode<std::tuple<int,int>>(a3);
              if ((v643 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1i(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform1i(0);
              goto LABEL_461;
            case 0x528:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform1iv();
              goto LABEL_461;
            case 0x52B:
              v453 = *(a3 + 1);
              v633 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v634 = *a3;
              v635 = v633 - *a3;
              v17 = v453 >= v635;
              v636 = v453 - v635;
              if (!v17 || v636 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v633 + 4;
              if (!v633)
              {
                goto LABEL_2802;
              }

              v638 = ((v633 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 < v638 - v634 || v453 - (v638 - v634) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v638 + 1;
              if (!v638)
              {
                goto LABEL_2802;
              }

              v640 = *v638;
              v641 = ((v638 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 < v641 - v634 || v453 - (v641 - v634) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v641 + 1;
              if (!v641)
              {
                goto LABEL_2802;
              }

              v642 = *v641;
              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2f(v6, v640, v642);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform2f(0, v640, v642);
              goto LABEL_461;
            case 0x52C:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform2fv();
              goto LABEL_461;
            case 0x52D:
              v453 = *(a3 + 1);
              v454 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v455 = *a3;
              v456 = v454 - *a3;
              v17 = v453 >= v456;
              v457 = v453 - v456;
              if (!v17 || v457 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v454 + 4;
              if (!v454)
              {
                goto LABEL_2802;
              }

              v459 = (v454 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v459 - v455 || v453 - (v459 - v455) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v459 + 4;
              if (!v459)
              {
                goto LABEL_2802;
              }

              v461 = (v459 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v453 < v461 - v455 || v453 - (v461 - v455) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v461 + 4;
              if (!v461)
              {
                goto LABEL_2802;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2i(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform2i(0);
              goto LABEL_461;
            case 0x52E:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform2iv();
              goto LABEL_461;
            case 0x531:
              v453 = *(a3 + 1);
              v555 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v556 = *a3;
              v557 = v555 - *a3;
              v17 = v453 >= v557;
              v558 = v453 - v557;
              if (!v17 || v558 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v555 + 4;
              if (!v555)
              {
                goto LABEL_2802;
              }

              v560 = ((v555 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 < v560 - v556 || v453 - (v560 - v556) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v560 + 1;
              if (!v560)
              {
                goto LABEL_2802;
              }

              v562 = *v560;
              v563 = ((v560 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 < v563 - v556 || v453 - (v563 - v556) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v563 + 1;
              if (!v563)
              {
                goto LABEL_2802;
              }

              v564 = *v563;
              v565 = ((v563 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 < v565 - v556 || v453 - (v565 - v556) <= 3)
              {
LABEL_2800:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1557 = *(a3 + 3);
                if (v1557)
                {
                  if (v453)
                  {
                    (*(*v1557 + 16))(v1557);
                    v453 = *(a3 + 1);
                  }
                }

                else
                {
                  v453 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v565 + 1;
                if (v565)
                {
                  WebKit::RemoteGraphicsContextGL::uniform3f(this, v562, v564, *v565);
                  goto LABEL_461;
                }
              }

LABEL_2802:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1558 = *(a3 + 3);
              if (v1558 && v453)
              {
                (*(*v1558 + 16))(v1558);
              }

              v733 = *a3;
              v1559 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2804;
              }

              goto LABEL_461;
            case 0x532:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform3fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform3fv();
              goto LABEL_461;
            case 0x533:
              IPC::Decoder::decode<std::tuple<int,int,int,int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::uniform3i(this);
              }

              goto LABEL_461;
            case 0x534:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform3iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform3iv();
              goto LABEL_461;
            case 0x537:
              v398 = *(a3 + 1);
              v399 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v400 = *a3;
              v401 = v399 - *a3;
              v17 = v398 >= v401;
              v402 = v398 - v401;
              if (!v17 || v402 <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v399 + 4;
              if (!v399)
              {
                goto LABEL_2896;
              }

              v404 = ((v399 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v398 < v404 - v400 || v398 - (v404 - v400) <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v404 + 1;
              if (!v404)
              {
                goto LABEL_2896;
              }

              v406 = *v404;
              v407 = ((v404 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v398 < v407 - v400 || v398 - (v407 - v400) <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v407 + 1;
              if (!v407)
              {
                goto LABEL_2896;
              }

              v408 = *v407;
              v409 = ((v407 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v398 < v409 - v400 || v398 - (v409 - v400) <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v409 + 1;
              if (!v409)
              {
                goto LABEL_2896;
              }

              v410 = *v409;
              v411 = ((v409 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v398 < v411 - v400 || v398 - (v411 - v400) <= 3)
              {
LABEL_2894:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1606 = *(a3 + 3);
                if (v1606)
                {
                  if (v398)
                  {
                    (*(*v1606 + 16))(v1606);
                    v398 = *(a3 + 1);
                  }
                }

                else
                {
                  v398 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v411 + 1;
                if (v411)
                {
                  WebKit::RemoteGraphicsContextGL::uniform4f(this, v406, v408, v410, *v411);
                  goto LABEL_461;
                }
              }

LABEL_2896:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1607 = *(a3 + 3);
              if (v1607 && v398)
              {
                (*(*v1607 + 16))(v1607);
              }

              v733 = *a3;
              v1559 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (!v735)
              {
                goto LABEL_461;
              }

LABEL_2804:
              if (!v1559)
              {
                goto LABEL_461;
              }

              goto LABEL_2888;
            case 0x538:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform4fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform4fv();
              goto LABEL_461;
            case 0x539:
              v504 = *(a3 + 1);
              v505 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v506 = *a3;
              v507 = v505 - *a3;
              v17 = v504 >= v507;
              v508 = v504 - v507;
              if (!v17 || v508 <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v505 + 4;
              if (!v505)
              {
                goto LABEL_2845;
              }

              v510 = (v505 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v504 < v510 - v506 || v504 - (v510 - v506) <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v510 + 4;
              if (!v510)
              {
                goto LABEL_2845;
              }

              v512 = (v510 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v504 < v512 - v506 || v504 - (v512 - v506) <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v512 + 4;
              if (!v512)
              {
                goto LABEL_2845;
              }

              v513 = (v512 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v504 < v513 - v506 || v504 - (v513 - v506) <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v513 + 4;
              if (!v513)
              {
                goto LABEL_2845;
              }

              v514 = (v513 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v504 < v514 - v506 || v504 - (v514 - v506) <= 3)
              {
LABEL_2843:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1582 = *(a3 + 3);
                if (v1582)
                {
                  if (v504)
                  {
                    (*(*v1582 + 16))(v1582);
                    v504 = *(a3 + 1);
                  }
                }

                else
                {
                  v504 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v514 + 4;
                if (v514)
                {
                  WebKit::RemoteGraphicsContextGL::uniform4i(this);
                  goto LABEL_461;
                }
              }

LABEL_2845:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1583 = *(a3 + 3);
              if (v1583 && v504)
              {
                (*(*v1583 + 16))(v1583);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x53A:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniform4iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform4iv();
              goto LABEL_461;
            case 0x53E:
              IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniformMatrix2fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniformMatrix2fv();
              goto LABEL_461;
            case 0x541:
              IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniformMatrix3fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniformMatrix3fv();
              goto LABEL_461;
            case 0x544:
              IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::uniformMatrix4fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniformMatrix4fv();
              goto LABEL_461;
            case 0x547:
              v644 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v644 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              *buf = v644;
              if (v644 > 0xFFFFFFFD)
              {
                goto LABEL_461;
              }

              if (v644)
              {
                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::useProgram(v262);
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::useProgram(0);
              goto LABEL_461;
            case 0x548:
              v486 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v486 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              *buf = v486;
              if (v486 > 0xFFFFFFFD)
              {
                goto LABEL_461;
              }

              if (v486)
              {
                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
              }

              v262 = *(this + 7);
              if (v262)
              {
                ++*(v262 + 2);
                WebCore::GraphicsContextGLANGLE::validateProgram(v262);
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::validateProgram(0);
              goto LABEL_461;
            case 0x549:
              v433 = *(a3 + 1);
              v434 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v435 = *a3;
              v436 = v434 - *a3;
              v17 = v433 >= v436;
              v437 = v433 - v436;
              if (!v17 || v437 <= 3)
              {
                goto LABEL_2997;
              }

              *(a3 + 2) = v434 + 4;
              if (!v434)
              {
                goto LABEL_2999;
              }

              v439 = ((v434 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v433 >= v439 - v435 && v433 - (v439 - v435) > 3)
              {
                *(a3 + 2) = v439 + 1;
                if (v439)
                {
                  v441 = *v439;
                  v6 = *(this + 7);
                  if (v6)
                  {
                    ++*(v6 + 2);
                    WebCore::GraphicsContextGLANGLE::vertexAttrib1f(v6, v441);
                    goto LABEL_459;
                  }

                  WebCore::GraphicsContextGLANGLE::vertexAttrib1f(0, v441);
                  goto LABEL_461;
                }
              }

              else
              {
LABEL_2997:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1651 = *(a3 + 3);
                if (v1651)
                {
                  if (v433)
                  {
                    (*(*v1651 + 16))(v1651);
                    v433 = *(a3 + 1);
                  }
                }

                else
                {
                  v433 = 0;
                }
              }

LABEL_2999:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1652 = *(a3 + 3);
              if (v1652 && v433)
              {
                (*(*v1652 + 16))(v1652);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (!v735)
              {
                goto LABEL_461;
              }

              goto LABEL_2887;
            case 0x54A:
              v263 = *(a3 + 1);
              v680 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v681 = *a3;
              v682 = v680 - *a3;
              v17 = v263 >= v682;
              v683 = v263 - v682;
              if (!v17 || v683 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v680 + 1;
              if (!v680)
              {
                goto LABEL_2581;
              }

              v685 = *v680;
              v686 = (v680 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v263 < v686 - v681 || v263 - (v686 - v681) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v686 + 4;
              if (!v686)
              {
                goto LABEL_2581;
              }

              *buf = v685;
              *&buf[8] = v686;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib1fv(this);
              goto LABEL_461;
            case 0x54B:
              v442 = *(a3 + 1);
              v443 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v444 = *a3;
              v445 = v443 - *a3;
              v17 = v442 >= v445;
              v446 = v442 - v445;
              if (!v17 || v446 <= 3)
              {
                goto LABEL_2992;
              }

              *(a3 + 2) = v443 + 4;
              if (!v443)
              {
                goto LABEL_2994;
              }

              v448 = ((v443 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v442 < v448 - v444 || v442 - (v448 - v444) <= 3)
              {
                goto LABEL_2992;
              }

              *(a3 + 2) = v448 + 1;
              if (!v448)
              {
                goto LABEL_2994;
              }

              v450 = *v448;
              v451 = ((v448 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v442 < v451 - v444 || v442 - (v451 - v444) <= 3)
              {
LABEL_2992:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1649 = *(a3 + 3);
                if (v1649)
                {
                  if (v442)
                  {
                    (*(*v1649 + 16))(v1649);
                    v442 = *(a3 + 1);
                  }
                }

                else
                {
                  v442 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v451 + 1;
                if (v451)
                {
                  v452 = *v451;
                  v6 = *(this + 7);
                  if (v6)
                  {
                    ++*(v6 + 2);
                    WebCore::GraphicsContextGLANGLE::vertexAttrib2f(v6, v450, v452);
                    goto LABEL_459;
                  }

                  WebCore::GraphicsContextGLANGLE::vertexAttrib2f(0, v450, v452);
                  goto LABEL_461;
                }
              }

LABEL_2994:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1650 = *(a3 + 3);
              if (v1650 && v442)
              {
                (*(*v1650 + 16))(v1650);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (!v735)
              {
                goto LABEL_461;
              }

              goto LABEL_2887;
            case 0x54C:
              v263 = *(a3 + 1);
              v382 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v383 = *a3;
              v384 = v382 - *a3;
              v17 = v263 >= v384;
              v385 = v263 - v384;
              if (!v17 || v385 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v382 + 1;
              if (!v382)
              {
                goto LABEL_2581;
              }

              v387 = *v382;
              v388 = (v382 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v263 < v388 - v383 || v263 - (v388 - v383) <= 7)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v388 + 8;
              if (!v388)
              {
                goto LABEL_2581;
              }

              *buf = v387;
              *&buf[8] = v388;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib2fv(this);
              goto LABEL_461;
            case 0x54D:
              v668 = *(a3 + 1);
              v669 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v670 = *a3;
              v671 = v669 - *a3;
              v17 = v668 >= v671;
              v672 = v668 - v671;
              if (!v17 || v672 <= 3)
              {
                goto LABEL_2987;
              }

              *(a3 + 2) = v669 + 4;
              if (!v669)
              {
                goto LABEL_2989;
              }

              v674 = ((v669 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v668 < v674 - v670 || v668 - (v674 - v670) <= 3)
              {
                goto LABEL_2987;
              }

              *(a3 + 2) = v674 + 1;
              if (!v674)
              {
                goto LABEL_2989;
              }

              v676 = *v674;
              v677 = ((v674 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v668 < v677 - v670 || v668 - (v677 - v670) <= 3)
              {
                goto LABEL_2987;
              }

              *(a3 + 2) = v677 + 1;
              if (!v677)
              {
                goto LABEL_2989;
              }

              v678 = *v677;
              v679 = ((v677 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v668 < v679 - v670 || v668 - (v679 - v670) <= 3)
              {
LABEL_2987:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1647 = *(a3 + 3);
                if (v1647)
                {
                  if (v668)
                  {
                    (*(*v1647 + 16))(v1647);
                    v668 = *(a3 + 1);
                  }
                }

                else
                {
                  v668 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v679 + 1;
                if (v679)
                {
                  WebKit::RemoteGraphicsContextGL::vertexAttrib3f(this, v676, v678, *v679);
                  goto LABEL_461;
                }
              }

LABEL_2989:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1648 = *(a3 + 3);
              if (v1648 && v668)
              {
                (*(*v1648 + 16))(v1648);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x54E:
              v263 = *(a3 + 1);
              v603 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v604 = *a3;
              v605 = v603 - *a3;
              v17 = v263 >= v605;
              v606 = v263 - v605;
              if (!v17 || v606 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v603 + 1;
              if (!v603)
              {
                goto LABEL_2581;
              }

              v608 = *v603;
              v609 = (v603 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v263 < v609 - v604 || v263 - (v609 - v604) <= 0xB)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v609 + 12;
              if (!v609)
              {
                goto LABEL_2581;
              }

              *buf = v608;
              *&buf[8] = v609;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib3fv(this);
              goto LABEL_461;
            case 0x54F:
              v581 = *(a3 + 1);
              v582 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v583 = *a3;
              v584 = v582 - *a3;
              v17 = v581 >= v584;
              v585 = v581 - v584;
              if (!v17 || v585 <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v582 + 4;
              if (!v582)
              {
                goto LABEL_2984;
              }

              v587 = ((v582 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v581 < v587 - v583 || v581 - (v587 - v583) <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v587 + 1;
              if (!v587)
              {
                goto LABEL_2984;
              }

              v589 = *v587;
              v590 = ((v587 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v581 < v590 - v583 || v581 - (v590 - v583) <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v590 + 1;
              if (!v590)
              {
                goto LABEL_2984;
              }

              v591 = *v590;
              v592 = ((v590 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v581 < v592 - v583 || v581 - (v592 - v583) <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v592 + 1;
              if (!v592)
              {
                goto LABEL_2984;
              }

              v593 = *v592;
              v594 = ((v592 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v581 < v594 - v583 || v581 - (v594 - v583) <= 3)
              {
LABEL_2982:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1645 = *(a3 + 3);
                if (v1645)
                {
                  if (v581)
                  {
                    (*(*v1645 + 16))(v1645);
                    v581 = *(a3 + 1);
                  }
                }

                else
                {
                  v581 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v594 + 1;
                if (v594)
                {
                  WebKit::RemoteGraphicsContextGL::vertexAttrib4f(this, v589, v591, v593, *v594);
                  goto LABEL_461;
                }
              }

LABEL_2984:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1646 = *(a3 + 3);
              if (v1646 && v581)
              {
                (*(*v1646 + 16))(v1646);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (v735)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x550:
              v263 = *(a3 + 1);
              v390 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v391 = *a3;
              v392 = v390 - *a3;
              v17 = v263 >= v392;
              v393 = v263 - v392;
              if (!v17 || v393 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v390 + 1;
              if (!v390)
              {
                goto LABEL_2581;
              }

              v395 = *v390;
              v396 = (v390 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v263 < v396 - v391 || v263 - (v396 - v391) <= 0xF)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v396 + 16;
              if (!v396)
              {
                goto LABEL_2581;
              }

              *buf = v395;
              *&buf[8] = v396;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib4fv(this);
              goto LABEL_461;
            case 0x551:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
              if ((v688 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::vertexAttribDivisor(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::vertexAttribDivisor(0);
              goto LABEL_461;
            case 0x557:
              v368 = *(a3 + 1);
              v369 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v370 = *a3;
              v371 = v369 - *a3;
              v17 = v368 >= v371;
              v372 = v368 - v371;
              if (!v17 || v372 <= 3)
              {
                goto LABEL_3014;
              }

              *(a3 + 2) = v369 + 4;
              if (!v369)
              {
                goto LABEL_3016;
              }

              v374 = (v369 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v368 < v374 - v370 || v368 - (v374 - v370) <= 3)
              {
                goto LABEL_3014;
              }

              *(a3 + 2) = v374 + 4;
              if (!v374)
              {
                goto LABEL_3016;
              }

              v376 = ((v374 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v368 < v376 - v370 || v368 - (v376 - v370) <= 3)
              {
                goto LABEL_3014;
              }

              v377 = (v376 + 1);
              *(a3 + 2) = v376 + 1;
              if (!v376)
              {
                goto LABEL_3016;
              }

              if (v368 <= &v377[-v370])
              {
                *a3 = 0;
                *(a3 + 1) = 0;
                v1653 = *(a3 + 3);
                if (v1653)
                {
                  if (v368)
                  {
                    (*(*v1653 + 16))(v1653);
                    v368 = *(a3 + 1);
                  }
                }

                else
                {
                  v368 = 0;
                }
              }

              else
              {
                v378 = *v376;
                *(a3 + 2) = v376 + 5;
                if (v376 != -4)
                {
                  if (*v377 < 2u)
                  {
                    v379 = v376 - v370 + 8;
                    v17 = v368 >= v379;
                    v380 = v368 - v379;
                    if (v17 && v380 > 3)
                    {
                      *(a3 + 2) = v376 + 3;
                      if (v376 == -8)
                      {
LABEL_3064:
                        v1602 = v368;
                        v1603 = v370;
LABEL_2891:
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v1605 = *(a3 + 3);
                        if (v1605 && v1602)
                        {
                          (*(*v1605 + 16))(v1605, v1603, v1602, v378);
                        }

LABEL_3017:
                        v733 = *a3;
                        v734 = *(a3 + 1);
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v735 = *(a3 + 3);
                        if (!v735)
                        {
                          goto LABEL_461;
                        }

                        goto LABEL_2887;
                      }

                      v381 = (v376 + 19) & 0xFFFFFFFFFFFFFFF8;
                      if (v368 >= v381 - v370 && v368 - (v381 - v370) > 7)
                      {
                        *(a3 + 2) = v381 + 8;
                        if (v381)
                        {
                          WebKit::RemoteGraphicsContextGL::vertexAttribPointer(this);
                          goto LABEL_461;
                        }

                        goto LABEL_3064;
                      }
                    }

                    v1602 = 0;
                    v1603 = 0;
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1604 = *(a3 + 3);
                    if (v1604)
                    {
                      (*(*v1604 + 16))(v1604);
                      v1603 = *a3;
                      v1602 = *(a3 + 1);
                    }

                    goto LABEL_2891;
                  }

LABEL_3016:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1655 = *(a3 + 3);
                  if (v1655 && v368)
                  {
                    (*(*v1655 + 16))(v1655);
                  }

                  goto LABEL_3017;
                }
              }

LABEL_3014:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1654 = *(a3 + 3);
              if (v1654)
              {
                if (v368)
                {
                  (*(*v1654 + 16))(v1654);
                  v368 = *(a3 + 1);
                }
              }

              else
              {
                v368 = 0;
              }

              goto LABEL_3016;
            case 0x558:
              IPC::Decoder::decode<std::tuple<int,int,int,int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::viewport(this);
              }

              goto LABEL_461;
            default:
              if (v5 != 1202)
              {
                if (v5 == 1219)
                {
                  v290 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                  if ((v290 & 0x100000000) == 0)
                  {
                    goto LABEL_461;
                  }

                  LODWORD(v1709[0]) = v290;
                  if (v290 > 0xFFFFFFFD)
                  {
                    goto LABEL_461;
                  }

                  v291 = *(this + 7);
                  if (v291)
                  {
                    ++*(v291 + 2);
                    VertexArray = WebCore::GraphicsContextGLANGLE::createVertexArray(v291);
                    if (*(v291 + 2) == 1)
                    {
                      (*(*v291 + 16))(v291);
                    }

                    else
                    {
                      --*(v291 + 2);
                    }
                  }

                  else
                  {
                    VertexArray = WebCore::GraphicsContextGLANGLE::createVertexArray(0);
                  }

                  LODWORD(v1714) = VertexArray;
                  if (!VertexArray)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_398;
                }

LABEL_674:
                if (*(a3 + 25) <= 0x504u)
                {
                  if (*(a3 + 25) > 0x4AEu)
                  {
                    if (*(a3 + 25) <= 0x4E0u)
                    {
                      switch(*(a3 + 25))
                      {
                        case 0x4AF:
                          v263 = *(a3 + 1);
                          v349 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v350 = *a3;
                          v351 = v349 - *a3;
                          v17 = v263 >= v351;
                          v352 = v263 - v351;
                          if (!v17 || v352 <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v349 + 1;
                          if (!v349)
                          {
                            goto LABEL_2581;
                          }

                          v353 = *v349;
                          v354 = ((v349 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v354 - v350 || v263 - (v354 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v354 + 1;
                          if (!v354)
                          {
                            goto LABEL_2581;
                          }

                          v355 = *v354;
                          v356 = ((v354 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v356 - v350 || v263 - (v356 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v356 + 1;
                          if (!v356)
                          {
                            goto LABEL_2581;
                          }

                          v357 = *v356;
                          v358 = ((v356 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v358 - v350 || v263 - (v358 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v358 + 1;
                          if (!v358)
                          {
                            goto LABEL_2581;
                          }

                          v359 = *v358;
                          v360 = ((v358 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v360 - v350 || v263 - (v360 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v360 + 1;
                          if (!v360)
                          {
                            goto LABEL_2581;
                          }

                          v361 = *v360;
                          v362 = ((v360 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v362 - v350 || v263 - (v362 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v362 + 1;
                          if (!v362)
                          {
                            goto LABEL_2581;
                          }

                          v363 = *v362;
                          v364 = ((v362 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v364 - v350 || v263 - (v364 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v364 + 1;
                          if (!v364)
                          {
                            goto LABEL_2581;
                          }

                          v365 = *v364;
                          v366 = ((v364 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v366 - v350 || v263 - (v366 - v350) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v366 + 1;
                          if (!v366)
                          {
                            goto LABEL_2581;
                          }

                          v367 = *v366;
                          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                          if ((v1710 & 1) == 0)
                          {
                            v1633 = *a3;
                            v1634 = *(a3 + 1);
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1635 = *(a3 + 3);
                            if (!v1635)
                            {
                              goto LABEL_2582;
                            }

                            if (!v1634)
                            {
                              goto LABEL_2582;
                            }

                            (*(*v1635 + 16))(v1635, v1633);
                            if ((v1710 & 1) == 0)
                            {
                              goto LABEL_2582;
                            }
                          }

                          *buf = v353;
                          *&buf[4] = v355;
                          *&buf[8] = v357;
                          *&buf[12] = v359;
                          *&buf[16] = v361;
                          *&buf[20] = v363;
                          *&buf[24] = v365;
                          *&buf[28] = v367;
                          *&buf[32] = *v1709;
                          buf[48] = 1;
                          WebKit::RemoteGraphicsContextGL::compressedTexImage3D0(this);
                          goto LABEL_461;
                        case 0x4B0:
                          v523 = *(a3 + 1);
                          v822 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v823 = *a3;
                          v824 = v822 - *a3;
                          v17 = v523 >= v824;
                          v825 = v523 - v824;
                          if (!v17 || v825 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v822 + 1;
                          if (!v822)
                          {
                            goto LABEL_3023;
                          }

                          v826 = *v822;
                          v827 = ((v822 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v827 - v823 || v523 - (v827 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v827 + 1;
                          if (!v827)
                          {
                            goto LABEL_3023;
                          }

                          v828 = *v827;
                          v829 = ((v827 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v829 - v823 || v523 - (v829 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v829 + 1;
                          if (!v829)
                          {
                            goto LABEL_3023;
                          }

                          v830 = *v829;
                          v831 = ((v829 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v831 - v823 || v523 - (v831 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v831 + 1;
                          if (!v831)
                          {
                            goto LABEL_3023;
                          }

                          v832 = *v831;
                          v833 = ((v831 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v833 - v823 || v523 - (v833 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v833 + 1;
                          if (!v833)
                          {
                            goto LABEL_3023;
                          }

                          v834 = *v833;
                          v835 = ((v833 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v835 - v823 || v523 - (v835 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v835 + 1;
                          if (!v835)
                          {
                            goto LABEL_3023;
                          }

                          v836 = *v835;
                          v837 = ((v835 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v837 - v823 || v523 - (v837 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v837 + 1;
                          if (!v837)
                          {
                            goto LABEL_3023;
                          }

                          v838 = *v837;
                          v839 = ((v837 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v839 - v823 || v523 - (v839 - v823) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v839 + 1;
                          if (!v839)
                          {
                            goto LABEL_3023;
                          }

                          v840 = *v839;
                          v841 = ((v839 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v523 < v841 - v823 || v523 - (v841 - v823) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v841 + 1;
                          if (!v841)
                          {
                            goto LABEL_3023;
                          }

                          WebKit::RemoteGraphicsContextGL::compressedTexImage3D1(this, v826, v828, v830, v832, v834, v836, v838, v840, *v841);
                          goto LABEL_461;
                        case 0x4B3:
                          v263 = *(a3 + 1);
                          v842 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v843 = *a3;
                          v844 = v842 - *a3;
                          v17 = v263 >= v844;
                          v845 = v263 - v844;
                          if (!v17 || v845 <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v842 + 1;
                          if (!v842)
                          {
                            goto LABEL_2581;
                          }

                          v1706 = *v842;
                          v846 = ((v842 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v846 - v843 || v263 - (v846 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v846 + 1;
                          if (!v846)
                          {
                            goto LABEL_2581;
                          }

                          v1703 = *v846;
                          v847 = ((v846 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v847 - v843 || v263 - (v847 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v847 + 1;
                          if (!v847)
                          {
                            goto LABEL_2581;
                          }

                          v848 = *v847;
                          v849 = ((v847 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v849 - v843 || v263 - (v849 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v849 + 1;
                          if (!v849)
                          {
                            goto LABEL_2581;
                          }

                          v850 = *v849;
                          v851 = ((v849 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v851 - v843 || v263 - (v851 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v851 + 1;
                          if (!v851)
                          {
                            goto LABEL_2581;
                          }

                          v852 = *v851;
                          v853 = ((v851 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v853 - v843 || v263 - (v853 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v853 + 1;
                          if (!v853)
                          {
                            goto LABEL_2581;
                          }

                          v854 = *v853;
                          v855 = ((v853 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v855 - v843 || v263 - (v855 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v855 + 1;
                          if (!v855)
                          {
                            goto LABEL_2581;
                          }

                          v856 = *v855;
                          v857 = ((v855 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v857 - v843 || v263 - (v857 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v857 + 1;
                          if (!v857)
                          {
                            goto LABEL_2581;
                          }

                          v858 = *v857;
                          v859 = ((v857 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v859 - v843 || v263 - (v859 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v859 + 1;
                          if (!v859)
                          {
                            goto LABEL_2581;
                          }

                          v860 = *v859;
                          v861 = ((v859 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 < v861 - v843 || v263 - (v861 - v843) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v861 + 1;
                          if (!v861)
                          {
                            goto LABEL_2581;
                          }

                          v862 = *v861;
                          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                          if ((v1710 & 1) == 0)
                          {
                            v1636 = *a3;
                            v1637 = *(a3 + 1);
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1638 = *(a3 + 3);
                            if (!v1638)
                            {
                              goto LABEL_2582;
                            }

                            if (!v1637)
                            {
                              goto LABEL_2582;
                            }

                            (*(*v1638 + 16))(v1638, v1636);
                            if ((v1710 & 1) == 0)
                            {
                              goto LABEL_2582;
                            }
                          }

                          *buf = v1706;
                          *&buf[4] = v1703;
                          *&buf[8] = v848;
                          *&buf[12] = v850;
                          *&buf[16] = v852;
                          *&buf[20] = v854;
                          *&buf[24] = v856;
                          *&buf[28] = v858;
                          *&buf[32] = v860;
                          *&buf[36] = v862;
                          *&buf[40] = *v1709;
                          LOBYTE(v1717) = 1;
                          WebKit::RemoteGraphicsContextGL::compressedTexSubImage3D0(this);
                          goto LABEL_461;
                        case 0x4B4:
                          v523 = *(a3 + 1);
                          v794 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v795 = *a3;
                          v796 = v794 - *a3;
                          v17 = v523 >= v796;
                          v797 = v523 - v796;
                          if (!v17 || v797 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v794 + 1;
                          if (!v794)
                          {
                            goto LABEL_3023;
                          }

                          v798 = *v794;
                          v799 = ((v794 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v799 - v795 || v523 - (v799 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v799 + 1;
                          if (!v799)
                          {
                            goto LABEL_3023;
                          }

                          v800 = *v799;
                          v801 = ((v799 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v801 - v795 || v523 - (v801 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v801 + 1;
                          if (!v801)
                          {
                            goto LABEL_3023;
                          }

                          v802 = *v801;
                          v803 = ((v801 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v803 - v795 || v523 - (v803 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v803 + 1;
                          if (!v803)
                          {
                            goto LABEL_3023;
                          }

                          v804 = *v803;
                          v805 = ((v803 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v805 - v795 || v523 - (v805 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v805 + 1;
                          if (!v805)
                          {
                            goto LABEL_3023;
                          }

                          v806 = *v805;
                          v807 = ((v805 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v807 - v795 || v523 - (v807 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v807 + 1;
                          if (!v807)
                          {
                            goto LABEL_3023;
                          }

                          v808 = *v807;
                          v809 = ((v807 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v809 - v795 || v523 - (v809 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v809 + 1;
                          if (!v809)
                          {
                            goto LABEL_3023;
                          }

                          v810 = *v809;
                          v811 = ((v809 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v811 - v795 || v523 - (v811 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v811 + 1;
                          if (!v811)
                          {
                            goto LABEL_3023;
                          }

                          v812 = *v811;
                          v813 = ((v811 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v813 - v795 || v523 - (v813 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v813 + 1;
                          if (!v813)
                          {
                            goto LABEL_3023;
                          }

                          v814 = *v813;
                          v815 = ((v813 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v815 - v795 || v523 - (v815 - v795) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v815 + 1;
                          if (!v815)
                          {
                            goto LABEL_3023;
                          }

                          v816 = *v815;
                          v817 = ((v815 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v523 < v817 - v795 || v523 - (v817 - v795) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v817 + 1;
                          if (!v817)
                          {
                            goto LABEL_3023;
                          }

                          WebKit::RemoteGraphicsContextGL::compressedTexSubImage3D1(this, v798, v800, v802, v804, v806, v808, v810, v812, v814, v816, *v817);
                          goto LABEL_461;
                        case 0x4B5:
                          v863 = *(a3 + 1);
                          v864 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                          v865 = *a3;
                          v866 = v864 - *a3;
                          v17 = v863 >= v866;
                          v867 = v863 - v866;
                          if (!v17 || v867 <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v864 + 4;
                          if (!v864)
                          {
                            goto LABEL_3295;
                          }

                          v868 = (v864 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v863 < v868 - v865 || v863 - (v868 - v865) <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v868 + 4;
                          if (!v868)
                          {
                            goto LABEL_3295;
                          }

                          v869 = (v868 + 11) & 0xFFFFFFFFFFFFFFF8;
                          if (v863 < v869 - v865 || v863 - (v869 - v865) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v869 + 8;
                          if (!v869)
                          {
                            goto LABEL_3295;
                          }

                          v870 = (v869 + 15) & 0xFFFFFFFFFFFFFFF8;
                          if (v863 < v870 - v865 || v863 - (v870 - v865) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v870 + 8;
                          if (!v870)
                          {
                            goto LABEL_3295;
                          }

                          v871 = (v870 + 15) & 0xFFFFFFFFFFFFFFF8;
                          if (v863 < v871 - v865 || v863 - (v871 - v865) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v871 + 8;
                          if (!v871)
                          {
                            goto LABEL_3295;
                          }

                          WebKit::RemoteGraphicsContextGL::copyBufferSubData(this);
                          goto LABEL_461;
                        case 0x4B8:
                          v523 = *(a3 + 1);
                          v774 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v775 = *a3;
                          v776 = v774 - *a3;
                          v17 = v523 >= v776;
                          v777 = v523 - v776;
                          if (!v17 || v777 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v774 + 1;
                          if (!v774)
                          {
                            goto LABEL_3023;
                          }

                          v778 = *v774;
                          v779 = ((v774 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v779 - v775 || v523 - (v779 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v779 + 1;
                          if (!v779)
                          {
                            goto LABEL_3023;
                          }

                          v780 = *v779;
                          v781 = ((v779 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v781 - v775 || v523 - (v781 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v781 + 1;
                          if (!v781)
                          {
                            goto LABEL_3023;
                          }

                          v782 = *v781;
                          v783 = ((v781 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v783 - v775 || v523 - (v783 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v783 + 1;
                          if (!v783)
                          {
                            goto LABEL_3023;
                          }

                          v784 = *v783;
                          v785 = ((v783 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v785 - v775 || v523 - (v785 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v785 + 1;
                          if (!v785)
                          {
                            goto LABEL_3023;
                          }

                          v786 = *v785;
                          v787 = ((v785 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v787 - v775 || v523 - (v787 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v787 + 1;
                          if (!v787)
                          {
                            goto LABEL_3023;
                          }

                          v788 = *v787;
                          v789 = ((v787 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v789 - v775 || v523 - (v789 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v789 + 1;
                          if (!v789)
                          {
                            goto LABEL_3023;
                          }

                          v790 = *v789;
                          v791 = ((v789 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v791 - v775 || v523 - (v791 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v791 + 1;
                          if (!v791)
                          {
                            goto LABEL_3023;
                          }

                          v792 = *v791;
                          v793 = ((v791 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v793 - v775 || v523 - (v793 - v775) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v793 + 1;
                          if (!v793)
                          {
                            goto LABEL_3023;
                          }

                          WebKit::RemoteGraphicsContextGL::copyTexSubImage3D(this, v778, v780, v782, v784, v786, v788, v790, v792, *v793);
                          goto LABEL_461;
                        case 0x4BC:
                          v872 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v872 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          LODWORD(v1709[0]) = v872;
                          if (v872 > 0xFFFFFFFD)
                          {
                            goto LABEL_461;
                          }

                          v820 = *(this + 7);
                          if (v820)
                          {
                            ++*(v820 + 2);
                            Query = WebCore::GraphicsContextGLANGLE::createQuery(v820);
                            goto LABEL_1670;
                          }

                          Sampler = WebCore::GraphicsContextGLANGLE::createQuery(0);
                          goto LABEL_2745;
                        case 0x4BF:
                          v819 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v819 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          LODWORD(v1709[0]) = v819;
                          if (v819 > 0xFFFFFFFD)
                          {
                            goto LABEL_461;
                          }

                          v820 = *(this + 7);
                          if (v820)
                          {
                            ++*(v820 + 2);
                            Query = WebCore::GraphicsContextGLANGLE::createSampler(v820);
                            goto LABEL_1670;
                          }

                          Sampler = WebCore::GraphicsContextGLANGLE::createSampler(0);
                          goto LABEL_2745;
                        case 0x4C2:
                          v873 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v873 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          LODWORD(v1709[0]) = v873;
                          if (v873 > 0xFFFFFFFD)
                          {
                            goto LABEL_461;
                          }

                          v820 = *(this + 7);
                          if (v820)
                          {
                            ++*(v820 + 2);
                            Query = WebCore::GraphicsContextGLANGLE::createTransformFeedback(v820);
                            goto LABEL_1670;
                          }

                          Sampler = WebCore::GraphicsContextGLANGLE::createTransformFeedback(0);
                          goto LABEL_2745;
                        case 0x4C9:
                          v773 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v773 & 0x100000000) == 0 || (v773 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v773);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteQuery(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteQuery(0);
                          goto LABEL_461;
                        case 0x4CC:
                          v771 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v771 & 0x100000000) == 0 || (v771 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v771);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteSampler(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteSampler(0);
                          goto LABEL_461;
                        case 0x4CE:
                          v875 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
                          if ((v876 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteSync(v6, v875);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteSync(0, v875);
                          goto LABEL_461;
                        case 0x4D0:
                          v818 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v818 & 0x100000000) == 0 || (v818 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v818);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteTransformFeedback(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteTransformFeedback(0);
                          goto LABEL_461;
                        case 0x4D1:
                          v772 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v772 & 0x100000000) == 0 || (v772 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v772);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteVertexArray(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteVertexArray(0);
                          break;
                        default:
                          goto LABEL_1493;
                      }

                      goto LABEL_461;
                    }

                    if (*(a3 + 25) <= 0x4ECu)
                    {
                      if (v5 != 1249)
                      {
                        if (v5 == 1253)
                        {
                          if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::endQuery(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::endQuery(v6);
                          goto LABEL_1173;
                        }

                        if (v5 == 1255)
                        {
                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::endTransformFeedback(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::endTransformFeedback(v6);
                          goto LABEL_1173;
                        }

                        goto LABEL_1493;
                      }

                      v523 = *(a3 + 1);
                      v908 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      v909 = *a3;
                      v910 = v908 - *a3;
                      v17 = v523 >= v910;
                      v911 = v523 - v910;
                      if (v17 && v911 > 3)
                      {
                        *(a3 + 2) = v908 + 4;
                        if (!v908)
                        {
                          goto LABEL_3023;
                        }

                        v912 = (v908 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                        if (v523 >= v912 - v909 && v523 - (v912 - v909) > 3)
                        {
                          *(a3 + 2) = v912 + 4;
                          if (!v912)
                          {
                            goto LABEL_3023;
                          }

                          v913 = (v912 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v523 >= v913 - v909 && v523 - (v913 - v909) > 3)
                          {
                            *(a3 + 2) = v913 + 4;
                            if (!v913)
                            {
                              goto LABEL_3023;
                            }

                            v914 = (v913 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                            if (v523 >= v914 - v909 && v523 - (v914 - v909) > 3)
                            {
                              *(a3 + 2) = v914 + 4;
                              if (!v914)
                              {
                                goto LABEL_3023;
                              }

                              v915 = (v914 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                              if (v523 >= v915 - v909 && v523 - (v915 - v909) > 3)
                              {
                                *(a3 + 2) = v915 + 4;
                                if (!v915)
                                {
                                  goto LABEL_3023;
                                }

                                v916 = (v915 + 11) & 0xFFFFFFFFFFFFFFF8;
                                if (v523 >= v916 - v909 && v523 - (v916 - v909) > 7)
                                {
                                  *(a3 + 2) = v916 + 8;
                                  if (v916)
                                  {
                                    WebKit::RemoteGraphicsContextGL::drawRangeElements(this);
                                    goto LABEL_461;
                                  }

                                  goto LABEL_3023;
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_3021:
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1657 = *(a3 + 3);
                      if (v1657)
                      {
                        if (v523)
                        {
                          (*(*v1657 + 16))(v1657);
                          v523 = *(a3 + 1);
                        }
                      }

                      else
                      {
                        v523 = 0;
                      }

                      goto LABEL_3023;
                    }

                    if (v5 != 1261)
                    {
                      if (v5 == 1275)
                      {
                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::pauseTransformFeedback(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::pauseTransformFeedback(v6);
                        goto LABEL_1173;
                      }

                      if (v5 == 1282)
                      {
                        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                        {
                          goto LABEL_461;
                        }

                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::readBuffer(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::readBuffer(v6);
                        goto LABEL_1173;
                      }

                      goto LABEL_1493;
                    }

                    v523 = *(a3 + 1);
                    v917 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v918 = *a3;
                    v919 = v917 - *a3;
                    v17 = v523 >= v919;
                    v920 = v523 - v919;
                    if (!v17 || v920 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v917 + 1;
                    if (!v917)
                    {
                      goto LABEL_3023;
                    }

                    v921 = *v917;
                    v922 = ((v917 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v922 - v918 || v523 - (v922 - v918) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v922 + 1;
                    if (!v922)
                    {
                      goto LABEL_3023;
                    }

                    v923 = *v922;
                    v924 = ((v922 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v924 - v918 || v523 - (v924 - v918) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v924 + 1;
                    if (!v924)
                    {
                      goto LABEL_3023;
                    }

                    v925 = *v924;
                    v926 = (v924 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v926 - v918 || v523 - (v926 - v918) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v926 + 4;
                    if (!v926)
                    {
                      goto LABEL_3023;
                    }

                    v927 = (v926 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v927 - v918 || v523 - (v927 - v918) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v927 + 4;
                    if (v927)
                    {
                      WebKit::RemoteGraphicsContextGL::framebufferTextureLayer(this, v921, v923, v925);
                      goto LABEL_461;
                    }

LABEL_3023:
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1658 = *(a3 + 3);
                    if (v1658 && v523)
                    {
                      (*(*v1658 + 16))(v1658);
                    }

LABEL_3024:
                    v1659 = *a3;
                    v1660 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1661 = *(a3 + 3);
                    if (v1661 && v1660)
                    {
                      (*(*v1661 + 16))(v1661, v1659);
                    }

                    goto LABEL_461;
                  }

                  if (*(a3 + 25) <= 0x492u)
                  {
                    if (*(a3 + 25) > 0x48Cu)
                    {
                      switch(v5)
                      {
                        case 0x48Du:
                          v523 = *(a3 + 1);
                          v931 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v932 = *a3;
                          v933 = v931 - *a3;
                          v17 = v523 >= v933;
                          v934 = v523 - v933;
                          if (!v17 || v934 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v931 + 1;
                          if (!v931)
                          {
                            goto LABEL_3023;
                          }

                          v935 = *v931;
                          v936 = ((v931 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v936 - v932 || v523 - (v936 - v932) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v936 + 1;
                          if (!v936)
                          {
                            goto LABEL_3023;
                          }

                          v937 = *v936;
                          v938 = ((v936 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 < v938 - v932 || v523 - (v938 - v932) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v938 + 1;
                          if (!v938)
                          {
                            goto LABEL_3023;
                          }

                          v939 = *v938;
                          v940 = (v938 + 11) & 0xFFFFFFFFFFFFFFF8;
                          if (v523 < v940 - v932 || v523 - (v940 - v932) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v940 + 8;
                          if (!v940)
                          {
                            goto LABEL_3023;
                          }

                          v941 = (v940 + 15) & 0xFFFFFFFFFFFFFFF8;
                          if (v523 < v941 - v932 || v523 - (v941 - v932) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v941 + 8;
                          if (v941)
                          {
                            WebKit::RemoteGraphicsContextGL::bindBufferRange(this, v935, v937, v939);
                            goto LABEL_461;
                          }

                          goto LABEL_3023;
                        case 0x490u:
                          v899 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v900 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          *buf = HIDWORD(v899);
                          if (v899 > 0xFFFFFFFDFFFFFFFFLL)
                          {
                            goto LABEL_461;
                          }

                          if (HIDWORD(v899))
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v261 = *(this + 7);
                          if (!v261)
                          {
                            WebCore::GraphicsContextGLANGLE::bindSampler(0);
                            goto LABEL_461;
                          }

                          ++*(v261 + 2);
                          WebCore::GraphicsContextGLANGLE::bindSampler(v261);
                          goto LABEL_2091;
                        case 0x492u:
                          v754 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v755 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          *buf = HIDWORD(v754);
                          if (v754 > 0xFFFFFFFDFFFFFFFFLL)
                          {
                            goto LABEL_461;
                          }

                          if (HIDWORD(v754))
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v261 = *(this + 7);
                          if (!v261)
                          {
                            WebCore::GraphicsContextGLANGLE::bindTransformFeedback(0);
                            goto LABEL_461;
                          }

                          ++*(v261 + 2);
                          WebCore::GraphicsContextGLANGLE::bindTransformFeedback(v261);
                          goto LABEL_2091;
                      }
                    }

                    else
                    {
                      switch(v5)
                      {
                        case 0x487u:
                          v928 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v929 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          *buf = HIDWORD(v928);
                          if (v928 > 0xFFFFFFFDFFFFFFFFLL)
                          {
                            goto LABEL_461;
                          }

                          if (HIDWORD(v928))
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v261 = *(this + 7);
                          if (!v261)
                          {
                            WebCore::GraphicsContextGLANGLE::beginQuery(0);
                            goto LABEL_461;
                          }

                          ++*(v261 + 2);
                          WebCore::GraphicsContextGLANGLE::beginQuery(v261);
                          goto LABEL_2091;
                        case 0x489u:
                          if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::beginTransformFeedback(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::beginTransformFeedback(v6);
                          goto LABEL_1173;
                        case 0x48Cu:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                          if ((v742 & 0x100000000) != 0)
                          {
                            *buf = v742;
                            if (v742 <= 0xFFFFFFFD)
                            {
                              if (v742)
                              {
                                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                              }

                              v1101 = *(this + 7);
                              if (v1101)
                              {
                                ++*(v1101 + 2);
                                WebCore::GraphicsContextGLANGLE::bindBufferBase(v1101);
LABEL_2116:
                                if (*(v1101 + 2) == 1)
                                {
                                  (*(*v1101 + 16))(v1101);
                                }

                                else
                                {
                                  --*(v1101 + 2);
                                }
                              }

                              else
                              {
                                WebCore::GraphicsContextGLANGLE::bindBufferBase(0);
                              }
                            }
                          }

                          goto LABEL_461;
                      }
                    }

LABEL_1493:
                    if (*(a3 + 25) > 0x505u)
                    {
                      switch(*(a3 + 25))
                      {
                        case 0xFBD:
                          v766 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v766 & 0x100000000) != 0)
                          {
                            v767 = *(a3 + 8);
                            if (!v767)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911C3CLL);
                            }

                            v768 = v766;
                            atomic_fetch_add(a2 + 2, 1u);
                            v769 = WTF::fastMalloc(0x18);
                            *v769 = &unk_1F10EC710;
                            v769[1] = v767;
                            v769[2] = a2;
                            *buf = v769;
                            WebKit::RemoteGraphicsContextGL::checkFramebufferStatus(this, v768, buf);
                            v770 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFBE:
                        case 0xFC1:
                        case 0xFC4:
                        case 0xFC5:
                        case 0xFC6:
                        case 0xFCE:
                        case 0xFD1:
                        case 0xFD5:
                        case 0xFD8:
                        case 0xFD9:
                        case 0xFDA:
                        case 0xFDB:
                        case 0xFDC:
                        case 0xFDE:
                        case 0xFDF:
                        case 0xFE5:
                        case 0xFE8:
                        case 0xFE9:
                        case 0xFEA:
                        case 0xFEB:
                        case 0xFF5:
                        case 0xFF6:
                        case 0xFF8:
                        case 0xFFA:
                        case 0xFFC:
                        case 0xFFD:
                          goto LABEL_2210;
                        case 0xFBF:
                          IPC::Decoder::decode<WebKit::SharedVideoFrame>(a3, v1709);
                          if (v1713 != 1)
                          {
                            buf[0] = 0;
                            v1723 = 0;
                            goto LABEL_2915;
                          }

                          v1218 = *(a3 + 1);
                          v1219 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1220 = *a3;
                          v1221 = v1219 - *a3;
                          v17 = v1218 >= v1221;
                          v1222 = v1218 - v1221;
                          if (!v17 || v1222 <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1219 + 1;
                          if (!v1219)
                          {
                            goto LABEL_3271;
                          }

                          v1708 = *v1219;
                          v1223 = ((v1219 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1218 < v1223 - v1220 || v1218 - (v1223 - v1220) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1223 + 1;
                          if (!v1223)
                          {
                            goto LABEL_3271;
                          }

                          v1224 = *v1223;
                          v1225 = ((v1223 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1218 < v1225 - v1220 || v1218 - (v1225 - v1220) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1225 + 1;
                          if (!v1225)
                          {
                            goto LABEL_3271;
                          }

                          v1226 = *v1225;
                          v1227 = ((v1225 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1218 < v1227 - v1220 || v1218 - (v1227 - v1220) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1227 + 1;
                          if (!v1227)
                          {
                            goto LABEL_3271;
                          }

                          v1228 = *v1227;
                          v1229 = ((v1227 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1218 < v1229 - v1220 || v1218 - (v1229 - v1220) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1229 + 1;
                          if (!v1229)
                          {
                            goto LABEL_3271;
                          }

                          v1230 = *v1229;
                          v1231 = (v1229 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v1218 < v1231 - v1220 || v1218 - (v1231 - v1220) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          v1232 = (v1231 + 4);
                          *(a3 + 2) = v1231 + 4;
                          if (!v1231)
                          {
                            goto LABEL_3271;
                          }

                          if (v1218 <= &v1232[-v1220])
                          {
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1681 = *(a3 + 3);
                            if (v1681)
                            {
                              if (v1218)
                              {
                                (*(*v1681 + 16))(v1681);
                                v1218 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v1218 = 0;
                            }
                          }

                          else
                          {
                            v1233 = *v1231;
                            *(a3 + 2) = v1231 + 5;
                            if (v1231 != -4)
                            {
                              v1234 = *v1232;
                              if (v1234 < 2)
                              {
                                if (v1218 <= v1231 + 5 - v1220)
                                {
                                  v1682 = 0;
                                  v1683 = 0;
                                  *a3 = 0;
                                  *(a3 + 1) = 0;
                                  v1684 = *(a3 + 3);
                                  if (v1684)
                                  {
                                    (*(*v1684 + 16))(v1684);
                                    v1682 = 0;
                                    v1685 = *a3;
                                    v1686 = *(a3 + 1);
                                    v1687 = *(a3 + 3);
                                    *a3 = 0;
                                    *(a3 + 1) = 0;
                                    v1683 = 0;
                                    if (v1687)
                                    {
                                      if (v1686)
                                      {
                                        (*(*v1687 + 16))(v1687, v1685);
                                        v1683 = *a3;
                                        v1682 = *(a3 + 1);
                                      }
                                    }
                                  }
                                }

                                else
                                {
                                  *(a3 + 2) = v1231 + 6;
                                  v1235 = *(v1231 + 5);
                                  if (v1235 < 2)
                                  {
                                    std::__tuple_leaf<0ul,WebKit::SharedVideoFrame,false>::__tuple_leaf[abi:sn200100]<WebKit::SharedVideoFrame,0>(buf, v1709);
                                    *&buf[48] = v1708;
                                    *&buf[52] = v1224;
                                    v1717 = v1226;
                                    v1718 = v1228;
                                    v1719 = v1230;
                                    v1720 = v1233;
                                    v1721 = v1234;
                                    v1236 = 1;
                                    v1722 = v1235;
                                    goto LABEL_2395;
                                  }

                                  v1682 = v1218;
                                  v1683 = v1220;
                                }

                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1688 = *(a3 + 3);
                                if (v1688 && v1682)
                                {
                                  (*(*v1688 + 16))(v1688, v1683, v1682);
                                }

LABEL_3272:
                                v1236 = 0;
                                buf[0] = 0;
LABEL_2395:
                                v1723 = v1236;
                                if ((v1713 & 1) != 0 && v1712 == 2)
                                {
                                  WTF::MachSendRight::~MachSendRight((&v1710 + 8));
                                  v1236 = v1723;
                                }

                                if (v1236)
                                {
                                  goto LABEL_2399;
                                }

LABEL_2915:
                                v1608 = *a3;
                                v1609 = *(a3 + 1);
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1610 = *(a3 + 3);
                                if (!v1610)
                                {
                                  goto LABEL_461;
                                }

                                if (!v1609)
                                {
                                  goto LABEL_461;
                                }

                                (*(*v1610 + 16))(v1610, v1608);
                                if ((v1723 & 1) == 0)
                                {
                                  goto LABEL_461;
                                }

LABEL_2399:
                                v1237 = *(a3 + 8);
                                if (!v1237)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D911DD0);
                                }

                                atomic_fetch_add(a2 + 2, 1u);
                                v1238 = WTF::fastMalloc(0x18);
                                *v1238 = &unk_1F10EC648;
                                *(v1238 + 1) = v1237;
                                *(v1238 + 2) = a2;
                                v1709[0] = v1238;
                                WebKit::RemoteGraphicsContextGL::copyTextureFromVideoFrame(this, buf, *&buf[48], *&buf[52], v1717, v1718, v1719, v1720, v1721, v1722, v1709);
                                v1239 = v1709[0];
                                v1709[0] = 0;
                                if (v1239)
                                {
                                  (*(*v1239 + 8))(v1239);
                                }

                                if ((v1723 & 1) != 0 && buf[40] == 2)
                                {
                                  v1240 = &buf[24];
                                  goto LABEL_2567;
                                }

                                goto LABEL_461;
                              }

LABEL_3271:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1695 = *(a3 + 3);
                              if (v1695 && v1218)
                              {
                                (*(*v1695 + 16))(v1695);
                              }

                              goto LABEL_3272;
                            }
                          }

LABEL_3269:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1694 = *(a3 + 3);
                          if (v1694)
                          {
                            if (v1218)
                            {
                              (*(*v1694 + 16))(v1694);
                              v1218 = *(a3 + 1);
                            }
                          }

                          else
                          {
                            v1218 = 0;
                          }

                          goto LABEL_3271;
                        case 0xFC0:
                          v1241 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a3);
                          if (v1241 < 0x100u)
                          {
                            goto LABEL_3296;
                          }

                          v1242 = v1241;
                          v1243 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
                          if ((v1244 & 1) == 0)
                          {
                            goto LABEL_3296;
                          }

                          v1245 = *(a3 + 8);
                          if (!v1245)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911DF0);
                          }

                          v1246 = v1243;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1247 = WTF::fastMalloc(0x18);
                          *v1247 = &unk_1F10EC5F8;
                          v1247[1] = v1245;
                          v1247[2] = a2;
                          *buf = v1247;
                          WebKit::RemoteGraphicsContextGL::drawSurfaceBufferToImageBuffer(this, v1242 & 1, v1246, buf);
                          v1199 = *buf;
                          *buf = 0;
                          if (v1199)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        case 0xFC2:
                          v1268 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1269 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1270 = *(a3 + 8);
                          if (!v1270)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911EB0);
                          }

                          v1271 = v1268;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1272 = WTF::fastMalloc(0x18);
                          *v1272 = &unk_1F10EC738;
                          v1272[1] = v1270;
                          v1272[2] = a2;
                          *buf = v1272;
                          WebKit::RemoteGraphicsContextGL::getActiveAttrib(this, v1271, HIDWORD(v1271), buf);
                          goto LABEL_2432;
                        case 0xFC3:
                          v1273 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1274 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1275 = *(a3 + 8);
                          if (!v1275)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911ED0);
                          }

                          v1276 = v1273;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1277 = WTF::fastMalloc(0x18);
                          *v1277 = &unk_1F10EC760;
                          v1277[1] = v1275;
                          v1277[2] = a2;
                          *buf = v1277;
                          WebKit::RemoteGraphicsContextGL::getActiveUniform(this, v1276, HIDWORD(v1276), buf);
LABEL_2432:
                          v770 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFC7:
                          IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1294 = *(a3 + 8);
                            if (!v1294)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911F90);
                            }

                            atomic_fetch_add(a2 + 2, 1u);
                            v1295 = WTF::fastMalloc(0x18);
                            *v1295 = &unk_1F10EC788;
                            *(v1295 + 1) = v1294;
                            *(v1295 + 2) = a2;
                            v1709[0] = v1295;
                            WebKit::RemoteGraphicsContextGL::getAttribLocation(this, *buf, &buf[8], v1709);
                            if (v1709[0])
                            {
                              (*(*v1709[0] + 8))(v1709[0]);
                            }

                            if (buf[16])
                            {
                              v143 = *&buf[8];
                              *&buf[8] = 0;
                              if (v143)
                              {
                                if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  goto LABEL_2466;
                                }
                              }
                            }
                          }

                          goto LABEL_461;
                        case 0xFC8:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1248 = *(a3 + 8);
                            if (!v1248)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911E10);
                            }

                            atomic_fetch_add(a2 + 2, 1u);
                            v1249 = WTF::fastMalloc(0x18);
                            *v1249 = &unk_1F10EC8F0;
                            *(v1249 + 1) = v1248;
                            *(v1249 + 2) = a2;
                            v1709[0] = v1249;
                            WebKit::RemoteGraphicsContextGL::getBooleanv(this, *buf, *&buf[8], v1709);
                            v1250 = v1709[0];
                            if (v1709[0])
                            {
                              goto LABEL_2660;
                            }
                          }

                          goto LABEL_461;
                        case 0xFC9:
                          v1296 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1297 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1298 = *(a3 + 8);
                          if (!v1298)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911FB0);
                          }

                          v1299 = v1296;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1300 = WTF::fastMalloc(0x18);
                          *v1300 = &unk_1F10EC7B0;
                          v1300[1] = v1298;
                          v1300[2] = a2;
                          *buf = v1300;
                          WebKit::RemoteGraphicsContextGL::getBufferParameteri(this, v1299, HIDWORD(v1299), buf);
                          goto LABEL_2491;
                        case 0xFCA:
                          v863 = *(a3 + 1);
                          v1200 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1201 = *a3;
                          v1202 = v1200 - *a3;
                          v17 = v863 >= v1202;
                          v1203 = v863 - v1202;
                          if (!v17 || v1203 <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1200 + 1;
                          if (!v1200)
                          {
                            goto LABEL_3295;
                          }

                          v1204 = *v1200;
                          v1205 = ((v1200 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v863 < v1205 - v1201 || v863 - (v1205 - v1201) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1205 + 1;
                          if (!v1205)
                          {
                            goto LABEL_3295;
                          }

                          v1206 = *v1205;
                          v1207 = ((v1205 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v863 < v1207 - v1201 || v863 - (v1207 - v1201) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1207 + 1;
                          if (!v1207)
                          {
                            goto LABEL_3295;
                          }

                          v1208 = *(a3 + 8);
                          if (!v1208)
                          {
                            goto LABEL_3187;
                          }

                          v1209 = *v1207;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1210 = WTF::fastMalloc(0x18);
                          *v1210 = &unk_1F10EC670;
                          v1210[1] = v1208;
                          v1210[2] = a2;
                          *buf = v1210;
                          WebKit::RemoteGraphicsContextGL::getBufferSubDataInline(this, v1204, v1206, v1209, buf);
                          v1199 = *buf;
                          *buf = 0;
                          if (v1199)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        case 0xFCB:
                          v1301 = *(a3 + 1);
                          v1302 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1303 = *a3;
                          v1304 = v1302 - *a3;
                          v17 = v1301 >= v1304;
                          v1305 = v1301 - v1304;
                          if (!v17 || v1305 <= 3)
                          {
                            goto LABEL_3126;
                          }

                          *(a3 + 2) = v1302 + 1;
                          if (!v1302)
                          {
                            goto LABEL_3128;
                          }

                          v1306 = *v1302;
                          v1307 = ((v1302 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v1301 < v1307 - v1303 || v1301 - (v1307 - v1303) <= 7)
                          {
                            goto LABEL_3126;
                          }

                          *(a3 + 2) = v1307 + 1;
                          if (!v1307)
                          {
                            goto LABEL_3128;
                          }

                          v1308 = *v1307;
                          v1309 = ((v1307 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v1301 < v1309 - v1303 || v1301 - (v1309 - v1303) <= 7)
                          {
LABEL_3126:
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1671 = *(a3 + 3);
                            if (v1671)
                            {
                              if (v1301)
                              {
                                (*(*v1671 + 16))(v1671);
                                v1301 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v1301 = 0;
                            }
                          }

                          else
                          {
                            *(a3 + 2) = v1309 + 1;
                            if (v1309)
                            {
                              v1310 = *v1309;
                              IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a3, v1709);
                              if (v1710 & 1) != 0 || (v1621 = *a3, v1622 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1623 = *(a3 + 3)) != 0) && v1622 && ((*(*v1623 + 16))(v1623, v1621), (v1710))
                              {
                                *buf = v1306;
                                *&buf[8] = v1308;
                                *&buf[16] = v1310;
                                WTF::MachSendRight::MachSendRight();
                                *&buf[32] = v1709[1];
                                buf[40] = 1;
                                if ((v1710 & 1) == 0)
                                {
                                  goto LABEL_2483;
                                }

                                WTF::MachSendRight::~MachSendRight(v1709);
                                if (buf[40])
                                {
                                  goto LABEL_2483;
                                }

LABEL_2948:
                                v1624 = *a3;
                                v1625 = *(a3 + 1);
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1626 = *(a3 + 3);
                                if (!v1626)
                                {
                                  goto LABEL_461;
                                }

                                if (!v1625)
                                {
                                  goto LABEL_461;
                                }

                                (*(*v1626 + 16))(v1626, v1624);
                                if ((buf[40] & 1) == 0)
                                {
                                  goto LABEL_461;
                                }

LABEL_2483:
                                v1311 = *(a3 + 8);
                                if (!v1311)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D911FD0);
                                }

                                atomic_fetch_add(a2 + 2, 1u);
                                v1312 = WTF::fastMalloc(0x18);
                                *v1312 = &unk_1F10EC698;
                                v1312[1] = v1311;
                                v1312[2] = a2;
                                *&v1714 = v1312;
                                v1313 = *buf;
                                v1314 = *&buf[8];
                                v1315 = *&buf[16];
                                WTF::MachSendRight::MachSendRight();
                                v1709[1] = *&buf[32];
                                WebKit::RemoteGraphicsContextGL::getBufferSubDataSharedMemory(this, v1313, v1314, v1315, v1709, &v1714);
                                WTF::MachSendRight::~MachSendRight(v1709);
                                v1316 = v1714;
                                *&v1714 = 0;
                                if (v1316)
                                {
                                  (*(*v1316 + 8))(v1316);
                                }

                                if (buf[40])
                                {
                                  v1240 = &buf[24];
                                  goto LABEL_2567;
                                }

                                goto LABEL_461;
                              }

LABEL_2947:
                              buf[0] = 0;
                              buf[40] = 0;
                              goto LABEL_2948;
                            }
                          }

LABEL_3128:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1672 = *(a3 + 3);
                          if (v1672 && v1301)
                          {
                            (*(*v1672 + 16))(v1672);
                          }

                          goto LABEL_2947;
                        case 0xFCC:
                          v1251 = *(a3 + 8);
                          if (!v1251)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E30);
                          }

                          atomic_fetch_add(a2 + 2, 1u);
                          v1252 = WTF::fastMalloc(0x18);
                          *v1252 = &unk_1F10EC5D0;
                          v1252[1] = v1251;
                          v1252[2] = a2;
                          *buf = v1252;
                          WebKit::RemoteGraphicsContextGL::getErrors(this, buf);
                          v1199 = *buf;
                          *buf = 0;
                          if (v1199)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        case 0xFCD:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1278 = *(a3 + 8);
                          if (!v1278)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911EF0);
                          }

                          atomic_fetch_add(a2 + 2, 1u);
                          v1279 = WTF::fastMalloc(0x18);
                          *v1279 = &unk_1F10EC800;
                          *(v1279 + 1) = v1278;
                          *(v1279 + 2) = a2;
                          v1709[0] = v1279;
                          WebKit::RemoteGraphicsContextGL::getFloatv(this, *buf, *&buf[8], v1709);
                          goto LABEL_2437;
                        case 0xFCF:
                          v1253 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                          if ((v1254 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1255 = *(a3 + 8);
                          if (!v1255)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E50);
                          }

                          v1256 = v1253;
                          v1257 = v1254;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1258 = WTF::fastMalloc(0x18);
                          *v1258 = &unk_1F10EC918;
                          v1258[1] = v1255;
                          v1258[2] = a2;
                          *buf = v1258;
                          WebKit::RemoteGraphicsContextGL::getFramebufferAttachmentParameteri(this, v1256, HIDWORD(v1256), v1257, buf);
                          goto LABEL_2491;
                        case 0xFD0:
                          v1330 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1330 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1331 = *(a3 + 8);
                          if (!v1331)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912050);
                          }

                          v1332 = v1330;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1333 = WTF::fastMalloc(0x18);
                          *v1333 = &unk_1F10EC878;
                          v1333[1] = v1331;
                          v1333[2] = a2;
                          *buf = v1333;
                          WebKit::RemoteGraphicsContextGL::getInteger64(this, v1332, buf);
                          goto LABEL_2505;
                        case 0xFD2:
                          v1211 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1212 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1213 = *(a3 + 8);
                          if (!v1213)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911D90);
                          }

                          v1214 = v1211;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1215 = WTF::fastMalloc(0x18);
                          *v1215 = &unk_1F10EC8A0;
                          v1215[1] = v1213;
                          v1215[2] = a2;
                          *buf = v1215;
                          WebKit::RemoteGraphicsContextGL::getInteger64i(this, v1214, HIDWORD(v1214), buf);
LABEL_2505:
                          v770 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFD3:
                          v1334 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1335)
                          {
                            v1336 = *(a3 + 8);
                            if (!v1336)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D912070);
                            }

                            v1337 = v1334;
                            atomic_fetch_add(a2 + 2, 1u);
                            v1338 = WTF::fastMalloc(0x18);
                            *v1338 = &unk_1F10EC850;
                            v1338[1] = v1336;
                            v1338[2] = a2;
                            *buf = v1338;
                            WebKit::RemoteGraphicsContextGL::getIntegeri_v(this, v1337, HIDWORD(v1337), buf);
                            v770 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFD4:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1216 = *(a3 + 8);
                          if (!v1216)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911DB0);
                          }

                          atomic_fetch_add(a2 + 2, 1u);
                          v1217 = WTF::fastMalloc(0x18);
                          *v1217 = &unk_1F10EC828;
                          *(v1217 + 1) = v1216;
                          *(v1217 + 2) = a2;
                          v1709[0] = v1217;
                          WebKit::RemoteGraphicsContextGL::getIntegerv(this, *buf, *&buf[8], v1709);
                          goto LABEL_2457;
                        case 0xFD6:
                          v1259 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1259 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1260 = *(a3 + 8);
                          if (!v1260)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E70);
                          }

                          v1261 = v1259;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1262 = WTF::fastMalloc(0x18);
                          *v1262 = &unk_1F10EC940;
                          v1262[1] = v1260;
                          v1262[2] = a2;
                          *buf = v1262;
                          WebKit::RemoteGraphicsContextGL::getProgramInfoLog(this, v1261, buf);
                          goto LABEL_2496;
                        case 0xFD7:
                          v1317 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1318 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1319 = *(a3 + 8);
                          if (!v1319)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911FF0);
                          }

                          v1320 = v1317;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1321 = WTF::fastMalloc(0x18);
                          *v1321 = &unk_1F10EC8C8;
                          v1321[1] = v1319;
                          v1321[2] = a2;
                          *buf = v1321;
                          WebKit::RemoteGraphicsContextGL::getProgrami(this, v1320, HIDWORD(v1320), buf);
                          goto LABEL_2491;
                        case 0xFDD:
                          v1263 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1264 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1265 = *(a3 + 8);
                          if (!v1265)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E90);
                          }

                          v1266 = v1263;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1267 = WTF::fastMalloc(0x18);
                          *v1267 = &unk_1F10EC968;
                          v1267[1] = v1265;
                          v1267[2] = a2;
                          *buf = v1267;
                          WebKit::RemoteGraphicsContextGL::getRenderbufferParameteri(this, v1266, HIDWORD(v1266), buf);
                          goto LABEL_2491;
                        case 0xFE0:
                          v1177 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1177 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1178 = *(a3 + 8);
                          if (!v1178)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911CFCLL);
                          }

                          v1179 = v1177;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1180 = WTF::fastMalloc(0x18);
                          *v1180 = &unk_1F10EC9B8;
                          v1180[1] = v1178;
                          v1180[2] = a2;
                          *buf = v1180;
                          WebKit::RemoteGraphicsContextGL::getShaderInfoLog(this, v1179, buf);
                          goto LABEL_2496;
                        case 0xFE1:
                          v1166 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1167)
                          {
                            v1168 = *(a3 + 8);
                            if (!v1168)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911C9CLL);
                            }

                            v1169 = v1166;
                            atomic_fetch_add(a2 + 2, 1u);
                            v1170 = WTF::fastMalloc(0x18);
                            *v1170 = &unk_1F10EC9E0;
                            v1170[1] = v1168;
                            v1170[2] = a2;
                            *buf = v1170;
                            WebKit::RemoteGraphicsContextGL::getShaderPrecisionFormat(this, v1169, HIDWORD(v1169), buf);
                            v770 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFE2:
                          v1322 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1322 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1323 = *(a3 + 8);
                          if (!v1323)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912010);
                          }

                          v1324 = v1322;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1325 = WTF::fastMalloc(0x18);
                          *v1325 = &unk_1F10ECA08;
                          v1325[1] = v1323;
                          v1325[2] = a2;
                          *buf = v1325;
                          WebKit::RemoteGraphicsContextGL::getShaderSource(this, v1324, buf);
                          goto LABEL_2496;
                        case 0xFE3:
                          v1280 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1281 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1282 = *(a3 + 8);
                          if (!v1282)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911F10);
                          }

                          v1283 = v1280;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1284 = WTF::fastMalloc(0x18);
                          *v1284 = &unk_1F10EC990;
                          v1284[1] = v1282;
                          v1284[2] = a2;
                          *buf = v1284;
                          WebKit::RemoteGraphicsContextGL::getShaderi(this, v1283, HIDWORD(v1283), buf);
                          goto LABEL_2491;
                        case 0xFE4:
                          v1285 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1285 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1286 = *(a3 + 8);
                          if (!v1286)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911F30);
                          }

                          v1287 = v1285;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1288 = WTF::fastMalloc(0x18);
                          *v1288 = &unk_1F10EC7D8;
                          v1288[1] = v1286;
                          v1288[2] = a2;
                          *buf = v1288;
                          WebKit::RemoteGraphicsContextGL::getString(this, v1287, buf);
LABEL_2496:
                          v770 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFE6:
                          v1343 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1344)
                          {
                            v1345 = *(a3 + 8);
                            if (!v1345)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D9120B0);
                            }

                            v1346 = v1343;
                            atomic_fetch_add(a2 + 2, 1u);
                            v1347 = WTF::fastMalloc(0x18);
                            *v1347 = &unk_1F10ECA30;
                            v1347[1] = v1345;
                            v1347[2] = a2;
                            *buf = v1347;
                            WebKit::RemoteGraphicsContextGL::getTexParameterf(this, v1346, HIDWORD(v1346), buf);
                            v1199 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2517;
                            }
                          }

                          goto LABEL_461;
                        case 0xFE7:
                          v1181 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1182 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1183 = *(a3 + 8);
                          if (!v1183)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911D1CLL);
                          }

                          v1184 = v1181;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1185 = WTF::fastMalloc(0x18);
                          *v1185 = &unk_1F10ECA58;
                          v1185[1] = v1183;
                          v1185[2] = a2;
                          *buf = v1185;
                          WebKit::RemoteGraphicsContextGL::getTexParameteri(this, v1184, HIDWORD(v1184), buf);
LABEL_2491:
                          v770 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFEC:
                          IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1289 = *(a3 + 8);
                            if (!v1289)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911F50);
                            }

                            atomic_fetch_add(a2 + 2, 1u);
                            v1290 = WTF::fastMalloc(0x18);
                            *v1290 = &unk_1F10ECAF8;
                            *(v1290 + 1) = v1289;
                            *(v1290 + 2) = a2;
                            v1709[0] = v1290;
                            WebKit::RemoteGraphicsContextGL::getUniformLocation(this, *buf, &buf[8], v1709);
LABEL_2448:
                            v1291 = v1709[0];
                            if (v1709[0])
                            {
LABEL_2449:
                              (*(*v1709[0] + 8))(v1291);
                            }

LABEL_2450:
                            if (buf[16])
                            {
                              v143 = *&buf[8];
                              *&buf[8] = 0;
                              if (v143)
                              {
                                if (atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  goto LABEL_2466;
                                }
                              }
                            }
                          }

                          goto LABEL_461;
                        case 0xFED:
                          IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1171 = *(a3 + 8);
                          if (!v1171)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911CBCLL);
                          }

                          atomic_fetch_add(a2 + 2, 1u);
                          v1172 = WTF::fastMalloc(0x18);
                          *v1172 = &unk_1F10ECA80;
                          *(v1172 + 1) = v1171;
                          *(v1172 + 2) = a2;
                          v1709[0] = v1172;
                          WebKit::RemoteGraphicsContextGL::getUniformfv(this, *buf, *&buf[4], *&buf[8], v1709);
LABEL_2437:
                          v1250 = v1709[0];
                          if (v1709[0])
                          {
                            goto LABEL_2660;
                          }

                          goto LABEL_461;
                        case 0xFEE:
                          IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1292 = *(a3 + 8);
                          if (!v1292)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911F70);
                          }

                          atomic_fetch_add(a2 + 2, 1u);
                          v1293 = WTF::fastMalloc(0x18);
                          *v1293 = &unk_1F10ECAA8;
                          *(v1293 + 1) = v1292;
                          *(v1293 + 2) = a2;
                          v1709[0] = v1293;
                          WebKit::RemoteGraphicsContextGL::getUniformiv(this, *buf, *&buf[4], *&buf[8], v1709);
LABEL_2457:
                          v1250 = v1709[0];
                          if (v1709[0])
                          {
LABEL_2660:
                            (*(*v1709[0] + 8))(v1250);
                          }

                          goto LABEL_461;
                        case 0xFEF:
                          IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1348 = *(a3 + 8);
                            if (!v1348)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D9120D0);
                            }

                            atomic_fetch_add(a2 + 2, 1u);
                            v1349 = WTF::fastMalloc(0x18);
                            *v1349 = &unk_1F10ECAD0;
                            *(v1349 + 1) = v1348;
                            *(v1349 + 2) = a2;
                            v1709[0] = v1349;
                            WebKit::RemoteGraphicsContextGL::getUniformuiv(this, *buf, *&buf[4], *&buf[8], v1709);
                            v1250 = v1709[0];
                            if (v1709[0])
                            {
                              goto LABEL_2660;
                            }
                          }

                          goto LABEL_461;
                        case 0xFF0:
                          v1350 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1351)
                          {
                            v1352 = *(a3 + 8);
                            if (!v1352)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D9120F0);
                            }

                            v1353 = v1350;
                            atomic_fetch_add(a2 + 2, 1u);
                            v1354 = WTF::fastMalloc(0x18);
                            *v1354 = &unk_1F10ECB20;
                            v1354[1] = v1352;
                            v1354[2] = a2;
                            *buf = v1354;
                            WebKit::RemoteGraphicsContextGL::getVertexAttribOffset(this, v1353, HIDWORD(v1353), buf);
LABEL_2525:
                            v770 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFF1:
                          v1355 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1355 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1356 = *(a3 + 8);
                          if (!v1356)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912110);
                          }

                          v1357 = v1355;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1358 = WTF::fastMalloc(0x18);
                          *v1358 = &unk_1F10ECB48;
                          v1358[1] = v1356;
                          v1358[2] = a2;
                          *buf = v1358;
                          WebKit::RemoteGraphicsContextGL::isBuffer(this, v1357, buf);
                          goto LABEL_2559;
                        case 0xFF2:
                          v1359 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1359 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1360 = *(a3 + 8);
                          if (!v1360)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912130);
                          }

                          v1361 = v1359;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1362 = WTF::fastMalloc(0x18);
                          *v1362 = &unk_1F10ECB70;
                          v1362[1] = v1360;
                          v1362[2] = a2;
                          *buf = v1362;
                          WebKit::RemoteGraphicsContextGL::isEnabled(this, v1361, buf);
                          goto LABEL_2559;
                        case 0xFF3:
                          v1162 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1162 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1163 = *(a3 + 8);
                          if (!v1163)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911C7CLL);
                          }

                          v1164 = v1162;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1165 = WTF::fastMalloc(0x18);
                          *v1165 = &unk_1F10ECB98;
                          v1165[1] = v1163;
                          v1165[2] = a2;
                          *buf = v1165;
                          WebKit::RemoteGraphicsContextGL::isFramebuffer(this, v1164, buf);
                          goto LABEL_2559;
                        case 0xFF4:
                          v1173 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1173 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1174 = *(a3 + 8);
                          if (!v1174)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911CDCLL);
                          }

                          v1175 = v1173;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1176 = WTF::fastMalloc(0x18);
                          *v1176 = &unk_1F10ECBC0;
                          v1176[1] = v1174;
                          v1176[2] = a2;
                          *buf = v1176;
                          WebKit::RemoteGraphicsContextGL::isProgram(this, v1175, buf);
                          goto LABEL_2559;
                        case 0xFF7:
                          v1339 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1339 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1340 = *(a3 + 8);
                          if (!v1340)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912090);
                          }

                          v1341 = v1339;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1342 = WTF::fastMalloc(0x18);
                          *v1342 = &unk_1F10ECBE8;
                          v1342[1] = v1340;
                          v1342[2] = a2;
                          *buf = v1342;
                          WebKit::RemoteGraphicsContextGL::isRenderbuffer(this, v1341, buf);
                          goto LABEL_2559;
                        case 0xFF9:
                          v1363 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1363 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1364 = *(a3 + 8);
                          if (!v1364)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912150);
                          }

                          v1365 = v1363;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1366 = WTF::fastMalloc(0x18);
                          *v1366 = &unk_1F10ECC10;
                          v1366[1] = v1364;
                          v1366[2] = a2;
                          *buf = v1366;
                          WebKit::RemoteGraphicsContextGL::isShader(this, v1365, buf);
                          goto LABEL_2559;
                        case 0xFFB:
                          v1385 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1385 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1386 = *(a3 + 8);
                          if (!v1386)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912190);
                          }

                          v1387 = v1385;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1388 = WTF::fastMalloc(0x18);
                          *v1388 = &unk_1F10ECC38;
                          v1388[1] = v1386;
                          v1388[2] = a2;
                          *buf = v1388;
                          WebKit::RemoteGraphicsContextGL::isTexture(this, v1387, buf);
LABEL_2559:
                          v770 = *buf;
                          if (*buf)
                          {
LABEL_2704:
                            (*(**buf + 8))(v770);
                          }

                          goto LABEL_461;
                        case 0xFFE:
                          IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
                          if (buf[8] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1389 = *(a3 + 8);
                          if (!v1389)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D9121B0);
                          }

                          atomic_fetch_add(a2 + 2, 1u);
                          v1390 = WTF::fastMalloc(0x18);
                          *v1390 = &unk_1F10EC5A8;
                          *(v1390 + 1) = v1389;
                          *(v1390 + 2) = a2;
                          v1709[0] = v1390;
                          (*(*this + 48))(this, buf, v1709);
                          v1391 = v1709[0];
                          v1709[0] = 0;
                          if (v1391)
                          {
                            (*(*v1391 + 8))(v1391);
                          }

                          if ((buf[8] & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          IPC::Semaphore::destroy(buf);
                          v1240 = buf;
                          goto LABEL_2567;
                        case 0xFFF:
                          IPC::Decoder::decode<WebCore::IntRect>(a3, buf);
                          if (buf[16] != 1)
                          {
                            goto LABEL_3296;
                          }

                          v863 = *(a3 + 1);
                          v1186 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1187 = *a3;
                          v1188 = v1186 - *a3;
                          v17 = v863 >= v1188;
                          v1189 = v863 - v1188;
                          if (!v17 || v1189 <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1186 + 1;
                          if (!v1186)
                          {
                            goto LABEL_3295;
                          }

                          v1190 = *v1186;
                          v1191 = ((v1186 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v863 < v1191 - v1187 || v863 - (v1191 - v1187) <= 3)
                          {
                            goto LABEL_3293;
                          }

                          v1192 = (v1191 + 1);
                          *(a3 + 2) = v1191 + 1;
                          if (!v1191)
                          {
                            goto LABEL_3295;
                          }

                          if (v863 <= &v1192[-v1187])
                          {
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1691 = *(a3 + 3);
                            if (v1691)
                            {
                              if (v863)
                              {
                                (*(*v1691 + 16))(v1691);
                                v863 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v863 = 0;
                            }
                          }

                          else
                          {
                            v1193 = *v1191;
                            *(a3 + 2) = v1191 + 5;
                            if (v1191 != -4)
                            {
                              v1194 = *v1192;
                              if (v1194 < 2)
                              {
                                v1195 = *(a3 + 8);
                                if (v1195)
                                {
                                  v1196 = *buf;
                                  v1197 = *&buf[8];
                                  atomic_fetch_add(a2 + 2, 1u);
                                  v1198 = WTF::fastMalloc(0x18);
                                  *v1198 = &unk_1F10EC6C0;
                                  v1198[1] = v1195;
                                  v1198[2] = a2;
                                  *buf = v1198;
                                  WebKit::RemoteGraphicsContextGL::readPixelsInline(this, v1196, v1197, v1190, v1193, v1194 & 1, buf);
                                  v1199 = *buf;
                                  *buf = 0;
                                  if (v1199)
                                  {
LABEL_2517:
                                    (*(*v1199 + 8))(v1199);
                                  }

                                  goto LABEL_461;
                                }

                                __break(0xC471u);
LABEL_3186:
                                __break(1u);
LABEL_3187:
                                __break(0xC471u);
                                JUMPOUT(0x19D911D70);
                              }

                              goto LABEL_3295;
                            }
                          }

                          goto LABEL_3293;
                        case 0x1000:
                          IPC::Decoder::decode<WebCore::IntRect>(a3, &v1714);
                          if ((v1715 & 1) == 0)
                          {
                            goto LABEL_2953;
                          }

                          v1367 = *(a3 + 1);
                          v1368 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1369 = *a3;
                          v1370 = v1368 - *a3;
                          v17 = v1367 >= v1370;
                          v1371 = v1367 - v1370;
                          if (!v17 || v1371 <= 3)
                          {
                            goto LABEL_3275;
                          }

                          *(a3 + 2) = v1368 + 1;
                          if (!v1368)
                          {
                            goto LABEL_3277;
                          }

                          v1372 = *v1368;
                          v1373 = ((v1368 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1367 < v1373 - v1369 || v1367 - (v1373 - v1369) <= 3)
                          {
                            goto LABEL_3275;
                          }

                          v1374 = (v1373 + 1);
                          *(a3 + 2) = v1373 + 1;
                          if (!v1373)
                          {
                            goto LABEL_3277;
                          }

                          if (v1367 <= &v1374[-v1369])
                          {
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1689 = *(a3 + 3);
                            if (v1689)
                            {
                              if (v1367)
                              {
                                (*(*v1689 + 16))(v1689);
                                v1367 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v1367 = 0;
                            }
                          }

                          else
                          {
                            v1375 = *v1373;
                            *(a3 + 2) = v1373 + 5;
                            if (v1373 != -4)
                            {
                              v1376 = *v1374;
                              if (v1376 < 2)
                              {
                                IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a3, v1709);
                                if (v1710 & 1) != 0 || (v1627 = *a3, v1628 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1629 = *(a3 + 3)) != 0) && v1628 && ((*(*v1629 + 16))(v1629, v1627), (v1710))
                                {
                                  if ((v1715 & 1) == 0)
                                  {
                                    goto LABEL_3186;
                                  }

                                  *buf = v1714;
                                  *&buf[16] = v1372;
                                  *&buf[20] = v1375;
                                  buf[24] = v1376;
                                  WTF::MachSendRight::MachSendRight();
                                  *&buf[40] = v1709[1];
                                  buf[48] = 1;
                                  if (v1710 & 1) == 0 || (WTF::MachSendRight::~MachSendRight(v1709), (buf[48]))
                                  {
LABEL_2551:
                                    v1377 = *(a3 + 8);
                                    if (!v1377)
                                    {
                                      __break(0xC471u);
                                      JUMPOUT(0x19D912170);
                                    }

                                    atomic_fetch_add(a2 + 2, 1u);
                                    v1378 = WTF::fastMalloc(0x18);
                                    *v1378 = &unk_1F10EC6E8;
                                    v1378[1] = v1377;
                                    v1378[2] = a2;
                                    *&v1714 = v1378;
                                    v1379 = *buf;
                                    v1380 = *&buf[8];
                                    v1381 = *&buf[16];
                                    v1382 = *&buf[20];
                                    v1383 = buf[24];
                                    WTF::MachSendRight::MachSendRight();
                                    v1709[1] = *&buf[40];
                                    WebKit::RemoteGraphicsContextGL::readPixelsSharedMemory(this, v1379, v1380, v1381, v1382, v1383, v1709, &v1714);
                                    WTF::MachSendRight::~MachSendRight(v1709);
                                    v1384 = v1714;
                                    *&v1714 = 0;
                                    if (v1384)
                                    {
                                      (*(*v1384 + 8))(v1384);
                                    }

                                    if (buf[48])
                                    {
                                      v1240 = &buf[32];
LABEL_2567:
                                      WTF::MachSendRight::~MachSendRight(v1240);
                                    }

                                    goto LABEL_461;
                                  }

LABEL_2954:
                                  v1630 = *a3;
                                  v1631 = *(a3 + 1);
                                  *a3 = 0;
                                  *(a3 + 1) = 0;
                                  v1632 = *(a3 + 3);
                                  if (!v1632)
                                  {
                                    goto LABEL_461;
                                  }

                                  if (!v1631)
                                  {
                                    goto LABEL_461;
                                  }

                                  (*(*v1632 + 16))(v1632, v1630);
                                  if ((buf[48] & 1) == 0)
                                  {
                                    goto LABEL_461;
                                  }

                                  goto LABEL_2551;
                                }

LABEL_2953:
                                buf[0] = 0;
                                buf[48] = 0;
                                goto LABEL_2954;
                              }

LABEL_3277:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1697 = *(a3 + 3);
                              if (v1697 && v1367)
                              {
                                (*(*v1697 + 16))(v1697);
                              }

                              goto LABEL_2953;
                            }
                          }

LABEL_3275:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1696 = *(a3 + 3);
                          if (v1696)
                          {
                            if (v1367)
                            {
                              (*(*v1696 + 16))(v1696);
                              v1367 = *(a3 + 1);
                            }
                          }

                          else
                          {
                            v1367 = 0;
                          }

                          goto LABEL_3277;
                        case 0x1001:
                          v1326 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a3);
                          if (v1326 <= 0xFFu)
                          {
                            goto LABEL_3296;
                          }

                          v1327 = *(a3 + 8);
                          if (!v1327)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912030);
                          }

                          v1328 = v1326;
                          atomic_fetch_add(a2 + 2, 1u);
                          v1329 = WTF::fastMalloc(0x18);
                          *v1329 = &unk_1F10EC620;
                          v1329[1] = v1327;
                          v1329[2] = a2;
                          *buf = v1329;
                          WebKit::RemoteGraphicsContextGL::surfaceBufferToVideoFrame(this, v1328 & 1, buf);
                          v1199 = *buf;
                          *buf = 0;
                          if (v1199)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        default:
                          if (v5 == 1286)
                          {
                            IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                            if (buf[20] == 1)
                            {
                              WebKit::RemoteGraphicsContextGL::renderbufferStorageMultisampleANGLE(this);
                            }

                            goto LABEL_461;
                          }

                          if (v5 != 1293)
                          {
                            goto LABEL_2210;
                          }

                          IPC::ArgumentCoder<std::tuple<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(a3, buf);
                          if (buf[8] & 1) != 0 || (v1611 = *a3, v1612 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1613 = *(a3 + 3)) != 0) && v1612 && ((*(*v1613 + 16))(v1613, v1611), (buf[8]))
                          {
                            WebKit::RemoteGraphicsContextGL::setDrawingBufferColorSpace(this, buf);
                            if (buf[8])
                            {
                              v1112 = *buf;
                              *buf = 0;
                              if (v1112)
                              {
                                CFRelease(v1112);
                              }
                            }
                          }

                          goto LABEL_461;
                      }
                    }

                    if (*(a3 + 25) > 0x4C9u)
                    {
                      if (*(a3 + 25) <= 0x4E5u)
                      {
                        if (*(a3 + 25) > 0x4DAu)
                        {
                          if (v5 != 1243)
                          {
                            if (v5 != 1248)
                            {
                              if (v5 == 1252)
                              {
                                IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                                if ((v1102 & 1) == 0)
                                {
                                  goto LABEL_461;
                                }

                                v6 = *(this + 7);
                                if (!v6)
                                {
                                  WebCore::GraphicsContextGLANGLE::enableiOES(0);
                                  goto LABEL_461;
                                }

                                ++*(v6 + 2);
                                WebCore::GraphicsContextGLANGLE::enableiOES(v6);
                                goto LABEL_1173;
                              }

                              goto LABEL_2210;
                            }

                            v1113 = *(a3 + 1);
                            v1125 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                            v1115 = *a3;
                            v1126 = v1125 - *a3;
                            v17 = v1113 >= v1126;
                            v1127 = v1113 - v1126;
                            if (v17 && v1127 > 3)
                            {
                              *(a3 + 2) = v1125 + 4;
                              if (!v1125)
                              {
                                goto LABEL_3262;
                              }

                              v1128 = (v1125 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                              if (v1113 >= v1128 - v1115 && v1113 - (v1128 - v1115) > 3)
                              {
                                *(a3 + 2) = v1128 + 4;
                                if (!v1128)
                                {
                                  goto LABEL_3262;
                                }

                                v1129 = (v1128 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                                if (v1113 >= v1129 - v1115 && v1113 - (v1129 - v1115) > 3)
                                {
                                  *(a3 + 2) = v1129 + 4;
                                  if (!v1129)
                                  {
                                    goto LABEL_3262;
                                  }

                                  v1130 = (v1129 + 11) & 0xFFFFFFFFFFFFFFF8;
                                  if (v1113 >= v1130 - v1115 && v1113 - (v1130 - v1115) > 7)
                                  {
                                    *(a3 + 2) = v1130 + 8;
                                    if (!v1130)
                                    {
                                      goto LABEL_3262;
                                    }

                                    v1131 = (v1130 + 11) & 0xFFFFFFFFFFFFFFF8;
                                    if (v1113 >= v1131 - v1115 && v1113 - (v1131 - v1115) > 3)
                                    {
                                      v1132 = v1131 | 4;
                                      *(a3 + 2) = v1131 | 4;
                                      if (!v1131)
                                      {
                                        goto LABEL_3262;
                                      }

                                      if (v1113 < v1132 - v1115 || v1113 - (v1132 - v1115) <= 3)
                                      {
                                        *a3 = 0;
                                        *(a3 + 1) = 0;
                                        v1669 = *(a3 + 3);
                                        if (!v1669)
                                        {
                                          goto LABEL_2623;
                                        }

                                        if (!v1113)
                                        {
                                          goto LABEL_2623;
                                        }

                                        (*(*v1669 + 16))(v1669);
                                        v1115 = *a3;
                                        v1113 = *(a3 + 1);
                                        v1670 = *(a3 + 3);
                                        *a3 = 0;
                                        *(a3 + 1) = 0;
                                        if (!v1670)
                                        {
                                          goto LABEL_2623;
                                        }

                                        goto LABEL_3263;
                                      }

                                      *(a3 + 2) = v1131 + 8;
                                      v1133 = (v1131 + 11) & 0xFFFFFFFFFFFFFFF8;
                                      if (v1113 >= v1133 - v1115 && v1113 - (v1133 - v1115) > 3)
                                      {
                                        *(a3 + 2) = v1133 | 4;
                                        if (v1133)
                                        {
                                          WebKit::RemoteGraphicsContextGL::drawElementsInstancedBaseVertexBaseInstanceANGLE(this);
                                          goto LABEL_461;
                                        }

                                        goto LABEL_3262;
                                      }
                                    }
                                  }
                                }
                              }
                            }

LABEL_3259:
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1693 = *(a3 + 3);
                            if (v1693)
                            {
                              if (v1113)
                              {
                                (*(*v1693 + 16))(v1693);
                                v1115 = *a3;
                                v1113 = *(a3 + 1);
                                goto LABEL_3262;
                              }
                            }

                            else
                            {
                              v1113 = 0;
                            }

                            v1115 = 0;
                            goto LABEL_3262;
                          }

                          v1113 = *(a3 + 1);
                          v1140 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                          v1115 = *a3;
                          v1141 = v1140 - *a3;
                          v17 = v1113 >= v1141;
                          v1142 = v1113 - v1141;
                          if (!v17 || v1142 <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1140 + 4;
                          if (!v1140)
                          {
                            goto LABEL_3262;
                          }

                          v1143 = (v1140 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v1113 < v1143 - v1115 || v1113 - (v1143 - v1115) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1143 + 4;
                          if (!v1143)
                          {
                            goto LABEL_3262;
                          }

                          v1144 = (v1143 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v1113 < v1144 - v1115 || v1113 - (v1144 - v1115) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1144 + 4;
                          if (!v1144)
                          {
                            goto LABEL_3262;
                          }

                          v1145 = (v1144 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v1113 < v1145 - v1115 || v1113 - (v1145 - v1115) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1145 + 4;
                          if (!v1145)
                          {
                            goto LABEL_3262;
                          }

                          v1146 = (v1145 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v1113 < v1146 - v1115 || v1113 - (v1146 - v1115) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1146 + 4;
                          if (v1146)
                          {
                            WebKit::RemoteGraphicsContextGL::drawArraysInstancedBaseInstanceANGLE(this);
                            goto LABEL_461;
                          }

LABEL_3262:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1670 = *(a3 + 3);
                          if (!v1670)
                          {
                            goto LABEL_2623;
                          }

LABEL_3263:
                          if (v1113)
                          {
                            (*(*v1670 + 16))(v1670, v1115);
                          }

                          goto LABEL_2623;
                        }

                        if (v5 != 1226)
                        {
                          if (v5 == 1240)
                          {
                            IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                            if ((v1110 & 1) == 0)
                            {
                              goto LABEL_461;
                            }

                            v6 = *(this + 7);
                            if (!v6)
                            {
                              WebCore::GraphicsContextGLANGLE::disableiOES(0);
                              goto LABEL_461;
                            }

                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::disableiOES(v6);
                            goto LABEL_1173;
                          }

LABEL_2210:
                          switch(*(a3 + 25))
                          {
                            case 0xFBE:
                              v1113 = *(a3 + 1);
                              v1114 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
                              v1115 = *a3;
                              v1116 = v1114 - *a3;
                              v17 = v1113 >= v1116;
                              v1117 = v1113 - v1116;
                              if (!v17 || v1117 <= 7)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1114 + 1;
                              if (!v1114)
                              {
                                goto LABEL_3262;
                              }

                              v1118 = *v1114;
                              v1119 = (v1114 + 11) & 0xFFFFFFFFFFFFFFF8;
                              if (v1113 < v1119 - v1115 || v1113 - (v1119 - v1115) <= 3)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1119 | 4;
                              if (!v1119)
                              {
                                goto LABEL_3262;
                              }

                              v1120 = *v1119;
                              v1121 = ((v1119 + 11) & 0xFFFFFFFFFFFFFFF8);
                              if (v1113 < v1121 - v1115 || v1113 - (v1121 - v1115) <= 7)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1121 + 1;
                              if (!v1121)
                              {
                                goto LABEL_3262;
                              }

                              v1122 = *(a3 + 8);
                              if (!v1122)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D911C5CLL);
                              }

                              v1123 = *v1121;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1124 = WTF::fastMalloc(0x18);
                              *v1124 = &unk_1F10ECDF0;
                              v1124[1] = v1122;
                              v1124[2] = a2;
                              *buf = v1124;
                              WebKit::RemoteGraphicsContextGL::clientWaitSync(this, v1118, v1120, v1123, buf);
LABEL_2670:
                              v770 = *buf;
                              if (*buf)
                              {
                                goto LABEL_2704;
                              }

                              goto LABEL_461;
                            case 0xFC1:
                              v1418 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1419 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1420 = *(a3 + 8);
                              if (!v1420)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9121D0);
                              }

                              v1421 = v1418;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1422 = WTF::fastMalloc(0x18);
                              *v1422 = &unk_1F10ECDA0;
                              v1422[1] = v1420;
                              v1422[2] = a2;
                              *buf = v1422;
                              WebKit::RemoteGraphicsContextGL::fenceSync(this, v1421, HIDWORD(v1421), buf);
                              goto LABEL_2525;
                            case 0xFC4:
                              v1423 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1424 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1425 = *(a3 + 8);
                              if (!v1425)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9121F0);
                              }

                              v1426 = v1423;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1427 = WTF::fastMalloc(0x18);
                              *v1427 = &unk_1F10ECF08;
                              v1427[1] = v1425;
                              v1427[2] = a2;
                              *buf = v1427;
                              WebKit::RemoteGraphicsContextGL::getActiveUniformBlockName(this, v1426, HIDWORD(v1426), buf);
                              goto LABEL_2703;
                            case 0xFC5:
                              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned long long>>(buf, a3);
                              if (buf[24] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1428 = *(a3 + 8);
                              if (!v1428)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912210);
                              }

                              atomic_fetch_add(a2 + 2, 1u);
                              v1429 = WTF::fastMalloc(0x18);
                              *v1429 = &unk_1F10ECF30;
                              *(v1429 + 1) = v1428;
                              *(v1429 + 2) = a2;
                              v1709[0] = v1429;
                              WebKit::RemoteGraphicsContextGL::getActiveUniformBlockiv(this, *buf, *&buf[4], *&buf[8], *&buf[16], v1709);
                              goto LABEL_2659;
                            case 0xFC6:
                              v1430 = *(a3 + 1);
                              v1431 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                              v1432 = v1431 - *a3;
                              v17 = v1430 >= v1432;
                              v1433 = v1430 - v1432;
                              if (!v17 || v1433 <= 3)
                              {
                                goto LABEL_3171;
                              }

                              *(a3 + 2) = v1431 + 1;
                              if (!v1431)
                              {
                                goto LABEL_3280;
                              }

                              v1434 = *v1431;
                              IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v1709);
                              if ((v1710 & 1) == 0)
                              {
                                v1614 = *a3;
                                v1615 = *(a3 + 1);
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1616 = *(a3 + 3);
                                if (!v1616)
                                {
                                  goto LABEL_2924;
                                }

                                if (!v1615)
                                {
                                  goto LABEL_2924;
                                }

                                (*(*v1616 + 16))(v1616, v1614);
                                if ((v1710 & 1) == 0)
                                {
                                  goto LABEL_2924;
                                }
                              }

                              v1435 = *(a3 + 1);
                              v1436 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                              v1437 = *a3;
                              v1438 = v1436 - *a3;
                              v17 = v1435 >= v1438;
                              v1439 = v1435 - v1438;
                              if (v17 && v1439 > 3)
                              {
                                *(a3 + 2) = v1436 + 1;
                                if (v1436)
                                {
                                  v1440 = *v1436;
                                  *buf = v1434;
                                  *&buf[8] = v1709[0];
                                  *&buf[16] = v1709[1];
                                  *&buf[24] = v1440;
                                  buf[32] = 1;
                                  v1441 = *(a3 + 8);
                                  if (!v1441)
                                  {
                                    __break(0xC471u);
                                    JUMPOUT(0x19D912244);
                                  }

                                  atomic_fetch_add(a2 + 2, 1u);
                                  v1442 = WTF::fastMalloc(0x18);
                                  *v1442 = &unk_1F10ECEB8;
                                  *(v1442 + 1) = v1441;
                                  *(v1442 + 2) = a2;
                                  v1709[0] = v1442;
                                  WebKit::RemoteGraphicsContextGL::getActiveUniforms(this, *buf, &buf[8], *&buf[24], v1709);
                                  if (v1709[0])
                                  {
                                    (*(*v1709[0] + 8))(v1709[0]);
                                  }

                                  if (buf[32])
                                  {
                                    v1444 = *&buf[8];
                                    if (*&buf[8])
                                    {
                                      *&buf[8] = 0;
                                      *&buf[16] = 0;
                                      WTF::fastFree(v1444, v1443);
                                    }
                                  }

                                  goto LABEL_461;
                                }
                              }

                              else
                              {
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1692 = *(a3 + 3);
                                if (v1692)
                                {
                                  if (v1435)
                                  {
                                    (*(*v1692 + 16))(v1692);
                                    v1437 = *a3;
                                    v1435 = *(a3 + 1);
                                    goto LABEL_3304;
                                  }
                                }

                                else
                                {
                                  v1435 = 0;
                                }

                                v1437 = 0;
                              }

LABEL_3304:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1701 = *(a3 + 3);
                              if (v1701 && v1435)
                              {
                                (*(*v1701 + 16))(v1701);
                              }

                              if (v1710)
                              {
                                v1702 = v1709[0];
                                if (v1709[0])
                                {
                                  v1709[0] = 0;
                                  LODWORD(v1709[1]) = 0;
                                  WTF::fastFree(v1702, v1437);
                                }
                              }

                              goto LABEL_2924;
                            case 0xFCE:
                              IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                              if (buf[16] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1445 = *(a3 + 8);
                              if (!v1445)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912264);
                              }

                              atomic_fetch_add(a2 + 2, 1u);
                              v1446 = WTF::fastMalloc(0x18);
                              *v1446 = &unk_1F10ECC88;
                              *(v1446 + 1) = v1445;
                              *(v1446 + 2) = a2;
                              v1709[0] = v1446;
                              WebKit::RemoteGraphicsContextGL::getFragDataLocation(this, *buf, &buf[8], v1709);
                              goto LABEL_2448;
                            case 0xFD1:
                              v1447 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1447 & 0x100000000) != 0)
                              {
                                v1448 = *(a3 + 8);
                                if (!v1448)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D912284);
                                }

                                v1449 = v1447;
                                atomic_fetch_add(a2 + 2, 1u);
                                v1450 = WTF::fastMalloc(0x18);
                                *v1450 = &unk_1F10ED020;
                                v1450[1] = v1448;
                                v1450[2] = a2;
                                *buf = v1450;
                                WebKit::RemoteGraphicsContextGL::getInteger64EXT(this, v1449, buf);
                                v770 = *buf;
                                if (*buf)
                                {
                                  goto LABEL_2704;
                                }
                              }

                              goto LABEL_461;
                            case 0xFD5:
                              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned long long>>(buf, a3);
                              if (buf[24] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1451 = *(a3 + 8);
                              if (!v1451)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9122A4);
                              }

                              atomic_fetch_add(a2 + 2, 1u);
                              v1452 = WTF::fastMalloc(0x18);
                              *v1452 = &unk_1F10ED048;
                              *(v1452 + 1) = v1451;
                              *(v1452 + 2) = a2;
                              v1709[0] = v1452;
                              WebKit::RemoteGraphicsContextGL::getInternalformativ(this, *buf, *&buf[4], *&buf[8], *&buf[16], v1709);
LABEL_2659:
                              v1250 = v1709[0];
                              if (v1709[0])
                              {
                                goto LABEL_2660;
                              }

                              goto LABEL_461;
                            case 0xFD8:
                              v1453 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1454 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1455 = *(a3 + 8);
                              if (!v1455)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9122C4);
                              }

                              v1456 = v1453;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1457 = WTF::fastMalloc(0x18);
                              *v1457 = &unk_1F10ECCD8;
                              v1457[1] = v1455;
                              v1457[2] = a2;
                              *buf = v1457;
                              WebKit::RemoteGraphicsContextGL::getQuery(this, v1456, HIDWORD(v1456), buf);
                              goto LABEL_2694;
                            case 0xFD9:
                              v1458 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1459 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1460 = *(a3 + 8);
                              if (!v1460)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9122E4);
                              }

                              v1461 = v1458;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1462 = WTF::fastMalloc(0x18);
                              *v1462 = &unk_1F10ECFD0;
                              v1462[1] = v1460;
                              v1462[2] = a2;
                              *buf = v1462;
                              WebKit::RemoteGraphicsContextGL::getQueryObjectiEXT(this, v1461, HIDWORD(v1461), buf);
                              goto LABEL_2694;
                            case 0xFDA:
                              v1463 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1464 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1465 = *(a3 + 8);
                              if (!v1465)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912304);
                              }

                              v1466 = v1463;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1467 = WTF::fastMalloc(0x18);
                              *v1467 = &unk_1F10ECD00;
                              v1467[1] = v1465;
                              v1467[2] = a2;
                              *buf = v1467;
                              WebKit::RemoteGraphicsContextGL::getQueryObjectui(this, v1466, HIDWORD(v1466), buf);
                              goto LABEL_2670;
                            case 0xFDB:
                              v1468 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1469 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1470 = *(a3 + 8);
                              if (!v1470)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912324);
                              }

                              v1471 = v1468;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1472 = WTF::fastMalloc(0x18);
                              *v1472 = &unk_1F10ECFF8;
                              v1472[1] = v1470;
                              v1472[2] = a2;
                              *buf = v1472;
                              WebKit::RemoteGraphicsContextGL::getQueryObjectui64EXT(this, v1471, HIDWORD(v1471), buf);
                              goto LABEL_2525;
                            case 0xFDC:
                              v1473 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1474 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1475 = *(a3 + 8);
                              if (!v1475)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912344);
                              }

                              v1476 = v1473;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1477 = WTF::fastMalloc(0x18);
                              *v1477 = &unk_1F10ECFA8;
                              v1477[1] = v1475;
                              v1477[2] = a2;
                              *buf = v1477;
                              WebKit::RemoteGraphicsContextGL::getQueryiEXT(this, v1476, HIDWORD(v1476), buf);
                              goto LABEL_2694;
                            case 0xFDE:
                              v1478 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if (v1479)
                              {
                                v1480 = *(a3 + 8);
                                if (!v1480)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D912364);
                                }

                                v1481 = v1478;
                                atomic_fetch_add(a2 + 2, 1u);
                                v1482 = WTF::fastMalloc(0x18);
                                *v1482 = &unk_1F10ECD50;
                                v1482[1] = v1480;
                                v1482[2] = a2;
                                *buf = v1482;
                                WebKit::RemoteGraphicsContextGL::getSamplerParameterf(this, v1481, HIDWORD(v1481), buf);
                                v1199 = *buf;
                                if (*buf)
                                {
                                  goto LABEL_2517;
                                }
                              }

                              goto LABEL_461;
                            case 0xFDF:
                              v1483 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1484 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1485 = *(a3 + 8);
                              if (!v1485)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912384);
                              }

                              v1486 = v1483;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1487 = WTF::fastMalloc(0x18);
                              *v1487 = &unk_1F10ECD78;
                              v1487[1] = v1485;
                              v1487[2] = a2;
                              *buf = v1487;
                              WebKit::RemoteGraphicsContextGL::getSamplerParameteri(this, v1486, HIDWORD(v1486), buf);
                              goto LABEL_2694;
                            case 0xFE5:
                              v1113 = *(a3 + 1);
                              v1488 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
                              v1115 = *a3;
                              v1489 = v1488 - *a3;
                              v17 = v1113 >= v1489;
                              v1490 = v1113 - v1489;
                              if (!v17 || v1490 <= 7)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1488 + 1;
                              if (!v1488)
                              {
                                goto LABEL_3262;
                              }

                              v1491 = *v1488;
                              v1492 = (v1488 + 11) & 0xFFFFFFFFFFFFFFF8;
                              if (v1113 < v1492 - v1115 || v1113 - (v1492 - v1115) <= 3)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1492 | 4;
                              if (!v1492)
                              {
                                goto LABEL_3262;
                              }

                              v1493 = *(a3 + 8);
                              if (!v1493)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9123A4);
                              }

                              v1494 = *v1492;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1495 = WTF::fastMalloc(0x18);
                              *v1495 = &unk_1F10ECE18;
                              v1495[1] = v1493;
                              v1495[2] = a2;
                              *buf = v1495;
                              WebKit::RemoteGraphicsContextGL::getSynci(this, v1491, v1494, buf);
LABEL_2694:
                              v770 = *buf;
                              if (*buf)
                              {
                                goto LABEL_2704;
                              }

                              goto LABEL_461;
                            case 0xFE8:
                              v1496 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if (v1497)
                              {
                                v1498 = *(a3 + 8);
                                if (!v1498)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D9123C4);
                                }

                                v1499 = v1496;
                                atomic_fetch_add(a2 + 2, 1u);
                                v1500 = WTF::fastMalloc(0x18);
                                *v1500 = &unk_1F10ECE68;
                                v1500[1] = v1498;
                                v1500[2] = a2;
                                *buf = v1500;
                                WebKit::RemoteGraphicsContextGL::getTransformFeedbackVarying(this, v1499, HIDWORD(v1499), buf);
                                v770 = *buf;
                                if (*buf)
                                {
                                  goto LABEL_2704;
                                }
                              }

                              goto LABEL_461;
                            case 0xFE9:
                              v1501 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1501 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1502 = *(a3 + 8);
                              if (!v1502)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9123E4);
                              }

                              v1503 = v1501;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1504 = WTF::fastMalloc(0x18);
                              *v1504 = &unk_1F10ECF58;
                              v1504[1] = v1502;
                              v1504[2] = a2;
                              *buf = v1504;
                              WebKit::RemoteGraphicsContextGL::getTranslatedShaderSourceANGLE(this, v1503, buf);
LABEL_2703:
                              v770 = *buf;
                              if (*buf)
                              {
                                goto LABEL_2704;
                              }

                              goto LABEL_461;
                            case 0xFEA:
                              IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                              if (buf[16] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1505 = *(a3 + 8);
                              if (!v1505)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912404);
                              }

                              atomic_fetch_add(a2 + 2, 1u);
                              v1506 = WTF::fastMalloc(0x18);
                              *v1506 = &unk_1F10ECEE0;
                              *(v1506 + 1) = v1505;
                              *(v1506 + 2) = a2;
                              v1709[0] = v1506;
                              WebKit::RemoteGraphicsContextGL::getUniformBlockIndex(this, *buf, &buf[8], v1709);
                              v1291 = v1709[0];
                              if (v1709[0])
                              {
                                goto LABEL_2449;
                              }

                              goto LABEL_2450;
                            case 0xFEB:
                              v1430 = *(a3 + 1);
                              v1507 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                              v1508 = v1507 - *a3;
                              v17 = v1430 >= v1508;
                              v1509 = v1430 - v1508;
                              if (v17 && v1509 > 3)
                              {
                                *(a3 + 2) = v1507 + 1;
                                if (v1507)
                                {
                                  v1510 = *v1507;
                                  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v1709);
                                  if (v1710 & 1) != 0 || (v1662 = *a3, v1663 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1664 = *(a3 + 3)) != 0) && v1663 && ((*(*v1664 + 16))(v1664, v1662), (v1710))
                                  {
                                    *buf = v1510;
                                    *&buf[8] = v1709[0];
                                    v1512 = v1709[1];
                                    v1709[0] = 0;
                                    v1709[1] = 0;
                                    *&buf[16] = v1512;
                                    buf[24] = 1;
                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1709, v1511);
                                    v1513 = *(a3 + 8);
                                    if (!v1513)
                                    {
                                      __break(0xC471u);
                                      JUMPOUT(0x19D912424);
                                    }

                                    atomic_fetch_add(a2 + 2, 1u);
                                    v1514 = WTF::fastMalloc(0x18);
                                    *v1514 = &unk_1F10ECE90;
                                    *(v1514 + 1) = v1513;
                                    *(v1514 + 2) = a2;
                                    v1709[0] = v1514;
                                    WebKit::RemoteGraphicsContextGL::getUniformIndices(this, *buf, &buf[8], v1709);
                                    if (v1709[0])
                                    {
                                      (*(*v1709[0] + 8))(v1709[0]);
                                    }

                                    if ((buf[24] & 1) == 0)
                                    {
                                      goto LABEL_461;
                                    }

LABEL_1864:
                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v990);
                                    goto LABEL_461;
                                  }

LABEL_2924:
                                  v1397 = *a3;
                                  v1617 = *(a3 + 1);
                                  *a3 = 0;
                                  *(a3 + 1) = 0;
                                  v1399 = *(a3 + 3);
                                  if (!v1399 || !v1617)
                                  {
                                    goto LABEL_461;
                                  }

                                  goto LABEL_2926;
                                }
                              }

                              else
                              {
LABEL_3171:
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1690 = *(a3 + 3);
                                if (v1690)
                                {
                                  if (v1430)
                                  {
                                    (*(*v1690 + 16))(v1690);
                                    v1430 = *(a3 + 1);
                                  }
                                }

                                else
                                {
                                  v1430 = 0;
                                }
                              }

LABEL_3280:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1698 = *(a3 + 3);
                              if (v1698 && v1430)
                              {
                                (*(*v1698 + 16))(v1698);
                              }

                              goto LABEL_2924;
                            case 0xFF5:
                              v1515 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1515 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1516 = *(a3 + 8);
                              if (!v1516)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912444);
                              }

                              v1517 = v1515;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1518 = WTF::fastMalloc(0x18);
                              *v1518 = &unk_1F10ECCB0;
                              v1518[1] = v1516;
                              v1518[2] = a2;
                              *buf = v1518;
                              WebKit::RemoteGraphicsContextGL::isQuery(this, v1517, buf);
                              goto LABEL_2559;
                            case 0xFF6:
                              v1519 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1519 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1520 = *(a3 + 8);
                              if (!v1520)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912464);
                              }

                              v1521 = v1519;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1522 = WTF::fastMalloc(0x18);
                              *v1522 = &unk_1F10ECF80;
                              v1522[1] = v1520;
                              v1522[2] = a2;
                              *buf = v1522;
                              WebKit::RemoteGraphicsContextGL::isQueryEXT(this, v1521, buf);
                              goto LABEL_2559;
                            case 0xFF8:
                              v1523 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1523 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1524 = *(a3 + 8);
                              if (!v1524)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912484);
                              }

                              v1525 = v1523;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1526 = WTF::fastMalloc(0x18);
                              *v1526 = &unk_1F10ECD28;
                              v1526[1] = v1524;
                              v1526[2] = a2;
                              *buf = v1526;
                              WebKit::RemoteGraphicsContextGL::isSampler(this, v1525, buf);
                              goto LABEL_2559;
                            case 0xFFA:
                              v1527 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
                              if ((v1528 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1529 = *(a3 + 8);
                              if (!v1529)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9124A4);
                              }

                              v1530 = v1527;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1531 = WTF::fastMalloc(0x18);
                              *v1531 = &unk_1F10ECDC8;
                              v1531[1] = v1529;
                              v1531[2] = a2;
                              *buf = v1531;
                              WebKit::RemoteGraphicsContextGL::isSync(this, v1530, buf);
                              goto LABEL_2559;
                            case 0xFFC:
                              v1532 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1532 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1533 = *(a3 + 8);
                              if (!v1533)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9124C4);
                              }

                              v1534 = v1532;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1535 = WTF::fastMalloc(0x18);
                              *v1535 = &unk_1F10ECE40;
                              v1535[1] = v1533;
                              v1535[2] = a2;
                              *buf = v1535;
                              WebKit::RemoteGraphicsContextGL::isTransformFeedback(this, v1534, buf);
                              goto LABEL_2559;
                            case 0xFFD:
                              v1536 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1536 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1537 = *(a3 + 8);
                              if (!v1537)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9124E4);
                              }

                              v1538 = v1536;
                              atomic_fetch_add(a2 + 2, 1u);
                              v1539 = WTF::fastMalloc(0x18);
                              *v1539 = &unk_1F10ECC60;
                              v1539[1] = v1537;
                              v1539[2] = a2;
                              *buf = v1539;
                              WebKit::RemoteGraphicsContextGL::isVertexArray(this, v1538, buf);
                              goto LABEL_2559;
                            default:
                              v1416 = qword_1ED6416C8;
                              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
                              {
                                if (v5 >= 0x107F)
                                {
                                  v1586 = 4223;
                                }

                                else
                                {
                                  v1586 = v5;
                                }

                                v1587 = (&IPC::Detail::messageDescriptions)[3 * v1586];
                                v1588 = *(a3 + 7);
                                *buf = 136315394;
                                *&buf[4] = v1587;
                                *&buf[12] = 2048;
                                *&buf[14] = v1588;
                                _os_log_error_impl(&dword_19D52D000, v1416, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
                              }

                              goto LABEL_2623;
                          }
                        }

                        v1139 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                        if ((v1139 & 0x100000000) == 0 || (v1139 + 2) < 3)
                        {
                          goto LABEL_461;
                        }

                        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v1139);
                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::deleteQueryEXT(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::deleteQueryEXT(v6);
                        goto LABEL_1173;
                      }

                      if (*(a3 + 25) <= 0x4FEu)
                      {
                        if (v5 == 1254)
                        {
                          if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::endQueryEXT(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::endQueryEXT(v6);
                        }

                        else
                        {
                          if (v5 != 1277)
                          {
                            goto LABEL_2210;
                          }

                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1111 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::polygonModeANGLE(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::polygonModeANGLE(v6);
                        }

                        goto LABEL_1173;
                      }

                      if (v5 == 1279)
                      {
                        v1113 = *(a3 + 1);
                        v1151 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                        v1115 = *a3;
                        v1152 = v1151 - *a3;
                        v17 = v1113 >= v1152;
                        v1153 = v1113 - v1152;
                        if (!v17 || v1153 <= 3)
                        {
                          goto LABEL_3259;
                        }

                        *(a3 + 2) = v1151 + 1;
                        if (!v1151)
                        {
                          goto LABEL_3262;
                        }

                        v1154 = *v1151;
                        v1155 = ((v1151 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v1113 < v1155 - v1115 || v1113 - (v1155 - v1115) <= 3)
                        {
                          goto LABEL_3259;
                        }

                        *(a3 + 2) = v1155 + 1;
                        if (!v1155)
                        {
                          goto LABEL_3262;
                        }

                        v1156 = *v1155;
                        v1157 = ((v1155 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v1113 < v1157 - v1115 || v1113 - (v1157 - v1115) <= 3)
                        {
                          goto LABEL_3259;
                        }

                        *(a3 + 2) = v1157 + 1;
                        if (v1157)
                        {
                          v1158 = *v1157;
                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::polygonOffsetClampEXT(0, v1154, v1156, v1158);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::polygonOffsetClampEXT(v6, v1154, v1156, v1158);
                          goto LABEL_1173;
                        }

                        goto LABEL_3262;
                      }

                      if (v5 == 1280)
                      {
                        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                        {
                          goto LABEL_461;
                        }

                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::provokingVertexANGLE(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::provokingVertexANGLE(v6);
                        goto LABEL_1173;
                      }

                      if (v5 != 1281)
                      {
                        goto LABEL_2210;
                      }

                      v1106 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                      if ((v1107 & 1) == 0)
                      {
                        goto LABEL_461;
                      }

                      *buf = v1106;
                      if (v1106 > 0xFFFFFFFD)
                      {
                        goto LABEL_461;
                      }

                      if (v1106)
                      {
                        *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                      }

                      v261 = *(this + 7);
                      if (!v261)
                      {
                        WebCore::GraphicsContextGLANGLE::queryCounterEXT(0);
                        goto LABEL_461;
                      }

                      ++*(v261 + 2);
                      WebCore::GraphicsContextGLANGLE::queryCounterEXT(v261);
LABEL_2091:
                      if (*(v261 + 2) == 1)
                      {
LABEL_705:
                        (*(*v261 + 16))(v261);
                      }

                      else
                      {
                        --*(v261 + 2);
                      }

                      goto LABEL_461;
                    }

                    if (*(a3 + 25) <= 0x49Bu)
                    {
                      if (*(a3 + 25) > 0x497u)
                      {
                        if (v5 != 1176)
                        {
                          if (v5 == 1179)
                          {
                            IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                            if (buf[20] == 1)
                            {
                              WebKit::RemoteGraphicsContextGL::blendFuncSeparateiOES(this);
                            }

                            goto LABEL_461;
                          }

                          goto LABEL_2210;
                        }

                        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                        if ((v1137 & 1) == 0)
                        {
                          goto LABEL_461;
                        }

                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::blendEquationiOES(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::blendEquationiOES(v6);
                        goto LABEL_1173;
                      }

                      if (v5 != 1160)
                      {
                        if (v5 == 1175)
                        {
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                          if ((v1108 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::blendEquationSeparateiOES(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::blendEquationSeparateiOES(v6);
                          goto LABEL_1173;
                        }

                        goto LABEL_2210;
                      }

                      v1135 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                      if ((v1136 & 1) == 0)
                      {
                        goto LABEL_461;
                      }

                      *buf = HIDWORD(v1135);
                      if (v1135 > 0xFFFFFFFDFFFFFFFFLL)
                      {
                        goto LABEL_461;
                      }

                      if (HIDWORD(v1135))
                      {
                        *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                      }

                      v261 = *(this + 7);
                      if (!v261)
                      {
                        WebCore::GraphicsContextGLANGLE::beginQueryEXT(0);
                        goto LABEL_461;
                      }

                      ++*(v261 + 2);
                      WebCore::GraphicsContextGLANGLE::beginQueryEXT(v261);
                      goto LABEL_2091;
                    }

                    if (*(a3 + 25) <= 0x4AAu)
                    {
                      if (v5 != 1180)
                      {
                        if (v5 == 1193)
                        {
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1109 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::clipControlEXT(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::clipControlEXT(v6);
                          goto LABEL_1173;
                        }

                        goto LABEL_2210;
                      }

                      IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                      if ((v1138 & 0x100000000) == 0)
                      {
                        goto LABEL_461;
                      }

                      v6 = *(this + 7);
                      if (!v6)
                      {
                        WebCore::GraphicsContextGLANGLE::blendFunciOES(0);
                        goto LABEL_461;
                      }

                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::blendFunciOES(v6);
LABEL_1173:
                      if (*(v6 + 2) == 1)
                      {
LABEL_552:
                        (*(*v6 + 16))(v6);
                      }

                      else
                      {
                        --*(v6 + 2);
                      }

                      goto LABEL_461;
                    }

                    if (v5 != 1195)
                    {
                      if (v5 == 1213)
                      {
                        v1134 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                        if ((v1134 & 0x100000000) == 0)
                        {
                          goto LABEL_461;
                        }

                        LODWORD(v1709[0]) = v1134;
                        if (v1134 > 0xFFFFFFFD)
                        {
                          goto LABEL_461;
                        }

                        v820 = *(this + 7);
                        if (v820)
                        {
                          ++*(v820 + 2);
                          Query = WebCore::GraphicsContextGLANGLE::createQueryEXT(v820);
LABEL_1670:
                          v874 = Query;
                          if (*(v820 + 2) == 1)
                          {
                            (*(*v820 + 16))(v820);
                          }

                          else
                          {
                            --*(v820 + 2);
                          }
                        }

                        else
                        {
                          Sampler = WebCore::GraphicsContextGLANGLE::createQueryEXT(0);
LABEL_2745:
                          v874 = Sampler;
                        }

                        LODWORD(v1714) = v874;
                        if (!v874)
                        {
                          goto LABEL_461;
                        }

LABEL_398:
                        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned int &>(buf, this + 27, v1709, &v1714);
                        goto LABEL_461;
                      }

                      if (v5 != 1222)
                      {
                        goto LABEL_2210;
                      }

                      v1103 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                      if ((v1103 & 0x100000000) == 0)
                      {
                        goto LABEL_461;
                      }

                      v1104 = v1103;
                      if ((WebKit::RemoteGraphicsContextGL::webXREnabled(this) & 1) == 0)
                      {
                        v1105 = *(this + 6);
                        if (v1105)
                        {
                          atomic_fetch_add((v1105 + 8), 1u);
                          *(v1105 + 168) = 1;
                          if (atomic_fetch_add((v1105 + 8), 0xFFFFFFFF) == 1)
                          {
                            atomic_store(1u, (v1105 + 8));
                            (*(*v1105 + 8))(v1105);
                          }
                        }
                      }

                      if ((v1104 + 2) < 3)
                      {
                        goto LABEL_461;
                      }

                      WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v1104);
                      v6 = *(this + 7);
                      if (!v6)
                      {
                        WebCore::GraphicsContextGLANGLE::deleteExternalSync(0);
                        goto LABEL_461;
                      }

                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::deleteExternalSync(v6);
                      goto LABEL_1173;
                    }

                    v1113 = *(a3 + 1);
                    v1147 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1115 = *a3;
                    v1148 = &v1147[-*a3];
                    v17 = v1113 >= v1148;
                    v1149 = v1113 - v1148;
                    if (!v17 || v1149 <= 3)
                    {
                      goto LABEL_3259;
                    }

                    v1150 = v1147 + 4;
                    *(a3 + 2) = v1147 + 4;
                    if (!v1147)
                    {
                      goto LABEL_3262;
                    }

                    if (v1113 <= &v1150[-v1115])
                    {
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1680 = *(a3 + 3);
                      if (v1680)
                      {
                        if (v1113)
                        {
                          (*(*v1680 + 16))(v1680);
                          v1113 = *(a3 + 1);
                        }
                      }

                      else
                      {
                        v1113 = 0;
                      }

                      goto LABEL_3259;
                    }

                    *(a3 + 2) = v1147 + 5;
                    if (v1147 == -4)
                    {
                      goto LABEL_3259;
                    }

                    if (*v1150 >= 2u)
                    {
                      goto LABEL_3262;
                    }

                    if (v1113 <= &v1147[-v1115 + 5])
                    {
                      goto LABEL_3145;
                    }

                    *(a3 + 2) = v1147 + 6;
                    if (v1147[5] < 2u)
                    {
                      if (v1113 <= &v1147[-v1115 + 6])
                      {
                        goto LABEL_3145;
                      }

                      *(a3 + 2) = v1147 + 7;
                      if (v1147[6] < 2u)
                      {
                        if (v1113 > &v1147[-v1115 + 7])
                        {
                          *(a3 + 2) = v1147 + 8;
                          if (v1147[7] < 2u)
                          {
                            WebKit::RemoteGraphicsContextGL::colorMaskiOES(this);
                            goto LABEL_461;
                          }

                          goto LABEL_3153;
                        }

LABEL_3145:
                        v1673 = 0;
                        v1674 = 0;
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v1675 = *(a3 + 3);
                        if (v1675)
                        {
                          (*(*v1675 + 16))(v1675);
                          v1673 = 0;
                          v1676 = *a3;
                          v1677 = *(a3 + 1);
                          v1678 = *(a3 + 3);
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1674 = 0;
                          if (v1678)
                          {
                            if (v1677)
                            {
                              (*(*v1678 + 16))(v1678, v1676);
                              v1674 = *a3;
                              v1673 = *(a3 + 1);
                            }
                          }
                        }

                        goto LABEL_3154;
                      }
                    }

LABEL_3153:
                    v1673 = v1113;
                    v1674 = v1115;
LABEL_3154:
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1679 = *(a3 + 3);
                    if (v1679 && v1673)
                    {
                      (*(*v1679 + 16))(v1679, v1674, v1673);
                    }

LABEL_2623:
                    v1397 = *a3;
                    v1417 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1399 = *(a3 + 3);
                    if (!v1399)
                    {
                      goto LABEL_461;
                    }

LABEL_3297:
                    if (!v1417)
                    {
                      goto LABEL_461;
                    }

LABEL_2926:
                    (*(*v1399 + 16))(v1399, v1397);
                    goto LABEL_461;
                  }

                  if (*(a3 + 25) <= 0x4A2u)
                  {
                    if (v5 == 1171)
                    {
                      v930 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                      if ((v930 & 0x100000000) != 0)
                      {
                        *buf = v930;
                        if (v930 <= 0xFFFFFFFD)
                        {
                          if (v930)
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v262 = *(this + 7);
                          if (v262)
                          {
                            ++*(v262 + 2);
                            WebCore::GraphicsContextGLANGLE::bindVertexArray(v262);
LABEL_537:
                            if (*(v262 + 2) == 1)
                            {
                              (*(*v262 + 16))(v262);
                            }

                            else
                            {
                              --*(v262 + 2);
                            }
                          }

                          else
                          {
                            WebCore::GraphicsContextGLANGLE::bindVertexArray(0);
                          }
                        }
                      }

                      goto LABEL_461;
                    }

                    if (v5 != 1181)
                    {
                      if (v5 != 1186)
                      {
                        goto LABEL_1493;
                      }

                      v523 = *(a3 + 1);
                      v743 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      v744 = *a3;
                      v745 = v743 - *a3;
                      v17 = v523 >= v745;
                      v746 = v523 - v745;
                      if (v17 && v746 > 3)
                      {
                        *(a3 + 2) = v743 + 4;
                        if (!v743)
                        {
                          goto LABEL_3023;
                        }

                        v747 = (v743 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                        if (v523 >= v747 - v744 && v523 - (v747 - v744) > 3)
                        {
                          *(a3 + 2) = v747 + 4;
                          if (!v747)
                          {
                            goto LABEL_3023;
                          }

                          v748 = ((v747 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v523 >= v748 - v744 && v523 - (v748 - v744) > 3)
                          {
                            *(a3 + 2) = v748 + 1;
                            if (!v748)
                            {
                              goto LABEL_3023;
                            }

                            v749 = *v748;
                            v750 = (v748 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                            if (v523 >= v750 - v744 && v523 - (v750 - v744) > 3)
                            {
                              *(a3 + 2) = v750 + 4;
                              if (v750)
                              {
                                WebKit::RemoteGraphicsContextGL::clearBufferfi(this, v749);
                                goto LABEL_461;
                              }

                              goto LABEL_3023;
                            }
                          }
                        }
                      }

                      goto LABEL_3021;
                    }

                    v863 = *(a3 + 1);
                    v877 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v878 = *a3;
                    v879 = v877 - *a3;
                    v17 = v863 >= v879;
                    v880 = v863 - v879;
                    if (v17 && v880 > 3)
                    {
                      *(a3 + 2) = v877 + 1;
                      if (!v877)
                      {
                        goto LABEL_3295;
                      }

                      v881 = *v877;
                      v882 = ((v877 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                      if (v863 >= v882 - v878 && v863 - (v882 - v878) > 3)
                      {
                        *(a3 + 2) = v882 + 1;
                        if (!v882)
                        {
                          goto LABEL_3295;
                        }

                        v883 = *v882;
                        v884 = ((v882 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v863 >= v884 - v878 && v863 - (v884 - v878) > 3)
                        {
                          *(a3 + 2) = v884 + 1;
                          if (!v884)
                          {
                            goto LABEL_3295;
                          }

                          v885 = *v884;
                          v886 = ((v884 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v863 >= v886 - v878 && v863 - (v886 - v878) > 3)
                          {
                            *(a3 + 2) = v886 + 1;
                            if (!v886)
                            {
                              goto LABEL_3295;
                            }

                            v887 = *v886;
                            v888 = ((v886 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                            if (v863 >= v888 - v878 && v863 - (v888 - v878) > 3)
                            {
                              *(a3 + 2) = v888 + 1;
                              if (!v888)
                              {
                                goto LABEL_3295;
                              }

                              v889 = *v888;
                              v890 = ((v888 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                              if (v863 >= v890 - v878 && v863 - (v890 - v878) > 3)
                              {
                                *(a3 + 2) = v890 + 1;
                                if (!v890)
                                {
                                  goto LABEL_3295;
                                }

                                v891 = *v890;
                                v892 = ((v890 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                if (v863 >= v892 - v878 && v863 - (v892 - v878) > 3)
                                {
                                  *(a3 + 2) = v892 + 1;
                                  if (!v892)
                                  {
                                    goto LABEL_3295;
                                  }

                                  v893 = *v892;
                                  v894 = ((v892 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                  if (v863 >= v894 - v878 && v863 - (v894 - v878) > 3)
                                  {
                                    *(a3 + 2) = v894 + 1;
                                    if (!v894)
                                    {
                                      goto LABEL_3295;
                                    }

                                    v895 = *v894;
                                    v896 = ((v894 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                    if (v863 >= v896 - v878 && v863 - (v896 - v878) > 3)
                                    {
                                      *(a3 + 2) = v896 + 1;
                                      if (v896)
                                      {
                                        v897 = *v896;
                                        v898 = ((v896 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                        if (v863 >= v898 - v878 && v863 - (v898 - v878) > 3)
                                        {
                                          *(a3 + 2) = v898 + 1;
                                          if (v898)
                                          {
                                            WebKit::RemoteGraphicsContextGL::blitFramebuffer(this, v881, v883, v885, v887, v889, v891, v893, v895, v897, *v898);
                                            goto LABEL_461;
                                          }

                                          goto LABEL_3295;
                                        }

                                        goto LABEL_3293;
                                      }

LABEL_3295:
                                      *a3 = 0;
                                      *(a3 + 1) = 0;
                                      v1700 = *(a3 + 3);
                                      if (v1700 && v863)
                                      {
                                        (*(*v1700 + 16))(v1700);
                                      }

LABEL_3296:
                                      v1397 = *a3;
                                      v1417 = *(a3 + 1);
                                      *a3 = 0;
                                      *(a3 + 1) = 0;
                                      v1399 = *(a3 + 3);
                                      if (!v1399)
                                      {
                                        goto LABEL_461;
                                      }

                                      goto LABEL_3297;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

LABEL_3293:
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1699 = *(a3 + 3);
                    if (v1699)
                    {
                      if (v863)
                      {
                        (*(*v1699 + 16))(v1699);
                        v863 = *(a3 + 1);
                      }
                    }

                    else
                    {
                      v863 = 0;
                    }

                    goto LABEL_3295;
                  }

                  switch(v5)
                  {
                    case 0x4A3u:
                      v263 = *(a3 + 1);
                      v942 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v943 = *a3;
                      v944 = v942 - *a3;
                      v17 = v263 >= v944;
                      v945 = v263 - v944;
                      if (v17 && v945 > 3)
                      {
                        *(a3 + 2) = v942 + 1;
                        if (!v942)
                        {
                          goto LABEL_2581;
                        }

                        v946 = *v942;
                        v947 = ((v942 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v263 >= v947 - v943 && v263 - (v947 - v943) > 3)
                        {
                          *(a3 + 2) = v947 + 1;
                          if (v947)
                          {
                            v948 = *v947;
                            IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                            if (v1710 & 1) != 0 || (v1405 = *a3, v1406 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1407 = *(a3 + 3)) != 0) && v1406 && ((*(*v1407 + 16))(v1407, v1405), (v1710))
                            {
                              *buf = v946;
                              *&buf[4] = v948;
                              *&buf[8] = *v1709;
                              buf[24] = 1;
                              WebKit::RemoteGraphicsContextGL::clearBufferfv(this);
                              goto LABEL_461;
                            }

                            goto LABEL_2582;
                          }

                          goto LABEL_2581;
                        }
                      }

                      break;
                    case 0x4A4u:
                      v263 = *(a3 + 1);
                      v901 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v902 = *a3;
                      v903 = v901 - *a3;
                      v17 = v263 >= v903;
                      v904 = v263 - v903;
                      if (v17 && v904 > 3)
                      {
                        *(a3 + 2) = v901 + 1;
                        if (!v901)
                        {
                          goto LABEL_2581;
                        }

                        v905 = *v901;
                        v906 = ((v901 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v263 >= v906 - v902 && v263 - (v906 - v902) > 3)
                        {
                          *(a3 + 2) = v906 + 1;
                          if (v906)
                          {
                            v907 = *v906;
                            IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                            if (v1710 & 1) != 0 || (v1589 = *a3, v1590 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1591 = *(a3 + 3)) != 0) && v1590 && ((*(*v1591 + 16))(v1591, v1589), (v1710))
                            {
                              *buf = v905;
                              *&buf[4] = v907;
                              *&buf[8] = *v1709;
                              buf[24] = 1;
                              WebKit::RemoteGraphicsContextGL::clearBufferiv(this);
                              goto LABEL_461;
                            }

                            goto LABEL_2582;
                          }

                          goto LABEL_2581;
                        }
                      }

                      break;
                    case 0x4A5u:
                      v263 = *(a3 + 1);
                      v756 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v757 = *a3;
                      v758 = v756 - *a3;
                      v17 = v263 >= v758;
                      v759 = v263 - v758;
                      if (v17 && v759 > 3)
                      {
                        *(a3 + 2) = v756 + 1;
                        if (!v756)
                        {
                          goto LABEL_2581;
                        }

                        v760 = *v756;
                        v761 = ((v756 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v263 >= v761 - v757 && v263 - (v761 - v757) > 3)
                        {
                          *(a3 + 2) = v761 + 1;
                          if (v761)
                          {
                            v762 = *v761;
                            IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                            if (v1710 & 1) != 0 || (v1392 = *a3, v1393 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1394 = *(a3 + 3)) != 0) && v1393 && ((*(*v1394 + 16))(v1394, v1392), (v1710))
                            {
                              *buf = v760;
                              *&buf[4] = v762;
                              *&buf[8] = *v1709;
                              buf[24] = 1;
                              WebKit::RemoteGraphicsContextGL::clearBufferuiv(this);
                              goto LABEL_461;
                            }

                            goto LABEL_2582;
                          }

                          goto LABEL_2581;
                        }
                      }

                      break;
                    default:
                      goto LABEL_1493;
                  }

LABEL_2579:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1395 = *(a3 + 3);
                  if (v1395)
                  {
                    if (v263)
                    {
                      (*(*v1395 + 16))(v1395);
                      v263 = *(a3 + 1);
                    }
                  }

                  else
                  {
                    v263 = 0;
                  }

LABEL_2581:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1396 = *(a3 + 3);
                  if (v1396)
                  {
LABEL_2939:
                    if (v263)
                    {
                      (*(*v1396 + 16))(v1396);
                    }
                  }

LABEL_2582:
                  v1397 = *a3;
                  v1398 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1399 = *(a3 + 3);
                  if (!v1399 || !v1398)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_2926;
                }

                if (*(a3 + 25) <= 0x50Au)
                {
                  switch(v5)
                  {
                    case 0x505u:
                      IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                      if (buf[20] == 1)
                      {
                        WebKit::RemoteGraphicsContextGL::renderbufferStorageMultisample(this);
                      }

                      goto LABEL_461;
                    case 0x508u:
                      v6 = *(this + 7);
                      if (!v6)
                      {
                        WebCore::GraphicsContextGLANGLE::resumeTransformFeedback(0);
                        goto LABEL_461;
                      }

                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::resumeTransformFeedback(v6);
                      goto LABEL_1173;
                    case 0x50Au:
                      v751 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
                      if ((v752 & 0x100000000) == 0)
                      {
                        goto LABEL_461;
                      }

                      *buf = v751;
                      if (v751 > 0xFFFFFFFD)
                      {
                        goto LABEL_461;
                      }

                      v753 = *&v752;
                      if (v751)
                      {
                        *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                      }

                      v261 = *(this + 7);
                      if (!v261)
                      {
                        WebCore::GraphicsContextGLANGLE::samplerParameterf(0, v753);
                        goto LABEL_461;
                      }

                      ++*(v261 + 2);
                      WebCore::GraphicsContextGLANGLE::samplerParameterf(v261, v753);
                      goto LABEL_2091;
                  }

                  goto LABEL_1493;
                }

                switch(*(a3 + 25))
                {
                  case 0x51A:
                    v263 = *(a3 + 1);
                    v710 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v711 = *a3;
                    v712 = v710 - *a3;
                    v17 = v263 >= v712;
                    v713 = v263 - v712;
                    if (!v17 || v713 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v710 + 1;
                    if (!v710)
                    {
                      goto LABEL_2581;
                    }

                    v1705 = *v710;
                    v714 = ((v710 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v714 - v711 || v263 - (v714 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v714 + 1;
                    if (!v714)
                    {
                      goto LABEL_2581;
                    }

                    v715 = *v714;
                    v716 = ((v714 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v716 - v711 || v263 - (v716 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v716 + 1;
                    if (!v716)
                    {
                      goto LABEL_2581;
                    }

                    v717 = *v716;
                    v718 = ((v716 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v718 - v711 || v263 - (v718 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v718 + 1;
                    if (!v718)
                    {
                      goto LABEL_2581;
                    }

                    v719 = *v718;
                    v720 = ((v718 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v720 - v711 || v263 - (v720 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v720 + 1;
                    if (!v720)
                    {
                      goto LABEL_2581;
                    }

                    v721 = *v720;
                    v722 = ((v720 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v722 - v711 || v263 - (v722 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v722 + 1;
                    if (!v722)
                    {
                      goto LABEL_2581;
                    }

                    v723 = *v722;
                    v724 = ((v722 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v724 - v711 || v263 - (v724 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v724 + 1;
                    if (!v724)
                    {
                      goto LABEL_2581;
                    }

                    v725 = *v724;
                    v726 = ((v724 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v726 - v711 || v263 - (v726 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v726 + 1;
                    if (!v726)
                    {
                      goto LABEL_2581;
                    }

                    v727 = *v726;
                    v728 = ((v726 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v728 - v711 || v263 - (v728 - v711) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v728 + 1;
                    if (!v728)
                    {
                      goto LABEL_2581;
                    }

                    v729 = *v728;
                    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                    if ((v1710 & 1) == 0)
                    {
                      v1639 = *a3;
                      v1640 = *(a3 + 1);
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1641 = *(a3 + 3);
                      if (!v1641)
                      {
                        goto LABEL_2582;
                      }

                      if (!v1640)
                      {
                        goto LABEL_2582;
                      }

                      (*(*v1641 + 16))(v1641, v1639);
                      if ((v1710 & 1) == 0)
                      {
                        goto LABEL_2582;
                      }
                    }

                    *buf = v1705;
                    *&buf[4] = v715;
                    *&buf[8] = v717;
                    *&buf[12] = v719;
                    *&buf[16] = v721;
                    *&buf[20] = v723;
                    *&buf[24] = v725;
                    *&buf[28] = v727;
                    *&buf[32] = v729;
                    *&buf[40] = *v1709;
                    LOBYTE(v1717) = 1;
                    WebKit::RemoteGraphicsContextGL::texImage3D0(this);
                    goto LABEL_461;
                  case 0x51B:
                    v523 = *(a3 + 1);
                    v1033 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1034 = *a3;
                    v1035 = v1033 - *a3;
                    v17 = v523 >= v1035;
                    v1036 = v523 - v1035;
                    if (!v17 || v1036 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1033 + 1;
                    if (!v1033)
                    {
                      goto LABEL_3023;
                    }

                    v1037 = *v1033;
                    v1038 = ((v1033 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1038 - v1034 || v523 - (v1038 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1038 + 1;
                    if (!v1038)
                    {
                      goto LABEL_3023;
                    }

                    v1039 = *v1038;
                    v1040 = ((v1038 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1040 - v1034 || v523 - (v1040 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1040 + 1;
                    if (!v1040)
                    {
                      goto LABEL_3023;
                    }

                    v1041 = *v1040;
                    v1042 = ((v1040 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1042 - v1034 || v523 - (v1042 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1042 + 1;
                    if (!v1042)
                    {
                      goto LABEL_3023;
                    }

                    v1043 = *v1042;
                    v1044 = ((v1042 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1044 - v1034 || v523 - (v1044 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1044 + 1;
                    if (!v1044)
                    {
                      goto LABEL_3023;
                    }

                    v1045 = *v1044;
                    v1046 = ((v1044 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1046 - v1034 || v523 - (v1046 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1046 + 1;
                    if (!v1046)
                    {
                      goto LABEL_3023;
                    }

                    v1047 = *v1046;
                    v1048 = ((v1046 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1048 - v1034 || v523 - (v1048 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1048 + 1;
                    if (!v1048)
                    {
                      goto LABEL_3023;
                    }

                    v1049 = *v1048;
                    v1050 = ((v1048 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1050 - v1034 || v523 - (v1050 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1050 + 1;
                    if (!v1050)
                    {
                      goto LABEL_3023;
                    }

                    v1051 = *v1050;
                    v1052 = ((v1050 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1052 - v1034 || v523 - (v1052 - v1034) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1052 + 1;
                    if (!v1052)
                    {
                      goto LABEL_3023;
                    }

                    v1053 = *v1052;
                    v1054 = ((v1052 + 11) & 0xFFFFFFFFFFFFFFF8);
                    if (v523 < v1054 - v1034 || v523 - (v1054 - v1034) <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1054 + 1;
                    if (!v1054)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::texImage3D1(this, v1037, v1039, v1041, v1043, v1045, v1047, v1049, v1051, v1053, *v1054);
                    goto LABEL_461;
                  case 0x51C:
                  case 0x51D:
                  case 0x520:
                  case 0x521:
                  case 0x525:
                  case 0x526:
                  case 0x527:
                  case 0x528:
                  case 0x52B:
                  case 0x52C:
                  case 0x52D:
                  case 0x52E:
                  case 0x531:
                  case 0x532:
                  case 0x533:
                  case 0x534:
                  case 0x537:
                  case 0x538:
                  case 0x539:
                  case 0x53A:
                  case 0x53E:
                  case 0x541:
                  case 0x544:
                  case 0x547:
                  case 0x548:
                  case 0x549:
                  case 0x54A:
                  case 0x54B:
                  case 0x54C:
                  case 0x54D:
                  case 0x54E:
                  case 0x54F:
                  case 0x550:
                  case 0x551:
                  case 0x557:
                  case 0x558:
                    goto LABEL_1493;
                  case 0x51E:
                    IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                    if (buf[20] == 1)
                    {
                      WebKit::RemoteGraphicsContextGL::texStorage2D(this);
                    }

                    goto LABEL_461;
                  case 0x51F:
                    v523 = *(a3 + 1);
                    v1019 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1020 = *a3;
                    v1021 = v1019 - *a3;
                    v17 = v523 >= v1021;
                    v1022 = v523 - v1021;
                    if (!v17 || v1022 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1019 + 4;
                    if (!v1019)
                    {
                      goto LABEL_3023;
                    }

                    v1023 = (v1019 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1023 - v1020 || v523 - (v1023 - v1020) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1023 + 4;
                    if (!v1023)
                    {
                      goto LABEL_3023;
                    }

                    v1024 = (v1023 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1024 - v1020 || v523 - (v1024 - v1020) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1024 + 4;
                    if (!v1024)
                    {
                      goto LABEL_3023;
                    }

                    v1025 = (v1024 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1025 - v1020 || v523 - (v1025 - v1020) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1025 + 4;
                    if (!v1025)
                    {
                      goto LABEL_3023;
                    }

                    v1026 = (v1025 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1026 - v1020 || v523 - (v1026 - v1020) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1026 + 4;
                    if (!v1026)
                    {
                      goto LABEL_3023;
                    }

                    v1027 = (v1026 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1027 - v1020 || v523 - (v1027 - v1020) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1027 + 4;
                    if (!v1027)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::texStorage3D(this);
                    goto LABEL_461;
                  case 0x522:
                    v263 = *(a3 + 1);
                    v991 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v992 = *a3;
                    v993 = v991 - *a3;
                    v17 = v263 >= v993;
                    v994 = v263 - v993;
                    if (!v17 || v994 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v991 + 1;
                    if (!v991)
                    {
                      goto LABEL_2581;
                    }

                    v1707 = *v991;
                    v995 = ((v991 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v995 - v992 || v263 - (v995 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v995 + 1;
                    if (!v995)
                    {
                      goto LABEL_2581;
                    }

                    v1704 = *v995;
                    v996 = ((v995 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v996 - v992 || v263 - (v996 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v996 + 1;
                    if (!v996)
                    {
                      goto LABEL_2581;
                    }

                    v997 = *v996;
                    v998 = ((v996 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v998 - v992 || v263 - (v998 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v998 + 1;
                    if (!v998)
                    {
                      goto LABEL_2581;
                    }

                    v999 = *v998;
                    v1000 = ((v998 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v1000 - v992 || v263 - (v1000 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1000 + 1;
                    if (!v1000)
                    {
                      goto LABEL_2581;
                    }

                    v1001 = *v1000;
                    v1002 = ((v1000 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v1002 - v992 || v263 - (v1002 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1002 + 1;
                    if (!v1002)
                    {
                      goto LABEL_2581;
                    }

                    v1003 = *v1002;
                    v1004 = ((v1002 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v1004 - v992 || v263 - (v1004 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1004 + 1;
                    if (!v1004)
                    {
                      goto LABEL_2581;
                    }

                    v1005 = *v1004;
                    v1006 = ((v1004 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v1006 - v992 || v263 - (v1006 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1006 + 1;
                    if (!v1006)
                    {
                      goto LABEL_2581;
                    }

                    v1007 = *v1006;
                    v1008 = ((v1006 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v1008 - v992 || v263 - (v1008 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1008 + 1;
                    if (!v1008)
                    {
                      goto LABEL_2581;
                    }

                    v1009 = *v1008;
                    v1010 = ((v1008 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 < v1010 - v992 || v263 - (v1010 - v992) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1010 + 1;
                    if (!v1010)
                    {
                      goto LABEL_2581;
                    }

                    v1011 = *v1010;
                    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                    if ((v1710 & 1) == 0)
                    {
                      v1642 = *a3;
                      v1643 = *(a3 + 1);
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1644 = *(a3 + 3);
                      if (!v1644)
                      {
                        goto LABEL_2582;
                      }

                      if (!v1643)
                      {
                        goto LABEL_2582;
                      }

                      (*(*v1644 + 16))(v1644, v1642);
                      if ((v1710 & 1) == 0)
                      {
                        goto LABEL_2582;
                      }
                    }

                    *buf = v1707;
                    *&buf[4] = v1704;
                    *&buf[8] = v997;
                    *&buf[12] = v999;
                    *&buf[16] = v1001;
                    *&buf[20] = v1003;
                    *&buf[24] = v1005;
                    *&buf[28] = v1007;
                    *&buf[32] = v1009;
                    *&buf[36] = v1011;
                    *&buf[40] = *v1709;
                    LOBYTE(v1717) = 1;
                    WebKit::RemoteGraphicsContextGL::texSubImage3D0(this);
                    goto LABEL_461;
                  case 0x523:
                    v523 = *(a3 + 1);
                    v1055 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1056 = *a3;
                    v1057 = v1055 - *a3;
                    v17 = v523 >= v1057;
                    v1058 = v523 - v1057;
                    if (!v17 || v1058 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1055 + 1;
                    if (!v1055)
                    {
                      goto LABEL_3023;
                    }

                    v1059 = *v1055;
                    v1060 = ((v1055 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1060 - v1056 || v523 - (v1060 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1060 + 1;
                    if (!v1060)
                    {
                      goto LABEL_3023;
                    }

                    v1061 = *v1060;
                    v1062 = ((v1060 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1062 - v1056 || v523 - (v1062 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1062 + 1;
                    if (!v1062)
                    {
                      goto LABEL_3023;
                    }

                    v1063 = *v1062;
                    v1064 = ((v1062 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1064 - v1056 || v523 - (v1064 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1064 + 1;
                    if (!v1064)
                    {
                      goto LABEL_3023;
                    }

                    v1065 = *v1064;
                    v1066 = ((v1064 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1066 - v1056 || v523 - (v1066 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1066 + 1;
                    if (!v1066)
                    {
                      goto LABEL_3023;
                    }

                    v1067 = *v1066;
                    v1068 = ((v1066 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1068 - v1056 || v523 - (v1068 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1068 + 1;
                    if (!v1068)
                    {
                      goto LABEL_3023;
                    }

                    v1069 = *v1068;
                    v1070 = ((v1068 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1070 - v1056 || v523 - (v1070 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1070 + 1;
                    if (!v1070)
                    {
                      goto LABEL_3023;
                    }

                    v1071 = *v1070;
                    v1072 = ((v1070 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1072 - v1056 || v523 - (v1072 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1072 + 1;
                    if (!v1072)
                    {
                      goto LABEL_3023;
                    }

                    v1073 = *v1072;
                    v1074 = ((v1072 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1074 - v1056 || v523 - (v1074 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1074 + 1;
                    if (!v1074)
                    {
                      goto LABEL_3023;
                    }

                    v1075 = *v1074;
                    v1076 = ((v1074 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v523 < v1076 - v1056 || v523 - (v1076 - v1056) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1076 + 1;
                    if (!v1076)
                    {
                      goto LABEL_3023;
                    }

                    v1077 = *v1076;
                    v1078 = ((v1076 + 11) & 0xFFFFFFFFFFFFFFF8);
                    if (v523 < v1078 - v1056 || v523 - (v1078 - v1056) <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1078 + 1;
                    if (!v1078)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::texSubImage3D1(this, v1059, v1061, v1063, v1065, v1067, v1069, v1071, v1073, v1075, v1077, *v1078);
                    goto LABEL_461;
                  case 0x524:
                    v978 = *(a3 + 1);
                    v979 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v980 = v979 - *a3;
                    v17 = v978 >= v980;
                    v981 = v978 - v980;
                    if (v17 && v981 > 3)
                    {
                      *(a3 + 2) = v979 + 1;
                      if (v979)
                      {
                        v982 = *v979;
                        IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v1709);
                        if ((v1710 & 1) == 0)
                        {
                          v1574 = *a3;
                          v1575 = *(a3 + 1);
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1576 = *(a3 + 3);
                          if (!v1576)
                          {
                            goto LABEL_2830;
                          }

                          if (!v1575)
                          {
                            goto LABEL_2830;
                          }

                          (*(*v1576 + 16))(v1576, v1574);
                          if ((v1710 & 1) == 0)
                          {
                            goto LABEL_2830;
                          }
                        }

                        v983 = *(a3 + 1);
                        v984 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                        v985 = *a3;
                        v986 = v984 - *a3;
                        v17 = v983 >= v986;
                        v987 = v983 - v986;
                        if (v17 && v987 > 3)
                        {
                          *(a3 + 2) = v984 + 1;
                          if (v984)
                          {
                            v988 = *v984;
                            *buf = v982;
                            *&buf[8] = v1709[0];
                            v989 = v1709[1];
                            v1709[0] = 0;
                            v1709[1] = 0;
                            *&buf[16] = v989;
                            *&buf[24] = v988;
                            buf[32] = 1;
                            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1709, v985);
                            WebKit::RemoteGraphicsContextGL::transformFeedbackVaryings(this, v982);
                            if ((buf[32] & 1) == 0)
                            {
                              goto LABEL_461;
                            }

                            goto LABEL_1864;
                          }

                          goto LABEL_3096;
                        }

                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v1667 = *(a3 + 3);
                        if (v1667)
                        {
                          if (v983)
                          {
                            (*(*v1667 + 16))(v1667);
                            v985 = *a3;
                            v983 = *(a3 + 1);
LABEL_3096:
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1668 = *(a3 + 3);
                            if (v1668 && v983)
                            {
                              (*(*v1668 + 16))(v1668);
                            }

                            if (v1710)
                            {
                              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1709, v985);
                            }

                            goto LABEL_2830;
                          }
                        }

                        else
                        {
                          v983 = 0;
                        }

                        v985 = 0;
                        goto LABEL_3096;
                      }
                    }

                    else
                    {
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1665 = *(a3 + 3);
                      if (v1665)
                      {
                        if (v978)
                        {
                          (*(*v1665 + 16))(v1665);
                          v978 = *(a3 + 1);
                        }
                      }

                      else
                      {
                        v978 = 0;
                      }
                    }

                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1666 = *(a3 + 3);
                    if (v1666 && v978)
                    {
                      (*(*v1666 + 16))(v1666);
                    }

LABEL_2830:
                    v1397 = *a3;
                    v1577 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1399 = *(a3 + 3);
                    if (v1399 && v1577)
                    {
                      goto LABEL_2926;
                    }

                    goto LABEL_461;
                  case 0x529:
                    v523 = *(a3 + 1);
                    v1028 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1029 = *a3;
                    v1030 = v1028 - *a3;
                    v17 = v523 >= v1030;
                    v1031 = v523 - v1030;
                    if (!v17 || v1031 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1028 + 4;
                    if (!v1028)
                    {
                      goto LABEL_3023;
                    }

                    v1032 = (v1028 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1032 - v1029 || v523 - (v1032 - v1029) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1032 + 4;
                    if (!v1032)
                    {
                      goto LABEL_3023;
                    }

                    v6 = *(this + 7);
                    if (v6)
                    {
                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform1ui(v6);
                      goto LABEL_1173;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform1ui(0);
                    goto LABEL_461;
                  case 0x52A:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform1uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform1uiv();
                    goto LABEL_461;
                  case 0x52F:
                    v523 = *(a3 + 1);
                    v972 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v973 = *a3;
                    v974 = v972 - *a3;
                    v17 = v523 >= v974;
                    v975 = v523 - v974;
                    if (!v17 || v975 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v972 + 4;
                    if (!v972)
                    {
                      goto LABEL_3023;
                    }

                    v976 = (v972 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v976 - v973 || v523 - (v976 - v973) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v976 + 4;
                    if (!v976)
                    {
                      goto LABEL_3023;
                    }

                    v977 = (v976 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v977 - v973 || v523 - (v977 - v973) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v977 + 4;
                    if (!v977)
                    {
                      goto LABEL_3023;
                    }

                    v6 = *(this + 7);
                    if (v6)
                    {
                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform2ui(v6);
                      goto LABEL_1173;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform2ui(0);
                    goto LABEL_461;
                  case 0x530:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform2uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform2uiv();
                    goto LABEL_461;
                  case 0x535:
                    v523 = *(a3 + 1);
                    v1012 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1013 = *a3;
                    v1014 = v1012 - *a3;
                    v17 = v523 >= v1014;
                    v1015 = v523 - v1014;
                    if (!v17 || v1015 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1012 + 4;
                    if (!v1012)
                    {
                      goto LABEL_3023;
                    }

                    v1016 = (v1012 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1016 - v1013 || v523 - (v1016 - v1013) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1016 + 4;
                    if (!v1016)
                    {
                      goto LABEL_3023;
                    }

                    v1017 = (v1016 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1017 - v1013 || v523 - (v1017 - v1013) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1017 + 4;
                    if (!v1017)
                    {
                      goto LABEL_3023;
                    }

                    v1018 = (v1017 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1018 - v1013 || v523 - (v1018 - v1013) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1018 + 4;
                    if (!v1018)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::uniform3ui(this);
                    goto LABEL_461;
                  case 0x536:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform3uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform3uiv();
                    goto LABEL_461;
                  case 0x53B:
                    v523 = *(a3 + 1);
                    v1079 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1080 = *a3;
                    v1081 = v1079 - *a3;
                    v17 = v523 >= v1081;
                    v1082 = v523 - v1081;
                    if (!v17 || v1082 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1079 + 4;
                    if (!v1079)
                    {
                      goto LABEL_3023;
                    }

                    v1083 = (v1079 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1083 - v1080 || v523 - (v1083 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1083 + 4;
                    if (!v1083)
                    {
                      goto LABEL_3023;
                    }

                    v1084 = (v1083 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1084 - v1080 || v523 - (v1084 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1084 + 4;
                    if (!v1084)
                    {
                      goto LABEL_3023;
                    }

                    v1085 = (v1084 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1085 - v1080 || v523 - (v1085 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1085 + 4;
                    if (!v1085)
                    {
                      goto LABEL_3023;
                    }

                    v1086 = (v1085 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1086 - v1080 || v523 - (v1086 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1086 + 4;
                    if (!v1086)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::uniform4ui(this);
                    goto LABEL_461;
                  case 0x53C:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform4uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform4uiv();
                    goto LABEL_461;
                  case 0x53D:
                    v962 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                    if ((v963 & 0x100000000) == 0)
                    {
                      goto LABEL_461;
                    }

                    *buf = v962;
                    if (v962 > 0xFFFFFFFD)
                    {
                      goto LABEL_461;
                    }

                    if (v962)
                    {
                      *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                    }

                    v1101 = *(this + 7);
                    if (v1101)
                    {
                      ++*(v1101 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformBlockBinding(v1101);
                      goto LABEL_2116;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformBlockBinding(0);
                    goto LABEL_461;
                  case 0x53F:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix2x3fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix2x3fv();
                    goto LABEL_461;
                  case 0x540:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix2x4fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix2x4fv();
                    goto LABEL_461;
                  case 0x542:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix3x2fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix3x2fv();
                    goto LABEL_461;
                  case 0x543:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix3x4fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix3x4fv();
                    goto LABEL_461;
                  case 0x545:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix4x2fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix4x2fv();
                    goto LABEL_461;
                  case 0x546:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v262 = *(this + 7);
                    if (v262)
                    {
                      ++*(v262 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix4x3fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix4x3fv();
                    goto LABEL_461;
                  case 0x552:
                    v523 = *(a3 + 1);
                    v964 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v965 = *a3;
                    v966 = v964 - *a3;
                    v17 = v523 >= v966;
                    v967 = v523 - v966;
                    if (!v17 || v967 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v964 + 4;
                    if (!v964)
                    {
                      goto LABEL_3023;
                    }

                    v968 = (v964 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v968 - v965 || v523 - (v968 - v965) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v968 + 4;
                    if (!v968)
                    {
                      goto LABEL_3023;
                    }

                    v969 = (v968 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v969 - v965 || v523 - (v969 - v965) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v969 + 4;
                    if (!v969)
                    {
                      goto LABEL_3023;
                    }

                    v970 = (v969 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v970 - v965 || v523 - (v970 - v965) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v970 + 4;
                    if (!v970)
                    {
                      goto LABEL_3023;
                    }

                    v971 = (v970 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v971 - v965 || v523 - (v971 - v965) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v971 + 4;
                    if (!v971)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::vertexAttribI4i(this);
                    goto LABEL_461;
                  case 0x553:
                    v263 = *(a3 + 1);
                    v956 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v957 = v956 - *a3;
                    v17 = v263 >= v957;
                    v958 = v263 - v957;
                    if (!v17 || v958 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v956 + 1;
                    if (!v956)
                    {
                      goto LABEL_2581;
                    }

                    v959 = *v956;
                    v960 = IPC::Decoder::decode<std::span<int const,4ul>>(a3);
                    if ((v961 & 1) == 0)
                    {
                      goto LABEL_2582;
                    }

                    *buf = v959;
                    *&buf[8] = v960;
                    buf[16] = 1;
                    WebKit::RemoteGraphicsContextGL::vertexAttribI4iv(this);
                    goto LABEL_461;
                  case 0x554:
                    IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                    if (buf[20] == 1)
                    {
                      WebKit::RemoteGraphicsContextGL::vertexAttribI4ui(this);
                    }

                    goto LABEL_461;
                  case 0x555:
                    v263 = *(a3 + 1);
                    v1087 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1088 = *a3;
                    v1089 = v1087 - *a3;
                    v17 = v263 >= v1089;
                    v1090 = v263 - v1089;
                    if (!v17 || v1090 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1087 + 1;
                    if (!v1087)
                    {
                      goto LABEL_2581;
                    }

                    v1091 = *v1087;
                    v1092 = (v1087 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v263 < v1092 - v1088 || v263 - (v1092 - v1088) <= 0xF)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1092 + 16;
                    if (!v1092)
                    {
                      goto LABEL_2581;
                    }

                    *buf = v1091;
                    *&buf[8] = v1092;
                    buf[16] = 1;
                    WebKit::RemoteGraphicsContextGL::vertexAttribI4uiv(this);
                    goto LABEL_461;
                  case 0x556:
                    v523 = *(a3 + 1);
                    v1093 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1094 = *a3;
                    v1095 = v1093 - *a3;
                    v17 = v523 >= v1095;
                    v1096 = v523 - v1095;
                    if (!v17 || v1096 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1093 + 4;
                    if (!v1093)
                    {
                      goto LABEL_3023;
                    }

                    v1097 = (v1093 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1097 - v1094 || v523 - (v1097 - v1094) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1097 + 4;
                    if (!v1097)
                    {
                      goto LABEL_3023;
                    }

                    v1098 = (v1097 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1098 - v1094 || v523 - (v1098 - v1094) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1098 + 4;
                    if (!v1098)
                    {
                      goto LABEL_3023;
                    }

                    v1099 = (v1098 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v523 < v1099 - v1094 || v523 - (v1099 - v1094) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1099 + 4;
                    if (!v1099)
                    {
                      goto LABEL_3023;
                    }

                    v1100 = (v1099 + 11) & 0xFFFFFFFFFFFFFFF8;
                    if (v523 < v1100 - v1094 || v523 - (v1100 - v1094) <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1100 + 8;
                    if (!v1100)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::vertexAttribIPointer(this);
                    goto LABEL_461;
                  case 0x559:
                    v523 = *(a3 + 1);
                    v949 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
                    v950 = *a3;
                    v951 = v949 - *a3;
                    v17 = v523 >= v951;
                    v952 = v523 - v951;
                    if (!v17 || v952 <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v949 + 1;
                    if (!v949)
                    {
                      goto LABEL_3023;
                    }

                    v953 = *v949;
                    v954 = (v949 + 11) & 0xFFFFFFFFFFFFFFF8;
                    if (v523 < v954 - v950 || v523 - (v954 - v950) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v954 | 4;
                    if (!v954)
                    {
                      goto LABEL_3023;
                    }

                    IPC::Decoder::decode<long long>(a3);
                    if ((v955 & 1) == 0)
                    {
                      goto LABEL_3024;
                    }

                    WebKit::RemoteGraphicsContextGL::waitSync(this, v953);
                    goto LABEL_461;
                  default:
                    if (v5 != 1291)
                    {
                      goto LABEL_1493;
                    }

                    v764 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
                    if ((v765 & 0x100000000) == 0)
                    {
                      goto LABEL_461;
                    }

                    *buf = v764;
                    if (v764 > 0xFFFFFFFD)
                    {
                      goto LABEL_461;
                    }

                    if (v764)
                    {
                      *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                    }

                    v1101 = *(this + 7);
                    if (v1101)
                    {
                      ++*(v1101 + 2);
                      WebCore::GraphicsContextGLANGLE::samplerParameteri(v1101);
                      goto LABEL_2116;
                    }

                    WebCore::GraphicsContextGLANGLE::samplerParameteri(0);
                    goto LABEL_461;
                }
              }

              v689 = *(a3 + 1);
              v690 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v691 = *a3;
              v692 = v690 - *a3;
              v17 = v689 >= v692;
              v693 = v689 - v692;
              if (!v17 || v693 <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v690 + 1;
              if (!v690)
              {
                goto LABEL_2835;
              }

              v694 = *v690;
              v695 = ((v690 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v695 - v691 || v689 - (v695 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v695 + 1;
              if (!v695)
              {
                goto LABEL_2835;
              }

              v696 = *v695;
              v697 = ((v695 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v697 - v691 || v689 - (v697 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v697 + 1;
              if (!v697)
              {
                goto LABEL_2835;
              }

              v698 = *v697;
              v699 = ((v697 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v699 - v691 || v689 - (v699 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v699 + 1;
              if (!v699)
              {
                goto LABEL_2835;
              }

              v700 = *v699;
              v701 = ((v699 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v701 - v691 || v689 - (v701 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v701 + 1;
              if (!v701)
              {
                goto LABEL_2835;
              }

              v702 = *v701;
              v703 = ((v701 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v703 - v691 || v689 - (v703 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v703 + 1;
              if (!v703)
              {
                goto LABEL_2835;
              }

              v704 = *v703;
              v705 = ((v703 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v705 - v691 || v689 - (v705 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v705 + 1;
              if (!v705)
              {
                goto LABEL_2835;
              }

              v706 = *v705;
              v707 = ((v705 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v689 < v707 - v691 || v689 - (v707 - v691) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v707 + 1;
              if (v707)
              {
                v708 = *v707;
                v709 = ((v707 + 11) & 0xFFFFFFFFFFFFFFF8);
                if (v689 < v709 - v691 || v689 - (v709 - v691) <= 7)
                {
LABEL_2833:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1578 = *(a3 + 3);
                  if (v1578)
                  {
                    if (v689)
                    {
                      (*(*v1578 + 16))(v1578);
                      v689 = *(a3 + 1);
                    }
                  }

                  else
                  {
                    v689 = 0;
                  }
                }

                else
                {
                  *(a3 + 2) = v709 + 1;
                  if (v709)
                  {
                    WebKit::RemoteGraphicsContextGL::compressedTexSubImage2D1(this, v694, v696, v698, v700, v702, v704, v706, v708, *v709);
                    goto LABEL_461;
                  }
                }
              }

LABEL_2835:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1579 = *(a3 + 3);
              if (v1579 && v689)
              {
                (*(*v1579 + 16))(v1579);
              }

              v733 = *a3;
              v734 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v735 = *(a3 + 3);
              if (!v735)
              {
                goto LABEL_461;
              }

              goto LABEL_2887;
          }
        }

        if (*(a3 + 25) <= 0x4ACu)
        {
          if (v5 != 1182)
          {
            if (v5 == 1183)
            {
              v263 = *(a3 + 1);
              v293 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v294 = v293 - *a3;
              v17 = v263 >= v294;
              v295 = v263 - v294;
              if (v17 && v295 > 3)
              {
                *(a3 + 2) = v293 + 1;
                if (!v293)
                {
                  goto LABEL_2581;
                }

                v296 = *v293;
                IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                if ((v1710 & 1) == 0)
                {
                  v1548 = *a3;
                  v1549 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1550 = *(a3 + 3);
                  if (!v1550)
                  {
                    goto LABEL_2582;
                  }

                  if (!v1549)
                  {
                    goto LABEL_2582;
                  }

                  (*(*v1550 + 16))(v1550, v1548);
                  if ((v1710 & 1) == 0)
                  {
                    goto LABEL_2582;
                  }
                }

                v263 = *(a3 + 1);
                v297 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                v298 = v297 - *a3;
                v17 = v263 >= v298;
                v299 = v263 - v298;
                if (v17 && v299 > 3)
                {
                  *(a3 + 2) = v297 + 1;
                  if (v297)
                  {
                    v300 = *v297;
                    *buf = v296;
                    *&buf[8] = *v1709;
                    *&buf[24] = v300;
                    buf[32] = 1;
                    WebKit::RemoteGraphicsContextGL::bufferData1(this);
                    goto LABEL_461;
                  }

                  goto LABEL_2581;
                }
              }

              goto LABEL_2579;
            }

            if (v5 == 1184)
            {
              v263 = *(a3 + 1);
              v264 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v265 = *a3;
              v266 = v264 - *a3;
              v17 = v263 >= v266;
              v267 = v263 - v266;
              if (v17 && v267 > 3)
              {
                *(a3 + 2) = v264 + 1;
                if (!v264)
                {
                  goto LABEL_2581;
                }

                v268 = *v264;
                v269 = ((v264 + 11) & 0xFFFFFFFFFFFFFFF8);
                if (v263 >= v269 - v265 && v263 - (v269 - v265) > 7)
                {
                  *(a3 + 2) = v269 + 1;
                  if (v269)
                  {
                    v270 = *v269;
                    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                    if (v1710 & 1) != 0 || (v1545 = *a3, v1546 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1547 = *(a3 + 3)) != 0) && v1546 && ((*(*v1547 + 16))(v1547, v1545), (v1710))
                    {
                      *buf = v268;
                      *&buf[8] = v270;
                      *&buf[16] = *v1709;
                      buf[32] = 1;
                      WebKit::RemoteGraphicsContextGL::bufferSubData(this);
                      goto LABEL_461;
                    }

                    goto LABEL_2582;
                  }

                  goto LABEL_2581;
                }
              }

              goto LABEL_2579;
            }

            goto LABEL_674;
          }

          v320 = *(a3 + 1);
          v321 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v322 = *a3;
          v323 = v321 - *a3;
          v17 = v320 >= v323;
          v324 = v320 - v323;
          if (v17 && v324 > 3)
          {
            *(a3 + 2) = v321 + 4;
            if (!v321)
            {
              goto LABEL_2929;
            }

            v326 = (v321 + 11) & 0xFFFFFFFFFFFFFFF8;
            if (v320 >= v326 - v322 && v320 - (v326 - v322) > 7)
            {
              *(a3 + 2) = v326 + 8;
              if (!v326)
              {
                goto LABEL_2929;
              }

              v328 = (v326 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v320 >= v328 - v322 && v320 - (v328 - v322) > 3)
              {
                *(a3 + 2) = v328 | 4;
                if (v328)
                {
                  WebKit::RemoteGraphicsContextGL::bufferData0(this);
                  goto LABEL_461;
                }

                goto LABEL_2929;
              }
            }
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v1618 = *(a3 + 3);
          if (v1618)
          {
            if (v320)
            {
              (*(*v1618 + 16))(v1618);
              v320 = *(a3 + 1);
            }
          }

          else
          {
            v320 = 0;
          }

LABEL_2929:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1619 = *(a3 + 3);
          if (v1619 && v320)
          {
            (*(*v1619 + 16))(v1619);
          }

          v733 = *a3;
          v734 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v735 = *(a3 + 3);
          if (!v735)
          {
            goto LABEL_461;
          }

          goto LABEL_2887;
        }

        if (v5 == 1197)
        {
          v263 = *(a3 + 1);
          v329 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v330 = *a3;
          v331 = v329 - *a3;
          v17 = v263 >= v331;
          v332 = v263 - v331;
          if (v17 && v332 > 3)
          {
            *(a3 + 2) = v329 + 1;
            if (!v329)
            {
              goto LABEL_2581;
            }

            v334 = *v329;
            v335 = ((v329 + 7) & 0xFFFFFFFFFFFFFFFCLL);
            if (v263 >= v335 - v330 && v263 - (v335 - v330) > 3)
            {
              *(a3 + 2) = v335 + 1;
              if (!v335)
              {
                goto LABEL_2581;
              }

              v337 = *v335;
              v338 = ((v335 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 >= v338 - v330 && v263 - (v338 - v330) > 3)
              {
                *(a3 + 2) = v338 + 1;
                if (!v338)
                {
                  goto LABEL_2581;
                }

                v339 = *v338;
                v340 = ((v338 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                if (v263 >= v340 - v330 && v263 - (v340 - v330) > 3)
                {
                  *(a3 + 2) = v340 + 1;
                  if (!v340)
                  {
                    goto LABEL_2581;
                  }

                  v341 = *v340;
                  v342 = ((v340 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                  if (v263 >= v342 - v330 && v263 - (v342 - v330) > 3)
                  {
                    *(a3 + 2) = v342 + 1;
                    if (!v342)
                    {
                      goto LABEL_2581;
                    }

                    v343 = *v342;
                    v344 = ((v342 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 >= v344 - v330 && v263 - (v344 - v330) > 3)
                    {
                      *(a3 + 2) = v344 + 1;
                      if (!v344)
                      {
                        goto LABEL_2581;
                      }

                      v345 = *v344;
                      v346 = ((v344 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                      if (v263 >= v346 - v330 && v263 - (v346 - v330) > 3)
                      {
                        *(a3 + 2) = v346 + 1;
                        if (v346)
                        {
                          v347 = *v346;
                          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                          if (v1710 & 1) != 0 || (v1551 = *a3, v1552 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1553 = *(a3 + 3)) != 0) && v1552 && ((*(*v1553 + 16))(v1553, v1551), (v1710))
                          {
                            *buf = v334;
                            *&buf[4] = v337;
                            *&buf[8] = v339;
                            *&buf[12] = v341;
                            *&buf[16] = v343;
                            *&buf[20] = v345;
                            *&buf[24] = v347;
                            *&buf[32] = *v1709;
                            buf[48] = 1;
                            WebKit::RemoteGraphicsContextGL::compressedTexImage2D0(this);
                            goto LABEL_461;
                          }

                          goto LABEL_2582;
                        }

                        goto LABEL_2581;
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_2579;
        }

        if (v5 != 1198)
        {
          if (v5 == 1201)
          {
            v263 = *(a3 + 1);
            v271 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v272 = *a3;
            v273 = v271 - *a3;
            v17 = v263 >= v273;
            v274 = v263 - v273;
            if (v17 && v274 > 3)
            {
              *(a3 + 2) = v271 + 1;
              if (!v271)
              {
                goto LABEL_2581;
              }

              v275 = *v271;
              v276 = ((v271 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v263 >= v276 - v272 && v263 - (v276 - v272) > 3)
              {
                *(a3 + 2) = v276 + 1;
                if (!v276)
                {
                  goto LABEL_2581;
                }

                v277 = *v276;
                v278 = ((v276 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                if (v263 >= v278 - v272 && v263 - (v278 - v272) > 3)
                {
                  *(a3 + 2) = v278 + 1;
                  if (!v278)
                  {
                    goto LABEL_2581;
                  }

                  v279 = *v278;
                  v280 = ((v278 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                  if (v263 >= v280 - v272 && v263 - (v280 - v272) > 3)
                  {
                    *(a3 + 2) = v280 + 1;
                    if (!v280)
                    {
                      goto LABEL_2581;
                    }

                    v281 = *v280;
                    v282 = ((v280 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v263 >= v282 - v272 && v263 - (v282 - v272) > 3)
                    {
                      *(a3 + 2) = v282 + 1;
                      if (!v282)
                      {
                        goto LABEL_2581;
                      }

                      v283 = *v282;
                      v284 = ((v282 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                      if (v263 >= v284 - v272 && v263 - (v284 - v272) > 3)
                      {
                        *(a3 + 2) = v284 + 1;
                        if (!v284)
                        {
                          goto LABEL_2581;
                        }

                        v285 = *v284;
                        v286 = ((v284 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v263 >= v286 - v272 && v263 - (v286 - v272) > 3)
                        {
                          *(a3 + 2) = v286 + 1;
                          if (!v286)
                          {
                            goto LABEL_2581;
                          }

                          v287 = *v286;
                          v288 = ((v286 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v263 >= v288 - v272 && v263 - (v288 - v272) > 3)
                          {
                            *(a3 + 2) = v288 + 1;
                            if (v288)
                            {
                              v289 = *v288;
                              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1709);
                              if (v1710 & 1) != 0 || (v1554 = *a3, v1555 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1556 = *(a3 + 3)) != 0) && v1555 && ((*(*v1556 + 16))(v1556, v1554), (v1710))
                              {
                                *buf = v275;
                                *&buf[4] = v277;
                                *&buf[8] = v279;
                                *&buf[12] = v281;
                                *&buf[16] = v283;
                                *&buf[20] = v285;
                                *&buf[24] = v287;
                                *&buf[28] = v289;
                                *&buf[32] = *v1709;
                                buf[48] = 1;
                                WebKit::RemoteGraphicsContextGL::compressedTexSubImage2D0(this);
                                goto LABEL_461;
                              }

                              goto LABEL_2582;
                            }

                            goto LABEL_2581;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_2579;
          }

          goto LABEL_674;
        }

        v301 = *(a3 + 1);
        v302 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v303 = *a3;
        v304 = v302 - *a3;
        v17 = v301 >= v304;
        v305 = v301 - v304;
        if (!v17 || v305 <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v302 + 1;
        if (!v302)
        {
          goto LABEL_2816;
        }

        v306 = *v302;
        v307 = ((v302 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v301 < v307 - v303 || v301 - (v307 - v303) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v307 + 1;
        if (!v307)
        {
          goto LABEL_2816;
        }

        v308 = *v307;
        v309 = ((v307 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v301 < v309 - v303 || v301 - (v309 - v303) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v309 + 1;
        if (!v309)
        {
          goto LABEL_2816;
        }

        v310 = *v309;
        v311 = ((v309 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v301 < v311 - v303 || v301 - (v311 - v303) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v311 + 1;
        if (!v311)
        {
          goto LABEL_2816;
        }

        v312 = *v311;
        v313 = ((v311 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v301 < v313 - v303 || v301 - (v313 - v303) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v313 + 1;
        if (!v313)
        {
          goto LABEL_2816;
        }

        v314 = *v313;
        v315 = ((v313 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v301 < v315 - v303 || v301 - (v315 - v303) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v315 + 1;
        if (!v315)
        {
          goto LABEL_2816;
        }

        v316 = *v315;
        v317 = ((v315 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v301 < v317 - v303 || v301 - (v317 - v303) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v317 + 1;
        if (v317)
        {
          v318 = *v317;
          v319 = ((v317 + 11) & 0xFFFFFFFFFFFFFFF8);
          if (v301 < v319 - v303 || v301 - (v319 - v303) <= 7)
          {
LABEL_2814:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1566 = *(a3 + 3);
            if (v1566)
            {
              if (v301)
              {
                (*(*v1566 + 16))(v1566);
                v301 = *(a3 + 1);
              }
            }

            else
            {
              v301 = 0;
            }
          }

          else
          {
            *(a3 + 2) = v319 + 1;
            if (v319)
            {
              WebKit::RemoteGraphicsContextGL::compressedTexImage2D1(this, v306, v308, v310, v312, v314, v316, v318, *v319);
              goto LABEL_461;
            }
          }
        }

LABEL_2816:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1567 = *(a3 + 3);
        if (v1567 && v301)
        {
          (*(*v1567 + 16))(v1567);
        }

        v733 = *a3;
        v734 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v735 = *(a3 + 3);
        if (!v735)
        {
          goto LABEL_461;
        }

        goto LABEL_2887;
    }
  }

  v7 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a3 + 25);
    if (v11 >= 0x107F)
    {
      v11 = 4223;
    }

    v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteGraphicsContextGL", buf, 0xCu);
  }

  v8 = *a3;
  v9 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v10 = *(a3 + 3);
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10, v8);
  }
}