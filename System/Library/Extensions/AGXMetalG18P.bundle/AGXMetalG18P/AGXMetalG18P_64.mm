void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = a2;
  if (a3 <= a2)
  {
    v10 = a6 - a2;
  }

  else
  {
    v10 = a3 - a2;
  }

  {
    v14 = a5;
    v15 = a4;
    v17 = a7;
    a7 = v17;
    a4 = v15;
    a5 = v14;
    if (v16)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(unsigned int,unsigned int,unsigned int,unsigned long long,unsigned char const*,unsigned long,BOOL)::constCalcInlineThreshold = 256;
      a7 = v17;
      a4 = v15;
      a5 = v14;
    }
  }

  if (v10 > AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(unsigned int,unsigned int,unsigned int,unsigned long long,unsigned char const*,unsigned long,BOOL)::constCalcInlineThreshold || (a7 & 1) != 0)
  {
    *(a1 + 288) = v9 + a4;
  }

  else
  {
    v11 = (a5 + v9);
    v12 = &v11[v10];
    v21 = 0;
    v19 = 0u;
    *v20 = 0u;
    *&v20[12] = 0x300000072;
    AGXIotoInstruction_NOP_0::emit(&v19, v18);
    do
    {
      v13 = v12;
      if (v11 >= v12)
      {
        break;
      }

      v12 -= 2;
    }

    while (*v18 == *(v13 - 1));
    if (*(a1 + 40) - *(a1 + 24) < v10)
    {
      operator new();
    }

    std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1 + 24, *(a1 + 32), v11, v13, v13 - v11);
    *(a1 + 296) = v13 - v11;
  }

  *(a1 + 280) = a2;
}

void AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitUscStateLoad<LdShdrTransformFragment<AGX::HAL300::Encoders>>(uint64_t a1, char *__dst, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, *a1, *(a1 + 8) - *a1);
  if (*(a1 + 272) == 1)
  {
    v14.i64[0] = a4;
    v14.i64[1] = a4 >> 5;
    *&__dst[*(a1 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&__dst[*(a1 + 276)], vshlq_u8(vqtbl1q_s8(v14, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  if (a5)
  {
    v15 = *(a1 + 224);
    for (i = *(a1 + 232); v15 != i; v15 += 3)
    {
      v17.i64[0] = *(a5 + 8 * v15[1]) + *v15;
      v17.i64[1] = v17.i64[0] >> 5;
      *&__dst[v15[2]] = vbslq_s8(xmmword_29D2F17C0, *&__dst[v15[2]], vshlq_u8(vqtbl1q_s8(v17, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }
  }

  if (a6)
  {
    v18 = *(a1 + 248);
    for (j = *(a1 + 256); v18 != j; v18 += 3)
    {
      v20.i64[0] = *(a6 + 8 * v18[1]) + *v18;
      v20.i64[1] = v20.i64[0] >> 5;
      *&__dst[v18[2]] = vbslq_s8(xmmword_29D2F17C0, *&__dst[v18[2]], vshlq_u8(vqtbl1q_s8(v20, xmmword_29D2F17A0), xmmword_29D2F17B0));
    }
  }

  if (!*(a1 + 312))
  {
    v21 = &__dst[*(a1 + 316)];
    if (*(a7 + 12) == 1 && *(a7 + 20) == 1 && *(a7 + 28) == 1)
    {
      v22 = (*(a7 + 16) + 3) >> 2;
      v23 = (((*(a7 + 24) + 3) >> 2) + 1) & 0x7FFFFFFE;
      AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(v26, v21 + 18);
      v24 = v27;
      v25 = v28 & 0xFFF;
      if (v27 <= v22)
      {
        v24 = v22;
      }

      if (v25 <= v23)
      {
        v25 = v23;
      }

      *(v21 + 9) = *(v21 + 9) & 0x1F | (32 * ((v25 >> 1) & 0x7FF));
      *(v21 + 12) = v24;
    }

    *v21 = *(a7 + 58);
  }

  if (a3)
  {
    *a3 = &__dst[*(a1 + 8) - *a1];
  }
}

void AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(AGXIotoInstruction_SPECTPR_0 *this, const unsigned __int8 *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *this = 0u;
  *(this + 28) = 0x3000000A6;
  v2 = *a2;
  *(this + 36) = (v2 << 28) & 0xFFE00000000;
  v3 = *(a2 + 3) | ((v2 >> 5) << 33);
  *(this + 36) = v3;
  *(this + 36) = v3 | (*(a2 + 4) << 16);
  *(this + 44) = (*(a2 + 1) >> 1) & 0x7C | (*a2 >> 3) & 3;
  LODWORD(v3) = *(a2 + 1);
  *(this + 12) = (v3 >> 12) & 1;
  *this = v3 >> 15;
  LODWORD(v3) = (*(a2 + 1) >> 7) & 0x180;
  *(this + 24) = v3;
  LODWORD(v3) = v3 | (*(a2 + 1) >> 7) & 0x40;
  *(this + 24) = v3;
  LODWORD(v3) = v3 | (*(a2 + 2) >> 10) & 0x20;
  *(this + 24) = v3;
  LODWORD(v3) = v3 | (*(a2 + 2) >> 10) & 0x10;
  *(this + 24) = v3;
  LODWORD(v3) = v3 | (*(a2 + 2) >> 10) & 8;
  *(this + 24) = v3;
  LODWORD(v3) = v3 | (*(a2 + 2) >> 10) & 4;
  *(this + 24) = v3;
  LODWORD(v3) = v3 | (*(a2 + 2) >> 10) & 2;
  *(this + 24) = v3;
  *(this + 24) = v3 & 0xFE | ((*(a2 + 2) & 0x400) != 0);
  v4 = *(a2 + 2);
  if ((v4 >> 2) <= 0xF2u)
  {
    switch((v4 >> 2))
    {
      case 1u:
        *(this + 1) = 0;
        *(this + 2) = 0;
        *(this + 1) = 2;
        return;
      case 2u:
        goto LABEL_63;
      case 3u:
        goto LABEL_325;
      case 4u:
        *(this + 1) = 0;
        *(this + 2) = 0;
        *(this + 1) = 1;
        return;
      case 5u:
        goto LABEL_157;
      case 6u:
        goto LABEL_267;
      case 7u:
        goto LABEL_287;
      case 8u:
        goto LABEL_247;
      case 9u:
        goto LABEL_53;
      case 0xAu:
        goto LABEL_41;
      case 0xBu:
        goto LABEL_123;
      case 0xCu:
        goto LABEL_284;
      case 0xDu:
        goto LABEL_78;
      case 0xEu:
        goto LABEL_48;
      case 0xFu:
        goto LABEL_309;
      case 0x10u:
        goto LABEL_240;
      case 0x11u:
        goto LABEL_184;
      case 0x12u:
        goto LABEL_164;
      case 0x13u:
        goto LABEL_261;
      case 0x14u:
        goto LABEL_306;
      case 0x15u:
        goto LABEL_322;
      case 0x16u:
        goto LABEL_90;
      case 0x17u:
        goto LABEL_214;
      case 0x18u:
        goto LABEL_60;
      case 0x19u:
        goto LABEL_250;
      case 0x1Au:
        goto LABEL_237;
      case 0x1Bu:
        goto LABEL_297;
      case 0x1Cu:
        goto LABEL_315;
      case 0x1Du:
        goto LABEL_273;
      case 0x1Eu:
        goto LABEL_34;
      case 0x1Fu:
        goto LABEL_100;
      case 0x20u:
        goto LABEL_93;
      case 0x21u:
        goto LABEL_190;
      case 0x22u:
        goto LABEL_257;
      case 0x23u:
        goto LABEL_187;
      case 0x24u:
        goto LABEL_129;
      case 0x25u:
        goto LABEL_253;
      case 0x26u:
        goto LABEL_217;
      case 0x27u:
        goto LABEL_154;
      case 0x28u:
        *&v23 = 0x100000001;
        *(&v23 + 1) = 0x100000001;
        goto LABEL_326;
      case 0x29u:
        goto LABEL_210;
      case 0x2Au:
        goto LABEL_231;
      case 0x2Bu:
        goto LABEL_207;
      case 0x2Cu:
        goto LABEL_87;
      case 0x2Du:
        goto LABEL_228;
      case 0x2Eu:
        goto LABEL_200;
      case 0x2Fu:
        goto LABEL_83;
      case 0x30u:
        goto LABEL_180;
      case 0x31u:
        goto LABEL_204;
      case 0x32u:
        goto LABEL_243;
      case 0x33u:
        goto LABEL_225;
      case 0x34u:
        goto LABEL_222;
      case 0x35u:
        goto LABEL_71;
      case 0x36u:
        goto LABEL_234;
      case 0x37u:
        goto LABEL_113;
      case 0x38u:
        goto LABEL_116;
      case 0x39u:
        goto LABEL_270;
      case 0x3Au:
        goto LABEL_276;
      case 0x3Bu:
        goto LABEL_167;
      case 0x3Cu:
        goto LABEL_281;
      case 0x3Du:
        goto LABEL_293;
      case 0x3Eu:
        goto LABEL_318;
      case 0x3Fu:
        goto LABEL_150;
      case 0x40u:
        goto LABEL_312;
      case 0x41u:
        goto LABEL_126;
      case 0x42u:
        goto LABEL_290;
      case 0x43u:
        goto LABEL_170;
      case 0x44u:
        goto LABEL_109;
      case 0x45u:
        goto LABEL_145;
      case 0x46u:
        goto LABEL_175;
      case 0x47u:
        goto LABEL_300;
      case 0x48u:
        goto LABEL_303;
      case 0x49u:
        goto LABEL_136;
      case 0x4Au:
        goto LABEL_264;
      case 0x4Bu:
        goto LABEL_197;
      case 0x4Cu:
        goto LABEL_193;
      case 0x4Du:
        goto LABEL_133;
      case 0x4Eu:
        goto LABEL_119;
      case 0x4Fu:
        goto LABEL_139;
      case 0x50u:
        goto LABEL_142;
      case 0x51u:
        v35 = 1;
        goto LABEL_50;
      case 0x52u:
        v15 = 1;
        goto LABEL_23;
      case 0x53u:
        v21 = 1;
        goto LABEL_278;
      case 0x54u:
        v29 = 1;
        goto LABEL_324;
      case 0x55u:
        v7 = 1;
        goto LABEL_156;
      case 0x56u:
        v22 = 1;
        goto LABEL_62;
      case 0x57u:
        v28 = 1;
        goto LABEL_266;
      case 0x58u:
        v86 = 1;
        goto LABEL_286;
      case 0x59u:
        v65 = 1;
        goto LABEL_246;
      case 0x5Au:
        v30 = 1;
        goto LABEL_52;
      case 0x5Bu:
        v27 = 1;
        goto LABEL_40;
      case 0x5Cu:
        v48 = 1;
        goto LABEL_122;
      case 0x5Du:
        v9 = 1;
        goto LABEL_283;
      case 0x5Eu:
        v47 = 1;
        goto LABEL_77;
      case 0x5Fu:
        v10 = 1;
        goto LABEL_47;
      case 0x60u:
        v73 = 1;
        goto LABEL_308;
      case 0x61u:
        v63 = 1;
        goto LABEL_239;
      case 0x62u:
        v66 = 1;
        goto LABEL_183;
      case 0x63u:
        v37 = 1;
        goto LABEL_163;
      case 0x64u:
        v71 = 1;
        goto LABEL_260;
      case 0x65u:
        v62 = 1;
        goto LABEL_305;
      case 0x66u:
        v82 = 1;
        goto LABEL_321;
      case 0x67u:
        v46 = 1;
        goto LABEL_89;
      case 0x68u:
        v12 = 1;
        goto LABEL_213;
      case 0x69u:
        v17 = 1;
        goto LABEL_59;
      case 0x6Au:
        v84 = 1;
        goto LABEL_249;
      case 0x6Bu:
        v50 = 1;
        goto LABEL_236;
      case 0x6Cu:
        v41 = 1;
        goto LABEL_296;
      case 0x6Du:
        v85 = 1;
        goto LABEL_314;
      case 0x6Eu:
        v8 = 1;
        goto LABEL_272;
      case 0x6Fu:
        v5 = 1;
        goto LABEL_33;
      case 0x70u:
        v51 = 1;
        goto LABEL_99;
      case 0x71u:
        v55 = 1;
        goto LABEL_92;
      case 0x72u:
        v43 = 1;
        goto LABEL_189;
      case 0x73u:
        v61 = 1;
        goto LABEL_256;
      case 0x74u:
        v78 = 1;
        goto LABEL_186;
      case 0x75u:
        v53 = 1;
        goto LABEL_128;
      case 0x76u:
        v33 = 1;
        goto LABEL_252;
      case 0x77u:
        v6 = 1;
        goto LABEL_216;
      case 0x78u:
        v13 = 1;
        goto LABEL_153;
      case 0x79u:
        v58 = 1;
        goto LABEL_103;
      case 0x7Au:
        v24 = 1;
        goto LABEL_209;
      case 0x7Bu:
        v80 = 1;
        goto LABEL_230;
      case 0x7Cu:
        v40 = 1;
        goto LABEL_206;
      case 0x7Du:
        v45 = 1;
        goto LABEL_86;
      case 0x7Eu:
        v44 = 1;
        goto LABEL_227;
      case 0x7Fu:
        v49 = 1;
        goto LABEL_199;
      case 0x80u:
        v36 = 1;
        goto LABEL_82;
      case 0x81u:
        v39 = 1;
        goto LABEL_179;
      case 0x82u:
        v68 = 1;
        goto LABEL_203;
      case 0x83u:
        v77 = 1;
        goto LABEL_242;
      case 0x84u:
        v11 = 1;
        goto LABEL_224;
      case 0x85u:
        v16 = 1;
        goto LABEL_221;
      case 0x86u:
        v38 = 1;
        goto LABEL_70;
      case 0x87u:
        v42 = 1;
        goto LABEL_233;
      case 0x88u:
        v20 = 1;
        goto LABEL_112;
      case 0x89u:
        v26 = 1;
        goto LABEL_115;
      case 0x8Au:
        v83 = 1;
        goto LABEL_269;
      case 0x8Bu:
        v79 = 1;
        goto LABEL_275;
      case 0x8Cu:
        v34 = 1;
        goto LABEL_166;
      case 0x8Du:
        v70 = 1;
        goto LABEL_280;
      case 0x8Eu:
        v81 = 1;
        goto LABEL_292;
      case 0x8Fu:
        v75 = 1;
        goto LABEL_317;
      case 0x90u:
        v67 = 1;
        goto LABEL_149;
      case 0x91u:
        v52 = 1;
        goto LABEL_311;
      case 0x92u:
        v25 = 1;
        goto LABEL_125;
      case 0x93u:
        v54 = 1;
        goto LABEL_289;
      case 0x94u:
        v69 = 1;
        goto LABEL_169;
      case 0x95u:
        v31 = 1;
        goto LABEL_108;
      case 0x96u:
        v57 = 1;
        goto LABEL_144;
      case 0x97u:
        v19 = 1;
        goto LABEL_174;
      case 0x98u:
        v64 = 1;
        goto LABEL_299;
      case 0x99u:
        v76 = 1;
        goto LABEL_302;
      case 0x9Au:
        v32 = 1;
        goto LABEL_135;
      case 0x9Bu:
        v74 = 1;
        goto LABEL_263;
      case 0x9Cu:
        v72 = 1;
        goto LABEL_196;
      case 0x9Du:
        v60 = 1;
        goto LABEL_192;
      case 0x9Eu:
        v14 = 1;
        goto LABEL_132;
      case 0x9Fu:
        v18 = 1;
        goto LABEL_118;
      case 0xA0u:
        v56 = 1;
        goto LABEL_138;
      case 0xA1u:
        v59 = 1;
        goto LABEL_141;
      case 0xA2u:
        v35 = 2;
LABEL_50:
        *(this + 5) = v35;
        *(this + 12) = 0;
        *(this + 4) = 0;
        return;
      case 0xA3u:
        v15 = 2;
LABEL_23:
        *(this + 5) = v15;
        v23 = xmmword_29D2F1F10;
        goto LABEL_326;
      case 0xA4u:
        v21 = 2;
LABEL_278:
        *(this + 5) = v21;
        v23 = xmmword_29D2F1F00;
        goto LABEL_326;
      case 0xA5u:
        v29 = 2;
LABEL_324:
        *(this + 5) = v29;
LABEL_325:
        v23 = xmmword_29D2F1B30;
        goto LABEL_326;
      case 0xA6u:
        v7 = 2;
LABEL_156:
        *(this + 5) = v7;
LABEL_157:
        v23 = xmmword_29D2F1B20;
        goto LABEL_326;
      case 0xA7u:
        v22 = 2;
LABEL_62:
        *(this + 5) = v22;
LABEL_63:
        v23 = xmmword_29D2F1B10;
        goto LABEL_326;
      case 0xA8u:
        v28 = 2;
LABEL_266:
        *(this + 5) = v28;
LABEL_267:
        v23 = xmmword_29D2F1B00;
        goto LABEL_326;
      case 0xA9u:
        v86 = 2;
LABEL_286:
        *(this + 5) = v86;
LABEL_287:
        v23 = xmmword_29D2F1AF0;
        goto LABEL_326;
      case 0xAAu:
        v65 = 2;
LABEL_246:
        *(this + 5) = v65;
LABEL_247:
        v23 = xmmword_29D2F1AE0;
        goto LABEL_326;
      case 0xABu:
        v30 = 2;
LABEL_52:
        *(this + 5) = v30;
LABEL_53:
        v23 = xmmword_29D2F1AD0;
        goto LABEL_326;
      case 0xACu:
        v27 = 2;
LABEL_40:
        *(this + 5) = v27;
LABEL_41:
        v23 = xmmword_29D2F1AC0;
        goto LABEL_326;
      case 0xADu:
        v48 = 2;
LABEL_122:
        *(this + 5) = v48;
LABEL_123:
        v23 = xmmword_29D2F1AB0;
        goto LABEL_326;
      case 0xAEu:
        v9 = 2;
LABEL_283:
        *(this + 5) = v9;
LABEL_284:
        v23 = xmmword_29D2F1AA0;
        goto LABEL_326;
      case 0xAFu:
        v47 = 2;
LABEL_77:
        *(this + 5) = v47;
LABEL_78:
        v23 = xmmword_29D2F1A90;
        goto LABEL_326;
      case 0xB0u:
        v10 = 2;
LABEL_47:
        *(this + 5) = v10;
LABEL_48:
        v23 = xmmword_29D2F1A80;
        goto LABEL_326;
      case 0xB1u:
        v73 = 2;
LABEL_308:
        *(this + 5) = v73;
LABEL_309:
        v23 = xmmword_29D2F1A70;
        goto LABEL_326;
      case 0xB2u:
        v63 = 2;
LABEL_239:
        *(this + 5) = v63;
LABEL_240:
        v23 = xmmword_29D2F1A60;
        goto LABEL_326;
      case 0xB3u:
        v66 = 2;
LABEL_183:
        *(this + 5) = v66;
LABEL_184:
        v23 = xmmword_29D2F1A50;
        goto LABEL_326;
      case 0xB4u:
        v37 = 2;
LABEL_163:
        *(this + 5) = v37;
LABEL_164:
        v23 = xmmword_29D2F1A40;
        goto LABEL_326;
      case 0xB5u:
        v71 = 2;
LABEL_260:
        *(this + 5) = v71;
LABEL_261:
        v23 = xmmword_29D2F1A30;
        goto LABEL_326;
      case 0xB6u:
        v62 = 2;
LABEL_305:
        *(this + 5) = v62;
LABEL_306:
        v23 = xmmword_29D2F1A20;
        goto LABEL_326;
      case 0xB7u:
        v82 = 2;
LABEL_321:
        *(this + 5) = v82;
LABEL_322:
        v23 = xmmword_29D2F1A10;
        goto LABEL_326;
      case 0xB8u:
        v46 = 2;
LABEL_89:
        *(this + 5) = v46;
LABEL_90:
        v23 = xmmword_29D2F1A00;
        goto LABEL_326;
      case 0xB9u:
        v12 = 2;
LABEL_213:
        *(this + 5) = v12;
LABEL_214:
        v23 = xmmword_29D2F19F0;
        goto LABEL_326;
      case 0xBAu:
        v17 = 2;
LABEL_59:
        *(this + 5) = v17;
LABEL_60:
        v23 = xmmword_29D2F19E0;
        goto LABEL_326;
      case 0xBBu:
        v84 = 2;
LABEL_249:
        *(this + 5) = v84;
LABEL_250:
        v23 = xmmword_29D2F19D0;
        goto LABEL_326;
      case 0xBCu:
        v50 = 2;
LABEL_236:
        *(this + 5) = v50;
LABEL_237:
        v23 = xmmword_29D2F19C0;
        goto LABEL_326;
      case 0xBDu:
        v41 = 2;
LABEL_296:
        *(this + 5) = v41;
LABEL_297:
        v23 = xmmword_29D2F17E0;
        goto LABEL_326;
      case 0xBEu:
        v85 = 2;
LABEL_314:
        *(this + 5) = v85;
LABEL_315:
        v23 = xmmword_29D2F19B0;
        goto LABEL_326;
      case 0xBFu:
        v8 = 2;
LABEL_272:
        *(this + 5) = v8;
LABEL_273:
        v23 = xmmword_29D2F19A0;
        goto LABEL_326;
      case 0xC0u:
        v5 = 2;
LABEL_33:
        *(this + 5) = v5;
LABEL_34:
        v23 = xmmword_29D2F1990;
        goto LABEL_326;
      case 0xC1u:
        v51 = 2;
LABEL_99:
        *(this + 5) = v51;
LABEL_100:
        v23 = xmmword_29D2F1980;
        goto LABEL_326;
      case 0xC2u:
        v55 = 2;
LABEL_92:
        *(this + 5) = v55;
LABEL_93:
        v23 = xmmword_29D2F1EF0;
        goto LABEL_326;
      case 0xC3u:
        v43 = 2;
LABEL_189:
        *(this + 5) = v43;
LABEL_190:
        v23 = xmmword_29D2F1EE0;
        goto LABEL_326;
      case 0xC4u:
        v61 = 2;
LABEL_256:
        *(this + 5) = v61;
LABEL_257:
        v23 = xmmword_29D2F1ED0;
        goto LABEL_326;
      case 0xC5u:
        v78 = 2;
LABEL_186:
        *(this + 5) = v78;
LABEL_187:
        v23 = xmmword_29D2F1EC0;
        goto LABEL_326;
      case 0xC6u:
        v53 = 2;
LABEL_128:
        *(this + 5) = v53;
LABEL_129:
        v23 = xmmword_29D2F1EB0;
        goto LABEL_326;
      case 0xC7u:
        v33 = 2;
LABEL_252:
        *(this + 5) = v33;
LABEL_253:
        v23 = xmmword_29D2F1EA0;
        goto LABEL_326;
      case 0xC8u:
        v6 = 2;
LABEL_216:
        *(this + 5) = v6;
LABEL_217:
        v23 = xmmword_29D2F1E90;
        goto LABEL_326;
      case 0xC9u:
        v13 = 2;
LABEL_153:
        *(this + 5) = v13;
LABEL_154:
        v23 = xmmword_29D2F1E80;
        goto LABEL_326;
      case 0xCAu:
        v58 = 2;
LABEL_103:
        *(this + 5) = v58;
        *&v23 = 0x100000001;
        *(&v23 + 1) = 0x100000001;
        goto LABEL_326;
      case 0xCBu:
        v24 = 2;
LABEL_209:
        *(this + 5) = v24;
LABEL_210:
        v23 = xmmword_29D2F1C40;
        goto LABEL_326;
      case 0xCCu:
        v80 = 2;
LABEL_230:
        *(this + 5) = v80;
LABEL_231:
        v23 = xmmword_29D2F1E70;
        goto LABEL_326;
      case 0xCDu:
        v40 = 2;
LABEL_206:
        *(this + 5) = v40;
LABEL_207:
        v23 = xmmword_29D2F1C30;
        goto LABEL_326;
      case 0xCEu:
        v45 = 2;
LABEL_86:
        *(this + 5) = v45;
LABEL_87:
        v23 = xmmword_29D2F1C20;
        goto LABEL_326;
      case 0xCFu:
        v44 = 2;
LABEL_227:
        *(this + 5) = v44;
LABEL_228:
        v23 = xmmword_29D2F1E60;
        goto LABEL_326;
      case 0xD0u:
        v49 = 2;
LABEL_199:
        *(this + 5) = v49;
LABEL_200:
        v23 = xmmword_29D2F1E50;
        goto LABEL_326;
      case 0xD1u:
        v36 = 2;
LABEL_82:
        *(this + 5) = v36;
LABEL_83:
        v23 = xmmword_29D2F1E40;
        goto LABEL_326;
      case 0xD2u:
        v39 = 2;
LABEL_179:
        *(this + 5) = v39;
LABEL_180:
        v23 = xmmword_29D2F1E30;
        goto LABEL_326;
      case 0xD3u:
        v68 = 2;
LABEL_203:
        *(this + 5) = v68;
LABEL_204:
        v23 = xmmword_29D2F1C10;
        goto LABEL_326;
      case 0xD4u:
        v77 = 2;
LABEL_242:
        *(this + 5) = v77;
LABEL_243:
        v23 = xmmword_29D2F1C00;
        goto LABEL_326;
      case 0xD5u:
        v11 = 2;
LABEL_224:
        *(this + 5) = v11;
LABEL_225:
        v23 = xmmword_29D2F1E20;
        goto LABEL_326;
      case 0xD6u:
        v16 = 2;
LABEL_221:
        *(this + 5) = v16;
LABEL_222:
        v23 = xmmword_29D2F1BF0;
        goto LABEL_326;
      case 0xD7u:
        v38 = 2;
LABEL_70:
        *(this + 5) = v38;
LABEL_71:
        v23 = xmmword_29D2F1BE0;
        goto LABEL_326;
      case 0xD8u:
        v42 = 2;
LABEL_233:
        *(this + 5) = v42;
LABEL_234:
        v23 = xmmword_29D2F1E10;
        goto LABEL_326;
      case 0xD9u:
        v20 = 2;
LABEL_112:
        *(this + 5) = v20;
LABEL_113:
        v23 = xmmword_29D2F1E00;
        goto LABEL_326;
      case 0xDAu:
        v26 = 2;
LABEL_115:
        *(this + 5) = v26;
LABEL_116:
        v23 = xmmword_29D2F1DF0;
        goto LABEL_326;
      case 0xDBu:
        v83 = 2;
LABEL_269:
        *(this + 5) = v83;
LABEL_270:
        v23 = xmmword_29D2F1DE0;
        goto LABEL_326;
      case 0xDCu:
        v79 = 2;
LABEL_275:
        *(this + 5) = v79;
LABEL_276:
        v23 = xmmword_29D2F1DD0;
        goto LABEL_326;
      case 0xDDu:
        v34 = 2;
LABEL_166:
        *(this + 5) = v34;
LABEL_167:
        v23 = xmmword_29D2F1DC0;
        goto LABEL_326;
      case 0xDEu:
        v70 = 2;
LABEL_280:
        *(this + 5) = v70;
LABEL_281:
        v23 = xmmword_29D2F1DB0;
        goto LABEL_326;
      case 0xDFu:
        v81 = 2;
LABEL_292:
        *(this + 5) = v81;
LABEL_293:
        v23 = xmmword_29D2F1DA0;
        goto LABEL_326;
      case 0xE0u:
        v75 = 2;
LABEL_317:
        *(this + 5) = v75;
LABEL_318:
        v23 = xmmword_29D2F1D90;
        goto LABEL_326;
      case 0xE1u:
        v67 = 2;
LABEL_149:
        *(this + 5) = v67;
LABEL_150:
        v23 = xmmword_29D2F1D80;
        goto LABEL_326;
      case 0xE2u:
        v52 = 2;
LABEL_311:
        *(this + 5) = v52;
LABEL_312:
        v23 = xmmword_29D2F1D70;
        goto LABEL_326;
      case 0xE3u:
        v25 = 2;
LABEL_125:
        *(this + 5) = v25;
LABEL_126:
        v23 = xmmword_29D2F1D60;
        goto LABEL_326;
      case 0xE4u:
        v54 = 2;
LABEL_289:
        *(this + 5) = v54;
LABEL_290:
        v23 = xmmword_29D2F1D50;
        goto LABEL_326;
      case 0xE5u:
        v69 = 2;
LABEL_169:
        *(this + 5) = v69;
LABEL_170:
        v23 = xmmword_29D2F1BD0;
        goto LABEL_326;
      case 0xE6u:
        v31 = 2;
LABEL_108:
        *(this + 5) = v31;
LABEL_109:
        v23 = xmmword_29D2F1BC0;
        goto LABEL_326;
      case 0xE7u:
        v57 = 2;
LABEL_144:
        *(this + 5) = v57;
LABEL_145:
        v23 = xmmword_29D2F1D40;
        goto LABEL_326;
      case 0xE8u:
        v19 = 2;
LABEL_174:
        *(this + 5) = v19;
LABEL_175:
        v23 = xmmword_29D2F1BB0;
        goto LABEL_326;
      case 0xE9u:
        v64 = 2;
LABEL_299:
        *(this + 5) = v64;
LABEL_300:
        v23 = xmmword_29D2F1BA0;
        goto LABEL_326;
      case 0xEAu:
        v76 = 2;
LABEL_302:
        *(this + 5) = v76;
LABEL_303:
        v23 = xmmword_29D2F1D30;
        goto LABEL_326;
      case 0xEBu:
        v32 = 2;
LABEL_135:
        *(this + 5) = v32;
LABEL_136:
        v23 = xmmword_29D2F1D20;
        goto LABEL_326;
      case 0xECu:
        v74 = 2;
LABEL_263:
        *(this + 5) = v74;
LABEL_264:
        v23 = xmmword_29D2F1D10;
        goto LABEL_326;
      case 0xEDu:
        v72 = 2;
LABEL_196:
        *(this + 5) = v72;
LABEL_197:
        v23 = xmmword_29D2F1D00;
        goto LABEL_326;
      case 0xEEu:
        v60 = 2;
LABEL_192:
        *(this + 5) = v60;
LABEL_193:
        v23 = xmmword_29D2F1B90;
        goto LABEL_326;
      case 0xEFu:
        v14 = 2;
LABEL_132:
        *(this + 5) = v14;
LABEL_133:
        v23 = xmmword_29D2F1B80;
        goto LABEL_326;
      case 0xF0u:
        v18 = 2;
LABEL_118:
        *(this + 5) = v18;
LABEL_119:
        v23 = xmmword_29D2F1CF0;
        goto LABEL_326;
      case 0xF1u:
        v56 = 2;
LABEL_138:
        *(this + 5) = v56;
LABEL_139:
        v23 = xmmword_29D2F1B70;
        goto LABEL_326;
      case 0xF2u:
        v59 = 2;
LABEL_141:
        *(this + 5) = v59;
LABEL_142:
        *&v23 = 0x200000002;
        *(&v23 + 1) = 0x200000002;
LABEL_326:
        *(this + 4) = v23;
        break;
      default:
        *(this + 12) = 0;
        *(this + 4) = 0;
        *(this + 5) = 0;
        break;
    }
  }
}

uint64_t AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::atomicWriteBranchBlocks(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = *(result + 32);
  if (v4)
  {
    v7 = result;
    v8 = 0;
    if (a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 16;
    }

    do
    {
      v10 = *(a2 + 2 * v8);
      if (*(a2 + 2 * v8))
      {
        do
        {
          v11 = __clz(__rbit32(v10));
          v12 = 1 << v11;
          v13 = v9 + 16 * (*(v7 + 36) - v11);
          *v29 = 0;
          v30 = 0;
          v25 = 0u;
          *v26 = 0u;
          v27 = 0;
          v28 = v13 & 0xFFFFFFFFFFF0;
          *&v26[12] = 0x300000008;
          v14 = AGXIotoInstruction_B_1::emit(&v25, v29);
          v27 = 0;
          v25 = 0u;
          *v26 = 0u;
          *&v26[12] = 0x300000072;
          v15 = AGXIotoInstruction_NOP_0::emit(&v25, v14);
          v27 = 0;
          v25 = 0u;
          *v26 = 0u;
          *&v26[12] = 0x300000072;
          v16 = AGXIotoInstruction_NOP_0::emit(&v25, v15);
          v27 = 0;
          v25 = 0u;
          *v26 = 0u;
          *&v26[12] = 0x300000072;
          AGXIotoInstruction_NOP_0::emit(&v25, v16);
          v17 = (a3 + (v8 << 8) + 16 * v11);
          result = *v29;
          v18 = *v17;
          do
          {
            _X5 = v17[1];
            __asm { CASP            X4, X5, X0, X1, [X9] }

            _ZF = _X4 == v18;
            v18 = _X4;
          }

          while (!_ZF);
          _ZF = v12 == v10;
          v10 ^= v12;
        }

        while (!_ZF);
        v4 = *(v7 + 32);
      }

      ++v8;
    }

    while (v8 < v4);
  }

  return result;
}

BOOL AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::initializeWithKernelState(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  *(a1 + 17) = 0;
  v10 = 0u;
  v11 = 0u;
  memset(outputStruct, 0, sizeof(outputStruct));
  LODWORD(outputStruct[0]) = 11;
  outputStructCnt = 64;
  Connect = IOGPUDeviceGetConnect();
  v3 = IOConnectCallStructMethod(Connect, 0x105u, outputStruct, 0x40uLL, outputStruct, &outputStructCnt);
  if (v3)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Error, failed to get global USC profile control setting from kernel!\n", "agxa_usc_profile_control_gen1_template.hpp", 206, "initializeWithKernelState");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "agxa_usc_profile_control_gen1_template.hpp";
      v14 = 1024;
      v15 = 206;
      v16 = 2080;
      v17 = "initializeWithKernelState";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Error, failed to get global USC profile control setting from kernel!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v13 = "agxa_usc_profile_control_gen1_template.hpp";
      v14 = 1024;
      v15 = 206;
      v16 = 2080;
      v17 = "initializeWithKernelState";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Error, failed to get global USC profile control setting from kernel!\n", buf, 0x1Cu);
    }
  }

  else
  {
    v4 = v10;
    *(a1 + 40) = v10 & 3;
    *(a1 + 41) = (v4 & 4) != 0;
    *(a1 + 42) = (v4 & 8) != 0;
    v5 = BYTE1(v10);
    *(a1 + 43) = BYTE1(v10) & 3;
    *(a1 + 44) = (v5 & 4) != 0;
    *(a1 + 45) = (v5 & 8) != 0;
    v6 = BYTE8(outputStruct[1]);
    if (BYTE8(outputStruct[1]))
    {
      *a1 = *(outputStruct + 8);
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = v6 != 0;
    *(a1 + 17) = 1;
  }

  return v3 == 0;
}

unsigned __int8 *AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitGlobalConfigurationInit(unsigned __int8 *result, int a2, uint64_t a3)
{
  v5 = result;
  v6 = result[40];
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = result[41];
  }

  v8 = result[42];
  v19 = 0;
  v21 = 0;
  v20 = 0u;
  v22 = 0x300000098;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  if (*(result + 8))
  {
    v9 = 0;
    v10 = *(result + 9);
    v11 = a3;
    do
    {
      if (v10)
      {
        v13 = 0;
        for (i = 0; i < v10; ++i)
        {
          v15 = 0u;
          *v16 = 0u;
          v17 = 0;
          v18 = (16 * (v10 + v13)) & 0xFFFFFFFFFFF0;
          *&v16[12] = 0x300000008;
          v11 = AGXIotoInstruction_B_1::emit(&v15, v11) + 6;
          v10 = *(v5 + 36);
          --v13;
        }
      }

      v12 = AGXIotoInstruction_SETPROFILECTL_0::emit(&v19, v11);
      *v12 = 0xAA5002000040027;
      result = AGXIotoInstruction_SETPROFILECTL_0::emit(&v19, v12 + 10);
      *result = 0xAA5002000040027;
      v10 = *(v5 + 36);
      v11 = &result[16 * (16 - v10) - 22];
      ++v9;
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 16))
  {

    return AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitGlobalConfigurationUpdate(v5, a2, a3);
  }

  return result;
}

void *AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitGlobalConfigurationUpdate(uint64_t a1, int a2, uint64_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  __src = 0u;
  *v46 = 0u;
  v5 = *(a1 + 40);
  if (a2)
  {
    v6 = *(a1 + 42);
    __dst = 0;
    v40 = 0;
    v39 = 0uLL;
    v41 = 0x300000098;
    v42 = v5;
    v43 = 0;
    v44 = v6;
    v7 = AGXIotoInstruction_SETPROFILECTL_0::emit(&__dst, &__src);
    v37 = 1;
    v35 = 0u;
    *v36 = 0u;
    *&v36[12] = 0x300000020;
    v8 = AGXIotoInstruction_CNDRET_0::emit(&v35, v7);
    v34 = 0;
    v32 = 0u;
    *v33 = 0u;
    *&v33[12] = 0x300000072;
    AGXIotoInstruction_NOP_0::emit(&v32, v8);
    v9 = *(a1 + 43);
    v10 = *(a1 + 45);
    __dst = 0;
    v39 = 0uLL;
    v40 = 0;
    v41 = 0x300000098;
    v42 = v9;
    v43 = 0;
    v44 = v10;
  }

  else
  {
    v11 = *(a1 + 41);
    v12 = *(a1 + 42);
    __dst = 0;
    v40 = 0;
    v39 = 0uLL;
    v41 = 0x300000098;
    v42 = v5;
    v43 = v11;
    v44 = v12;
    v13 = AGXIotoInstruction_SETPROFILECTL_0::emit(&__dst, &__src);
    v37 = 1;
    v35 = 0u;
    *v36 = 0u;
    *&v36[12] = 0x300000020;
    v14 = AGXIotoInstruction_CNDRET_0::emit(&v35, v13);
    v34 = 0;
    v32 = 0u;
    *v33 = 0u;
    *&v33[12] = 0x300000072;
    AGXIotoInstruction_NOP_0::emit(&v32, v14);
    v15 = *(a1 + 43);
    v16 = *(a1 + 44);
    v17 = *(a1 + 45);
    __dst = 0;
    v39 = 0uLL;
    v40 = 0;
    v41 = 0x300000098;
    v42 = v15;
    v43 = v16;
    v44 = v17;
  }

  v18 = AGXIotoInstruction_SETPROFILECTL_0::emit(&__dst, v46);
  v35 = 0u;
  *v36 = 0u;
  *&v36[12] = 0x300000020;
  v37 = 1;
  v19 = AGXIotoInstruction_CNDRET_0::emit(&v35, v18);
  v34 = 0;
  v32 = 0u;
  *v33 = 0u;
  *&v33[12] = 0x300000072;
  AGXIotoInstruction_NOP_0::emit(&v32, v19);
  if (*(a1 + 16) == 1)
  {
    AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::atomicWriteBranchBlocks(a1, a1, a3, 0);
    if (*(a1 + 16))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  result = memcpy(&__dst, &__src, 16 * v20);
  if (*(a1 + 32))
  {
    v22 = 0;
    do
    {
      v23 = 0;
      v24 = (a3 + (v22 << 8) + 16 * *(a1 + 36));
      do
      {
        result = *(&__dst + 2 * v23);
        v25 = *v24;
        do
        {
          _X5 = v24[1];
          __asm { CASP            X4, X5, X0, X1, [X10] }

          _ZF = _X4 == v25;
          v25 = _X4;
        }

        while (!_ZF);
        ++v23;
        v24 += 2;
      }

      while (v23 != v20);
      ++v22;
    }

    while (v22 < *(a1 + 32));
  }

  return result;
}

uint64_t AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::appendProgramAddressTables(void *a1, void *a2, void *a3)
{
  [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", a1[1], a1[3], a1[9], @"usc-profile-ctl-sl"}];
  v5 = [a3 objectForKey:@"usc-profile-ctl-sl"];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [a3 setObject:v5 forKeyedSubscript:@"usc-profile-ctl-sl"];
  }

  v6 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:a1[2] length:a1[3]];
  v7 = [objc_alloc(MEMORY[0x29EDBB728]) initWithBinary:v6 uniqueIdentifier:a1[9] debugIdentifier:0];

  return [v5 addObject:v7];
}

uint64_t AGX::DataBufferAllocator<44ul>::getBasePointer<AGX::IPFEncoderGen4<kAGXRevHAL300>::DepthBiasBits>(uint64_t a1)
{
  if (!*(a1 + 272))
  {
    v2 = a1;
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1, 7u);
    a1 = v2;
  }

  return *(*(a1 + 24) + 472);
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>,AGX::BackgroundObjectDriverArgumentTable>(unsigned int *,AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>,AGX::BackgroundObjectDriverArgumentTable>(unsigned int *,AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9848;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>,AGX::BackgroundObjectDriverArgumentTable>(unsigned long long *,AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>,AGX::BackgroundObjectDriverArgumentTable>(unsigned long long *,AGX::BackgroundObjectArgumentTable<AGX::HAL300::Encoders,AGX::HAL300::Classes> *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F9800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t AGX::getDirtyArguments<AGX::HAL300::FragmentProgramVariantESLState>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1[5];
  v9 = a1[6];
  v12 = a1[7];
  v11 = a1[8];
  v14 = a1[9];
  v13 = a1[10];
  v16 = a1[11];
  v15 = a1[12];
  v17 = a1[14];
  v18 = a1[16];
  v35 = a1[15];
  v36 = a1[13];
  v34 = a1[18];
  v32 = a1[17];
  v33 = a1[20];
  v29 = a1[21];
  v30 = a1[19];
  v31 = a1[22];
  v19 = a1[23];
  v20 = a1[24];
  v21 = a1[25];
  v22 = a1[26];
  v23 = a1[27];
  v24 = a1[28];
  v26 = a1[29];
  v25 = a1[30];
  if (a1[33] & a4 | a1[31] & a2 | a1[35] & a6 | a1[37] & a8 || a1[36] & a7 | a1[38] & a9 | a1[34] & a5 | a1[32] & a3)
  {
    v27 = 0x100000000;
  }

  else
  {
    v27 = 0;
  }

  return ((v12 & a4 | v10 & a2 | v14 & a6 | v11 & a5 | v9 & a3 | v13 & a7) != 0) | (((v36 & a4 | v16 & a2 | v35 & a6 | v17 & a5 | v15 & a3 | v18 & a7) != 0) << 8) | (((v30 & a4 | v32 & a2 | v29 & a6 | v19 & a8 | v33 & a5 | v34 & a3 | v31 & a7 | v20 & a9) != 0) << 16) | (((v23 & a4 | v21 & a2 | v26 & a6 | v24 & a5 | v22 & a3 | v25 & a7) != 0) << 24) | v27;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F9DE8;
  a2[1] = v2;
  return result;
}

uint64_t AGX::FramebufferDriverConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfig(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8, char a9)
{
  *(a1 + 92) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 108) = 3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0x300000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 268) = 3;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0x300000000;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0x300000000;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 508) = 3;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0x300000000;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0x300000000;
  *(a1 + 672) = 0;
  *(a1 + 744) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 748) = 3;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0x300000000;
  *(a1 + 832) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0x300000000;
  *(a1 + 912) = 0;
  *(a1 + 984) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 988) = 3;
  *(a1 + 992) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1068) = 3;
  *(a1 + 1072) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1148) = 3;
  *(a1 + 1152) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1228) = 3;
  *(a1 + 1232) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1308) = 3;
  *(a1 + 1312) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1388) = 3;
  *(a1 + 1392) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1468) = 3;
  *(a1 + 1472) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1548) = 3;
  *(a1 + 1552) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1628) = 3;
  *(a1 + 1632) = 0;
  *(a1 + 1713) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1729) = 67305985;
  *(a1 + 1733) = 1541;
  *(a1 + 1735) = 7;
  *(a1 + 1736) = 0x100000000;
  *(a1 + 1752) = 0;
  *(a1 + 1748) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  bzero((a1 + 1648), 0x28uLL);
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0x300000000;
  *(a1 + 1880) = 3;
  *(a1 + 1884) = 0;
  *(a1 + 1952) = 0;
  memset_pattern16((a1 + 1960), &unk_29D2F2760, 0x40uLL);
  v15 = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  *(a1 + 2024) = 4;
  *(a1 + 2032) = 4;
  v19 = a8 & ~a7;
  *(a1 + 1727) = -1;
  v31 = vdupq_n_s32(a6);
  v20 = a2;
  do
  {
    v25 = *(a4 + 8 * v18);
    *(a1 + 8 * v18 + 1760) = *(v25 + 208);
    v26 = *(v25 + 112);
    *(a1 + 1744) = v26;
    *(a1 + 1745) = v26;
    if (a5)
    {
      v27 = *(a5 + 4 * v18);
    }

    else
    {
      v27 = 0;
    }

    v28 = a1 + v15;
    v29 = a3 + 8 * v16;
    *(v28 + 56) = *v29;
    *(v28 + 64) = *(v29 + 8);
    *(v28 + 72) = *(v29 + 16);
    *(v28 + 80) = v25;
    *(v28 + 88) = 0;
    *(v28 + 96) = v27;
    *(v28 + 100) = 0;
    *(v28 + 112) = 0;
    if (v17)
    {
      LOBYTE(v17) = 1;
      *(a1 + 1875) = 1;
      if (!a7)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v17 = ([*v29 resourceOptions] >> 8) & 1;
      *(a1 + 1875) = v17;
      if (!a7)
      {
        goto LABEL_2;
      }
    }

    *(v28 + 40) = v31;
LABEL_2:
    v21 = 1 << v18;
    *(a1 + 1688) |= 1 << v18;
    if (a7)
    {
      v22 = 1 << v18;
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 1704) |= v22;
    if (v19)
    {
      v23 = 1 << v18;
    }

    else
    {
      v23 = 0;
    }

    *(a1 + 1708) |= v23;
    if (a9)
    {
      v24 = 1 << v18;
    }

    else
    {
      v24 = 0;
    }

    *(a1 + 1712) |= v24;
    if (a9)
    {
      v21 = 0;
    }

    *(a1 + 1700) |= v21;
    ++v18;
    v16 += 3;
    v15 += 80;
  }

  while (v20 != v18);
  return a1;
}

uint64_t AGX::FramebufferDriverConfigGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfigGen3_3(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *(a1 + 92) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v6 = a1 + 1700;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 32) = 0u;
  v170 = (a1 + 32);
  *(a1 + 16) = 0u;
  v171 = (a1 + 16);
  *(a1 + 108) = 3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0x300000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 268) = 3;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0x300000000;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0x300000000;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 508) = 3;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0x300000000;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0x300000000;
  *(a1 + 672) = 0;
  *(a1 + 744) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 748) = 3;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0x300000000;
  *(a1 + 832) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0x300000000;
  *(a1 + 912) = 0;
  *(a1 + 984) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 988) = 3;
  *(a1 + 992) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1068) = 3;
  *(a1 + 1072) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1148) = 3;
  *(a1 + 1152) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1228) = 3;
  *(a1 + 1232) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1308) = 3;
  *(a1 + 1312) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1388) = 3;
  *(a1 + 1392) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1468) = 3;
  *(a1 + 1472) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1548) = 3;
  *(a1 + 1552) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1628) = 3;
  *(a1 + 1632) = 0;
  *(a1 + 1713) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1729) = 67305985;
  *(a1 + 1733) = 1541;
  *(a1 + 1735) = 7;
  *(a1 + 1736) = 0x100000000;
  *(a1 + 1744) = 0;
  v168 = (a1 + 1745);
  v169 = (a1 + 1744);
  *(a1 + 1752) = 0;
  *(a1 + 1748) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  bzero((a1 + 1648), 0x28uLL);
  v172 = (a1 + 1864);
  *(a1 + 1872) = 0;
  *(a1 + 1864) = 0;
  v175 = v6;
  *(v6 + 176) = 0x300000003;
  *(a1 + 1884) = 0;
  *(a1 + 1952) = 0;
  memset_pattern16((a1 + 1960), &unk_29D2F2760, 0x40uLL);
  v164 = (a1 + 2024);
  *(a1 + 2024) = vdupq_n_s64(4uLL);
  v7 = *a2;
  v165 = [*a2 _descriptorAtIndex:8];
  v166 = [v7 _descriptorAtIndex:9];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 1872) = *(a2 + 43);
  *(a1 + 1873) = *(a2 + 40);
  v11 = a2;
  v12 = *(a2 + 48);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  if (v12 >= 0x800)
  {
    v12 = 2048;
  }

  *(a1 + 1740) = v12;
  *(a1 + 1727) = -1;
  *(a1 + 1856) = *(a2 + 200);
  v176 = a2;
  v174 = v7;
  do
  {
    v15 = [v7 _descriptorAtIndex:v9];
    if (!v15)
    {
      goto LABEL_12;
    }

    v18 = [v15 _descriptorPrivate];
    v19 = *v18;
    if (!*v18)
    {
      goto LABEL_12;
    }

    v20 = v18;
    v21 = a1 + v8;
    v22 = *(v18 + 16);
    v23 = *(v18 + 8);
    v24 = *(v18 + 24);
    v25 = *(v11 + 42);
    v10 = v19[74];
    if (v10)
    {
      *(v21 + 64) = *(v10 + 592);
      *(v21 + 80) = v10;
      v26 = v10;
    }

    else
    {
      v26 = 0;
      *(v21 + 64) = 0;
      *(v21 + 72) = 0;
      *(v21 + 80) = 0;
    }

    v27 = a1 + v8;
    *(v27 + 56) = v19;
    *(v27 + 88) = v22;
    *(v27 + 92) = v23;
    *(v27 + 100) = 0;
    *(v27 + 104) = 0;
    *(v27 + 96) = v24;
    *(v27 + 112) = v25;
    if (*(a1 + 1875))
    {
      LOBYTE(v28) = 1;
    }

    else
    {
      v28 = ([*v18 resourceOptions] >> 8) & 1;
      v26 = *(v27 + 80);
      v10 = v26;
    }

    *(a1 + 1875) = v28;
    v29 = 1 << v9;
    *(a1 + 1688) |= 1 << v9;
    if (*(v10 + 48) == 3)
    {
      *v172 |= v29;
    }

    v30 = *v20;
    if (*v20)
    {
      v31 = *(v20 + 32);
      v30 = *(v20 + 40);
      if (((v30 == 2) & (a4 >> 4)) != 0)
      {
        v30 = 3;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = a1 + 8 * v9;
    *(v32 + 1960) = v30;
    v33 = *(v20 + 112);
    if (v33)
    {
      v34 = *(v20 + 128);
      v35 = *(v20 + 120);
      v36 = *(v20 + 136);
      v37 = *(v176 + 42);
      v38 = *(v33 + 592);
      if (v38)
      {
        v39 = a1 + v8;
        *(v39 + 704) = *(v38 + 592);
        *(v39 + 720) = v38;
      }

      else
      {
        v40 = a1 + v8;
        *(v40 + 720) = 0;
        *(v40 + 704) = 0uLL;
      }

      v41 = a1 + v8;
      *(v41 + 696) = v33;
      *(v41 + 728) = v34;
      *(v41 + 732) = v35;
      *(v41 + 736) = v36;
      *(a1 + v8 + 740) = 0;
      *(v41 + 752) = v37;
      if (v28)
      {
        LOBYTE(v42) = 1;
      }

      else
      {
        v42 = ([*(v20 + 112) resourceOptions] >> 8) & 1;
        v26 = *(v27 + 80);
        v10 = v26;
      }

      v11 = v176;
      *(a1 + 1875) = v42;
      *(a1 + 1696) |= v29;
      v30 = *(v32 + 1960);
      if (v30 == 2)
      {
        v43 = 1 << v9;
      }

      else
      {
        v43 = 0;
      }

      v44 = v43 | *(a1 + 1716);
      if (v30 == 3)
      {
        v45 = 1 << v9;
      }

      else
      {
        v45 = 0;
      }

      *(a1 + 1716) = v44 | v45;
    }

    else
    {
      v11 = v176;
    }

    v46.i64[0] = v30;
    v46.i64[1] = v31;
    v17 = *v175;
    v47.i64[0] = v31;
    v47.i64[1] = v30 & 0xFFFFFFFFFFFFFFFDLL;
    v48 = vuzp1q_s32(vceqq_s64(v46, xmmword_29D2F1A40), vceqq_s64(v47, vdupq_n_s64(1uLL)));
    v49 = vmovn_s32(v48);
    v16 = vorrq_s8(*v175, vandq_s8(vdupq_n_s32(v29), v48));
    *v175 = v16;
    if (v30 == 4)
    {
      v50 = 1 << v9;
    }

    else
    {
      v50 = 0;
    }

    *(a1 + 1720) |= v50;
    v51 = *(v10 + 208);
    *(v32 + 1760) = v51;
    if (v49.i8[2])
    {
      v52 = *(v51 + 32);
      if (v52 <= 0x12)
      {
        v53 = 1 << v52;
        if ((v53 & 0x40A20) != 0)
        {
          *(v21 + 40) = *(v20 + 56);
          v54 = (a1 + v8);
          v54[11] = *(v20 + 64);
          v54[12] = *(v20 + 72);
          v54[13] = *(v20 + 80);
LABEL_53:
          v62 = *(v20 + 56);
          v61 = *(v20 + 64);
          v16.i64[0] = *(v20 + 72);
          v17.i64[0] = *(v20 + 80);
          v63 = *(v26 + 32) - 1;
          v64 = &texFormatUnsupported;
          if (v63 <= 0x289)
          {
            v64 = *(&off_29F342380 + v63);
          }

          v65 = *(v64 + 16);
          v66 = ((v65 >> 6) & 6) - 2;
          v67 = ((v65 >> 9) & 6) - 2;
          v68 = ((v65 >> 12) & 6) - 6;
          v69 = ((v65 >> 15) & 6) - 6;
          v71 = fabs(v62) >= 0.000001 && v66 < 4;
          if (fabs(v61) >= 0.000001 && v67 < 4)
          {
            v71 = 1;
          }

          if (v71 || (fabs(*v17.i64) >= 0.000001 ? (v80 = v69 >= 0xFFFFFFFC) : (v80 = 0), v80 ? (v81 = 0) : (v81 = 1), fabs(*v16.i64) >= 0.000001 ? (v82 = v68 >= 0xFFFFFFFC) : (v82 = 0), v82 || (v13 = v171, (v81 & 1) == 0)))
          {
            v73 = fabs(v62 + -1.0) < 0.000001 || v66 >= 4;
            v74 = !v73;
            v75 = fabs(v61 + -1.0) < 0.000001 || v67 >= 4;
            v76 = !v75 || v74;
            if (v76 || (fabs(*v17.i64) >= 0.000001 ? (v83 = v69 >= 0xFFFFFFFC) : (v83 = 0), v83 ? (v84 = 0) : (v84 = 1), fabs(*v16.i64 + -1.0) >= 0.000001 ? (v85 = v68 >= 0xFFFFFFFC) : (v85 = 0), v85 || (v13 = (a1 + 24), (v84 & 1) == 0)))
            {
              if (v71 || (fabs(*v17.i64 + -1.0) >= 0.000001 ? (v86 = v69 >= 0xFFFFFFFC) : (v86 = 0), v86 ? (v87 = 0) : (v87 = 1), fabs(*v16.i64) >= 0.000001 ? (v88 = v68 >= 0xFFFFFFFC) : (v88 = 0), v88 || (v13 = a1, (v87 & 1) == 0)))
              {
                if (v76 || ((*v17.i64 = fabs(*v17.i64 + -1.0), *v17.i64 >= 0.000001) ? (v77 = v69 >= 0xFFFFFFFC) : (v77 = 0), v77 ? (v78 = 0) : (v78 = 1), (*v16.i64 = fabs(*v16.i64 + -1.0), *v16.i64 >= 0.000001) ? (v79 = v68 >= 0xFFFFFFFC) : (v79 = 0), v79 || (v13 = (a1 + 8), (v78 & 1) == 0)))
                {
                  v13 = v170;
                }
              }
            }
          }

          ++*v13;
          v10 = v26;
          goto LABEL_8;
        }

        if ((v53 & 0x510) != 0)
        {
          *(v21 + 40) = *(v20 + 56);
          v55 = (a1 + v8);
          v55[11] = *(v20 + 64);
          v55[12] = *(v20 + 72);
          v55[13] = *(v20 + 80);
          goto LABEL_53;
        }
      }

      v56 = *(v20 + 56);
      *(v21 + 40) = v56;
      v57 = *(v20 + 64);
      v58 = (a1 + v8);
      v58[11] = v57;
      v59 = *(v20 + 72);
      v58[12] = v59;
      v60 = *(v20 + 80);
      v58[13] = v60;
      goto LABEL_53;
    }

LABEL_8:
    if (*(v20 + 168))
    {
      v14 = 1 << v9;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 1868) |= v14;
    v7 = v174;
LABEL_12:
    ++v9;
    v8 += 80;
  }

  while (v8 != 640);
  if (a3 < 0xA0000)
  {
    v89 = *(a1 + 1700);
    if (v89 == *(a1 + 1688))
    {
      v90 = v89 & -v89;
      *(a1 + 1700) ^= v90;
      *(a1 + 1712) |= v90;
    }
  }

  if (v165)
  {
    v91 = [v165 _descriptorPrivate];
    v92 = v91;
    v93 = *v91;
    if (*v91)
    {
      v95 = *(v91 + 32);
      v94 = *(v91 + 40);
      if (((v94 == 2) & (a4 >> 4)) != 0)
      {
        v94 = 3;
      }

      *v164 = v94;
      v96 = *(v91 + 16);
      v97 = *(v91 + 8);
      v98 = *(v91 + 24);
      v99 = v93[74];
      if (v99)
      {
        v100 = *(v99 + 592);
        *(a1 + 1336) = v93;
        *(a1 + 1344) = v100;
        *(a1 + 1360) = v99;
        goto LABEL_143;
      }
    }

    else
    {
      v95 = 0;
      *v164 = 0;
      v96 = *(v91 + 16);
      v97 = *(v91 + 8);
      v98 = *(v91 + 24);
    }

    *(a1 + 1336) = v93;
    *(a1 + 1344) = 0;
    *(a1 + 1360) = 0;
    *(a1 + 1352) = 0;
LABEL_143:
    *(a1 + 1368) = v96;
    *(a1 + 1372) = v97;
    *(a1 + 1376) = v98;
    *(a1 + 1380) = 0;
    *(a1 + 1392) = 0;
    if (*(a1 + 1875))
    {
      LOBYTE(v103) = 1;
    }

    else
    {
      v103 = ([*v91 resourceOptions] >> 8) & 1;
    }

    *(a1 + 1875) = v103;
    v101 = *(v92 + 144) + 1;
    v104 = *(v92 + 88);
    if (a3 < 0xD0000)
    {
      if (v104 >= -3.40282347e38)
      {
        if (v104 <= 3.40282347e38)
        {
          goto LABEL_155;
        }

        v106 = 2139095039;
      }

      else
      {
        v106 = -8388609;
      }

      v105 = *&v106;
    }

    else
    {
      v105 = 0.0;
      if (v104 >= 0.0)
      {
        v105 = 1.0;
        if (v104 <= 1.0)
        {
LABEL_155:
          v105 = v104;
        }
      }
    }

    *(a1 + 1320) = v105;
    *(a1 + 1688) |= 0x100u;
    v107 = *(v92 + 112);
    if (v107)
    {
      *(a1 + 1696) |= 0x100u;
      v108 = *(v92 + 128);
      v109 = *(v92 + 120);
      v110 = *(v92 + 136);
      v111 = *(v107 + 592);
      if (v111)
      {
        *(a1 + 1424) = *(v111 + 592);
        *(a1 + 1440) = v111;
      }

      else
      {
        *(a1 + 1440) = 0;
        *(a1 + 1424) = 0u;
      }

      *(a1 + 1416) = v107;
      *(a1 + 1448) = v108;
      *(a1 + 1452) = v109;
      *(a1 + 1456) = v110;
      *(a1 + 1460) = v101;
      *(a1 + 1464) = 0;
      *(a1 + 1472) = 0;
      if (v103)
      {
        LOBYTE(v112) = 1;
      }

      else
      {
        v112 = ([*(v92 + 112) resourceOptions] >> 8) & 1;
      }

      *(a1 + 1875) = v112;
    }

    v113 = *(a1 + 2024);
    v114 = *(a1 + 1716) | ((v113 == 2) << 8);
    v115.i64[0] = v95;
    v115.i64[1] = v113;
    v116.i64[0] = v113;
    v116.i64[1] = v95;
    v117 = vuzp1q_s32(vceqq_s64(v116, xmmword_29D2F1A40), vceqq_s64(v115, xmmword_29D2F1F60));
    v116.i64[0] = 0x10000000100;
    v116.i64[1] = 0x10000000100;
    v118.i32[2] = *(a1 + 1708);
    v17 = vandq_s8(v117, v116);
    v118.i32[3] = *(a1 + 1712) | (((v113 & 0xFFFFFFFFFFFFFFFBLL) == 1) << 8);
    v118.i64[0] = *v175;
    v16 = vorrq_s8(v17, v118);
    *v175 = v16;
    *(a1 + 1716) = v114 | v17.i32[3];
    *(a1 + 1720) |= (v113 == 4) << 8;
    v102 = v166;
    if (v166)
    {
LABEL_165:
      v119 = [v102 _descriptorPrivate];
      v120 = v119;
      v121 = *v119;
      if (*v119)
      {
        v123 = *(v119 + 32);
        v122 = *(v119 + 40);
        if (((v122 == 2) & (a4 >> 4)) != 0)
        {
          v122 = 3;
        }

        *(a1 + 2032) = v122;
        v124 = *(v119 + 16);
        v125 = *(v119 + 8);
        v126 = *(v119 + 24);
        v127 = v121[74];
        if (v127)
        {
          v128 = *(v127 + 592);
          *(a1 + 1496) = v121;
          *(a1 + 1504) = v128;
          *(a1 + 1520) = v127;
          goto LABEL_172;
        }
      }

      else
      {
        v123 = 0;
        *(a1 + 2032) = 0;
        v124 = *(v119 + 16);
        v125 = *(v119 + 8);
        v126 = *(v119 + 24);
      }

      *(a1 + 1496) = v121;
      *(a1 + 1504) = 0;
      *(a1 + 1520) = 0;
      *(a1 + 1512) = 0;
LABEL_172:
      *(a1 + 1528) = v124;
      *(a1 + 1532) = v125;
      *(a1 + 1536) = v126;
      *(a1 + 1540) = 0;
      *(a1 + 1552) = 0;
      if (*(a1 + 1875))
      {
        LOBYTE(v129) = 1;
      }

      else
      {
        v129 = ([*v119 resourceOptions] >> 8) & 1;
      }

      *(a1 + 1875) = v129;
      *(a1 + 1480) = *(v120 + 96);
      *(a1 + 1688) |= 0x200u;
      v130 = *(v120 + 112);
      if (v130)
      {
        *(a1 + 1696) |= 0x200u;
        if (v101)
        {
          v131 = *(v120 + 104) + 1;
          v133 = *(v120 + 120);
          v132 = *(v120 + 128);
          v134 = *(v120 + 136);
          v135 = *(v130 + 592);
          if (v135)
          {
            *(a1 + 1584) = *(v135 + 592);
            *(a1 + 1600) = v135;
          }

          else
          {
            *(a1 + 1600) = 0;
            *(a1 + 1584) = 0u;
          }
        }

        else
        {
          v133 = *(v120 + 120);
          v132 = *(v120 + 128);
          v134 = *(v120 + 136);
          v136 = *(v130 + 592);
          if (v136)
          {
            *(a1 + 1584) = *(v136 + 592);
            *(a1 + 1600) = v136;
          }

          else
          {
            *(a1 + 1600) = 0;
            *(a1 + 1584) = 0u;
          }

          v131 = 1;
        }

        *(a1 + 1576) = v130;
        *(a1 + 1608) = v132;
        *(a1 + 1612) = v133;
        *(a1 + 1616) = v134;
        *(a1 + 1620) = v101;
        *(a1 + 1624) = v131;
        *(a1 + 1632) = 0;
        if (v129)
        {
          LOBYTE(v137) = 1;
        }

        else
        {
          v137 = ([*(v120 + 112) resourceOptions] >> 8) & 1;
        }

        *(a1 + 1875) = v137;
      }

      v138 = *(a1 + 2032);
      v139.i64[0] = *v175;
      v140 = *(a1 + 1716) | ((v138 == 2) << 9);
      v141.i64[0] = v123;
      v141.i64[1] = v138;
      v142.i64[0] = v138;
      v142.i64[1] = v123;
      v143 = vuzp1q_s32(vceqq_s64(v142, xmmword_29D2F1A40), vceqq_s64(v141, xmmword_29D2F1F60));
      v142.i64[0] = 0x20000000200;
      v142.i64[1] = 0x20000000200;
      v139.i32[2] = *(a1 + 1708);
      v144 = vandq_s8(v143, v142);
      v139.i32[3] = *(a1 + 1712) | ((v138 == 1) << 9);
      *v175 = vorrq_s8(v144, v139);
      *(a1 + 1716) = v140 | v144.i32[3];
      *(a1 + 1720) |= (v138 == 4) << 9;
    }
  }

  else
  {
    v101 = 0;
    v102 = v166;
    if (v166)
    {
      goto LABEL_165;
    }
  }

  v145 = *(a1 + 1360);
  v146 = v145;
  if (!v145)
  {
    v146 = *(a1 + 1520);
  }

  v147 = *(v11 + 72);
  if (v10)
  {
    v148 = *(v10 + 112);
    *v168 = v148;
    if (v146)
    {
      goto LABEL_193;
    }
  }

  else
  {
    v148 = *(v11 + 32);
    if (!*(v11 + 32))
    {
      v148 = *(v11 + 72);
    }

    *v168 = v148;
    if (v146)
    {
LABEL_193:
      v147 = *(v146 + 112);
    }
  }

  *v169 = v147;
  if (!v147 || !v148)
  {
    if (v147 >= v148)
    {
      v149 = v169;
    }

    else
    {
      v149 = v168;
    }

    v147 = *v149;
    *v169 = v147;
    *v168 = v147;
  }

  if (*(v11 + 160))
  {
    *(a1 + 1884) = 1;
    memcpy((a1 + 1888), (v11 + 96), 8 * v147);
  }

  if (v145)
  {
    v150 = *(v145 + 236) ? 0 : *(a1 + 1372);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v145, *(a1 + 1368), v150, 0, 0);
    v151 = *(a1 + 1360);
    v152 = *(v151 + 32) - 250;
    v153 = v152 > 0xB ? 3 : dword_29D2FE7B8[v152];
    *(v175 + 176) = v153;
    if (*(v151 + 48) == 3)
    {
      *v172 |= 0x100u;
    }
  }

  v154 = *(a1 + 1520);
  if (v154)
  {
    v155 = *(v154 + 236) ? 0 : *(a1 + 1532);
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v154, *(a1 + 1528), v155, *(a1 + 1536), *(*(v154 + 208) + 24) - 1);
    v156 = *(a1 + 1520);
    v157 = *(v156 + 32) - 250;
    v158 = v157 > 0xB ? 3 : dword_29D2FE7B8[v157];
    *(a1 + 1880) = v158;
    if (*(v156 + 48) == 3)
    {
      *v172 |= 0x200u;
    }
  }

  if (a4 && (*(a1 + 1872) & 1) == 0)
  {
    v159 = *(a1 + 1700);
    v160 = *(a1 + 1864);
    *(a1 + 1720) |= v159 & ~v160;
    *(a1 + 1700) = v160 & v159;
  }

  *(a1 + 1640) = *(v11 + 8);
  *(v175 + 348) = 0;
  *(v175 + 340) = 0;
  v161 = *(v11 + 80);
  *(v175 + 340) = vuzp1q_s32(*(v11 + 56), v161);
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(a1 + 1648, vmovn_s64(v161).u32[0]);
  *(a1 + 2056) = 0;
  *(a1 + 2056) = [*(v11 + 168) getImpl];
  bzero((a1 + 2064), 0x100uLL);
  v162 = *(a1 + 2056);
  if (v162 && *(v162 + 16) >= 2u)
  {
    *(a1 + 2064) |= 2u;
  }

  return a1;
}

int64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configurePBE(uint64_t a1, uint64_t a2, unsigned int a3, int a4, __int16 a5, _DWORD *a6, int a7, int a8, char a9, unsigned __int8 a10, char a11)
{
  if (a8)
  {
    v19 = 8;
  }

  else
  {
    v19 = 0;
  }

  if ((*a6 & 0x1F) == 0x17)
  {
    goto LABEL_41;
  }

  v18 = a7;
  LOWORD(v14) = a5;
  v15 = a4;
  v17 = a3;
  v16 = a2;
  v13 = a1;
  v20 = *(a2 + 208);
  if ((*a6 & 0x100) == 0 || a8)
  {
    v54 = *(v20 + 84);
    v59 = a6;
    if ((a11 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v51 = 181888;
    LOBYTE(v53) = 3;
    LOBYTE(v52) = 35;
    goto LABEL_13;
  }

  v54 = 0;
  v59 = a6;
  if (a11)
  {
    goto LABEL_12;
  }

LABEL_8:
  v52 = *(v20 + 40);
  v53 = *(v20 + 16);
  v21 = *(v20 + 68);
  if (*(v20 + 64) == 0x10000)
  {
    v21 = 74880;
  }

  v51 = v21;
LABEL_13:
  LODWORD(v11) = *(v20 + 24);
  v12 = &unk_2A179F000;
  {
    goto LABEL_42;
  }

  while (1)
  {
    if (*(v12 + 1768) == 1)
    {
      {
        AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA();
      }

      if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear == 1)
      {
        *(v13 + 1568) = *(*(*(v13 + 400) + 848) + 16448);
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tpuState(&v60, v16, v14, v15, v17);
        v22 = v61;
        v23 = (v13 + 32 * (v19 + v18) + 1576);
        *v23 = v60;
        v23[1] = v22;
      }
    }

    v44 = *(v13 + 4908);
    v42 = *(v16 + 144);
    v50 = *(v16 + 192);
    v48 = *(v16 + 404);
    v49 = *(v16 + 396);
    v46 = *(v16 + 328);
    v47 = *(v16 + 324);
    v45 = *(*(v16 + 208) + 72);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, v14, 0, v17, 0);
    if (v11 < 2)
    {
      v41 = 0;
    }

    else
    {
      v41 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, 0, 0, 0, 1u);
    }

    v24 = *(v16 + 584);
    v55 = v19;
    if (v24 && *(v24 + 1304))
    {
      v40 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v24, v14, 0, v17, 0);
    }

    else
    {
      v40 = 0;
    }

    v58 = v15;
    v39 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)2,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v16, 0);
    v19 = 0;
    if (v11 >= 2)
    {
      v19 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)2,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v16, 1u);
    }

    v37 = v14;
    v25 = *(v16 + 24);
    v26 = *(v16 + 128);
    v56 = v18;
    v57 = v17;
    if (v25 == 9)
    {
      v38 = (v26 + 0x7FFF) >> 15;
      v14 = 1;
    }

    else
    {
      v14 = *(v16 + 136);
      v38 = *(v16 + 132);
    }

    v18 = a10;
    v27 = *(v16 + 112);
    v12 = *(v16 + 140);
    v28 = *(v16 + 392);
    v29 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v16, 0);
    v30 = 0;
    if (a9)
    {
      v30 = *(v16 + 320);
    }

    if (v26 >= 0x8000)
    {
      v31 = 0x8000;
    }

    else
    {
      v31 = v26;
    }

    if (v25 != 9)
    {
      v31 = v26;
    }

    v15 = v58;
    v36 = v27;
    v17 = v57;
    result = AGX::PBEStateEncoderGen10<kAGXRevHAL300>::StateFields::StateFields(&v60, 0, v52, v53, v50, v51, v49, v48, v54, v47, v46, v45, GPUVirtualAddress, v41, v40, v39, v19, v31, v38, v14, SHIWORD(v14), v57, v36, v42 + v58, v12, v28, v29, v44, v30 & 1, *(v16 + 236), *(v16 + 32), a10);
    v33 = (v55 + v56);
    v34 = (v13 + 32 * v33 + 2088);
    v35 = v61;
    *v34 = v60;
    v34[1] = v35;
    v11 = (v13 + 4 * v33);
    if (*(v16 + 240) == 1)
    {
      v12 = v13 + 8 * v33;
      *(v12 + 728) = *(v16 + 616);
      result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, 0, 0, v57, 0);
      *(v12 + 600) = result;
      v15 = v58 | (v37 << 16);
      v11[242] = v15;
    }

    if ((~*v59 & 0xFF000) != 0)
    {
      break;
    }

LABEL_41:
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_42:
    {
      *(v12 + 1768) = 1;
    }
  }

  v11[226] = (*v59 >> 12) % *(v13 + 4940);
  v11[354] = (*v59 >> 21) & 0xF;
  return result;
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v10 = a1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 312) = 0u;
  v11 = (a4 + 1700);
  v12 = (a1 + 4096);
  *(a1 + 400) = a2;
  *(a1 + 440) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  v415 = a1 + 408;
  *(a1 + 448) = xmmword_29D2F0D50;
  *(a1 + 464) = 0xDEADBEEFBAADC0DELL;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2232) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2264) = 0u;
  *(a1 + 2280) = 0u;
  *(a1 + 2296) = 0u;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0u;
  *(a1 + 2360) = 0u;
  *(a1 + 2376) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2424) = 0u;
  *(a1 + 2440) = 0u;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 872) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 1560) = 0;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  v394 = (a1 + 1480);
  *(a1 + 1480) = 0u;
  *(a1 + 2984) = 0;
  *(a1 + 2986) = (*(a4 + 1696) & 0x3FF) != 0;
  v413 = a1 + 2992;
  bzero((a1 + 2992), 0x240uLL);
  *(v10 + 3568) = a5;
  *(v10 + 3572) = a6;
  v13 = *(a4 + 1744);
  *(v10 + 3576) = v13;
  v422 = *(a4 + 1745);
  *(v10 + 3580) = v422;
  v411 = v10 + 3648;
  bzero((v10 + 3648), 0x328uLL);
  *(v10 + 4456) = -1;
  *(v10 + 4464) = 0u;
  *(v10 + 4480) = 0u;
  *(v10 + 4496) = 0u;
  *(v10 + 4512) = 0u;
  *(v10 + 4528) = 0u;
  *(v10 + 4544) = 0u;
  *(v10 + 4560) = 0u;
  *(v10 + 4576) = 0u;
  *(v10 + 4592) = 0u;
  *(v10 + 4608) = 0u;
  *(v10 + 4624) = 0u;
  *(v10 + 4640) = 0u;
  *(v10 + 4656) = 0u;
  *(v10 + 4672) = 0u;
  *(v10 + 4688) = 0u;
  *(v10 + 4704) = 0u;
  *(v10 + 4720) = 0u;
  *(v10 + 4736) = 0u;
  *(v10 + 4752) = 0u;
  *(v10 + 4768) = 0u;
  *(v10 + 4784) = 0u;
  *(v10 + 4800) = 0u;
  *(v10 + 4816) = 0u;
  *(v10 + 4832) = 0u;
  *(v10 + 4848) = 0u;
  *(v10 + 4864) = 0u;
  *(v10 + 4880) = 0u;
  v12[809] = *(a4 + 1874);
  *(v10 + 4908) = *(a4 + 1740);
  *(v10 + 4912) = *(a4 + 1640);
  *(v10 + 4920) = 1065353216;
  v12[832] = 0;
  *(v10 + 4932) = 0;
  *(v10 + 4940) = *(a4 + 1748);
  *(v10 + 4944) = *(a4 + 1752);
  *(v10 + 4948) = *(a4 + 1688);
  *(v10 + 4952) = *(a4 + 1696);
  v12[860] = 0;
  v12[862] = *(a4 + 1875);
  *(v10 + 4960) = 0;
  v418 = v12;
  v12[866] = 1;
  *(v10 + 4968) = 0;
  *(v10 + 5360) = 0;
  *(v10 + 5364) = 0;
  *(v10 + 5368) = 0;
  *(v10 + 5372) = 0;
  *(v10 + 5416) = 13;
  *(v10 + 5424) = 0;
  v391 = (v10 + 5424);
  *(v10 + 5432) = 0u;
  v396 = (v10 + 5408);
  *(v10 + 5408) = &unk_2A23F7990;
  *(v10 + 5448) = 0u;
  *(v10 + 5464) = 0u;
  v400 = v10 + 5448;
  *(v10 + 5480) = 0u;
  *(v10 + 5504) = 13;
  *(v10 + 5528) = 0;
  v390 = (v10 + 5512);
  *(v10 + 5512) = 0u;
  *(v10 + 5496) = &unk_2A23F7990;
  *(v10 + 5568) = 0u;
  *(v10 + 5552) = 0u;
  *(v10 + 5536) = 0u;
  *(v10 + 5592) = 19;
  *(v10 + 5616) = 0;
  *(v10 + 5600) = 0u;
  *(v10 + 5584) = &unk_2A23F9738;
  *(v10 + 5702) = 0;
  *(v10 + 5672) = 0u;
  *(v10 + 5688) = 0u;
  *(v10 + 5640) = 0u;
  *(v10 + 5656) = 0u;
  v397 = v10 + 5624;
  *(v10 + 5624) = 0u;
  *(v10 + 5720) = 19;
  *(v10 + 5744) = 0;
  *(v10 + 5728) = 0u;
  v395 = (v10 + 5712);
  *(v10 + 5712) = &unk_2A23F9738;
  *(v10 + 5830) = 0;
  *(v10 + 5800) = 0u;
  *(v10 + 5816) = 0u;
  *(v10 + 5768) = 0u;
  *(v10 + 5784) = 0u;
  v398 = v10 + 5752;
  *(v10 + 5752) = 0u;
  *(v10 + 5872) = 0;
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v15 = vandq_s8(*v11, v14);
  *(v10 + 5888) = vextq_s8(v15, v15, 4uLL);
  v16 = v11[1];
  v16.i32[2] = *(a4 + 1692);
  v16.i32[3] = *(a4 + 1864);
  *v436 = vandq_s8(v16, xmmword_29D2F1F70);
  *(v10 + 5904) = *v436;
  *(v10 + 5920) = 0u;
  *(v10 + 5936) = 0u;
  *(v10 + 5952) = 0u;
  *(v10 + 5968) = 0u;
  *(v10 + 5984) = 0u;
  *(v10 + 6000) = 0u;
  *(v10 + 6016) = 0u;
  *(v10 + 6028) = 0u;
  memset_pattern16((v10 + 6048), &unk_29D2F2760, 0x40uLL);
  *(v10 + 6112) = vdupq_n_s64(4uLL);
  *(v10 + 6128) = 0u;
  memmove((v10 + 6048), (a4 + 1960), 0x50uLL);
  v433 = a4;
  if (*(a4 + 1884) == 1)
  {
    v17 = (a4 + 1888);
    v18 = v12;
    v19 = HIDWORD(v436[1]);
    goto LABEL_11;
  }

  if (*(a4 + 1872))
  {
    v18 = v12;
    v19 = HIDWORD(v436[1]);
    if ((*(a4 + 1744) - 2) < 7u)
    {
      v20 = (*(a4 + 1744) - 2);
      v21 = &off_29F341C28;
LABEL_8:
      v17 = v21[v20];
      goto LABEL_11;
    }

    v17 = &msaa_agx_offsets_1;
  }

  else
  {
    v18 = v12;
    v19 = HIDWORD(v436[1]);
    if ((*(a4 + 1744) - 2) < 7u)
    {
      v20 = (*(a4 + 1744) - 2);
      v21 = &off_29F341BF0;
      goto LABEL_8;
    }

    v17 = &msaa_metal_offsets_1;
  }

LABEL_11:
  if (v13)
  {
    if (v13 >= 8)
    {
      v22 = v13 & 0xF8;
      v23 = (v10 + 3616);
      v24 = (v17 + 4);
      __asm { FMOV            V0.4S, #16.0 }

      v29 = v22;
      do
      {
        v30 = v24[-2];
        v31 = v24[-1];
        v32 = *v24;
        v33 = v24[1];
        v24 += 4;
        v34.i64[0] = 0x3F0000003F000000;
        v34.i64[1] = 0x3F0000003F000000;
        v35 = vmlaq_f32(v34, _Q0, v31);
        v31.i64[0] = 0x3F0000003F000000;
        v31.i64[1] = 0x3F0000003F000000;
        v23[-2] = vcvtq_u32_f32(vmlaq_f32(v31, _Q0, v30));
        v23[-1] = vcvtq_u32_f32(v35);
        v30.i64[0] = 0x3F0000003F000000;
        v30.i64[1] = 0x3F0000003F000000;
        v31.i64[0] = 0x3F0000003F000000;
        v31.i64[1] = 0x3F0000003F000000;
        *v23 = vcvtq_u32_f32(vmlaq_f32(v31, _Q0, v32));
        v23[1] = vcvtq_u32_f32(vmlaq_f32(v30, _Q0, v33));
        v23 += 4;
        v29 -= 8;
      }

      while (v29);
      if (v22 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = 0;
    }

    v36 = v13 - v22;
    v37 = v22;
    v38 = (8 * v22 + v10 + 3584);
    v39 = &v17[v37];
    __asm { FMOV            V0.2S, #16.0 }

    do
    {
      v41 = *v39++;
      *v38++ = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, _D0, v41));
      --v36;
    }

    while (v36);
  }

LABEL_19:
  v18[800] = *(a4 + 1704) != 0;
  v42 = *(a4 + 1684);
  v44 = *(a4 + 1680) & 0xFFE00FFF | ((*(a4 + 1748) & 0x1FF) << 12);
  v43 = *(a4 + 1664);
  *v415 = *(a4 + 1648);
  *(v415 + 16) = v43;
  *(v10 + 440) = v44;
  *(v10 + 444) = v42;
  LOWORD(v44) = v19;
  v18[861] = v19 != 0;
  *(v10 + 4964) = *(a4 + 1868) & 0x3FF;
  LOBYTE(v42) = *(a4 + 1872);
  v18[810] = v42;
  if (v42)
  {
    v45 = 0;
  }

  else
  {
    v45 = *(a2[106] + 16948) >> 18 > 2u;
    v44 = *(v10 + 5916);
  }

  v389 = (v10 + 5600);
  v18[811] = v45;
  v46 = 83;
  if (!*(a4 + 1884))
  {
    v46 = 0;
  }

  *(v10 + 6128 + ((v46 >> 3) & 8)) |= 1 << (v46 & 0x3F);
  v47 = 0x4000000000000000;
  if ((v44 & 0x300) == 0)
  {
    v47 = 1;
  }

  v48 = v47 | *(v10 + 6128);
  v49 = 0x2000000000000000;
  if (!v44)
  {
    v49 = 1;
  }

  *(v10 + 6128) = v48 | v49;
  {
    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::isSuballocDisabled = *(a2[106] + 16989);
  }

  *(v10 + 4416) = *(*(*(v10 + 400) + 848) + 16448);
  atomic_fetch_add(a2 + 123, *a4);
  atomic_fetch_add(a2 + 124, *(a4 + 8));
  atomic_fetch_add(a2 + 125, *(a4 + 16));
  atomic_fetch_add(a2 + 126, *(a4 + 24));
  atomic_fetch_add(a2 + 127, *(a4 + 32));
  v18[802] = *(v10 + 5908) != 0;
  v437 = v10;
  v393 = *(v10 + 4948);
  if (v393)
  {
    v50 = 0;
    v416 = 0;
    v51 = 0;
    v408 = v10 + 4464;
    v405 = v10 + 3232;
    v410 = v10 + 3424;
    v406 = v10 + 3504;
    v409 = v10 + 5936;
    v404 = v10 + 5984;
    v419 = (v433 + 1648);
    v407 = v10 + 4592;
    v402 = v10 + 2600;
    v403 = v10 + 4864;
    v52 = *(v10 + 4948);
    while (1)
    {
      v429 = v51;
      v431 = v50;
      v426 = v52;
      v53 = __clz(__rbit32(v52));
      v54 = v433 + 40 + 80 * v53;
      *(v413 + 8 * (3 * v53)) = *(v54 + 16);
      v55 = 3 * v53 + 1;
      *(v413 + 8 * v55) = *(v54 + 24);
      v56 = 3 * v53 + 2;
      *(v413 + 8 * v56) = *(v54 + 32);
      v57 = *(v54 + 72);
      v58 = 1 << v53;
      if (v57 == 1)
      {
        *(v10 + 4968) |= v58;
      }

      v59 = *(v10 + 4964);
      v60 = *(v54 + 40);
      *(v410 + 8 * v53) = v60;
      switch(*(v60 + 32))
      {
        case 0xF0:
        case 0xF1:
        case 0x1F4:
        case 0x1F5:
        case 0x1F6:
        case 0x1F9:
        case 0x1FALL:
        case 0x1FCLL:
        case 0x1FDLL:
        case 0x208:
        case 0x209:
        case 0x20ALL:
        case 0x20DLL:
        case 0x20ELL:
        case 0x210:
        case 0x211:
        case 0x21CLL:
        case 0x21DLL:
        case 0x21FLL:
        case 0x220:
        case 0x222:
        case 0x223:
        case 0x232:
        case 0x234:
        case 0x235:
        case 0x23ALL:
        case 0x23BLL:
        case 0x23DLL:
        case 0x23ELL:
        case 0x24CLL:
        case 0x24DLL:
        case 0x24FLL:
        case 0x250:
        case 0x252:
        case 0x253:
        case 0x255:
        case 0x256:
        case 0x258:
        case 0x259:
        case 0x283:
        case 0x285:
        case 0x287:
        case 0x289:
          v418[861] = 1;
          break;
        default:
          break;
      }

      v61 = v59 & v58;
      __p[2] = *(v433 + 1680);
      v62 = *(v433 + 1664);
      v449 = *v419;
      *__p = v62;
      LODWORD(__p[2]) = __p[2] & 0xFFE00FFF | ((*(v433 + 1748) & 0x1FF) << 12);
      v423 = (v54 + 56);
      v417 = (v54 + 48);
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configurePBE(v437, v60, *(v54 + 56), *(v54 + 52), *(v54 + 48), &__p[-2] + v53, v53, 0, v57, (v59 & v58) != 0, (*(v437 + 5912) & v58) != 0);
      v63 = (v409 + 6 * v53);
      v63[1] = *(v54 + 48);
      *v63 = *(v54 + 52);
      v63[2] = *(v54 + 56);
      v434 = 1 << v53;
      if ((*(v437 + 4952) & v58) != 0)
      {
        v64 = v433 + 680 + 80 * v53;
        *(v405 + 8 * (3 * v53)) = *(v64 + 16);
        *(v405 + 8 * v55) = *(v64 + 24);
        *(v405 + 8 * v56) = *(v64 + 32);
        v65 = *(v64 + 40);
        *(v406 + 8 * v53) = v65;
        __p[2] = *(v433 + 1680);
        v66 = *(v433 + 1664);
        v449 = *v419;
        *__p = v66;
        LODWORD(__p[2]) = __p[2] & 0xFFE00FFF | ((*(v433 + 1748) & 0x1FF) << 12);
        AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configurePBE(v437, v65, *(v64 + 56), *(v64 + 52), *(v64 + 48), &__p[-2] + v53, v53, 1, *(v64 + 72), v61 != 0, (*(v437 + 5912) & v58) != 0);
        v67 = (v404 + 6 * v53);
        v67[1] = *(v64 + 48);
        *v67 = *(v64 + 52);
        v67[2] = *(v64 + 56);
      }

      *(v408 + 16 * v53) = *v54;
      v68 = *(v54 + 52);
      v69 = *(v60 + 396);
      v70 = *(v60 + 392);
      v71 = *(v60 + 424);
      v72 = *(v60 + 432);
      v73 = *(v60 + 440);
      v74 = *(v60 + 192);
      v75 = *(v60 + 128);
      if (*(v60 + 24) == 9)
      {
        if (v75 >= 0x8000)
        {
          LOWORD(v76) = 0x8000;
        }

        else
        {
          LOWORD(v76) = *(v60 + 128);
        }

        v77 = (v75 + 0x7FFF) >> 15;
        LOWORD(v78) = 1;
      }

      else
      {
        v77 = *(v60 + 132);
        v78 = *(v60 + 136);
        v76 = *(v60 + 128);
      }

      if ((*(v60 + 396) & 0xFF00) == 0x400)
      {
        LOWORD(v70) = 6 * v70;
        LODWORD(v69) = v69 & 0xFF0000FF | 0x10200;
      }

      _ZF = v74 == 4 || (v74 & 0xFFFFFFFD) == 1;
      v80 = _ZF;
      if (v69 && BYTE1(v69) == 1)
      {
        if (!BYTE2(v69) || (v69 & 0x10000) == 0)
        {
          goto LABEL_58;
        }

        v81 = 1;
      }

      else
      {
        if (BYTE1(v69) == 2 && (v69 & 0x30000) == 0)
        {
          v81 = 2;
          goto LABEL_83;
        }

        if (!v69)
        {
          if (BYTE1(v69) != 2 || (v69 & 0x10000) == 0)
          {
LABEL_58:
            v81 = 0;
            goto LABEL_83;
          }

LABEL_78:
          v81 = 3;
          goto LABEL_83;
        }

        switch(BYTE1(v69))
        {
          case 2u:
            if ((BYTE2(v69) & 3) == 3)
            {
              v81 = 8;
              break;
            }

            if ((v69 & 0x10000) != 0)
            {
              goto LABEL_78;
            }

            if ((v69 & 0x20000) == 0)
            {
              goto LABEL_58;
            }

            v81 = 4;
            break;
          case 3u:
            v81 = 5;
            if (BYTE2(v69))
            {
              v81 = 0;
            }

            break;
          case 4u:
            if (BYTE2(v69))
            {
              if ((v69 & 0x10000) == 0)
              {
                goto LABEL_58;
              }

              v81 = 7;
            }

            else
            {
              v81 = 6;
            }

            break;
          default:
            goto LABEL_58;
        }
      }

LABEL_83:
      v82 = *(v60 + 416) & 0xFC0000000FFFFFF0 | v81;
      if (v80)
      {
        v83 = v77;
      }

      else
      {
        v83 = v76;
      }

      if (v80)
      {
        v84 = v76;
      }

      else
      {
        v84 = v77;
      }

      if (v69 && v69 != 3)
      {
        if ((v69 & 0x10000) != 0)
        {
          v85 = v70;
        }

        else
        {
          v85 = v78;
        }

        v71 = v71 & 0xC0003FFFFFFFFFFFLL | ((v85 - 1) << 46);
      }

      else if ((*(v60 + 416) & 0x30 | v81 & 0x3F) == 3)
      {
        v72 = v72 & 0xFFFFFFFFFFFFF800 | (v70 - 1) & 0x7FF;
      }

      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v60, 0, 0, 0, 0);
      v87 = v82 | (((v84 - 1) & 0x7FFF) << 43) | (((v83 - 1) & 0x7FFF) << 28);
      if ((v82 & 0x3F) == 2)
      {
        v88 = v71 & 0xFFFFF00000000000 | (GPUVirtualAddress >> 4) & 3;
      }

      else
      {
        v88 = v71;
      }

      v89 = v88 & 0xFFFFF00000000003 | (4 * ((GPUVirtualAddress >> 6) & 0x3FFFFFFFFFFLL));
      if (*(v60 + 64) < 2u)
      {
        v90 = v87 & 0xEFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v90 = v87 | 0x1000000000000000;
        v72 = v72 & 0xF0000FFFFFFFFFFFLL | (((*(v60 + 144) + v68) & 0xF | (16 * ((*(v60 + 144) + v68) & 0xFu))) << 44);
        v89 |= 0x8000000000000000;
      }

      v10 = v437;
      v51 = v429;
      v91 = (v411 + 32 * v53);
      *v91 = v90;
      v91[1] = v89;
      v91[2] = v72;
      v91[3] = v73;
      if (*(v437 + 5888))
      {
        {
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa = 1;
        }

        if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa == 1)
        {
          {
            AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA();
          }

          if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear == 1)
          {
            v92 = v402 + 24 * v53;
            v93 = *(v60 + 192);
            if (v93 == 4)
            {
              *v92 = xmmword_29D2F1F80;
              *(v92 + 16) = 0;
              v94 = 1.0;
              v95 = 0.0;
              v96 = 0.0;
              v97 = 0.0;
            }

            else
            {
              v96 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[v93];
              *v92 = v96;
              *(v92 + 4) = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[(v93 - 1) & 3];
              v94 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[(v93 + 1) & 3];
              *(v92 + 8) = v94;
              *(v92 + 12) = v96;
              v95 = 0.0;
              v97 = 0.0;
              if ((v93 - 1) <= 1)
              {
                v98 = 3568;
                if (v93 == 1)
                {
                  v98 = 3572;
                }

                v97 = *(v437 + v98);
              }

              *(v92 + 16) = v97;
              if ((v93 & 0xFFFFFFFE) == 2)
              {
                _ZF = v93 == 3;
                v99 = 3568;
                if (!_ZF)
                {
                  v99 = 3572;
                }

                v95 = *(v437 + v99);
              }
            }

            *(v92 + 20) = v95;
            v100 = *(v437 + 4964) & v434;
            if (v100)
            {
              v101 = *(v437 + 3572);
              *(v92 + 16) = v97 + (v94 * v101);
              *(v92 + 20) = v95 + (v96 * v101);
              *(v92 + 8) = -v94;
              *(v92 + 12) = -v96;
            }

            if ((*(v437 + 4952) & v434) != 0)
            {
              v102 = v402 + 24 * (v53 + 8);
              v103 = *(*(v406 + 8 * v53) + 192);
              if (v103 == 4)
              {
                *v102 = xmmword_29D2F1F80;
                *(v102 + 16) = 0;
                v104 = 1.0;
                v105 = 0.0;
                v106 = 0.0;
                v107 = 0.0;
              }

              else
              {
                v106 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[v103];
                *v102 = v106;
                *(v102 + 4) = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[(v103 - 1) & 3];
                v104 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[(v103 + 1) & 3];
                *(v102 + 8) = v104;
                *(v102 + 12) = v106;
                v105 = 0.0;
                v107 = 0.0;
                if ((v103 - 1) <= 1)
                {
                  v108 = 3568;
                  if (v103 == 1)
                  {
                    v108 = 3572;
                  }

                  v107 = *(v437 + v108);
                }

                *(v102 + 16) = v107;
                if ((v103 & 0xFFFFFFFE) == 2)
                {
                  _ZF = v103 == 3;
                  v109 = 3568;
                  if (!_ZF)
                  {
                    v109 = 3572;
                  }

                  v105 = *(v437 + v109);
                }
              }

              *(v102 + 20) = v105;
              if (v100)
              {
                v110 = *(v437 + 3572);
                *(v102 + 16) = v107 + (v104 * v110);
                *(v102 + 20) = v105 + (v106 * v110);
                *(v102 + 8) = -v104;
                *(v102 + 12) = -v106;
              }
            }
          }
        }
      }

      v111 = v407 + 24 * v53;
      v112 = *(v60 + 192);
      if (v112 == 4)
      {
        *v111 = xmmword_29D2F1F80;
        *(v111 + 16) = 0;
        v113 = 1.0;
        v114 = 0.0;
        v115 = 0.0;
        v116 = 0.0;
      }

      else
      {
        v115 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[v112];
        *v111 = v115;
        *(v111 + 4) = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[(v112 - 1) & 3];
        v113 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *,AGX::HAL300::CommandBuffer *,AGX::HAL300::FramebufferDriverConfig const&,unsigned int,unsigned int,BOOL)::{lambda(AGX::HAL300::Texture *,float *,BOOL)#1}::operator() const(AGX::HAL300::Texture *,float *,BOOL)::rotation_elements[(v112 + 1) & 3];
        *(v111 + 8) = v113;
        *(v111 + 12) = v115;
        v114 = 0.0;
        v116 = 0.0;
        if ((v112 - 1) <= 1)
        {
          v117 = 3568;
          if (v112 == 1)
          {
            v117 = 3572;
          }

          v116 = *(v437 + v117);
        }

        *(v111 + 16) = v116;
        if ((v112 & 0xFFFFFFFE) == 2)
        {
          _ZF = v112 == 3;
          v118 = 3568;
          if (!_ZF)
          {
            v118 = 3572;
          }

          v114 = *(v437 + v118);
        }
      }

      *(v111 + 20) = v114;
      if ((*(v437 + 4964) & v434) != 0)
      {
        v119 = *(v437 + 3572);
        *(v111 + 16) = v116 + (v113 * v119);
        *(v111 + 20) = v114 + (v115 * v119);
        *(v111 + 8) = -v113;
        *(v111 + 12) = -v115;
      }

      v120 = *(v60 + 24);
      if (v120 > 8)
      {
        goto LABEL_152;
      }

      if (((1 << v120) & 0x168) == 0)
      {
        if (v120 == 1)
        {
          v416 |= (1 << v53);
          v51 = v429 | (1 << v53);
LABEL_155:
          v121 = 1 << (2 * v53);
          goto LABEL_156;
        }

        if (v120 == 7)
        {
          v121 = 3 << (2 * v53);
          v51 = v429 | (1 << v53);
          goto LABEL_156;
        }

LABEL_152:
        if (!v120)
        {
          goto LABEL_155;
        }

        goto LABEL_148;
      }

      v416 |= (1 << v53);
      v51 = v429 | (1 << v53);
LABEL_148:
      v121 = 2 << (2 * v53);
LABEL_156:
      if ((v434 & v51) == 0 || v120 > 8)
      {
        goto LABEL_33;
      }

      if (((1 << v120) & 0x16A) != 0)
      {
        v423 = v417;
      }

      else if (v120 != 7)
      {
        goto LABEL_33;
      }

      *(v403 + 4 * v53) = *v423;
LABEL_33:
      v50 = v431 | v121;
      v52 = v434 ^ v426;
      if (v434 == v426)
      {
        v122 = (v431 | v121);
        v123 = v416 << 16;
        v18 = v418;
        goto LABEL_167;
      }
    }
  }

  v123 = 0;
  v122 = 0;
LABEL_167:
  *(v10 + 3184) = *(v433 + 1336);
  *(v10 + 3192) = *(v433 + 1344);
  *(v10 + 3200) = *(v433 + 1352);
  *(v10 + 3488) = *(v433 + 1360);
  *(v10 + 3208) = *(v433 + 1496);
  *(v10 + 3216) = *(v433 + 1504);
  *(v10 + 3224) = *(v433 + 1512);
  *(v10 + 3496) = *(v433 + 1520);
  bzero(v10, 0x190uLL);
  v124 = *(v10 + 3488);
  if (!v124)
  {
    v131 = 0;
    v427 = 0;
    v430 = 0;
    LODWORD(v432) = 0;
    v435 = 0;
    LODWORD(v132) = 0;
    v133 = 0;
    v420 = 0;
    v134 = *(v10 + 3496);
    if (v134)
    {
      goto LABEL_221;
    }

    goto LABEL_171;
  }

  v125 = *(v433 + 1368);
  *(v10 + 6034) = v125;
  v126 = *(v433 + 1372);
  *(v10 + 6032) = v126;
  *(v10 + 6036) = *(v433 + 1376);
  v127 = *(v124 + 32);
  if (*(v124 + 236))
  {
    v128 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v124, v125, 0, 0, 0);
    v129 = *(v10 + 3488);
    v130 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v129, *(v129 + 144) + *(v433 + 1372), 0) & 0xFFFFFFFFFF80;
  }

  else
  {
    v128 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v124, v125, *(v124 + 144) + v126, 0, 0);
    v130 = 0;
    v129 = *(v10 + 3488);
  }

  v140 = *(v129 + 396);
  if ((v140 & 0xFF00) == 0x400)
  {
    v141 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v129, 0);
    v142 = *(v129 + 236);
    if (v142)
    {
      LODWORD(v132) = (v141 + v142 - 1) & -v142;
    }

    else
    {
      LODWORD(v132) = v141;
    }

    v143 = *(v129 + 584);
    if (!v143)
    {
      goto LABEL_195;
    }
  }

  else if ((v140 & 0x10000) != 0)
  {
    if (*(v129 + 396))
    {
      v144 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v129, 0);
      LODWORD(v132) = v144;
      v145 = *(v129 + 236);
      if (v145)
      {
        v132 = (v144 + v145 - 1) & -v145;
      }

      v143 = *(v129 + 584);
      if (!v143)
      {
        goto LABEL_195;
      }
    }

    else
    {
      LODWORD(v132) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v129, 0) * *(v129 + 132) + 127) & 0xFFFFFF80;
      v129 = *(v10 + 3488);
      v143 = *(v129 + 584);
      if (!v143)
      {
        goto LABEL_195;
      }
    }
  }

  else
  {
    LODWORD(v132) = 0;
    v143 = *(v129 + 584);
    if (!v143)
    {
      goto LABEL_195;
    }
  }

  v146 = *(v129 + 144) + *(v433 + 1372);
  if (*(v143 + 1304) <= v146)
  {
LABEL_195:
    LODWORD(v432) = 0;
    v435 = 0;
    goto LABEL_208;
  }

  v435 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v143, *(v433 + 1368), v146, 0, 0);
  v147 = *(v10 + 3488);
  v148 = *(v147 + 584);
  if (!v148 || !*(v148 + 1304))
  {
    goto LABEL_197;
  }

  v149 = *(v147 + 396);
  if ((v149 & 0xFF00) == 0x400)
  {
    v150 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v148, 0);
    v151 = *(v148 + 236);
    if (v151)
    {
      LODWORD(v152) = (v150 + v151 - 1) & -v151;
    }

    else
    {
      LODWORD(v152) = v150;
    }

    goto LABEL_207;
  }

  if ((v149 & 0x10000) == 0)
  {
LABEL_197:
    LODWORD(v432) = 0;
    goto LABEL_208;
  }

  if ((*(v148 + 396) & 0xFF00) == 0x400)
  {
    v153 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v148, 0);
    v154 = *(v148 + 236);
    v155 = (v153 + v154 - 1) & -v154;
    if (!v154)
    {
      v155 = v153;
    }

    v432 = 6 * v155;
  }

  else
  {
    if (!*(v148 + 396))
    {
      v152 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v148, 0) * *(v148 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
      goto LABEL_207;
    }

    v432 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v148, 0);
    LODWORD(v154) = *(v148 + 236);
  }

  if (!v154)
  {
    goto LABEL_208;
  }

  v152 = (v432 + v154 - 1) & -v154;
LABEL_207:
  LODWORD(v432) = v152;
LABEL_208:
  v430 = v130;
  v156 = (*(v433 + 1708) & 0x100) == 0;
  *(v10 + 5360) |= 3u;
  *(v10 + 5368) |= (*(v433 + 1704) >> 7) & 2;
  *(v10 + 5370) |= v156;
  *(v10 + 5372) |= (*(v433 + 1700) >> 7) & 2;
  v157 = (*(v433 + 1320) * 65535.0);
  if (v127 != 250)
  {
    v157 = *(v433 + 1320);
  }

  *(v10 + 4920) = v157;
  *(v10 + 4924) = v127 == 250;
  if (*(v433 + 1876) == 2)
  {
    v133 = 4008574976;
    if (v128 != 4008574976)
    {
      v158 = *(v437 + 3568);
      v159 = vcgt_u32(0x1100000011, v158);
      v160 = vsub_s32(0x2000000020, vclz_s32(vadd_s32(v158, -1)));
      v421 = v160.i8[4];
      v161 = vbsl_s8(v159, 0x2000000020, vshl_u32(0x100000001, v160));
      v425 = v161.i32[0];
      v428 = v159.i8[4];
      *v437 = v161;
      v162 = *(v437 + 3576) * *(*(*(v437 + 3488) + 208) + 88);
      *(v437 + 24) = v162;
      v163 = [AGXG18PFamilyBuffer alloc];
      if (v428)
      {
        v164 = 5;
      }

      else
      {
        v164 = v421;
      }

      v165 = [(AGXBuffer *)v163 initWithDevice:*(v437 + 400) length:((v425 << v164) * v162) options:0 isSuballocDisabled:AGX::Framebuffer<AGX::HAL300::Encoders pinnedGPULocation:AGX::HAL300::Classes, AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *, AGX::HAL300::CommandBuffer *, AGX::HAL300::FramebufferDriverConfig const&, unsigned int, unsigned int, BOOL)::isSuballocDisabled, 0];
      *(v437 + 8) = v165;
      *(v437 + 16) = v128;
      v166 = HIBYTE(*(v433 + 1708)) & 1 | *(v437 + 392);
      *(v437 + 392) |= HIBYTE(*(v433 + 1708)) & 1;
      if ((*(v433 + 1712) & 0x100) != 0)
      {
        v167 = 2;
      }

      else
      {
        v167 = (*(v433 + 1720) >> 7) & 2;
      }

      *(v437 + 392) = v167 | v166;
      v133 = *(v165 + *MEMORY[0x29EDC5638] + 72);
    }
  }

  else
  {
    v133 = v128;
  }

  v10 = v437;
  v131 = *(v437 + 3488);
  v420 = vmax_u32(vshl_u32(v131[16], vneg_s32(vdup_n_s32(v131[18].i32[0] + *(v433 + 1372)))), 0x100000001);
  v427 = (v127 == 250) << 26;
  v18 = v418;
  v134 = *(v437 + 3496);
  if (v134)
  {
LABEL_221:
    v416 = v123;
    LODWORD(v417) = v122;
    v168 = *(v433 + 1528);
    *(v10 + 6040) = v168;
    v169 = *(v433 + 1532);
    *(v10 + 6038) = v169;
    v170 = *(v433 + 1536);
    *(v10 + 6042) = v170;
    v171 = *(v134 + 208);
    LODWORD(v172) = *(v171 + 24) - 1;
    v139 = v433;
    if (*(v134 + 236))
    {
      v173 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v134, v168, 0, v170, *(v171 + 24) - 1);
      v174 = *(v437 + 3496);
      v424 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v174, *(v174 + 144) + *(v433 + 1532), v172);
    }

    else
    {
      v173 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v134, v168, *(v134 + 144) + v169, v170, *(v171 + 24) - 1);
      v424 = 0;
      v174 = *(v437 + 3496);
    }

    v175 = *(v174 + 396);
    if ((v175 & 0xFF00) == 0x400)
    {
      v176 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v174, v172);
      v177 = *(v174 + 236);
      if (v177)
      {
        LODWORD(v137) = (v176 + v177 - 1) & -v177;
      }

      else
      {
        LODWORD(v137) = v176;
      }

      v178 = *(v174 + 584);
      if (!v178)
      {
        goto LABEL_245;
      }
    }

    else if ((v175 & 0x10000) != 0)
    {
      if (*(v174 + 396))
      {
        v179 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v174, v172);
        LODWORD(v137) = v179;
        v180 = *(v174 + 236);
        if (v180)
        {
          v137 = ((v179 + v180 - 1) & -v180);
        }

        v178 = *(v174 + 584);
        if (!v178)
        {
          goto LABEL_245;
        }
      }

      else
      {
        LODWORD(v137) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v174, v172) * *(v174 + 132) + 127) & 0xFFFFFF80;
        v174 = *(v437 + 3496);
        v178 = *(v174 + 584);
        if (!v178)
        {
          goto LABEL_245;
        }
      }
    }

    else
    {
      LODWORD(v137) = 0;
      v178 = *(v174 + 584);
      if (!v178)
      {
        goto LABEL_245;
      }
    }

    v181 = *(v174 + 144) + *(v433 + 1532);
    if (*(v178 + 1304) > v181)
    {
      v136 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v178 + 648 * v172, *(v433 + 1528), v181, *(v433 + 1536), 0);
      v182 = *(v437 + 3496);
      v183 = *(v182 + 584);
      if (v183 && *(v183 + 1304))
      {
        v184 = *(v182 + 396);
        if ((v184 & 0xFF00) == 0x400)
        {
          v185 = v183 + 648 * v172;
          v186 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v185, 0);
          v187 = *(v185 + 236);
          if (v187)
          {
            LODWORD(v135) = (v186 + v187 - 1) & -v187;
          }

          else
          {
            LODWORD(v135) = v186;
          }

          goto LABEL_248;
        }

        if ((v184 & 0x10000) != 0)
        {
          goto LABEL_585;
        }
      }

      LODWORD(v135) = 0;
      goto LABEL_248;
    }

LABEL_245:
    LODWORD(v135) = 0;
    v136 = 0;
    goto LABEL_248;
  }

LABEL_171:
  LODWORD(v135) = 0;
  v136 = 0;
  LODWORD(v137) = 0;
  v424 = 0;
  v138 = 0;
  v139 = v433;
  if (!v393)
  {
    goto LABEL_262;
  }

LABEL_264:
  v18[863] = 0;
  while (1)
  {
    v197 = v138 | v133;
    if (v138 | v133)
    {
      v198 = ((v420.i32[1] << 16) + 2147418112) & 0x7FFF0000 | (v420.i16[0] - 1) & 0x7FFFu;
      v199 = 68;
      if (!v435)
      {
        v199 = 0;
      }

      v200 = v199 | ((v136 != 0) << 8) | (16 * (v136 != 0)) | v427;
    }

    else
    {
      v200 = 0;
      v198 = 0;
    }

    v201 = v132 >> 14;
    v202 = v432 >> 7;
    if (v133)
    {
      v203 = v133 & 0xFFFFFFFFFF80;
      if (v201)
      {
        v204 = 14;
      }

      else
      {
        v204 = 7;
      }

      LODWORD(v205) = ((v132 >> v204) - 1) & 0x1FFFFF;
      if (v132 >= 0x80)
      {
        v205 = v205;
      }

      else
      {
        v205 = 0;
      }

      v206 = (v201 != 0) | (v205 << 14);
      v207 = v435 & 0xFFFFFFFFFF80;
      v208 = (v202 - 1) & 0x1FFFFF;
      if (v432 < 0x80)
      {
        v208 = 0;
      }

      v209 = v208 << 14;
      v210 = v430;
    }

    else
    {
      v203 = 0;
      v206 = 0;
      v207 = 0;
      v209 = 0;
      v210 = 0;
    }

    v211 = v137 >> 14;
    v212 = v135 >> 7;
    if (v138)
    {
      v213 = v138 & 0xFFFFFFFFFF80;
      v214 = v424 & 0xFFFFFFFFFF80;
      if (v211)
      {
        v215 = 14;
      }

      else
      {
        v215 = 7;
      }

      LODWORD(v216) = ((v137 >> v215) - 1) & 0x7FFFF;
      if (v137 >= 0x80)
      {
        v216 = v216;
      }

      else
      {
        v216 = 0;
      }

      v217 = (v211 != 0) | (v216 << 14);
      v218 = v136 & 0xFFFFFFFFFF80;
      v219 = (v212 - 1) & 0x1FFFFF;
      if (v135 < 0x80)
      {
        v219 = 0;
      }

      v220 = v219 << 14;
    }

    else
    {
      v213 = 0;
      v217 = 0;
      v218 = 0;
      v220 = 0;
      v214 = 0;
    }

    *(v437 + 4976) = v200;
    *(v437 + 4984) = 0;
    *(v437 + 4992) = v198;
    *(v437 + 5000) = v203;
    *(v437 + 5008) = v203;
    *(v437 + 5016) = v213;
    *(v437 + 5024) = v213;
    *(v437 + 5032) = v206;
    *(v437 + 5040) = v206;
    *(v437 + 5048) = v217;
    *(v437 + 5056) = v217;
    *(v437 + 5064) = v207;
    *(v437 + 5072) = v207;
    *(v437 + 5080) = v218;
    *(v437 + 5088) = v218;
    *(v437 + 5096) = v209;
    *(v437 + 5104) = v220;
    *(v437 + 5112) = v209;
    *(v437 + 5120) = v220;
    *(v437 + 5128) = 0;
    *(v437 + 5136) = v210;
    *(v437 + 5144) = v214;
    *(v437 + 5152) = v210;
    *(v437 + 5160) = v214;
    if (v197)
    {
      v221 = ((v420.i32[1] << 16) + 2147418112) & 0x7FFF0000 | (v420.i16[0] - 1) & 0x7FFFu;
      v222 = 68;
      if (!v435)
      {
        v222 = 0;
      }

      v197 = v222 | ((v136 != 0) << 8) | (16 * (v136 != 0)) | v427;
      v223 = v197 | 1;
      v224 = v432;
      if (!v133)
      {
LABEL_316:
        v225 = 0;
        v229 = 0;
        v231 = 0;
        v233 = 0;
        v234 = 0;
        v230 = v437;
        if (!v138)
        {
          goto LABEL_317;
        }

        goto LABEL_306;
      }
    }

    else
    {
      v221 = 0;
      v223 = 1;
      v224 = v432;
      if (!v133)
      {
        goto LABEL_316;
      }
    }

    v225 = v133 & 0xFFFFFFFFFF80;
    _ZF = v201 == 0;
    v226 = v201 != 0;
    if (_ZF)
    {
      v227 = 7;
    }

    else
    {
      v227 = 14;
    }

    LODWORD(v228) = ((v132 >> v227) - 1) & 0x1FFFFF;
    if (v132 >= 0x80)
    {
      v228 = v228;
    }

    else
    {
      v228 = 0;
    }

    v229 = v226 | (v228 << 14);
    v230 = v437;
    v231 = v435 & 0xFFFFFFFFFF80;
    v232 = (v202 - 1) & 0x1FFFFF;
    if (v224 < 0x80)
    {
      v232 = 0;
    }

    v233 = v232 << 14;
    v197 = v223;
    v234 = v430;
    if (!v138)
    {
LABEL_317:
      v235 = 0;
      v239 = 0;
      v240 = 0;
      v242 = 0;
      goto LABEL_318;
    }

LABEL_306:
    v235 = v138 & 0xFFFFFFFFFF80;
    v138 = v424 & 0xFFFFFFFFFF80;
    _ZF = v211 == 0;
    v236 = v211 != 0;
    if (_ZF)
    {
      v237 = 7;
    }

    else
    {
      v237 = 14;
    }

    LODWORD(v238) = ((v137 >> v237) - 1) & 0x7FFFF;
    if (v137 >= 0x80)
    {
      v238 = v238;
    }

    else
    {
      v238 = 0;
    }

    v239 = v236 | (v238 << 14);
    v240 = v136 & 0xFFFFFFFFFF80;
    v241 = (v212 - 1) & 0x1FFFFF;
    if (v135 < 0x80)
    {
      v241 = 0;
    }

    v242 = v241 << 14;
LABEL_318:
    v230[646] = v197;
    v230[647] = 0;
    v230[648] = v221;
    v230[649] = v225;
    v230[650] = v225;
    v230[651] = v235;
    v230[652] = v235;
    v230[653] = v229;
    v230[654] = v229;
    v230[655] = v239;
    v230[656] = v239;
    v230[657] = v231;
    v230[658] = v231;
    v230[659] = v240;
    v230[660] = v240;
    v230[661] = v233;
    v230[662] = v242;
    v230[663] = v233;
    v230[664] = v242;
    v230[665] = 0;
    v230[666] = v234;
    v230[667] = v138;
    v230[668] = v234;
    v230[669] = v138;
    v243 = *(a2[106] + 6208);
    if (v243 > 7)
    {
      LOWORD(v244) = 0;
    }

    else
    {
      v244 = (dword_29D2F4B3C[v243] & 7) << 9;
    }

    LODWORD(v457) = 13;
    v460 = 0;
    v458 = 0;
    v459 = 0;
    v245 = *(v415 + 16);
    v461 = *v415;
    v462 = v245;
    v246 = *(v415 + 32);
    v456 = &unk_2A23F7990;
    v463 = v246;
    v463.i32[3] = (*(v433 + 1708) | v244);
    v463.i32[2] = v122 | v123 | (*(v433 + 1704) << 24);
    v247 = *(*(v437 + 400) + 848);
    v435 = *(v433 + 1952);
    v248 = *v247;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    if ((areDriverUberShadersDisabled() & 1) != 0 || v463.i64[1] == 0x10000000000 && (v249 = vorrq_s8(v461, v462), !*&vorr_s8(*v249.i8, *&vextq_s8(v249, v249, 8uLL))) && (v463.i32[0] & 0x10000000 | (((3 - __clz(1 << ((v463.i32[0] >> 10) & 3) << 24)) & 3) << 10) | 0x400000) == v463.i32[0] || (v463.i64[1] & 0xE0000000000) != 0 || (v463.i32[0] & 0x600000) != 0x400000)
    {
      *&v449 = &unk_2A23F79D0;
      DWORD2(v449) = v457;
      memset(__p, 0, sizeof(__p));
      if (v459 != v458)
      {
        if (((v459 - v458) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_595;
      }

      v250 = 0;
      v251 = 0;
      *&v449 = &unk_2A23F7990;
      v451 = v461;
      v452 = v462;
      v453 = v463;
      v252 = 1;
    }

    else
    {
      v254 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(v247, v248, &v456, v435);
      v251 = v254;
      v250 = v254;
      if ((v463.i8[0] & ~v463.i8[12]) != 0 && (!v254 || (v250 = *(v254 + 3160)) == 0))
      {
        *&v449 = &unk_2A23F79D0;
        DWORD2(v449) = v457;
        memset(__p, 0, sizeof(__p));
        if (v459 != v458)
        {
          if (((v459 - v458) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_595;
        }

        *&v449 = &unk_2A23F7990;
        v453 = v463;
        v451 = v461;
        v452 = v462;
        v453.i32[2] = v463.i32[2] & 0xFFFFFF;
        v453.i8[12] = v463.i8[0];
        v250 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(v247, v248, &v449, v435);
        *&v449 = &unk_2A23F79D0;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v250 && v251)
        {
          *(v251 + 3160) = v250;
        }
      }

      if (v251 && v250)
      {
        if (**MEMORY[0x29EDC56B0])
        {
          IOGPUDeviceTraceEvent();
        }

        goto LABEL_375;
      }

      v252 = 0;
      v435 = 0;
      DWORD2(v449) = 13;
      memset(__p, 0, sizeof(__p));
      *&v449 = &unk_2A23F7990;
      v453 = 0u;
      v453.i16[6] = 256;
      v451 = 0u;
      v452 = 0u;
      v453.i32[0] = v463.i32[0] & 0x10000000 | (((3 - __clz(1 << ((v463.i32[0] >> 10) & 3) << 24)) & 3) << 10) | 0x400000;
    }

    os_unfair_lock_lock((v247 + 16880));
    if (v453.i64[1] == 0x10000000000)
    {
      v253 = vorrq_s8(v451, v452);
      if (!*&vorr_s8(*v253.i8, *&vextq_s8(v253, v253, 8uLL)) && (v453.i32[0] & 0x10000000 | (((3 - __clz(1 << ((v453.i32[0] >> 10) & 3) << 24)) & 3) << 10) | 0x400000) == v453.i32[0])
      {
        atomic_fetch_add(&AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::liveUberVariantUses, 1uLL);
      }
    }

    if (v251)
    {
      if (!v250)
      {
        goto LABEL_339;
      }
    }

    else
    {
      v251 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(v247, v248, &v449, v435);
      if (!v250)
      {
LABEL_339:
        v250 = v251;
        if ((v463.i8[0] & ~v463.i8[12]) != 0)
        {
          v250 = *(v251 + 3160);
          if (!v250)
          {
            v438 = &unk_2A23F79D0;
            v439 = v457;
            v441 = 0;
            v442 = 0;
            v440 = 0;
            if (v459 != v458)
            {
              if (((v459 - v458) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              goto LABEL_595;
            }

            v438 = &unk_2A23F7990;
            v445 = v463;
            v443 = v461;
            v444 = v462;
            v445.i32[2] = v463.i32[2] & 0xFFFFFF;
            v445.i8[12] = v463.i8[0];
            if (v252)
            {
              LODWORD(v465) = v439;
              v467 = 0;
              v468 = 0;
              v466 = 0;
              v464 = &unk_2A23F7990;
              v469 = v443;
              v470 = v444;
              v471 = v445;
            }

            else
            {
              LODWORD(v465) = 13;
              v467 = 0;
              v468 = 0;
              v466 = 0;
              v464 = &unk_2A23F7990;
              v471 = 0u;
              v469 = 0u;
              v470 = 0u;
              v471.i16[6] = 256;
              v471.i32[0] = v463.i32[0] & 0x10000000 | (((3 - __clz(1 << ((v463.i32[0] >> 10) & 3) << 24)) & 3) << 10) | 0x400000;
            }

            v255 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(v247, v248, &v464, v435);
            v250 = v255;
            if (*(v251 + 3152) == *(v255 + 3152))
            {
              *(v251 + 3160) = v255;
            }

            v464 = &unk_2A23F79D0;
            if (v466)
            {
              v467 = v466;
              operator delete(v466);
            }

            v438 = &unk_2A23F79D0;
            if (v440)
            {
              v441 = v440;
              operator delete(v440);
            }
          }
        }
      }
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    os_unfair_lock_unlock((v247 + 16880));
    *&v449 = &unk_2A23F79D0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

LABEL_375:
    *(v437 + 5376) = v251;
    *(v437 + 5384) = v250;
    *(v437 + 5416) = v457;
    if (v396 != &v456)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v391, v458, v459, (v459 - v458) >> 2);
    }

    v256 = v462;
    *v400 = v461;
    *(v400 + 16) = v256;
    *(v400 + 32) = v463;
    if ((v463.i8[0] & ~v463.i8[12]) != 0)
    {
      *&v449 = &unk_2A23F79D0;
      DWORD2(v449) = v457;
      memset(__p, 0, sizeof(__p));
      if (v459 != v458)
      {
        if (((v459 - v458) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_595;
      }

      v257 = 0;
      *&v449 = &unk_2A23F7990;
      v453 = v463;
      v451 = v461;
      v452 = v462;
      v453.i32[2] = v463.i32[2] & 0xFFFFFF;
      v453.i8[12] = v463.i8[0];
    }

    else
    {
      *&v449 = &unk_2A23F79D0;
      DWORD2(v449) = v457;
      memset(__p, 0, sizeof(__p));
      if (v459 != v458)
      {
        if (((v459 - v458) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_595;
      }

      v257 = 0;
      *&v449 = &unk_2A23F7990;
      v451 = v461;
      v452 = v462;
      v453 = v463;
    }

    *(v437 + 5504) = DWORD2(v449);
    v258 = *(v437 + 5512);
    if (v258)
    {
      *(v437 + 5520) = v258;
      operator delete(v258);
      *v390 = 0;
      v390[1] = 0;
      v390[2] = 0;
      v257 = __p[0];
      v259 = *&__p[1];
    }

    else
    {
      v259 = vdupq_n_s64(0);
    }

    *(v437 + 5512) = v257;
    *(v437 + 5520) = v259;
    v260 = v453;
    v261 = v452;
    *(v437 + 5536) = v451;
    *(v437 + 5552) = v261;
    *(v437 + 5568) = v260;
    v262 = *(v437 + 5488);
    v263 = *(v437 + 5576);
    v264 = *(v437 + 5568);
    v265 = *(v437 + 5480);
    v266 = *(v437 + 5376);
    v267 = v266 + 171;
    v268 = *(v437 + 5384);
    v269 = *(v268 + 716);
    v270 = v266[179];
    v271 = *(v268 + 688);
    v272 = v266[172];
    if (v272 <= v271)
    {
      v272 = v271;
    }

    v273.i32[0] = v272;
    v273.i32[1] = *v267;
    if (*(v437 + 5928) <= v270)
    {
      v274 = v270;
    }

    else
    {
      v274 = *(v437 + 5928);
    }

    if (v274 <= v269)
    {
      v274 = v269;
    }

    *(v437 + 5928) = v274;
    *(v437 + 5920) = vmax_u32(*(v437 + 5920), v273);
    v275 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(*v400, *(v437 + 5536)), vceqq_s32(*(v400 + 16), *(v437 + 5552)))));
    v275.i8[0] = vmaxv_u8(v275);
    v276 = (v265 == v264) & ~v275.i32[0];
    if (v262 != v263)
    {
      v276 = 0;
    }

    v277 = v276 | a7;
    v278 = v277 == 0;
    if (v277)
    {
      v279 = v400;
    }

    else
    {
      v279 = v437 + 5536;
    }

    if (v278)
    {
      v262 = v263;
    }

    v280 = *(v279 + 16);
    *(v437 + 4816) = *v279;
    *(v437 + 4832) = v280;
    *(v437 + 4848) = *(v279 + 32);
    *(v437 + 4856) = v262;
    v456 = &unk_2A23F79D0;
    if (v458)
    {
      v459 = v458;
      operator delete(v458);
    }

    v281 = *(v437 + 4948);
    if (!v281)
    {
      break;
    }

    LODWORD(v435) = 0;
    v282 = 0;
    LODWORD(v432) = 0;
    v283 = 0;
    v284 = 0;
    v285 = 0;
    DWORD2(v449) = 19;
    memset(__p, 0, sizeof(__p));
    v133 = &v451;
    memset(v455, 0, 22);
    v451 = 0u;
    v452 = 0u;
    v453 = 0u;
    v454 = 0u;
    v286 = *(v437 + 4940);
    v287 = (v286 << 36) | ((*(v437 + 3580) & 0xF) << 32) | 0x40000000000000;
    *&v449 = &unk_2A23F9738;
    *&v455[8] = v287;
    LODWORD(v287) = *(v433 + 1712);
    v288 = *(v433 + 1716);
    v289 = v287 & ~v288;
    v290 = *(v433 + 1700);
    v291 = v288 & ~v287 | v290;
    v430 = v433 + 680;
    v292 = v289 | v290;
    v293 = *(v433 + 1720);
    do
    {
      v295 = __clz(__rbit32(v281));
      v296 = *(v415 + 4 * v295);
      if ((~v296 & 0xFF000) == 0 || (v297 = (v296 >> 12), v298 = v451.i32[v295] & 0xFFFFFF00 | (v297 / v286), v451.i32[v295] = v298, v299 = v296 & 0x1F, v299 == 23))
      {
        std::__throw_bad_optional_access[abi:nn200100]();
        goto LABEL_595;
      }

      v300 = v298 & 0xE3FF00FF | ((v296 & 0x1F) << 8) | (v296 >> 5 << 26);
      v451.i32[v295] = v300;
      v301 = *(v433 + 40 + 80 * v295 + 40);
      if (*(v301 + 240) == 1)
      {
        v300 |= 0x2000000u;
        v451.i32[v295] = v300;
      }

      v302 = *(v301 + 396);
      v303 = HIWORD(v302);
      if (*(v437 + 4908) < 2u)
      {
        LOBYTE(v302) = 2;
      }

      else
      {
        LOBYTE(v302) = 3;
      }

      if (v303)
      {
        if ((*(v301 + 396) & 0x20000) != 0)
        {
          v304 = 8;
        }

        else
        {
          v304 = v302;
        }

        if (BYTE1(v302) == 4)
        {
          v304 = v302;
        }
      }

      else if (BYTE1(v302) > 2u)
      {
        if (BYTE1(v302) == 3)
        {
          v304 = 5;
          goto LABEL_434;
        }

        v304 = v302;
        if (BYTE1(v302) != 4)
        {
          goto LABEL_456;
        }
      }

      else
      {
        if (BYTE1(v302) == 1)
        {
          v304 = 2;
          goto LABEL_434;
        }

        if (BYTE1(v302) != 2)
        {
LABEL_456:
          v304 = -1;
          goto LABEL_434;
        }

        if ((*(v301 + 396) & 0x20000) != 0)
        {
          v304 = 4;
        }

        else
        {
          v304 = 2;
        }
      }

LABEL_434:
      v171 = (1 << v295);
      v451.i32[v295] = v300 & 0xFF00FFFF | (v304 << 16);
      v283 |= v171;
      v284 |= v171 & v291;
      v305 = v293 & v171;
      v285 |= v293 & v171;
      v306 = 256 << v295;
      v307 = *(v437 + 4952) & v171;
      if (!v307 && (v418[810] != 1 || v422 < 2))
      {
        v311 = v437;
        goto LABEL_473;
      }

      v308 = v295 + 8;
      if (((v422 > 1) & ((v296 & 0x100) >> 8)) != 0)
      {
        v309 = 0x1000000;
      }

      else
      {
        v309 = 0;
      }

      v310 = v309 | (v299 << 8) | v451.i32[(v295 + 8)] & 0xE2FF0000 | (v296 << 21) & 0x1C000000 | (v297 / v286);
      v451.i32[v308] = v310;
      if (*(v301 + 240) == 1)
      {
        v310 |= 0x2000000u;
        v451.i32[v308] = v310;
      }

      v311 = v437;
      if (v307)
      {
        v312 = *(*(v430 + 80 * v295 + 40) + 396);
        if ((v312 & 0x10000) != 0)
        {
          if (BYTE1(v312) != 4 && (*(*(v430 + 80 * v295 + 40) + 396) & 0x20000) != 0)
          {
            LOBYTE(v302) = 8;
          }

          goto LABEL_465;
        }

        if (BYTE1(v312) > 2u)
        {
          if (BYTE1(v312) == 3)
          {
            LOBYTE(v302) = 5;
          }

          else if (BYTE1(v312) != 4)
          {
            goto LABEL_460;
          }
        }

        else if (BYTE1(v312) == 1)
        {
          LOBYTE(v302) = 2;
        }

        else
        {
          if (BYTE1(v312) == 2)
          {
            if ((*(*(v430 + 80 * v295 + 40) + 396) & 0x20000) != 0)
            {
              LOBYTE(v302) = 4;
            }

            else
            {
              LOBYTE(v302) = 2;
            }

            goto LABEL_465;
          }

LABEL_460:
          LOBYTE(v302) = -1;
        }

LABEL_465:
        v313 = v302 << 16;
        goto LABEL_466;
      }

      v313 = 0x20000;
LABEL_466:
      v314 = v310 & 0xFF00FFFF | v313;
      v451.i32[v308] = v314;
      v283 |= v306;
      v284 |= ((v171 & v292) != 0) << v308;
      v285 |= (v305 != 0) << v308;
      if (v299 == 17 && v422 >= 2 && (v171 & v292) == 0)
      {
        v315 = 257 << v295;
        if (v305)
        {
          *(v437 + 2984) |= v315;
          v316 = v284;
        }

        else
        {
          v316 = v284 | v315;
        }

        LODWORD(v435) = v315 | v435;
        LODWORD(v432) = v284 & v315 | v432;
        v451.i32[v308] = v314 | 0x20000000;
        v284 = v316;
      }

LABEL_473:
      v282 = v282 || ((v306 | v171) & ~v284) != 0 && v286 <= v297;
      _ZF = v171 == v281;
      v281 ^= v171;
    }

    while (!_ZF);
    if (v282)
    {
      v317 = v435 | v283 & ~v284;
      *(v311 + 2984) |= v285;
      LOWORD(v284) = -1;
      LOWORD(v285) = 0;
    }

    else
    {
      v317 = v435;
    }

    *&v455[16] = v283;
    *&v455[18] = v284;
    *&v455[20] = v285;
    *&v455[8] = v283 & ~v284;
    *&v455[10] = v285 & v283;
    v323 = (*(v311 + 5888) & (*(v311 + 5904) | *(v311 + 5896)));
    *&v455[22] = v323 | (v323 << 8);
    v324 = *(v433 + 1952);
    v438 = 0;
    v464 = 0;
    v456 = 0;
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateEndOfTileProgramVariants(*(*(v311 + 400) + 848), &v449, v324, &v438, &v464, &v456);
    v325 = v464;
    v326 = v456;
    *(v311 + 5848) = v438;
    *(v311 + 5840) = v325;
    *(v311 + 5880) = v326;
    *(v311 + 5720) = DWORD2(v449);
    if (v395 != &v449)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v311 + 5728), __p[0], __p[1], (__p[1] - __p[0]) >> 2);
    }

    v327 = v454;
    *(v398 + 32) = v453;
    *(v398 + 48) = v327;
    *(v398 + 64) = *v455;
    *(v398 + 80) = *&v455[16];
    v328 = v452;
    *v398 = v451;
    *(v398 + 16) = v328;
    if (*&v455[16] > 0xFFu || *&v455[18] || *&v455[20])
    {
      v438 = &unk_2A23F9778;
      v439 = DWORD2(v449);
      v441 = 0;
      v442 = 0;
      v440 = 0;
      if (__p[1] == __p[0])
      {
        v329 = 0;
        v330 = 0;
        v447 = *v455;
        v445 = v453;
        v446 = v454;
        v443 = v451;
        v438 = &unk_2A23F9738;
        HIWORD(v448) = *&v455[22];
        v444 = v452;
        LOWORD(v448) = v455[16];
        *(&v448 + 2) = 0;
        DWORD2(v447) = v455[16];
        goto LABEL_502;
      }

      if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_595;
    }

    v438 = &unk_2A23F9778;
    v439 = DWORD2(v449);
    v441 = 0;
    v442 = 0;
    v440 = 0;
    if (__p[1] != __p[0])
    {
      if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_595;
    }

    v329 = 0;
    v330 = 0;
    v445 = v453;
    v446 = v454;
    v447 = *v455;
    v443 = v451;
    v438 = &unk_2A23F9738;
    v448 = *&v455[16];
    v444 = v452;
LABEL_502:
    v137 = v397;
    v331 = v437;
    *(v437 + 5592) = v439;
    v332 = *(v437 + 5600);
    v333 = 0;
    if (v332)
    {
      *(v437 + 5608) = v332;
      operator delete(v332);
      *v389 = 0;
      v389[1] = 0;
      v389[2] = 0;
      v330 = v440;
      v333 = v441;
      v329 = v442;
    }

    *(v437 + 5600) = v330;
    *(v437 + 5608) = v333;
    *(v437 + 5616) = v329;
    v334 = v446;
    *(v397 + 32) = v445;
    *(v397 + 48) = v334;
    *(v397 + 64) = v447;
    *(v397 + 80) = v448;
    v335 = v444;
    *v397 = v443;
    *(v397 + 16) = v335;
    v336 = __p[0];
    if (!v317)
    {
LABEL_554:
      v364 = v394;
      *&v449 = &unk_2A23F9778;
      if (v336)
      {
        __p[1] = v336;
        operator delete(v336);
      }

      goto LABEL_556;
    }

    v172 = &v438;
    v173 = &unk_2A23F9778;
    v438 = &unk_2A23F9778;
    v439 = DWORD2(v449);
    v441 = 0;
    v442 = 0;
    v440 = 0;
    if (__p[1] != __p[0])
    {
      if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_595;
    }

    v447 = *v455;
    v444 = v452;
    v443 = v451;
    v446 = v454;
    v438 = &unk_2A23F9738;
    v337 = *(v437 + 2984);
    v445 = v453;
    HIWORD(v448) = *&v455[22];
    WORD1(v448) = v432;
    LOWORD(v448) = v317;
    WORD2(v448) = v337;
    *(&v447 + 1) = *&v455[8] & 0xFE7FFFFF00000000 | (v317 & ~v432) | ((v337 & v317) << 16) | 0x80000000000000;
    v338 = *(*(v437 + 400) + 848);
    v339 = *(v433 + 1952);
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    LODWORD(v132) = 16908;
    os_unfair_lock_lock((v338 + 16908));
    v136 = *(v338 + 64);
    v456 = 0;
    v457 = &v456;
    v458 = 0x2020000000;
    v459 = 0;
    os_unfair_lock_lock((v136 + 1048));
    v340 = *(v136 + 720);
    v341 = *(v136 + 712);
    if (v340)
    {
      v342 = 0;
      v343 = (v341 + 124);
      while (1)
      {
        v344 = vorrq_s8(vorrq_s8(veorq_s8(*(v343 - 42), v443), veorq_s8(*(v343 - 26), v445)), vorrq_s8(veorq_s8(*(v343 - 34), v444), veorq_s8(*(v343 - 18), v446)));
        *v344.i8 = vorr_s8(*v344.i8, *&vextq_s8(v344, v344, 8uLL));
        if (!(*(v343 - 6) ^ *(&v447 + 1) | (*(v343 - 2) ^ v448) | (*(v343 - 1) ^ WORD1(v448)) | (*v343 ^ WORD2(v448)) | v344.i32[0] | *(v343 - 5) ^ v447 | v344.i32[1]))
        {
          break;
        }

        v343 += 64;
        if (v340 == ++v342)
        {
          goto LABEL_514;
        }
      }

      v357 = v341 + 48 * v342;
    }

    else
    {
LABEL_514:
      v345 = *(v341 + 704);
      if (v345)
      {
        v346 = 1;
        while (1)
        {
          v347 = vorrq_s8(vorrq_s8(veorq_s8(*(v345 + 40), v443), veorq_s8(*(v345 + 72), v445)), vorrq_s8(veorq_s8(*(v345 + 56), v444), veorq_s8(*(v345 + 88), v446)));
          *v347.i8 = vorr_s8(*v347.i8, *&vextq_s8(v347, v347, 8uLL));
          if (!(*(v345 + 112) ^ *(&v447 + 1) | (*(v345 + 120) ^ v448) | (*(v345 + 122) ^ WORD1(v448)) | (*(v345 + 124) ^ WORD2(v448)) | v347.i32[0] | *(v345 + 104) ^ v447 | v347.i32[1]))
          {
            v346 = 0;
            goto LABEL_537;
          }

          v348 = vorrq_s8(vorrq_s8(veorq_s8(*(v345 + 168), v443), veorq_s8(*(v345 + 200), v445)), vorrq_s8(veorq_s8(*(v345 + 184), v444), veorq_s8(*(v345 + 216), v446)));
          *v348.i8 = vorr_s8(*v348.i8, *&vextq_s8(v348, v348, 8uLL));
          if (!(*(v345 + 240) ^ *(&v447 + 1) | (*(v345 + 248) ^ v448) | (*(v345 + 250) ^ WORD1(v448)) | (*(v345 + 252) ^ WORD2(v448)) | v348.i32[0] | *(v345 + 232) ^ v447 | v348.i32[1]))
          {
            goto LABEL_537;
          }

          v349 = vorrq_s8(vorrq_s8(veorq_s8(*(v345 + 296), v443), veorq_s8(*(v345 + 328), v445)), vorrq_s8(veorq_s8(*(v345 + 312), v444), veorq_s8(*(v345 + 344), v446)));
          *v349.i8 = vorr_s8(*v349.i8, *&vextq_s8(v349, v349, 8uLL));
          if (!(*(v345 + 368) ^ *(&v447 + 1) | (*(v345 + 376) ^ v448) | (*(v345 + 378) ^ WORD1(v448)) | (*(v345 + 380) ^ WORD2(v448)) | v349.i32[0] | *(v345 + 360) ^ v447 | v349.i32[1]))
          {
            v346 = 2;
            goto LABEL_537;
          }

          v350 = vorrq_s8(vorrq_s8(veorq_s8(*(v345 + 424), v443), veorq_s8(*(v345 + 456), v445)), vorrq_s8(veorq_s8(*(v345 + 440), v444), veorq_s8(*(v345 + 472), v446)));
          *v350.i8 = vorr_s8(*v350.i8, *&vextq_s8(v350, v350, 8uLL));
          if (!(*(v345 + 496) ^ *(&v447 + 1) | (*(v345 + 504) ^ v448) | (*(v345 + 506) ^ WORD1(v448)) | (*(v345 + 508) ^ WORD2(v448)) | v350.i32[0] | *(v345 + 488) ^ v447 | v350.i32[1]))
          {
            break;
          }

          v345 = *(v345 + 704);
          if (!v345)
          {
            goto LABEL_521;
          }
        }

        v346 = 3;
LABEL_537:
        v357 = v345 + 48 * v346;
      }

      else
      {
LABEL_521:
        if (v340 == 4)
        {
          operator new();
        }

        v351 = v341 + (v340 << 7);
        *(v351 + 8) = v439;
        if (v351 != &v438)
        {
          std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v351 + 16), v440, v441, (v441 - v440) >> 2);
        }

        v352 = v443;
        *(v351 + 56) = v444;
        *(v351 + 40) = v352;
        v353 = v445;
        v354 = v446;
        v355 = v447;
        *(v351 + 120) = v448;
        *(v351 + 104) = v355;
        *(v351 + 88) = v354;
        *(v351 + 72) = v353;
        v356 = *(v136 + 720);
        v357 = *(v136 + 712) + 48 * v356;
        *(v136 + 720) = v356 + 1;
      }
    }

    v365 = v357 + 512;
    if (!*(v357 + 512))
    {
      v369 = dispatch_group_create();
      *v365 = v369;
      goto LABEL_546;
    }

    if (*(v357 + 552) == 1)
    {
      v172 = *(v357 + 520);
      if (v172)
      {
        v366 = v172[264];
        if (v366)
        {
          v367 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v366);
          MEMORY[0x29ED520D0](v367, 0x10F0C4099BF1763);
        }

        AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState(v172 + 85);
        v368 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v172);
        MEMORY[0x29ED520D0](v368, 0x10F2C40EBD6C646);
      }

      *(v365 + 8) = 0;
      *(v365 + 16) = 0;

      *(v365 + 24) = 0;
      *(v365 + 32) = 0;
      *(v365 + 40) = 0;
      v369 = *v365;
LABEL_546:
      dispatch_group_enter(v369);
      os_unfair_lock_unlock((v136 + 1048));
      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      v370 = *(v338 + 7160);
      v464 = MEMORY[0x29EDCA5F8];
      v465 = 3221225472;
      v466 = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25SWEndOfTileProgramVariantENS_19EndOfTileProgramKeyENS1_18SWEndOfTileProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
      v467 = &unk_29F340F80;
      v468 = &v456;
      v469.i64[0] = v338;
      v469.i64[1] = &v438;
      v470.i64[0] = v365;
      AGX::Compiler::compileProgram<AGX::EndOfTileProgramKey>(v370, &v438, v339, &v464, 0);
      v139 = v457[3];
      v137 = v397;
      if (v139)
      {
LABEL_549:
        _Block_object_dispose(&v456, 8);
        if (**MEMORY[0x29EDC56B0])
        {
          IOGPUDeviceTraceEvent();
        }

        os_unfair_lock_unlock((v338 + 16908));
        *(v437 + 5872) = v139;
        v438 = &unk_2A23F9778;
        v331 = v437;
        if (v440)
        {
          v441 = v440;
          operator delete(v440);
        }

        v336 = __p[0];
        goto LABEL_554;
      }
    }

    else
    {
      os_unfair_lock_unlock((v136 + 1048));
      dispatch_group_wait(*v365, 0xFFFFFFFFFFFFFFFFLL);
      v139 = *(v365 + 8);
      v457[3] = v139;
      v137 = v397;
      if (v139)
      {
        goto LABEL_549;
      }
    }

    MTLReleaseAssertionFailure();
    __break(1u);
LABEL_585:
    v385 = v183 + 648 * v172;
    if ((*(v385 + 396) & 0xFF00) == 0x400)
    {
      v386 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v385, 0);
      v387 = *(v385 + 236);
      v388 = (v386 + v387 - 1) & -v387;
      if (!v387)
      {
        v388 = v386;
      }

      v135 = 6 * v388;
LABEL_591:
      if (v387)
      {
        v135 = (v135 + v387 - 1) & -v387;
      }
    }

    else
    {
      if (*(v385 + 396))
      {
        v135 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v385, 0);
        LODWORD(v387) = *(v385 + 236);
        goto LABEL_591;
      }

      LODWORD(v135) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v385, 0) * *(v385 + 132) + 127) & 0xFFFFFF80;
    }

LABEL_248:
    *(v437 + 5360) |= 0xCu;
    *(v437 + 5368) |= (*(v139 + 852) >> 6) & 8;
    *(v437 + 5370) |= ~(*(v139 + 854) >> 7) & 4;
    *(v437 + 5372) |= (*(v139 + 850) >> 6) & 8;
    v418[832] = *(v139 + 370);
    if (*(v139 + 470) == 2)
    {
      v138 = 4008574976;
      if (v173 != 4008574976)
      {
        v188 = *(v437 + 3568);
        v412 = vsub_s32(0x2000000020, vclz_s32(vadd_s32(v188, -1)));
        v414 = vcgt_u32(0x1100000011, v188);
        *v437 = vbsl_s8(v414, 0x2000000020, vshl_u32(0x100000001, v412));
        v189 = *(v437 + 3576) * *(v171 + v172 + 88);
        *(v437 + 176) = v189;
        v190 = [AGXG18PFamilyBuffer alloc];
        v191 = v412.i8[0];
        if (v414.i8[0])
        {
          v191 = 5;
        }

        v192 = v189 << v191;
        if (v414.i8[4])
        {
          v193 = 5;
        }

        else
        {
          v193 = v412.i8[4];
        }

        v194 = [(AGXBuffer *)v190 initWithDevice:*(v437 + 400) length:(v192 << v193) options:0 isSuballocDisabled:AGX::Framebuffer<AGX::HAL300::Encoders pinnedGPULocation:AGX::HAL300::Classes, AGX::HAL300::ObjClasses>::Framebuffer(AGXG18PFamilyDevice *, AGX::HAL300::CommandBuffer *, AGX::HAL300::FramebufferDriverConfig const&, unsigned int, unsigned int, BOOL)::isSuballocDisabled, 0];
        *(v437 + 160) = v194;
        *(v437 + 168) = v173;
        v139 = v433;
        v195 = (*(v433 + 1708) >> 7) & 4 | *(v437 + 392);
        *(v437 + 392) |= (*(v433 + 1708) >> 7) & 4;
        if ((*(v433 + 1712) & 0x200) != 0)
        {
          v196 = 8;
        }

        else
        {
          v196 = (*(v433 + 1720) >> 6) & 8;
        }

        *(v437 + 392) = v196 | v195;
        v138 = *(v194 + *MEMORY[0x29EDC5638] + 72);
      }
    }

    else
    {
      v138 = v173;
    }

    v131 = *(v437 + 3488);
    if (v131)
    {
      v18 = v418;
      v122 = v417;
      v123 = v416;
      if (!v393)
      {
LABEL_262:
        if (v131)
        {
          v18[863] = *(v139 + 512) == 0;
          continue;
        }
      }

      goto LABEL_264;
    }

    v420 = vmax_u32(vshl_u32(*(*(v437 + 3496) + 128), vneg_s32(vdup_n_s32(*(*(v437 + 3496) + 144) + *(v139 + 383)))), 0x100000001);
    v418[863] = 0;
    v122 = v417;
    v123 = v416;
  }

  DWORD2(v449) = 19;
  memset(__p, 0, sizeof(__p));
  *&v449 = &unk_2A23F9738;
  v451 = 0u;
  v452 = 0u;
  v453 = 0u;
  v454 = 0u;
  memset(v455, 0, 22);
  v318 = *(v433 + 1952);
  v438 = 0;
  v464 = 0;
  v456 = 0;
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateEndOfTileProgramVariants(*(*(v437 + 400) + 848), &v449, v318, &v438, &v464, &v456);
  v319 = v464;
  v320 = v456;
  *(v437 + 5848) = v438;
  *(v437 + 5840) = v319;
  *(v437 + 5880) = v320;
  *(v437 + 5720) = DWORD2(v449);
  if (v395 != &v449)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v437 + 5728), __p[0], __p[1], (__p[1] - __p[0]) >> 2);
  }

  v321 = v454;
  *(v398 + 32) = v453;
  *(v398 + 48) = v321;
  *(v398 + 64) = *v455;
  *(v398 + 80) = *&v455[16];
  v322 = v452;
  *v398 = v451;
  *(v398 + 16) = v322;
  if (*&v455[16] > 0xFFu || *&v455[18] || *&v455[20])
  {
    v438 = &unk_2A23F9778;
    v439 = DWORD2(v449);
    v441 = 0;
    v442 = 0;
    v440 = 0;
    if (__p[1] == __p[0])
    {
      v358 = 0;
      v359 = 0;
      v438 = &unk_2A23F9738;
      HIWORD(v448) = *&v455[22];
      v447 = *v455;
      v445 = v453;
      v446 = v454;
      v443 = v451;
      v444 = v452;
      LOWORD(v448) = v455[16];
      *(&v448 + 2) = 0;
      DWORD2(v447) = v455[16];
      goto LABEL_529;
    }

    if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_595:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v438 = &unk_2A23F9778;
  v439 = DWORD2(v449);
  v441 = 0;
  v442 = 0;
  v440 = 0;
  if (__p[1] != __p[0])
  {
    if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_595;
  }

  v358 = 0;
  v359 = 0;
  v438 = &unk_2A23F9738;
  v445 = v453;
  v446 = v454;
  v447 = *v455;
  v448 = *&v455[16];
  v443 = v451;
  v444 = v452;
LABEL_529:
  v137 = v397;
  *(v437 + 5592) = v439;
  v360 = *(v437 + 5600);
  v361 = 0;
  if (v360)
  {
    *(v437 + 5608) = v360;
    operator delete(v360);
    *v389 = 0;
    v389[1] = 0;
    v389[2] = 0;
    v359 = v440;
    v361 = v441;
    v358 = v442;
  }

  *(v437 + 5600) = v359;
  *(v437 + 5608) = v361;
  *(v437 + 5616) = v358;
  v362 = v446;
  *(v397 + 32) = v445;
  *(v397 + 48) = v362;
  *(v397 + 64) = v447;
  *(v397 + 80) = v448;
  v363 = v444;
  *v397 = v443;
  *(v397 + 16) = v363;
  *&v449 = &unk_2A23F9778;
  v331 = v437;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v364 = v394;
LABEL_556:
  v371 = vorrq_s8(vorrq_s8(veorq_s8(*v398, *v137), veorq_s8(*(v398 + 32), v137[2])), vorrq_s8(veorq_s8(*(v398 + 16), v137[1]), veorq_s8(*(v398 + 48), v137[3])));
  *v371.i8 = vorr_s8(*v371.i8, *&vextq_s8(v371, v371, 8uLL));
  v372 = a7;
  if (!(*(v331 + 5824) ^ *(v331 + 5696) | (*(v331 + 5832) ^ *(v331 + 5704)) | (*(v331 + 5834) ^ *(v331 + 5706)) | (*(v331 + 5836) ^ *(v331 + 5708)) | v371.i32[0] | (*(v331 + 5816) ^ *(v331 + 5688)) | v371.i32[1]))
  {
    v372 = 1;
  }

  if (v372)
  {
    v373 = v398;
  }

  else
  {
    v373 = v137;
  }

  v374 = v373[4];
  v364[3] = v373[3];
  v364[4] = v374;
  v375 = v373[2];
  v364[1] = v373[1];
  v364[2] = v375;
  *v364 = *v373;
  v376 = *(v331 + 5848);
  v377 = *(v376 + 192);
  v378 = *(v331 + 5840);
  if (v377 <= *(v378 + 192))
  {
    v377 = *(v378 + 192);
  }

  v379 = *(v331 + 5928);
  if (v379 <= *(v376 + 204))
  {
    v379 = *(v376 + 204);
  }

  if (v379 <= *(v378 + 204))
  {
    v379 = *(v378 + 204);
  }

  *(v331 + 5928) = v379;
  if (*(v331 + 5920) > v377)
  {
    v377 = *(v331 + 5920);
  }

  *(v331 + 5920) = v377;
  v380 = *(v376 + 216);
  if (v380 >= *(v331 + 5924))
  {
    v380 = *(v331 + 5924);
  }

  *(v331 + 5924) = v380;
  if ((*(*(v331 + 5376) + 3152) & 1) == 0 && *(*(v331 + 5384) + 3152) != 1)
  {
    v381 = 1;
    if ((*(v376 + 2032) & 1) == 0)
    {
      goto LABEL_576;
    }

    goto LABEL_577;
  }

  v381 = 0;
  if (*(v376 + 2032))
  {
    goto LABEL_577;
  }

LABEL_576:
  if (*(v378 + 2032))
  {
LABEL_577:
    if (v381)
    {
      v382 = 520;
      v383 = a3;
    }

    else
    {
      v383 = a3;
      ++*(a3 + 512);
      v382 = 520;
    }

LABEL_580:
    ++*(v383 + v382);
  }

  else if ((v381 & 1) == 0)
  {
    v382 = 512;
    v383 = a3;
    goto LABEL_580;
  }

  return v331;
}

void sub_29CDADCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void **a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock((v63 + v64));
  STACK[0x220] = &unk_2A23F79D0;
  v66 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v66;
    operator delete(v66);
  }

  STACK[0x2A0] = &unk_2A23F79D0;
  v67 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v67;
    operator delete(v67);
  }

  *a19 = &unk_2A23F9778;
  v68 = a59[716];
  if (v68)
  {
    a59[717] = v68;
    operator delete(v68);
  }

  *a12 = &unk_2A23F9778;
  v69 = *a13;
  if (*a13)
  {
    a59[701] = v69;
    operator delete(v69);
  }

  *a11 = &unk_2A23F79D0;
  v70 = *a14;
  if (*a14)
  {
    a59[690] = v70;
    operator delete(v70);
  }

  *a20 = &unk_2A23F79D0;
  v71 = *a15;
  if (*a15)
  {
    a59[679] = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(uint64_t a1)
{
  *(a1 + 5712) = &unk_2A23F9778;
  v2 = *(a1 + 5728);
  if (v2)
  {
    *(a1 + 5736) = v2;
    operator delete(v2);
  }

  *(a1 + 5584) = &unk_2A23F9778;
  v3 = *(a1 + 5600);
  if (v3)
  {
    *(a1 + 5608) = v3;
    operator delete(v3);
  }

  *(a1 + 5496) = &unk_2A23F79D0;
  v4 = *(a1 + 5512);
  if (v4)
  {
    *(a1 + 5520) = v4;
    operator delete(v4);
  }

  *(a1 + 5408) = &unk_2A23F79D0;
  v5 = *(a1 + 5424);
  if (v5)
  {
    *(a1 + 5432) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_29CDAE724(_Unwind_Exception *exception_object)
{
  v1[714] = &unk_2A23F9778;
  v3 = v1[716];
  if (v3)
  {
    v1[717] = v3;
    operator delete(v3);
  }

  v1[698] = &unk_2A23F9778;
  v4 = v1[700];
  if (v4)
  {
    v1[701] = v4;
    operator delete(v4);
  }

  v1[687] = &unk_2A23F79D0;
  v5 = v1[689];
  if (v5)
  {
    v1[690] = v5;
    operator delete(v5);
  }

  v1[676] = &unk_2A23F79D0;
  v6 = v1[678];
  if (v6)
  {
    v1[679] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBGOProgramVariant(void *a1, int a2)
{
  if (a2 == 2)
  {
    v4 = *(a1[50] + 848);
    v8 = 13;
    v10 = 0;
    v11 = 0;
    __p = 0;
    v7 = &unk_2A23F7990;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = MEMORY[0x29EDC56B0];
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    os_unfair_lock_lock((v4 + 16880));
    v6 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(v4, *v4, &v7, 0);
    if (**v5)
    {
      IOGPUDeviceTraceEvent();
    }

    os_unfair_lock_unlock((v4 + 16880));
    v7 = &unk_2A23F79D0;
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return v6;
  }

  else
  {
    if (a2 != 1)
    {
      return a1[672];
    }

    result = a1[673];
    if (!result)
    {
      return a1[672];
    }
  }

  return result;
}

void sub_29CDAE964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEOTProgramVariant(void *a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return a1[732];
    }

    else if (a2 == 4)
    {
      return a1[733];
    }

    else
    {
      return a1[735];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return a1[730];
    }

    else
    {
      v7 = 19;
      v9 = 0;
      v10 = 0;
      __p = 0;
      v6 = &unk_2A23F9738;
      memset(v15, 0, sizeof(v15));
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v3 = *(a1[50] + 848);
      v4 = MEMORY[0x29EDC56B0];
      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      os_unfair_lock_lock((v3 + 16884));
      v5 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(v3, *(v3 + 8), &v6, 0);
      if (**v4)
      {
        IOGPUDeviceTraceEvent();
      }

      os_unfair_lock_unlock((v3 + 16884));
      v6 = &unk_2A23F9778;
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      return v5;
    }
  }

  else
  {
    return a1[731];
  }
}

void sub_29CDAEB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignResolveRenderRegisters(uint64_t result, uint64_t a2)
{
  *(a2 + 248) = *(result + 5168);
  *(a2 + 256) = *(result + 5176);
  *(a2 + 264) = *(result + 5320);
  *(a2 + 272) = *(result + 5184);
  *(a2 + 280) = *(result + 5192);
  *(a2 + 288) = *(result + 5328);
  *(a2 + 320) = *(result + 5200);
  *(a2 + 328) = *(result + 5344);
  *(a2 + 360) = *(result + 5208);
  *(a2 + 368) = *(result + 5336);
  *(a2 + 400) = *(result + 5216);
  *(a2 + 408) = *(result + 5352);
  *(a2 + 296) = *(result + 5224);
  *(a2 + 336) = *(result + 5232);
  *(a2 + 376) = *(result + 5240);
  *(a2 + 416) = *(result + 5248);
  *(a2 + 304) = *(result + 5256);
  *(a2 + 344) = *(result + 5264);
  *(a2 + 384) = *(result + 5272);
  *(a2 + 424) = *(result + 5280);
  *(a2 + 312) = *(result + 5288);
  *(a2 + 392) = *(result + 5296);
  *(a2 + 352) = *(result + 5304);
  *(a2 + 432) = *(result + 5312);
  v2 = *(result + 5366);
  *(a2 + 248) |= (v2 << 18) & 0x80000 | ((v2 & 1) << 15) | (((v2 >> 2) & 1) << 14) & 0xFFFBFFFF | (((v2 >> 3) & 1) << 18);
  if ((v2 & 5) != 0)
  {
    *(a2 + 900) = 2;
  }

  if (*(result + 4905))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(result + 5888);
  }

  v4 = (v3 | *(result + 5892)) & *(result + 5904);
  v5 = *(result + 5908);
  if (((v5 | *(result + 5896)) & *(result + 5888)) != 0)
  {
    v6 = *(result + 4905);
  }

  else
  {
    v6 = 1;
  }

  if (*(result + 4952) & v5 | v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if ((v2 & 0xA) != 0 && (v7 & 1) == 0)
  {
    *(a2 + 900) = 2;
  }

  *(a2 + 872) = *(result + 4920);
  *(a2 + 876) = *(result + 4928) | 0x300;
  return result;
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignCommandFields(uint64_t result, uint64_t a2, int a3, int a4, __int16 a5)
{
  if (a3)
  {
    v5 = (*(result + 4896) & 1) != 0 || *(result + 5368) != 0;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 2008) = v5;
  v6 = *(result + 2986);
  *(a2 + 2009) = v6;
  v7 = *(result + 4905) ^ 1;
  if (*(result + 4905))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(result + 5888);
  }

  v9 = (v8 | *(result + 5892)) & *(result + 5904);
  v10 = *(result + 5908);
  v11 = (v10 | *(result + 5896)) & *(result + 5888);
  v12 = *(result + 4952) & v10 | v9;
  if (!v11)
  {
    v7 = 0;
  }

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v7;
  }

  if (a4)
  {
    v5 = v13;
  }

  else
  {
    v6 = 0;
  }

  if (!a3)
  {
    v5 = v6;
  }

  *(a2 + 2080) = v5;
  v14 = *(result + 5360) & a5;
  v15 = v14 | *(result + 5362);
  v16 = *(result + 5364);
  if (a3)
  {
    v14 = v15 & ~*(result + 5370);
  }

  v17 = v15 | v16;
  if (a4)
  {
    v14 = (v14 | v16) & ~*(result + 5372);
  }

  if ((v17 & 3) != 0)
  {
    if ((v17 & 0xC) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a2 + 1024) = 0;
    *(a2 + 1992) = 0;
    *(a2 + 1000) = 0u;
    *(a2 + 1960) = 0u;
    if ((v17 & 0xC) != 0)
    {
      goto LABEL_25;
    }
  }

  *(a2 + 1104) = 0;
  *(a2 + 2000) = 0;
  *(a2 + 1080) = 0u;
  *(a2 + 1976) = 0u;
LABEL_25:
  v18 = v14;
  v19 = vandq_s8(vshlq_u32(vdupq_n_s32(v14), xmmword_29D2F1F90), xmmword_29D2F1FA0);
  *v19.i8 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  *(a2 + 968) |= (v19.i32[0] | v19.i32[1]);
  if ((v14 & 5) != 0)
  {
    *(a2 + 1620) = 2;
  }

  v20 = a3 & a4;
  v21 = *(result + 5892);
  v22 = *(result + 4905);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(result + 5888);
  }

  v24 = *(result + 5908);
  if (((v24 | *(result + 5896)) & *(result + 5888)) == 0)
  {
    v22 = 1;
  }

  if (*(result + 4952) & v24 | (v23 | v21) & *(result + 5904))
  {
    v22 = 0;
  }

  if ((v18 & 0xA) != 0 && (v22 & 1) == 0)
  {
    *(a2 + 1620) = 2;
  }

  if ((v20 & 1) == 0)
  {
    *(a2 + 1611) = 1;
  }

  v25 = v11 | v9;
  v26 = v13 ^ 1;
  if ((v25 & 0x100) != 0)
  {
    v27 = v13 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(result + 5900) | v21;
  v29 = *&v27 & ((v28 & 0x100) >> 8);
  if ((v25 & 0x200) != 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = 1;
  }

  v31 = v28 & 0x200;
  if (v25)
  {
    v32 = v26;
  }

  else
  {
    v32 = 1;
  }

  *(a2 + 2010) = v32;
  *(a2 + 2011) = v29;
  *(a2 + 2012) = v30 & (v31 >> 9);
  return result;
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::traceFramebufferEvents(uint64_t result)
{
  v1 = result;
  v2 = *(result + 5892);
  v3 = *(result + 5896);
  v4 = MEMORY[0x29EDC56B0];
  if (v2 | v3 && **MEMORY[0x29EDC56B0])
  {
    result = IOGPUDeviceTraceEvent();
    v2 = v1[1473];
    v3 = v1[1474];
  }

  if ((v2 >> 7) & 4 | (v2 >> 8) & 1 | (v3 >> 7) & 2 | (v3 >> 6) & 8 && **v4)
  {
    result = IOGPUDeviceTraceEvent();
  }

  if (v1[1478] && **v4)
  {

    return IOGPUDeviceTraceEvent();
  }

  return result;
}

int8x8_t *AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(int8x8_t *result, uint64_t a2, unsigned int a3)
{
  v3 = 1 << a3;
  if ((result[738].i32[1] & (1 << a3)) == 0)
  {
    return result;
  }

  result[a3 + 756] = a2;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v14 = result[195].i32[0] & ~v3;
      v15 = result[195].i32[1] & ~v3;
      v16 = 1 << (a3 + 8);
      v17 = v14 | v16;
      v18 = v15 & ~v16;
      v19 = v14 & ~v16;
      v20 = v15 | v16;
      if ((v3 & result[373].i16[0]) != 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if ((v3 & result[373].i16[0]) != 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      result[195].i32[0] = v21;
      result[195].i32[1] = v22;
      result[738].i32[0] |= v3;
      result[737] = vand_s8(result[737], vdup_n_s32(~v3));
      return result;
    }

    if (a2 != 3)
    {
      return result;
    }

    v10 = result[195].i32[0];
    v11 = 257 << a3;
    if ((v3 & result[373].i16[0]) != 0)
    {
      result[195].i32[0] = v10 & ~v11;
      v12 = v11 | result[195].i32[1];
    }

    else
    {
      result[195].i32[0] = v11 | v10;
      v12 = result[195].i32[1] & ~v11;
    }

    result[195].i32[1] = v12;
    result[737].i32[0] |= v3;
    result[738].i32[0] |= v3;
    v13 = result[737].i32[1] & ~v3;
LABEL_22:
    result[737].i32[1] = v13;
    return result;
  }

  if (!a2)
  {
    result[195] = vand_s8(result[195], vdup_n_s32(~(257 << a3)));
    result[737].i32[0] &= ~v3;
    result[738].i32[0] &= ~v3;
    v13 = result[737].i32[1] | v3;
    goto LABEL_22;
  }

  if (a2 == 1)
  {
    v4 = 1 << (a3 + 8);
    v5 = result[195].i32[0] & ~v4;
    v6 = result[195].i32[1] & ~v4;
    v7 = v6 & ~v3;
    v8 = v6 | v3;
    if (!result[618].i32[0])
    {
      v8 = v7;
    }

    result[195].i32[0] = v5 | v3;
    result[195].i32[1] = v8;
    v9 = *(result + 5900);
    result[737].i32[0] |= v3;
    *(result + 5900) = vand_s8(v9, vdup_n_s32(~v3));
  }

  return result;
}

BOOL isFastClearConversionAllowedOnClearColorAttachementsImpl<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,8ul,8ul>(int a1, int a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*a3 | a2) & a1 & a4;
  while (1)
  {
    v14 = v13;
    if (!v13)
    {
      break;
    }

    v15 = __clz(__rbit32(v13));
    v16 = *(a5 + 8 * v15);
    v17 = 1 << v15;
    if ((*a3 & (1 << v15)) != 0)
    {
      v18 = *(*(v16 + 208) + 32);
      v19 = v18 > 0x12;
      v20 = (1 << v18) & 0x40F30;
      if (!v19 && v20 != 0)
      {
        return v14 == 0;
      }

      v22 = *(a6 + 8 * v15);
      if (*(v16 + 236))
      {
        return v14 == 0;
      }
    }

    else
    {
      v22 = 0;
      if (*(v16 + 236))
      {
        return v14 == 0;
      }
    }

    v23 = *(v16 + 584);
    if (v23)
    {
      if (*(v23 + 1304) > *(v16 + 144) + *(a7 + 6 * v15) && *(v16 + 57) - 3 <= 0xFFFFFFFD && (!v22 || !*(v22 + 236) && (v24 = *(v22 + 584)) != 0 && *(v24 + 1304) > *(v22 + 144) + *(a8 + 6 * v15) && *(v22 + 57) - 3 < 0xFFFFFFFE && *(v22 + 32) == *(v16 + 32)))
      {
        v25 = MTLPackColor();
        v13 = v17 ^ v14;
        if (v25)
        {
          continue;
        }
      }
    }

    return v14 == 0;
  }

  return v14 == 0;
}

uint64_t AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearToBlackEOT2Allowed(uint64_t a1)
{
  {
    v23 = a1;
    a1 = v23;
    if (v22)
    {
      AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA();
      a1 = v23;
    }
  }

  if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isEOT2FastClearAllowed(void)::handlesEOT2FastClear != 1 || (*(a1 + 4898) & 1) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 5888);
  v2 = *(a1 + 5896);
  v3 = ((*(a1 + 5904) | v2) & v1) > 0xFF || ((*(a1 + 5904) | v2) & v1) == 0;
  if (v3 || *(a1 + 4908) > 1u || (*(a1 + 4905) & 1) != 0)
  {
    return 0;
  }

  v5 = a1 + 3424;
  v6 = a1;
  v7 = isFastClearConversionAllowedOnClearColorAttachementsImpl<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,8ul,8ul>(*(a1 + 5888), v2, (a1 + 5904), 255, a1 + 3424, a1 + 3504, a1 + 5936, a1 + 5984);
  v8 = (v6[5888] & (v6[5904] | v6[5896]));
  if ((v6[5888] & (v6[5904] | v6[5896])) != 0)
  {
    v9 = v6 + 4464;
    while (1)
    {
      v10 = __clz(__rbit32(v8));
      v11 = *(v5 + 8 * v10);
      v12 = *(v11 + 208);
      v13 = *(v12 + 32);
      v14 = v13 > 0x12;
      v15 = (1 << v13) & 0x40F30;
      if (v14 || v15 == 0)
      {
        v19 = &v9[16 * v10];
        if (*v19 == 0.0 && v19[1] == 0.0 && v19[2] == 0.0 && v19[3] == 0.0)
        {
LABEL_21:
          v18 = 1;
          goto LABEL_27;
        }
      }

      else
      {
        v17 = &v9[16 * v10];
        if (!*v17 && !v17[1] && !v17[2] && !v17[3])
        {
          goto LABEL_21;
        }
      }

      v18 = 0;
LABEL_27:
      if (*(v11 + 192) == 4 && *(v11 + 396) != 3)
      {
        v18 = 0;
      }

      v20 = (*(v12 + 52) != 5) & v18;
      v21 = 1 << v10;
      if (v21 != v8)
      {
        v8 ^= v21;
        if (v20)
        {
          continue;
        }
      }

      return v7 & v20;
    }
  }

  v20 = 1;
  return v7 & v20;
}

int64_t AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configureFastClearToBlack(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  if (!*(a3 + 584))
  {
    v12 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_37;
  }

  v8 = *(a3 + 208);
  v9 = *(a3 + 112);
  if (*(a3 + 396) == 3)
  {
    if (*(a3 + 168))
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
    }

    else
    {
      v14 = *(a3 + 32);
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      InterchangeTiledMemory::getPlaneInfo(&v59, 0, v14, *(v8 + 49));
      CompressedTileWidthOfPlane = v59;
      CompressedTileHeightOfPlane = BYTE1(v59);
    }

    if (*v8 == 56)
    {
      v13 = CompressedTileWidthOfPlane;
      goto LABEL_11;
    }

    v13 = CompressedTileHeightOfPlane;
  }

  else
  {
    v13 = 16;
    if (*v8 == 56)
    {
LABEL_11:
      if (v9 != 2 && v9 != 4)
      {
        if (v9 != 8)
        {
          goto LABEL_27;
        }

        v13 >>= 1;
      }

      v16 = &v58;
      goto LABEL_26;
    }
  }

  if (v9 != 2 && v9 != 4)
  {
    if (v9 != 8)
    {
      goto LABEL_27;
    }

    v13 >>= 1;
  }

  v16 = &v57;
LABEL_26:
  *v16 = v13 >> 1;
LABEL_27:
  if (!*(a3 + 584))
  {
    v56 = 0;
    v57 = 0;
    v12 = 2;
    goto LABEL_37;
  }

  if (*(a3 + 396) == 3)
  {
    if (*(a3 + 168))
    {
      v18 = IOSurfaceGetCompressedTileWidthOfPlane();
      IOSurfaceGetCompressedTileHeightOfPlane();
      if (v18 == 32)
      {
LABEL_31:
        v12 = 8;
        goto LABEL_35;
      }
    }

    else
    {
      v19 = *(a3 + 32);
      v20 = *(a3 + 208);
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      InterchangeTiledMemory::getPlaneInfo(&v59, 0, v19, *(v20 + 49));
      if (v59 == 32)
      {
        goto LABEL_31;
      }
    }
  }

  v12 = 2;
LABEL_35:
  v21 = *(a3 + 584);
  v56 = 0;
  v57 = 0;
  if (v21)
  {
    AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(a3 + 168), *(a3 + 176), *(a3 + 32), *(a3 + 208), *(a3 + 396), 0, *(a3 + 112), &v57, &v56);
    v22 = *(a3 + 584) == 0;
    goto LABEL_38;
  }

LABEL_37:
  v57 = 0;
  v22 = 1;
LABEL_38:
  v23 = *(a3 + 144) + a4[13];
  v24 = vmax_u32(vshl_u32(*(a3 + 128), vneg_s32(vdup_n_s32(v23))), 0x100000001);
  if (v22)
  {
    v25 = 0;
    v26 = 0;
    v27 = vadd_s32(v24, -1);
    goto LABEL_68;
  }

  v54 = v12;
  v55 = a2;
  v28 = *(a1 + 4932);
  v29 = *(a1 + 4936);
  v30 = *(a3 + 208);
  v31 = *(a3 + 112);
  if (*(a3 + 396) != 3)
  {
    v34 = *v30;
    v35 = 16;
    LODWORD(v59) = 16;
    if (v34 == 56)
    {
      v36 = 8;
      v58 = 8;
      goto LABEL_48;
    }

    v58 = 16;
    v36 = 16;
LABEL_53:
    if (v31 != 2)
    {
      if (v31 != 4)
      {
        if (v31 != 8)
        {
          goto LABEL_58;
        }

        v36 >>= 1;
        v58 = v36;
      }

      v12 = v54;
      LODWORD(v59) = v35 >> 1;
      v38 = &v58;
      v35 = v36;
      goto LABEL_62;
    }

    v38 = &v58;
    v35 = v36;
LABEL_61:
    v12 = v54;
    goto LABEL_62;
  }

  if (*(a3 + 168))
  {
    v32 = IOSurfaceGetCompressedTileWidthOfPlane();
    v33 = IOSurfaceGetCompressedTileHeightOfPlane();
  }

  else
  {
    v37 = *(a3 + 32);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    InterchangeTiledMemory::getPlaneInfo(&v59, 0, v37, *(v30 + 49));
    v32 = v59;
    v33 = BYTE1(v59);
  }

  v36 = v33;
  v35 = v32;
  v58 = v33;
  LODWORD(v59) = v32;
  if (*v30 != 56)
  {
    goto LABEL_53;
  }

LABEL_48:
  switch(v31)
  {
    case 2:
      v38 = &v59;
      goto LABEL_61;
    case 4:
LABEL_52:
      v12 = v54;
      v58 = v36 >> 1;
      v38 = &v59;
LABEL_62:
      *v38 = v35 >> 1;
      v36 = v58;
      v35 = v59;
      goto LABEL_63;
    case 8:
      v35 >>= 1;
      LODWORD(v59) = v35;
      goto LABEL_52;
  }

LABEL_58:
  v12 = v54;
LABEL_63:
  v27 = vadd_s32(v24, -1);
  v39 = 1 << -__clz(v27.u32[0]);
  v40 = 1 << -__clz(v27.u32[1]);
  if (v39 >= v28)
  {
    v39 = v28;
  }

  if (v40 >= v29)
  {
    v40 = v29;
  }

  v26 = (v39 / v35) | ((v40 / v36) << 16);
  v25 = *(a3 + 584);
  v23 = a4[13] + *(a3 + 144);
  a2 = v55;
LABEL_68:
  v41 = v56;
  v42 = v57;
  v43 = (v27.i32[0] + v57) / v57;
  v44 = a4[12];
  v45 = a4[14];
  v46 = (v27.i32[1] + v56) / v56;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v25, v44, v23, v45, 0);
  if (*(a3 + 396) == 3)
  {
    HIDWORD(v49) = v26;
    LODWORD(v49) = v26;
    v48 = v49 >> 16;
    if (*(a3 + 192) == 4)
    {
      v50 = v42;
    }

    else
    {
      v50 = v41;
    }

    if (*(a3 + 192) == 4)
    {
      v42 = v41;
      v51 = v46;
    }

    else
    {
      v51 = v43;
    }

    if (*(a3 + 192) == 4)
    {
      v46 = v43;
      v52 = 0x80000000;
    }

    else
    {
      v52 = 0;
    }

    if (*(a3 + 192) == 4)
    {
      v26 = v48;
    }

    v41 = v50;
    v43 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = (a1 + 4 * a2);
  v53[322] = v52 | v12;
  v53[338] = v26;
  *(a1 + 8 * a2 + 472) = result;
  v53[258] = v43;
  v53[274] = v46;
  v53[290] = v42;
  v53[306] = v41;
  return result;
}

uint64_t AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~FramebufferGen3(uint64_t a1)
{
  v2 = *(a1 + 6304);
  if (v2)
  {
  }

  return AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(a1);
}

double AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(uint64_t a1, int8x16_t *a2, int8x16_t a3)
{
  v5 = *(a1 + 4948);
  if (v5)
  {
    v19 = a1 + 3232;
    v20 = a1 + 3504;
    v18 = a1 + 5984;
    do
    {
      v7 = __clz(__rbit32(v5));
      v8 = 1 << v7;
      *a3.i64 = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindRenderTarget(a2, *(a1 + 3424 + 8 * v7), *(a1 + 2992 + 8 * (3 * v7)), *(a1 + 5936 + 6 * v7 + 2), *(a1 + 5936 + 6 * v7), *(a1 + 5936 + 6 * v7 + 4), a3);
      if ((*(a1 + 4952) & (1 << v7)) != 0)
      {
        *a3.i64 = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindRenderTarget(a2, *(v20 + 8 * v7), *(v19 + 8 * (3 * v7)), *(v18 + 6 * v7 + 2), *(v18 + 6 * v7), *(v18 + 6 * v7 + 4), a3);
      }

      v6 = v8 == v5;
      v5 ^= v8;
    }

    while (!v6);
  }

  v9 = *(a1 + 3488);
  if (v9)
  {
    *a3.i64 = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindRenderTarget(a2, v9, *(a1 + 3184), *(a1 + 6034), *(a1 + 6032), *(a1 + 6036), a3);
  }

  v10 = *(a1 + 3496);
  if (v10)
  {
    *a3.i64 = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindRenderTarget(a2, v10, *(a1 + 3208), *(a1 + 6040), *(a1 + 6038), *(a1 + 6042), a3);
  }

  v11 = *(a1 + 6224);
  if (v11)
  {
    *a3.i64 = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindRenderTarget(a2, *(a1 + 6256), v11, *(a1 + 6272), *(a1 + 6270), *(a1 + 6274), a3);
  }

  v12 = *(a1 + 6200);
  if (v12)
  {
    v13 = *(a1 + 6248);
    v14 = *(a1 + 6266);
    v15 = *(a1 + 6264);
    v16 = *(a1 + 6268);

    *a3.i64 = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindRenderTarget(a2, v13, v12, v14, v15, v16, a3);
  }

  return *a3.i64;
}

uint64_t AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchDepthResolveStoreActions(uint64_t result, int a2, int a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = *(result + 6192);
  if (!v3)
  {
    return result;
  }

  v4 = *(result + 6160);
  v5 = *(result + 6176);
  v6 = *(result + 6248);
  v7 = *(v6 + 396);
  if (a2)
  {
    if ((*(v6 + 396) & 0xFF00) == 0x400)
    {
      v8 = result;
      v9 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(result + 6248), 0);
      result = v8;
      v10 = *(v6 + 236);
      if (v10)
      {
        LODWORD(v11) = (v9 + v10 - 1) & -v10;
      }

      else
      {
        LODWORD(v11) = v9;
      }

      v12 = *(v6 + 584);
      if (!v12)
      {
        goto LABEL_40;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      v18 = result;
      v19 = *(result + 6248);
      if (*(v6 + 396))
      {
        v20 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v19, 0);
        v21 = *(v6 + 236);
        if (v21)
        {
          v11 = (v20 + v21 - 1) & -v21;
        }

        else
        {
          LODWORD(v11) = v20;
        }

        result = v18;
        v12 = *(v6 + 584);
        if (!v12)
        {
          goto LABEL_40;
        }
      }

      else
      {
        LODWORD(v11) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v19, 0) * *(v6 + 132) + 127) & 0xFFFFFF80;
        result = v18;
        v6 = *(v18 + 6248);
        v12 = *(v6 + 584);
        if (!v12)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      LODWORD(v11) = 0;
      v12 = *(v6 + 584);
      if (!v12)
      {
        goto LABEL_40;
      }
    }

    GPULayerSize = *(v12 + 1304);
    if (!GPULayerSize)
    {
LABEL_41:
      v30 = *(result + 5232) & 0xFFFFFFF800003FFELL;
      if (v11 >> 14)
      {
        ++v30;
        v31 = 14;
      }

      else
      {
        v31 = 7;
      }

      LODWORD(v32) = ((v11 >> v31) - 1) & 0x1FFFFF;
      if (v11 >= 0x80)
      {
        v32 = v32;
      }

      else
      {
        v32 = 0;
      }

      *(result + 5232) = v30 | (v32 << 14);
      if (GPULayerSize >= 0x80)
      {
        v33 = ((GPULayerSize >> 7) - 1) & 0x1FFFFF;
      }

      else
      {
        v33 = 0;
      }

      *(result + 5304) = *(result + 5304) & 0xFFFFFFF800003FFFLL | ((*&v33 & 0x1FFFFFLL) << 14);
      *(result + 5200) = *(result + 5200) & 0xFFFF00000000007FLL | (((v4 >> 7) & 0x1FFFFFFFFFFLL) << 7);
      *(result + 5344) = *(result + 5344) & 0xFFFF00000000007FLL | (((v5 >> 7) & 0x1FFFFFFFFFFLL) << 7);
      *(result + 5168) = *(result + 5168) & 0xF3FFFFFFFFFFFFFFLL | ((v3 & 3) << 58);
      *(result + 5366) |= 3u;
      *(result + 4956) = 1;
      return result;
    }

    v27 = *(v6 + 396);
    if ((v27 & 0xFF00) == 0x400)
    {
      v28 = result;
      GPULayerSize = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v12, 0);
      result = v28;
      v29 = *(v12 + 236);
      if (v29)
      {
        GPULayerSize = (GPULayerSize + v29 - 1) & -v29;
      }

      goto LABEL_41;
    }

    if ((v27 & 0x10000) != 0)
    {
      v34 = result;
      GPULayerSize = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPULayerSize(v12, 0);
      result = v34;
      goto LABEL_41;
    }

LABEL_40:
    GPULayerSize = 0;
    goto LABEL_41;
  }

  if ((*(v6 + 396) & 0xFF00) != 0x400)
  {
    if ((v7 & 0x10000) != 0)
    {
      v22 = result;
      v23 = *(result + 6248);
      if (*(v6 + 396))
      {
        v24 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v23, 0);
        v25 = *(v6 + 236);
        if (v25)
        {
          v16 = (v24 + v25 - 1) & -v25;
        }

        else
        {
          LODWORD(v16) = v24;
        }

        result = v22;
        v17 = *(v6 + 584);
        if (!v17)
        {
          goto LABEL_58;
        }

        goto LABEL_53;
      }

      LODWORD(v16) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v23, 0) * *(v6 + 132) + 127) & 0xFFFFFF80;
      result = v22;
      v6 = *(v22 + 6248);
      v17 = *(v6 + 584);
      if (v17)
      {
        goto LABEL_53;
      }
    }

    else
    {
      LODWORD(v16) = 0;
      v17 = *(v6 + 584);
      if (v17)
      {
        goto LABEL_53;
      }
    }

LABEL_58:
    v35 = 0;
    goto LABEL_59;
  }

  v13 = result;
  v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(result + 6248), 0);
  result = v13;
  v15 = *(v6 + 236);
  if (v15)
  {
    LODWORD(v16) = (v14 + v15 - 1) & -v15;
  }

  else
  {
    LODWORD(v16) = v14;
  }

  v17 = *(v6 + 584);
  if (!v17)
  {
    goto LABEL_58;
  }

LABEL_53:
  v35 = *(v17 + 1304);
  if (v35)
  {
    v36 = *(v6 + 396);
    if ((v36 & 0xFF00) == 0x400)
    {
      v37 = result;
      v35 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v17, 0);
      result = v37;
      v38 = *(v17 + 236);
      if (v38)
      {
        v35 = (v35 + v38 - 1) & -v38;
      }

      goto LABEL_59;
    }

    if ((v36 & 0x10000) != 0)
    {
      v43 = result;
      v35 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPULayerSize(v17, 0);
      result = v43;
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_59:
  v39 = *(result + 5040) & 0xFFFFFFF800003FFELL;
  if (v16 >> 14)
  {
    ++v39;
    v40 = 14;
  }

  else
  {
    v40 = 7;
  }

  LODWORD(v41) = ((v16 >> v40) - 1) & 0x1FFFFF;
  if (v16 >= 0x80)
  {
    v41 = v41;
  }

  else
  {
    v41 = 0;
  }

  *(result + 5040) = v39 | (v41 << 14);
  if (v35 >= 0x80)
  {
    v42 = ((v35 >> 7) - 1) & 0x1FFFFF;
  }

  else
  {
    v42 = 0;
  }

  *(result + 5112) = *(result + 5112) & 0xFFFFFFF800003FFFLL | ((*&v42 & 0x1FFFFFLL) << 14);
  *(result + 5008) = *(result + 5008) & 0xFFFF00000000007FLL | (((v4 >> 7) & 0x1FFFFFFFFFFLL) << 7);
  *(result + 5152) = *(result + 5152) & 0xFFFF00000000007FLL | (((v5 >> 7) & 0x1FFFFFFFFFFLL) << 7);
  *(result + 4976) = *(result + 4976) & 0xF3FFFFFFFFFFFFFFLL | ((v3 & 3) << 58);
  *(result + 5364) |= 2u;
  *(result + 5362) |= (*(result + 5370) & 1) == 0;
  return result;
}

uint64_t AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchStencilResolveStoreActions(uint64_t result, int a2, int a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = *(result + 6196);
  if (!v3)
  {
    return result;
  }

  v4 = *(result + 6256);
  v5 = *(*(v4 + 208) + 24) - 1;
  v6 = *(result + 6168);
  v7 = *(result + 6184);
  v8 = *(result + 6192);
  v9 = *(v4 + 396);
  if (a2)
  {
    if ((*(v4 + 396) & 0xFF00) == 0x400)
    {
      v10 = result;
      v11 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(result + 6256), *(*(v4 + 208) + 24) - 1);
      result = v10;
      v12 = *(v4 + 236);
      if (v12)
      {
        LODWORD(v13) = (v11 + v12 - 1) & -v12;
      }

      else
      {
        LODWORD(v13) = v11;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      v18 = result;
      v19 = *(result + 6256);
      v20 = *(*(v4 + 208) + 24) - 1;
      if (*(v4 + 396))
      {
        v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v19, v20);
        v22 = *(v4 + 236);
        if (v22)
        {
          v13 = (v21 + v22 - 1) & -v22;
        }

        else
        {
          LODWORD(v13) = v21;
        }

        result = v18;
      }

      else
      {
        LODWORD(v13) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v19, v20) * *(v4 + 132) + 127) & 0xFFFFFF80;
        result = v18;
        v4 = *(v18 + 6256);
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v28 = *(v4 + 584);
    if (!v28)
    {
      goto LABEL_35;
    }

    if (!*(v28 + 1304))
    {
      goto LABEL_33;
    }

    v29 = *(v4 + 396);
    if ((v29 & 0xFF00) == 0x400)
    {
      v30 = v28 + 648 * v5;
      v31 = result;
      LODWORD(v28) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v30, 0);
      result = v31;
      v32 = *(v30 + 236);
      if (v32)
      {
        LODWORD(v28) = (v28 + v32 - 1) & -v32;
      }

      goto LABEL_35;
    }

    if ((v29 & 0x10000) != 0)
    {
      v33 = v28 + 648 * v5;
      v34 = result;
      LODWORD(v28) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPULayerSize(v33, 0);
      result = v34;
    }

    else
    {
LABEL_33:
      LODWORD(v28) = 0;
    }

LABEL_35:
    v35 = *(result + 5248) & 0xFFFFFFFE00003FFELL;
    if (v13 >> 14)
    {
      ++v35;
      v36 = 14;
    }

    else
    {
      v36 = 7;
    }

    LODWORD(v37) = ((v13 >> v36) - 1) & 0x7FFFF;
    if (v13 >= 0x80)
    {
      v37 = v37;
    }

    else
    {
      v37 = 0;
    }

    *(result + 5248) = v35 | (v37 << 14);
    if (v28 >= 0x80)
    {
      v38 = ((v28 >> 7) - 1) & 0x1FFFFF;
    }

    else
    {
      v38 = 0;
    }

    *(result + 5312) = *(result + 5312) & 0xFFFFFFF800003FFFLL | ((*&v38 & 0x1FFFFFLL) << 14);
    *(result + 5216) = *(result + 5216) & 0xFFFF00000000007FLL | (((v6 >> 7) & 0x1FFFFFFFFFFLL) << 7);
    *(result + 5352) = *(result + 5352) & 0xFFFF00000000007FLL | (((v7 >> 7) & 0x1FFFFFFFFFFLL) << 7);
    *(result + 5168) = *(result + 5168) & 0xF0FFFFFFFFFFFFFFLL | ((v3 & 3) << 56) | ((v8 & 3) << 58);
    *(result + 5366) |= 0xCu;
    *(result + 4956) = 1;
    return result;
  }

  if ((*(v4 + 396) & 0xFF00) == 0x400)
  {
    v14 = result;
    v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(result + 6256), *(*(v4 + 208) + 24) - 1);
    result = v14;
    v16 = *(v4 + 236);
    if (v16)
    {
      LODWORD(v17) = (v15 + v16 - 1) & -v16;
    }

    else
    {
      LODWORD(v17) = v15;
    }
  }

  else if ((v9 & 0x10000) != 0)
  {
    v23 = result;
    v24 = *(result + 6256);
    v25 = *(*(v4 + 208) + 24) - 1;
    if (*(v4 + 396))
    {
      v26 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v24, v25);
      v27 = *(v4 + 236);
      if (v27)
      {
        v17 = (v26 + v27 - 1) & -v27;
      }

      else
      {
        LODWORD(v17) = v26;
      }

      result = v23;
    }

    else
    {
      LODWORD(v17) = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v24, v25) * *(v4 + 132) + 127) & 0xFFFFFF80;
      result = v23;
      v4 = *(v23 + 6256);
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v39 = *(v4 + 584);
  if (v39)
  {
    if (!*(v39 + 1304))
    {
      goto LABEL_52;
    }

    v40 = *(v4 + 396);
    if ((v40 & 0xFF00) == 0x400)
    {
      v41 = v39 + 648 * v5;
      v42 = result;
      LODWORD(v39) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v41, 0);
      result = v42;
      v43 = *(v41 + 236);
      if (v43)
      {
        LODWORD(v39) = (v39 + v43 - 1) & -v43;
      }

      goto LABEL_54;
    }

    if ((v40 & 0x10000) != 0)
    {
      v44 = v39 + 648 * v5;
      v45 = result;
      LODWORD(v39) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPULayerSize(v44, 0);
      result = v45;
    }

    else
    {
LABEL_52:
      LODWORD(v39) = 0;
    }
  }

LABEL_54:
  v46 = *(result + 5056) & 0xFFFFFFFE00003FFELL;
  if (v17 >> 14)
  {
    ++v46;
    v47 = 14;
  }

  else
  {
    v47 = 7;
  }

  LODWORD(v48) = ((v17 >> v47) - 1) & 0x7FFFF;
  if (v17 >= 0x80)
  {
    v48 = v48;
  }

  else
  {
    v48 = 0;
  }

  *(result + 5056) = v46 | (v48 << 14);
  if (v39 >= 0x80)
  {
    v49 = ((v39 >> 7) - 1) & 0x1FFFFF;
  }

  else
  {
    v49 = 0;
  }

  *(result + 5120) = *(result + 5120) & 0xFFFFFFF800003FFFLL | ((*&v49 & 0x1FFFFFLL) << 14);
  *(result + 5024) = *(result + 5024) & 0xFFFF00000000007FLL | (((v6 >> 7) & 0x1FFFFFFFFFFLL) << 7);
  *(result + 5160) = *(result + 5160) & 0xFFFF00000000007FLL | (((v7 >> 7) & 0x1FFFFFFFFFFLL) << 7);
  *(result + 4976) = *(result + 4976) & 0xF0FFFFFFFFFFFFFFLL | ((v3 & 3) << 56) | ((v8 & 3) << 58);
  *(result + 5364) |= 8u;
  *(result + 5362) |= ~*(result + 5370) & 4;
  return result;
}

uint64_t AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getAttachmentInfo(uint64_t result, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, uint64_t a13)
{
  v13 = *(result + 3424);
  if (v13)
  {
    *a2 = v13;
    *a3 = *(result + 3504);
    v14 = *(result + 5936);
    *(a4 + 4) = *(result + 5940);
    *a4 = v14;
    v15 = *(result + 5984);
    *(a5 + 4) = *(result + 5988);
    *a5 = v15;
  }

  v16 = *(result + 3432);
  if (v16)
  {
    a2[1] = v16;
    a3[1] = *(result + 3512);
    v17 = *(result + 5942);
    *(a4 + 10) = *(result + 5946);
    *(a4 + 6) = v17;
    v18 = *(result + 5990);
    *(a5 + 10) = *(result + 5994);
    *(a5 + 6) = v18;
  }

  v19 = *(result + 3440);
  if (v19)
  {
    a2[2] = v19;
    a3[2] = *(result + 3520);
    v20 = *(result + 5948);
    *(a4 + 16) = *(result + 5952);
    *(a4 + 12) = v20;
    v21 = *(result + 5996);
    *(a5 + 16) = *(result + 6000);
    *(a5 + 12) = v21;
  }

  v22 = *(result + 3448);
  if (v22)
  {
    a2[3] = v22;
    a3[3] = *(result + 3528);
    v23 = *(result + 5954);
    *(a4 + 22) = *(result + 5958);
    *(a4 + 18) = v23;
    v24 = *(result + 6002);
    *(a5 + 22) = *(result + 6006);
    *(a5 + 18) = v24;
  }

  v25 = *(result + 3456);
  if (v25)
  {
    a2[4] = v25;
    a3[4] = *(result + 3536);
    v26 = *(result + 5960);
    *(a4 + 28) = *(result + 5964);
    *(a4 + 24) = v26;
    v27 = *(result + 6008);
    *(a5 + 28) = *(result + 6012);
    *(a5 + 24) = v27;
  }

  v28 = *(result + 3464);
  if (v28)
  {
    a2[5] = v28;
    a3[5] = *(result + 3544);
    v29 = *(result + 5966);
    *(a4 + 34) = *(result + 5970);
    *(a4 + 30) = v29;
    v30 = *(result + 6014);
    *(a5 + 34) = *(result + 6018);
    *(a5 + 30) = v30;
  }

  v31 = *(result + 3472);
  if (v31)
  {
    a2[6] = v31;
    a3[6] = *(result + 3552);
    v32 = *(result + 5972);
    *(a4 + 40) = *(result + 5976);
    *(a4 + 36) = v32;
    v33 = *(result + 6020);
    *(a5 + 40) = *(result + 6024);
    *(a5 + 36) = v33;
  }

  v34 = *(result + 3480);
  if (v34)
  {
    a2[7] = v34;
    a3[7] = *(result + 3560);
    v35 = *(result + 5978);
    *(a4 + 46) = *(result + 5982);
    *(a4 + 42) = v35;
    v36 = *(result + 6026);
    *(a5 + 46) = *(result + 6030);
    *(a5 + 42) = v36;
  }

  *a6 = *(result + 3488);
  *a7 = *(result + 3496);
  v37 = *(result + 6032);
  *(a8 + 4) = *(result + 6036);
  *a8 = v37;
  v38 = *(result + 6038);
  *(a9 + 4) = *(result + 6042);
  *a9 = v38;
  *a10 = *(result + 6192);
  *a11 = *(result + 6196);
  *a12 = *(result + 4908);
  v39 = *(a13 + 920) & 0xFFFFFFFFFFFFFC00 | *(result + 5888) & 0x3FF;
  *(a13 + 920) = v39;
  v40 = v39 & 0xFFFFFFFFFFF003FFLL | ((*(result + 5892) & 0x3FF) << 10);
  *(a13 + 920) = v40;
  v41 = v40 & 0xFFFFFFFFC00FFFFFLL | ((*(result + 5896) & 0x3FF) << 20);
  *(a13 + 920) = v41;
  v42 = v41 & 0xFFFFFF003FFFFFFFLL | ((*(result + 5900) & 0x3FF) << 30);
  *(a13 + 920) = v42;
  *(a13 + 920) = v42 & 0xFFFC00FFFFFFFFFFLL | ((*(result + 5904) & 0x3FF) << 40);
  return result;
}

BOOL AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearConversionAllowedForEmptyRender(uint64_t a1)
{
  v2 = *(a1 + 4908);
  v3 = *(a1 + 5888);
  v4 = *(a1 + 5896);
  v5 = *(a1 + 5904);
  v6 = v2 != 1 || (v3 & (v5 | v4) & 0x3FF) == 0;
  if (v6 || (*(a1 + 4905) & 1) != 0)
  {
    v7 = 0;
    v9 = v3 & 0x100;
  }

  else
  {
    v7 = isFastClearConversionAllowedOnClearColorAttachementsImpl<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,8ul,8ul>(v3, v4, (a1 + 5904), 255, a1 + 3424, a1 + 3504, a1 + 5936, a1 + 5984);
    v3 = *(a1 + 5888);
    v5 = *(a1 + 5904);
    v8 = v5 | *(a1 + 5896);
    v9 = v3 & 0x100;
    if ((v3 & 0x100 & v8) != 0 && ((v10 = *(a1 + 3488), *(v10 + 236)) || (v11 = *(v10 + 584)) == 0 || *(v11 + 1304) <= *(v10 + 144) + *(a1 + 6032) || *(v10 + 57) - 3 > 0xFFFFFFFD) || (v3 & v8 & 0x200) != 0 && ((v12 = *(a1 + 3496), *(v12 + 236)) || (v18 = *(v12 + 584)) == 0 || *(v18 + 1304) <= *(v12 + 144) + *(a1 + 6038) || *(v12 + 57) - 3 > 0xFFFFFFFD))
    {
      v7 = 0;
    }
  }

  if ((v9 & v5) != 0)
  {
    v13 = *(a1 + 6248);
    if (*(v13 + 236))
    {
      return 0;
    }

    v14 = *(v13 + 584);
    if (!v14 || *(v14 + 1304) <= *(v13 + 144) + *(a1 + 6264) || *(v13 + 57) - 3 > 0xFFFFFFFD)
    {
      return 0;
    }
  }

  if ((v3 & v5 & 0x200) != 0)
  {
    v15 = *(a1 + 6256);
    if (*(v15 + 236))
    {
      return 0;
    }

    v17 = *(v15 + 584);
    if (!v17 || *(v17 + 1304) <= *(v15 + 144) + *(a1 + 6270) || *(v15 + 57) - 3 > 0xFFFFFFFD)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateFastClearConfig(uint64_t result, uint64_t a2)
{
  v2 = (*(result + 5888) & (*(result + 5904) | *(result + 5896)));
  if ((*(result + 5888) & (*(result + 5904) | *(result + 5896))) != 0)
  {
    v3 = 0;
    v4 = result + 4464;
    v5 = result + 2992;
    v6 = result + 3232;
    while (1)
    {
      v8 = __clz(__rbit32(v2));
      v9 = a2 + 8 + 136 * v3;
      v10 = *(result + 3424 + 8 * v8);
      *(v9 + 8) = v10;
      v11 = *(*(v10 + 208) + 32);
      if (v11 > 0x12)
      {
        break;
      }

      v12 = 1 << v11;
      if ((v12 & 0x40A20) != 0)
      {
        v13 = (v4 + 16 * v8);
        v14 = v13[1];
        v15.i64[0] = *v13;
        v15.i64[1] = HIDWORD(*v13);
        v16 = vcvtq_f64_u64(v15);
        v15.i64[0] = v14;
        v15.i64[1] = HIDWORD(v14);
        v17 = vcvtq_f64_u64(v15);
      }

      else
      {
        if ((v12 & 0x510) == 0)
        {
          break;
        }

        v18 = (v4 + 16 * v8);
        v19 = v18[1];
        v20.i64[0] = *v18;
        v20.i64[1] = HIDWORD(*v18);
        v16 = vcvtq_f64_s64(v20);
        v20.i64[0] = v19;
        v20.i64[1] = SHIDWORD(v19);
        v17 = vcvtq_f64_s64(v20);
      }

LABEL_10:
      *(v9 + 104) = v16;
      *(v9 + 120) = v17;
      v22 = (result + 5936 + 6 * v8);
      v23 = *v22;
      *(v9 + 16) = v22[1];
      *(v9 + 20) = v23;
      *(v9 + 24) = v22[2];
      v24 = (3 * v8);
      *(v9 + 32) = *(v5 + 8 * v24);
      *(v9 + 40) = *(v5 + 8 * (v24 + 1));
      *(v9 + 48) = *(v5 + 8 * (v24 + 2));
      *(v9 + 56) = 0;
      v25 = 1 << v8;
      if ((*(result + 5904) & (1 << v8)) != 0)
      {
        *(v9 + 56) = *(result + 3504 + 8 * v8);
        v26 = (result + 5984 + 6 * v8);
        v27 = *v26;
        *(v9 + 64) = v26[1];
        *(v9 + 68) = v27;
        *(v9 + 72) = v26[2];
        *(v9 + 80) = *(v6 + 8 * v24);
        *(v9 + 88) = *(v6 + 8 * (v24 + 1));
        *(v9 + 96) = *(v6 + 8 * (v24 + 2));
      }

      ++v3;
      v7 = v25 == v2;
      v2 ^= v25;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    v21 = (v4 + 16 * v8);
    v16 = vcvtq_f64_f32(*v21);
    v17 = vcvtq_f64_f32(v21[1]);
    goto LABEL_10;
  }

  v3 = 0;
LABEL_13:
  *a2 = v3;
  v28 = *(result + 5888);
  v29 = *(result + 5904) | *(result + 5896);
  if ((v28 & v29 & 0x100) != 0)
  {
    *(a2 + 1152) = 0;
    *(a2 + 1104) = *(result + 3488);
    *(a2 + 1200) = *(result + 4920);
    *(a2 + 1112) = *(result + 6034);
    *(a2 + 1116) = *(result + 6032);
    *(a2 + 1120) = *(result + 6036);
    *(a2 + 1128) = *(result + 3184);
    *(a2 + 1136) = *(result + 3192);
    *(a2 + 1144) = *(result + 3200);
    if ((*(result + 5888) & (*(result + 5904) | *(result + 5896)) & 0x200) != 0)
    {
LABEL_15:
      *(a2 + 1264) = 0;
      *(a2 + 1216) = *(result + 3496);
      *(a2 + 1312) = *(result + 4928);
      *(a2 + 1224) = *(result + 6040);
      *(a2 + 1228) = *(result + 6038);
      *(a2 + 1232) = *(result + 6042);
      *(a2 + 1240) = *(result + 3208);
      *(a2 + 1248) = *(result + 3216);
      v30 = *(result + 3224);
      v31 = 1256;
      goto LABEL_18;
    }
  }

  else
  {
    *(a2 + 1104) = 0;
    *(a2 + 1152) = 0;
    if ((v28 & v29 & 0x200) != 0)
    {
      goto LABEL_15;
    }
  }

  v30 = 0;
  *(a2 + 1216) = 0;
  v31 = 1264;
LABEL_18:
  *(a2 + v31) = v30;
  v32 = *(result + 5888);
  v33 = *(result + 5904);
  if ((v32 & v33 & 0x100) != 0)
  {
    *(a2 + 1152) = *(result + 6248);
    *(a2 + 1160) = *(result + 6266);
    *(a2 + 1164) = *(result + 6264);
    *(a2 + 1168) = *(result + 6268);
    *(a2 + 1176) = *(result + 6200);
    *(a2 + 1184) = *(result + 6208);
    *(a2 + 1192) = *(result + 6216);
    v32 = *(result + 5888);
    v33 = *(result + 5904);
  }

  if ((v32 & v33 & 0x200) != 0)
  {
    *(a2 + 1264) = *(result + 6256);
    *(a2 + 1272) = *(result + 6272);
    *(a2 + 1276) = *(result + 6270);
    *(a2 + 1280) = *(result + 6274);
    *(a2 + 1288) = *(result + 6224);
    *(a2 + 1296) = *(result + 6232);
    *(a2 + 1304) = *(result + 6240);
  }

  return result;
}

uint64_t AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(uint64_t result)
{
  v1 = result;
  v2 = *(result + 5896);
  v3 = *(result + 5904);
  v4 = *(result + 5900);
  v5 = *(result + 5908) & ~(v3 | v2 | v4);
  *(result + 5908) = v5;
  v6 = *(result + 5892);
  *(result + 4897) = ((v5 | v2) & v6) != 0;
  *(result + 4904) = ((v5 | v2) & ~v6) != 0;
  *(result + 2986) = (*(result + 4952) & v5 | v3) != 0;
  if ((v5 & 0x200) != 0)
  {
    *(result + 6120) = 3;
    v2 |= 0x200u;
    *(result + 5896) = v2;
    v3 |= 0x200u;
    *(result + 5904) = v3;
    v4 &= ~0x200u;
    *(result + 5900) = v4;
    *(result + 5372) &= ~8u;
    v5 &= ~0x200u;
    *(result + 5908) = v5;
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if (!*(result + 6160))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6112) = 3;
  v2 |= 0x100u;
  *(result + 5896) = v2;
  v3 |= 0x100u;
  *(result + 5904) = v3;
  *(result + 5900) = v4 & 0xFFFFFEFF;
  *(result + 5372) &= ~2u;
  *(result + 5908) = v5 & 0xFFFFFEFF;
  if (*(result + 6160))
  {
LABEL_4:
    result = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchDepthResolveStoreActions(result, (v2 >> 8) & 1, (v3 >> 8) & 1);
  }

LABEL_5:
  if (*(v1 + 6168))
  {
    result = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchStencilResolveStoreActions(v1, (*(v1 + 5896) >> 9) & 1, (*(v1 + 5904) >> 9) & 1);
  }

  if (*(v1 + 6160))
  {
    v7 = *(v1 + 5904);
    v8 = *(v1 + 5896);
    result = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchDepthResolveStoreActions(v1, (v8 >> 8) & 1, (v7 >> 8) & 1);
    if ((v7 & 0x100) != 0)
    {
      if (*(v1 + 6192))
      {
        v9 = *(v1 + 6312);
        v10 = 4976;
        if ((v8 & 0x100) != 0)
        {
          v10 = 5168;
        }

        v11 = (v1 + v10);
        v11[12] = v11[12] & 0xFFFF00000000007FLL | (((v9 >> 7) & 0x1FFFFFFFFFFLL) << 7);
        *v11 = *v11 & 0xFFFFFFFFFFFFFFBFLL | ((v9 != 0) << 6);
      }
    }
  }

  if (*(v1 + 6168))
  {
    v12 = *(v1 + 5904);
    v13 = *(v1 + 5896);
    result = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchStencilResolveStoreActions(v1, (v13 >> 9) & 1, (v12 >> 9) & 1);
    if ((v12 & 0x200) != 0)
    {
      if (*(v1 + 6196))
      {
        v14 = *(v1 + 6320);
        v15 = 4976;
        if ((v13 & 0x200) != 0)
        {
          v15 = 5168;
        }

        v16 = (v1 + v15);
        v16[14] = v16[14] & 0xFFFF00000000007FLL | (((v14 >> 7) & 0x1FFFFFFFFFFLL) << 7);
        *v16 = *v16 & 0xFFFFFFFFFFFFFEFFLL | ((v14 != 0) << 8);
      }
    }
  }

  return result;
}

uint64_t AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~FramebufferGen3_2(uint64_t a1)
{
  free(*(a1 + 6384));
  v2 = *(a1 + 6304);
  if (v2)
  {
  }

  return AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(a1);
}

uint64_t AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addAPIResources(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 4948);
  if (v6)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    do
    {
      v7 = __clz(__rbit32(v6));
      result = MTLResourceListAddResource();
      v9 = 1 << v7 == v6;
      v6 ^= 1 << v7;
    }

    while (!v9);
  }

  v8 = *(v5 + 4952);
  if (v8)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  for (; !v9; v8 ^= 1 << v10)
  {
    v10 = __clz(__rbit32(v8));
    result = MTLResourceListAddResource();
    v9 = 1 << v10 == v8;
  }

LABEL_11:
  if (*(v5 + 3184))
  {
    if (a2)
    {
      result = MTLResourceListAddResource();
    }

    if (a3 && *(v5 + 8))
    {
      result = MTLResourceListAddResource();
    }
  }

  if (*(v5 + 3208))
  {
    if (a2)
    {
      result = MTLResourceListAddResource();
    }

    if (a3 && *(v5 + 160))
    {
      result = MTLResourceListAddResource();
    }
  }

  if (a2 && *(v5 + 4912))
  {
    result = MTLResourceListAddResource();
  }

  if (*(v5 + 6200))
  {
    if (!a2)
    {
      goto LABEL_32;
    }

    result = MTLResourceListAddResource();
  }

  if (a2 && *(v5 + 6224))
  {
    result = MTLResourceListAddResource();
  }

LABEL_32:
  if (a3 && *(v5 + 6304))
  {

    return MTLResourceListAddResource();
  }

  return result;
}

uint64_t AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(uint64_t result, int8x16_t a2, uint64_t a3, int8x16_t *a4, char a5)
{
  v5 = result;
  if (a5)
  {
    v6 = *(result + 4948) & ~*(result + 5916);
    if (v6)
    {
      do
      {
        v8 = __clz(__rbit32(v6));
        result = IOGPUResourceListAddResource();
        if (*(v5 + 3000 + 24 * v8))
        {
          result = IOGPUResourceListAddResource();
        }

        if (*(v5 + 3008 + 24 * v8))
        {
          result = IOGPUResourceListAddResource();
        }

        v7 = 1 << v8 == v6;
        v6 ^= 1 << v8;
      }

      while (!v7);
    }
  }

  if ((a5 & 2) != 0)
  {
    v9 = *(v5 + 4952);
    if (v9)
    {
      do
      {
        v10 = __clz(__rbit32(v9));
        result = IOGPUResourceListAddResource();
        if (*(v5 + 3240 + 24 * v10))
        {
          result = IOGPUResourceListAddResource();
        }

        if (*(v5 + 3248 + 24 * v10))
        {
          result = IOGPUResourceListAddResource();
        }

        v7 = 1 << v10 == v9;
        v9 ^= 1 << v10;
      }

      while (!v7);
    }
  }

  if (*(v5 + 3184) && (a5 & 4) != 0 && (*(v5 + 5916) & 0x100) == 0)
  {
    result = IOGPUResourceListAddResource();
    if (*(v5 + 3192))
    {
      result = IOGPUResourceListAddResource();
    }

    if (*(v5 + 3200))
    {
      result = IOGPUResourceListAddResource();
    }

    if (*(v5 + 8))
    {
      result = IOGPUResourceListAddResource();
      if (*(v5 + 16))
      {
        result = IOGPUResourceListAddResource();
      }

      if (*(v5 + 24))
      {
        result = IOGPUResourceListAddResource();
      }
    }
  }

  if (*(v5 + 3208) && (a5 & 0x10) != 0 && (*(v5 + 5916) & 0x200) == 0)
  {
    result = IOGPUResourceListAddResource();
    if (*(v5 + 3216))
    {
      result = IOGPUResourceListAddResource();
    }

    if (*(v5 + 3224))
    {
      result = IOGPUResourceListAddResource();
    }

    if (*(v5 + 160))
    {
      result = IOGPUResourceListAddResource();
      if (*(v5 + 168))
      {
        result = IOGPUResourceListAddResource();
      }

      if (*(v5 + 176))
      {
        result = IOGPUResourceListAddResource();
      }
    }
  }

  if ((a5 & 0x40) != 0)
  {
    v11 = *(v5 + 4912);
    if (v11)
    {
      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(a4, v11, 15, a2);
      result = IOGPUResourceListAddResource();
    }
  }

  if ((a5 & 8) != 0 && *(v5 + 6200))
  {
    result = IOGPUResourceListAddResource();
    if (*(v5 + 6208))
    {
      result = IOGPUResourceListAddResource();
    }

    if (*(v5 + 6216))
    {
      result = IOGPUResourceListAddResource();
    }
  }

  if ((a5 & 0x20) != 0 && *(v5 + 6224))
  {
    result = IOGPUResourceListAddResource();
    if (*(v5 + 6232))
    {
      result = IOGPUResourceListAddResource();
    }

    if (*(v5 + 6240))
    {
      result = IOGPUResourceListAddResource();
    }
  }

  if (*(v5 + 6304))
  {
    result = IOGPUResourceListAddResource();
  }

  if (*(v5 + 6332))
  {
    result = IOGPUResourceListAddResource();
  }

  if (*(v5 + 6392))
  {
    IOGPUResourceListAddResource();
    result = IOGPUResourceListAddResource();
  }

  if (*(v5 + 6464))
  {

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignRenderRegisters(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4)
  {
    v5 = *(result + 4900);
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 880) = v5;
  v6 = *(result + 6496);
  if (v6 == 1)
  {
    v43 = *(result + 5370);
  }

  else
  {
    v43 = 0;
  }

  v7 = *(result + 6497);
  if (v7 == 1)
  {
    v8 = (*(result + 5370) >> 2) & 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(result + 4976);
  v10 = *(result + 4992);
  v11 = *(result + 5000);
  v45 = *(result + 5008);
  v12 = *(result + 5016);
  v13 = *(result + 5024);
  v14 = *(result + 5032);
  v15 = *(result + 5040);
  v16 = *(result + 5048);
  v17 = *(result + 5056);
  v18 = *(result + 5064);
  v44 = *(result + 5072);
  v19 = *(result + 5080);
  v20 = *(result + 5088);
  v21 = *(result + 5096);
  v22 = *(result + 5104);
  v23 = *(result + 5112);
  v24 = *(result + 5120);
  v25 = *(result + 5128);
  v26 = *(result + 5136);
  v27 = *(result + 5144);
  v28 = *(result + 5152);
  v29 = *(result + 5160);
  if (*(result + 6524) == 1)
  {
    v30 = vorrq_s8(v9, xmmword_29D2F1FB0);
    if ((v43 & a4 & v6) != 0)
    {
      v31 = -1;
    }

    else
    {
      v31 = 0;
    }

    v32 = vbslq_s8(vdupq_n_s64(v31), v30, v9);
    v13 = *(result + 5024);
    v33 = vorrq_s8(v32, vdupq_n_s64(0x4000uLL));
    if ((v8 & a4 & v7) != 0)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }

    v9 = vbslq_s8(vdupq_n_s64(v34), v33, v32);
  }

  *(a3 + 248) = v9;
  *(a3 + 264) = v25;
  *(a3 + 272) = v10;
  *(a3 + 280) = v11;
  *(a3 + 288) = v26;
  *(a3 + 360) = v12;
  *(a3 + 368) = v27;
  *(a3 + 328) = v28;
  *(a3 + 336) = v15;
  *(a3 + 408) = v29;
  *(a3 + 416) = v17;
  *(a3 + 296) = v14;
  *(a3 + 304) = v18;
  *(a3 + 376) = v16;
  *(a3 + 384) = v19;
  *(a3 + 312) = v21;
  *(a3 + 320) = v45;
  *(a3 + 392) = v22;
  *(a3 + 400) = v13;
  *(a3 + 344) = v44;
  *(a3 + 352) = v23;
  *(a3 + 424) = v20;
  *(a3 + 432) = v24;
  *(a3 + 1240) = v11;
  *(a3 + 1248) = v18;
  *(a3 + 1272) = v26;
  *(a3 + 1256) = v12;
  *(a3 + 1264) = v19;
  *(a3 + 1280) = v27;
  *(a3 + 872) = *(result + 4920);
  if (*(*(*(result + 400) + 848) + 16948) < 0xB0000u || !a4 || *(result + 5892) || *(result + 5888))
  {
    v35 = 768;
  }

  else
  {
    v35 = 256;
  }

  *(a3 + 876) = v35 | *(result + 4928);
  *(a3 + 894) = *(result + 4924) != 0;
  if (*(result + 6332))
  {
    v36 = *(result + 6344);
    v37 = *(result + 6368);
    v38 = *(result + 6392);
    v39 = *(result + 6340);
    *(a2 + 496) = v36 - 0x1000000000;
    v41 = *(result + 6352);
    v40 = vaddq_s64(v41, vdupq_n_s64(0xFFFFFFF000000000));
    v41.i64[1] = *(result + 6400);
    *(a2 + 504) = v40;
    *(a2 + 520) = v37 - 0x1000000000;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v41 = 0uLL;
    *(a2 + 496) = 0u;
    *(a2 + 512) = 0u;
  }

  *(a2 + 528) = v38;
  *(a2 + 544) = v39;
  *(a3 + 1304) = v36;
  *(a3 + 1312) = v41;
  if (a5)
  {
    v42 = *(result + 6464);
  }

  else
  {
    v42 = 0;
  }

  *(a3 + 240) = v42;
  return result;
}

void AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateDatabufferResources(uint64_t a1, void *a2)
{
  v4 = *(a1 + 6376);
  if (!v4 || *(a1 + 6392))
  {
    goto LABEL_8;
  }

  v5 = a2[126];
  v6 = v4 + 255;
  v7 = v5 + v4 + 255;
  if (v7 <= a2[125])
  {
    goto LABEL_4;
  }

  v31 = AGX::DataBufferAllocator<44ul>::growNoInline(a2, 30, 0);
  v5 = a2[126];
  if (v31)
  {
    v7 = v5 + v6;
    if ((v5 + v6) > a2[125])
    {
      goto LABEL_29;
    }

LABEL_4:
    a2[127] = v7;
  }

  v8 = *(a1 + 6376);
  v9 = ((v5 + 255) & 0xFFFFFFFFFFFFFF00);
  *(a1 + 6392) = &v9[a2[128]];
  a2[126] = &v9[v8];
  v10 = a2[3];
  v11 = (v10 + 1960);
  v12 = *(v10 + 1976);
  *(a1 + 6408) = *v11;
  *(a1 + 6424) = v12;
  memcpy(v9, *(a1 + 6384), v8);
  v13 = *(a1 + 6376) + 255;
  v14 = a2[22];
  v15 = v14 + v13;
  if ((v14 + v13) > a2[21])
  {
    v32 = AGX::DataBufferAllocator<44ul>::growNoInline(a2, 4, 0);
    v14 = a2[22];
    if (!v32)
    {
      goto LABEL_7;
    }

    v15 = v14 + v13;
    if ((v14 + v13) > a2[21])
    {
      goto LABEL_29;
    }
  }

  a2[23] = v15;
LABEL_7:
  v16 = *(a1 + 6376);
  v17 = ((v14 + 255) & 0xFFFFFFFFFFFFFF00);
  *(a1 + 6400) = &v17[a2[24]];
  a2[22] = &v17[v16];
  v18 = a2[3];
  v19 = (v18 + 296);
  v20 = *(v18 + 312);
  *(a1 + 6432) = *v19;
  *(a1 + 6448) = v20;
  memcpy(v17, *(a1 + 6384), v16);
LABEL_8:
  if (*(a1 + 4908) < 2u || *(a1 + 2986) != 1)
  {
    return;
  }

  v21 = a2[22];
  v22 = v21 + 511;
  if ((v21 + 511) > a2[21])
  {
    v30 = AGX::DataBufferAllocator<44ul>::growNoInline(a2, 4, 0);
    v21 = a2[22];
    if (!v30)
    {
      goto LABEL_12;
    }

    v22 = v21 + 511;
    if ((v21 + 511) > a2[21])
    {
LABEL_29:
      abort();
    }
  }

  a2[23] = v22;
LABEL_12:
  v23 = ((v21 + 255) & 0xFFFFFFFFFFFFFF00);
  *(a1 + 6464) = v23 + a2[24];
  a2[22] = v23 + 32;
  v24 = a2[3];
  v25 = (v24 + 296);
  v26 = *(v24 + 312);
  *(a1 + 6472) = *v25;
  *(a1 + 6488) = v26;
  v27 = *(a1 + 4908);
  v28 = v27 >> 6;
  if (v27 >= 0x40)
  {
    memset(v23, 255, 8 * (v28 - 1) + 8);
    v23 += v28;
  }

  if ((v27 & 0x3F) != 0)
  {
    *v23++ = ~(-1 << (v27 & 0x3F));
    v29 = 31;
    if (v28 == 31)
    {
      return;
    }
  }

  else
  {
    v29 = 32;
    if (v28 == 32)
    {
      return;
    }
  }

  bzero(v23, 8 * (v29 + ~v28) + 8);
}

uint64_t AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v124 = (a1 + 4096);
  v10 = AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Framebuffer(a1, a2, a3, a4, a5, a6, a7);
  *(v10 + 6144) = *(a4 + 2052);
  *(v10 + 6304) = 0;
  *(v10 + 6160) = 0u;
  *(v10 + 6176) = 0u;
  *(v10 + 6192) = 0u;
  *(v10 + 6208) = 0u;
  *(v10 + 6224) = 0u;
  *(v10 + 6240) = 0u;
  *(v10 + 6256) = 0u;
  *(v10 + 6272) = 0;
  if (*(a4 + 2048))
  {
    v124[861] = 1;
  }

  v11 = *(a4 + 1696);
  if ((v11 & 0x100) != 0)
  {
    *(a1 + 6200) = *(a4 + 1416);
    *(a1 + 6208) = *(a4 + 1424);
    *(a1 + 6216) = *(a4 + 1432);
    v12 = *(a4 + 1440);
    *(a1 + 6248) = v12;
    v13 = *(a4 + 1448);
    *(a1 + 6266) = v13;
    v14 = *(a4 + 1452);
    *(a1 + 6264) = v14;
    v15 = *(a4 + 1456);
    *(a1 + 6268) = v15;
    if (*(v12 + 236))
    {
      *(a1 + 6160) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, v13, 0, v15, 0);
      *(a1 + 6176) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(a1 + 6248), *(*(a1 + 6248) + 144) + *(a4 + 1452), *(a4 + 1456));
    }

    else
    {
      *(a1 + 6160) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, v13, *(v12 + 144) + v14, v15, 0);
    }

    *(a1 + 6192) = *(a4 + 1460);
    v11 = *(a4 + 1696);
  }

  if ((v11 & 0x200) != 0)
  {
    *(a1 + 6224) = *(a4 + 1576);
    *(a1 + 6232) = *(a4 + 1584);
    *(a1 + 6240) = *(a4 + 1592);
    v16 = *(a4 + 1600);
    *(a1 + 6256) = v16;
    v17 = *(a4 + 1608);
    *(a1 + 6272) = v17;
    v18 = *(a4 + 1612);
    *(a1 + 6270) = v18;
    v19 = *(a4 + 1616);
    *(a1 + 6274) = v19;
    if (*(v16 + 236))
    {
      v20 = *(v16 + 208);
      v21 = *(v20 + 24) >= 2u && *(v20 + 80) != 0;
      *(a1 + 6168) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, v17, 0, v19, v21);
      v24 = *(a1 + 6256);
      v25 = *(v24 + 208);
      v26 = *(v25 + 24) >= 2u && *(v25 + 80) != 0;
      *(a1 + 6184) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v24, *(v24 + 144) + *(a4 + 1612), v26);
    }

    else
    {
      v22 = *(v16 + 208);
      v23 = *(v22 + 24) >= 2u && *(v22 + 80) != 0;
      *(a1 + 6168) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v16, v17, *(v16 + 144) + v18, v19, v23);
    }

    *(a1 + 6192) = *(a4 + 1620);
  }

  v27 = *(a1 + 4940);
  v28 = *(a4 + 2040);
  *(a1 + 4932) = v28;
  v29 = *(a4 + 2044);
  *(a1 + 4936) = v29;
  if (!v28 || !v29)
  {
    v30 = *(a1 + 3576);
    v31 = a2[106] + 0x4000;
    switch(v30)
    {
      case 2:
        *(a2[106] + 16464) = 32;
        *(a1 + 4932) = 32;
        if (v27 <= 0x83)
        {
          v32 = 32;
        }

        else
        {
          v32 = 16;
        }

        goto LABEL_36;
      case 4:
        if (v27 < 0x84)
        {
          *(a2[106] + 16464) = 32;
          *(a1 + 4932) = 32;
          v32 = 16;
          goto LABEL_36;
        }

        break;
      case 8:
        if (v27 > 0x83)
        {
          goto LABEL_37;
        }

        break;
      default:
        v32 = 32;
        goto LABEL_35;
    }

    v32 = 16;
LABEL_35:
    *(a2[106] + 16464) = v32;
    *(a1 + 4932) = v32;
LABEL_36:
    *(v31 + 84) = v32;
    *(a1 + 4936) = v32;
  }

LABEL_37:
  v122 = v27;
  v123 = a4;
  if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearToBlackEOT2Allowed(a1))
  {
    v33 = (*(a1 + 5888) & (*(a1 + 5904) | *(a1 + 5896)));
    if ((*(a1 + 5888) & (*(a1 + 5904) | *(a1 + 5896))) != 0)
    {
      do
      {
        v34 = __clz(__rbit32(v33));
        AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configureFastClearToBlack(a1, v34, *(a1 + 3424 + 8 * v34), (v123 + 40 + 80 * v34));
        v35 = 1 << v34;
        if ((*(a1 + 5904) & (1 << v34)) != 0)
        {
          AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::configureFastClearToBlack(a1, v34 + 8, *(a1 + 3504 + 8 * v34), (v123 + 680 + 80 * v34));
        }

        v106 = v35 == v33;
        v33 ^= v35;
      }

      while (!v106);
    }
  }

  v36 = *(a1 + 4932);
  v37 = *(a1 + 4936);
  v38 = v37 * v36;
  v39 = *(a1 + 3580);
  v40 = v37 * v36 * v39;
  *(a1 + 6148) = v40 * v122;
  if (v39 == 8)
  {
    v43 = 4 * v122 * v38;
    v41 = v123;
    goto LABEL_51;
  }

  v41 = v123;
  if (v39 == 4)
  {
    v43 = v38 * v122;
LABEL_51:
    v42 = v124;
    goto LABEL_52;
  }

  if (v39 != 2)
  {
    v43 = 0;
    goto LABEL_51;
  }

  v42 = v124;
  if (v36 == 16)
  {
    v43 = 8 * ((v122 * v37) & 0xFFFFFFF);
  }

  else
  {
    v43 = (v38 * v122) >> 2;
  }

LABEL_52:
  *(a1 + 6152) = v43;
  v44 = *(a1 + 6144) + v40 * v122;
  *(a1 + 6156) = v44;
  v45 = *(a1 + 4944) * v40;
  *(a1 + 6288) = v45;
  v46 = 0x40000 / v44;
  *(a1 + 6292) = v46;
  *(a1 + 6296) = v122;
  v47 = MEMORY[0x29EDC5638];
  if (v45)
  {
    v48 = *(a2[106] + 7208);
    v49 = v46 * v45;
    os_unfair_lock_lock((v48 + 40));
    if (*(v48 + 32) < v49)
    {
      *(v48 + 32) = v49;
      AGX::DeviceInternalBuffer<AGX::EMRTTileBufferResourceInfo>::grow(v48, *(v48 + 48) * v49 + 16);
    }

    v50 = *(v48 + 24);
    v51 = *(v48 + 8);
    os_unfair_lock_unlock((v48 + 40));
    *(a1 + 6304) = v50;
    v52 = *(v50 + *v47 + 72);
    v42 = v124;
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 6280) = v52;
  v53 = *(a1 + 6280);
  *(a1 + 4792) = v53;
  v54 = *(a1 + 6296);
  *(a1 + 4808) = v54;
  *(a1 + 856) = v53;
  *(a1 + 872) = v54;
  v55 = *(a1 + 4948);
  if (v55)
  {
    v56 = v41 + 40;
    do
    {
      v57 = __clz(__rbit32(v55));
      v58 = *(a1 + 3424 + 8 * v57);
      v59 = *(v58 + 584);
      if (v59)
      {
        LODWORD(v59) = *(v59 + 1304);
        if (v59)
        {
          v125 = 0;
          v126 = 0;
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v58 + 168), *(v58 + 176), *(v58 + 32), *(v58 + 208), *(v58 + 396), 0, *(v58 + 112), &v126, &v125);
          v60 = *(v58 + 128) >> (*(v58 + 144) + *(v56 + 80 * v57 + 52));
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = *(v58 + 132) >> (*(v58 + 144) + *(v56 + 80 * v57 + 52));
          if (v61 <= 1)
          {
            v61 = 1;
          }

          if (v126 == 32)
          {
            LOBYTE(v59) = 0;
            v42 = v124;
          }

          else
          {
            v42 = v124;
            if ((v126 + v60 - 1) / v126 == 1 && v61 > *(a1 + 4936) || (LOBYTE(v59) = 0, v60 > *(a1 + 4932)) && (v125 + v61 - 1) / v125 == 1)
            {
              LOBYTE(v59) = 1;
            }
          }
        }
      }

      v42[864] |= v59;
      {
        v42 = v124;
        if (v63)
        {
          v127 = 0;
          findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v127);
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v127;
          v42 = v124;
        }
      }

      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
      {
        v62 = *(v58 + 584);
        if (v62)
        {
          if (*(v62 + 1304))
          {
            v42[865] = 1;
          }
        }
      }

      v106 = 1 << v57 == v55;
      v55 ^= 1 << v57;
    }

    while (!v106);
  }

  v64 = 89;
  if (!*(v41 + 2048))
  {
    v64 = 0;
  }

  *(a1 + ((v64 >> 3) & 8) + 6128) |= 1 << (v64 & 0x3F);
  *(a1 + 6312) = 0u;
  v65 = *(v41 + 1696);
  if ((v65 & 0x100) == 0 || (v66 = *(v41 + 1440), (v67 = *(v66 + 584)) == 0))
  {
    v69 = MEMORY[0x29EDC5638];
    if ((v65 & 0x200) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_89;
  }

  v68 = *(v41 + 1452);
  v69 = MEMORY[0x29EDC5638];
  if (*(v67 + 1304) > v68)
  {
    *(a1 + 6312) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v67, *(v41 + 1448), *(v66 + 144) + v68, *(v41 + 1456), 0);
    v65 = *(v41 + 1696);
    v42 = v124;
  }

  if ((v65 & 0x200) != 0)
  {
LABEL_89:
    v70 = *(v41 + 1600);
    v71 = *(v70 + 584);
    if (v71)
    {
      v72 = *(v41 + 1612);
      if (*(v71 + 1304) > v72)
      {
        v73 = *(v70 + 144);
        v74 = *(v70 + 208);
        v75 = *(v74 + 24) >= 2u && *(v74 + 80) != 0;
        *(a1 + 6320) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v71 + 648 * v75, *(v41 + 1608), v73 + v72, *(v41 + 1616), 0);
        v42 = v124;
      }
    }
  }

LABEL_96:
  v76 = 0uLL;
  *(a1 + 6328) = 0;
  *(a1 + 6336) = 0;
  v42[2244] = -1;
  *(a1 + 6464) = 0;
  *(v42 + 2248) = 0u;
  *(v42 + 2264) = 0u;
  *(v42 + 2280) = 0u;
  *(v42 + 2296) = 0u;
  v77 = *(v41 + 2056);
  if (!v77)
  {
    goto LABEL_110;
  }

  *(a1 + 6328) = *(v77 + 16);
  *(v42 + 2236) = *(v77 + 49232);
  v42[2244] = *(v77 + 49260);
  *(a1 + 6456) = *(v77 + 49264) + *v69 + 32;
  *(v42 + 2248) = *(v77 + 49384);
  v78 = *(a1 + 4932);
  if (v78 == 16)
  {
    v79 = 49400;
    goto LABEL_101;
  }

  if (v78 == 32)
  {
    v79 = 49408;
LABEL_101:
    v80 = *(v77 + v79);
    goto LABEL_103;
  }

  v80 = 0;
LABEL_103:
  *(a1 + 6360) = v80;
  v81 = *(a1 + 4936);
  if (v81 == 16)
  {
    v82 = 49416;
  }

  else
  {
    if (v81 != 32)
    {
      v83 = 0;
      goto LABEL_109;
    }

    v82 = 49424;
  }

  v83 = *(v77 + v82);
LABEL_109:
  *(a1 + 6368) = v83;
  *(a1 + 6376) = 256;
  v84 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  *(a1 + 6384) = v84;
  memcpy(v84, (v41 + 2064), *(a1 + 6376));
  v42 = v124;
  v76 = 0uLL;
LABEL_110:
  *(v42 + 606) = 0;
  *(v42 + 302) = 0;
  *(v42 + 150) = v76;
  v42[2428] = 1;
  v85 = *(v41 + 1360);
  if (v85)
  {
    v86 = *(v85 + 236);
    v87 = v86 != 0;
    v42[2400] = v87;
    *(a1 + 6500) = v86;
    if (*(v85 + 32) == 250)
    {
      LODWORD(v85) = (*(v85 + 608) * 65535.0);
    }

    else
    {
      *&v85 = *(v85 + 608);
    }

    *(a1 + 6516) = v85;
    v88 = v86 != 0;
    v89 = *(v41 + 1520);
    if (v89)
    {
LABEL_115:
      v90 = *(v89 + 236);
      v91 = v90 != 0;
      v124[2401] = v91;
      *(a1 + 6504) = v90;
      v92 = *(v89 + 608);
      *(a1 + 6520) = v92;
      v89 = v92 << 32;
      v93 = *(v41 + 1696);
      if ((v93 & 0x100) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v87 = 0;
    v86 = 0;
    v88 = 0;
    v89 = *(v41 + 1520);
    if (v89)
    {
      goto LABEL_115;
    }
  }

  v90 = 0;
  v91 = 0;
  v93 = *(v41 + 1696);
  if ((v93 & 0x100) != 0)
  {
LABEL_116:
    v94 = *(*(v41 + 1440) + 236);
    v124[2402] = v94 != 0;
    *(a1 + 6508) = v94;
  }

LABEL_117:
  if ((v93 & 0x200) == 0)
  {
    v95 = *(a1 + 4984);
    if (v88)
    {
      goto LABEL_119;
    }

LABEL_122:
    if (!v91)
    {
      goto LABEL_120;
    }

    goto LABEL_123;
  }

  v100 = *(*(v41 + 1600) + 236);
  v124[2403] = v100 != 0;
  *(a1 + 6512) = v100;
  v95 = *(a1 + 4984);
  if (!v88)
  {
    goto LABEL_122;
  }

LABEL_119:
  v95 |= 0x30uLL;
  *(a1 + 4984) = v95;
  *(a1 + 5128) = v85;
  if (!v91)
  {
LABEL_120:
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    goto LABEL_124;
  }

LABEL_123:
  v95 |= 0x3000uLL;
  *(a1 + 5128) = *(a1 + 5128) & 0xFFFFFF00FFFFFFFFLL | v89;
  v99 = 256;
  v98 = 0x1000000;
  v97 = 8;
  v96 = 128;
LABEL_124:
  v101 = v88;
  v102 = v95 & 0xFFFFFFFFF2F2F2F2;
  if (v86 == 0x40000)
  {
    v103 = 3;
  }

  else
  {
    v103 = 1;
  }

  if (v86 == 0x10000)
  {
    v103 = 2;
  }

  v104 = (4 * v103);
  if (v90 == 0x40000)
  {
    v105 = 3;
  }

  else
  {
    v105 = 1;
  }

  if (v90 == 0x10000)
  {
    v105 = 2;
  }

  v106 = !v88;
  if (v88)
  {
    v107 = 0x10000;
  }

  else
  {
    v107 = 0;
  }

  v108 = (v103 << 18);
  v109 = (v105 << 10);
  v110 = (v105 << 26);
  *(a1 + 4984) = v107 | v101 | v99 | v98 | v102 | v104 | v108 | v109 | v110;
  v111 = 34;
  if (v106)
  {
    v111 = 0;
  }

  *(a1 + 4976) = v111 | v97 | v96 | *(a1 + 4976) & 0xFFFFFFFFFFFFFF55;
  v112 = *(a1 + 5176);
  if (v87)
  {
    v112 |= 0x30uLL;
    *(a1 + 5176) = v112;
    *(a1 + 5320) = v85;
  }

  if (v91)
  {
    v112 |= 0x3000uLL;
    *(a1 + 5320) = *(a1 + 5320) & 0xFFFFFF00FFFFFFFFLL | v89;
    v113 = 256;
    v114 = 0x1000000;
    v115 = 8;
    v116 = 128;
  }

  else
  {
    v116 = 0;
    v115 = 0;
    v114 = 0;
    v113 = 0;
  }

  v117 = v87;
  v118 = !v87;
  v119 = 0x10000;
  if (v118)
  {
    v119 = 0;
  }

  *(a1 + 5176) = v119 | v117 | v113 | v114 | v112 & 0xFFFFFFFFF2F2F2F2 | v104 | v108 | v109 | v110;
  v120 = 34;
  if (v118)
  {
    v120 = 0;
  }

  *(a1 + 5168) = v120 | v115 | v116 | *(a1 + 5168) & 0xFFFFFFFFFFFFFF55;
  return a1;
}

void sub_29CDB2624(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 10);
  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(v1);
  _Unwind_Resume(a1);
}

uint64_t AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initialize(uint64_t result, uint64_t *a2, int a3, int a4)
{
  v4 = *(a2 + 16);
  if (a4 == 1)
  {
    v4 = 2;
  }

  *(result + 88) = v4;
  *(result + 96) = *(a2 + 373);
  if (v4 == 1)
  {
    *(result + 80) = a2[17];
    a2 += 9;
  }

  else
  {
    *(result + 208) |= v4 == 2;
  }

  if ((a3 - 1) < 2)
  {
    v5 = 255;
    goto LABEL_64;
  }

  v6 = *a2;
  if (*a2 != 263)
  {
    *(result + 79) |= 1u;
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = v6 - 1;
    if (v7 > 0x289)
    {
      v8 = &texFormatUnsupported;
    }

    else
    {
      v8 = *(&off_29F342380 + v7);
    }

    *(result + 112) = v8;
  }

  *(result + 40) |= 1u;
LABEL_15:
  v9 = a2[1];
  if (v9 != 263)
  {
    *(result + 79) |= 2u;
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9 - 1;
    if (v10 > 0x289)
    {
      v11 = &texFormatUnsupported;
    }

    else
    {
      v11 = *(&off_29F342380 + v10);
    }

    *(result + 120) = v11;
  }

  *(result + 40) |= 2u;
LABEL_22:
  v12 = a2[2];
  if (v12 != 263)
  {
    *(result + 79) |= 4u;
    if (!v12)
    {
      goto LABEL_29;
    }

    v13 = v12 - 1;
    if (v13 > 0x289)
    {
      v14 = &texFormatUnsupported;
    }

    else
    {
      v14 = *(&off_29F342380 + v13);
    }

    *(result + 128) = v14;
  }

  *(result + 40) |= 4u;
LABEL_29:
  v15 = a2[3];
  if (v15 != 263)
  {
    *(result + 79) |= 8u;
    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = v15 - 1;
    if (v16 > 0x289)
    {
      v17 = &texFormatUnsupported;
    }

    else
    {
      v17 = *(&off_29F342380 + v16);
    }

    *(result + 136) = v17;
  }

  *(result + 40) |= 8u;
LABEL_36:
  v18 = a2[4];
  if (v18 != 263)
  {
    *(result + 79) |= 0x10u;
    if (!v18)
    {
      goto LABEL_43;
    }

    v19 = v18 - 1;
    if (v19 > 0x289)
    {
      v20 = &texFormatUnsupported;
    }

    else
    {
      v20 = *(&off_29F342380 + v19);
    }

    *(result + 144) = v20;
  }

  *(result + 40) |= 0x10u;
LABEL_43:
  v21 = a2[5];
  if (v21 != 263)
  {
    *(result + 79) |= 0x20u;
    if (!v21)
    {
      goto LABEL_50;
    }

    v22 = v21 - 1;
    if (v22 > 0x289)
    {
      v23 = &texFormatUnsupported;
    }

    else
    {
      v23 = *(&off_29F342380 + v22);
    }

    *(result + 152) = v23;
  }

  *(result + 40) |= 0x20u;
LABEL_50:
  v24 = a2[6];
  if (v24 == 263)
  {
LABEL_56:
    *(result + 40) |= 0x40u;
    goto LABEL_57;
  }

  *(result + 79) |= 0x40u;
  if (v24)
  {
    v25 = v24 - 1;
    if (v25 > 0x289)
    {
      v26 = &texFormatUnsupported;
    }

    else
    {
      v26 = *(&off_29F342380 + v25);
    }

    *(result + 160) = v26;
    goto LABEL_56;
  }

LABEL_57:
  v27 = a2[7];
  if (v27 != 263)
  {
    *(result + 79) |= 0x80u;
    if (!v27)
    {
      return result;
    }

    v28 = v27 - 1;
    if (v28 > 0x289)
    {
      v29 = &texFormatUnsupported;
    }

    else
    {
      v29 = *(&off_29F342380 + v28);
    }

    *(result + 168) = v29;
  }

  v5 = 128;
LABEL_64:
  *(result + 40) |= v5;
  return result;
}

uint64_t AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(uint64_t result, unsigned int a2)
{
  v2 = *(result + 88) & 0xFFFFFFFE;
  v3 = v2 == 2;
  v4 = *(result + 79);
  if (v4 == 255)
  {
    v14 = 0;
    v15 = *(result + 40);
    while (1)
    {
      v5 = v15 != 0;
      if (!v15)
      {
        goto LABEL_3;
      }

      v17 = __clz(__rbit32(v15));
      v18 = *(result + 112 + 8 * v17);
      v19 = *(v18 + 32) == 18 ? 9 : *(v18 + 32);
      v20 = v19 - 2;
      v21 = v19 - 2 > 0x14 ? 0 : dword_29D2F4B5C[v20];
      v16 = *(v18 + 28);
      if (v19 > 0x16)
      {
        break;
      }

      v22 = 1 << v19;
      if ((v22 & 0x41F3C0) != 0)
      {
        v16 *= 2;
      }

      else if ((v22 & 0x3C0000) != 0)
      {
        v16 = 4;
      }

      else
      {
        if ((v22 & 0x20C00) == 0)
        {
          break;
        }

        v16 *= 4;
      }

LABEL_14:
      v14 = v16 + ((v14 + v21 - 1) & -v21);
      v5 = 1;
      v15 ^= 1 << v17;
      if (v14 >= 0x101)
      {
        goto LABEL_3;
      }
    }

    if (v20 >= 4)
    {
      v16 = 0;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_3:
  if (v2 == 2)
  {
    if (v4 == 255)
    {
      v6 = *(result + 40);
      if (*(result + 40))
      {
        v7 = result + 112;
        if (v5)
        {
          v8 = 1;
          do
          {
            v11 = __clz(__rbit32(v6));
            v12 = *(*(v7 + 8 * v11) + 32) - 2;
            if (v12 <= 0x14)
            {
              v13 = dword_29D2F4B5C[v12];
              if (v8 <= v13)
              {
                v8 = v13;
              }
            }

            v9 = 1 << v11;
            v10 = v8;
            v47 = v9 == v6;
            v6 ^= v9;
          }

          while (!v47);
        }

        else
        {
          v8 = 1;
          do
          {
            v84 = __clz(__rbit32(v6));
            v85 = *(*(v7 + 8 * v84) + 32);
            if (v85 == 18)
            {
              v86 = 7;
            }

            else
            {
              v86 = v85 - 2;
            }

            if (v86 <= 0x14)
            {
              v87 = dword_29D2F4B5C[v86];
              if (v8 <= v87)
              {
                v8 = v87;
              }
            }

            v83 = 1 << v84;
            v10 = v8;
            v47 = v83 == v6;
            v6 ^= v83;
          }

          while (!v47);
        }
      }

      else
      {
        v8 = 1;
        v10 = 1;
      }
    }

    else
    {
      v8 = 4;
      v10 = 4;
    }
  }

  else
  {
    v10 = 0;
    v8 = 4;
  }

  memset(v89, 0, sizeof(v89));
  v23 = *(result + 40);
  if (*(result + 40))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v5 && v4 == 255 && v2 != 2;
    while (1)
    {
      v31 = __clz(__rbit32(v23));
      v32 = 1 << v31;
      if (((1 << v31) & v4) != 0)
      {
        break;
      }

      v43 = *(v89 + v31) & 0xFDFFF000 | 0x17;
      v42 = 16;
      v44 = v8;
LABEL_75:
      v48 = v44 - 1;
      v49 = -v44;
      v29 = (v44 - 1 + v24) & -v44;
      v50 = v29 + v42;
      v26 |= (v29 + v42) > 0x100;
      v51 = (v48 + v25) & v49;
      v52 = v51 + v42;
      if (v26)
      {
        v25 = v52;
      }

      else
      {
        v24 = v50;
      }

      v3 |= ((1 << v31) & v4) == 0;
      if (v31)
      {
        v53 = 1;
      }

      else
      {
        v53 = v2 == 2;
      }

      v54 = v53;
      if (v3 & 1) != 0 && (v54)
      {
        v30 = v43 | 0xFF000;
      }

      else
      {
        if (v26)
        {
          LOBYTE(v29) = v51;
        }

        v30 = v43 & 0xFFF00FFF | (v29 << 12);
      }

      *(v89 + v31) = v30 & 0xFE0FFFFF | 0x100000;
      v47 = v32 == v23;
      v23 ^= v32;
      if (v47)
      {
        goto LABEL_88;
      }
    }

    v33 = *(result + 112 + 8 * v31);
    v35 = v33[7];
    v34 = v33[8];
    if (v34 == 18)
    {
      v36 = v28;
    }

    else
    {
      v36 = 1;
    }

    if (v34 == 18)
    {
      v37 = 9;
    }

    else
    {
      v37 = v33[8];
    }

    if (v36)
    {
      v38 = v33[8];
    }

    else
    {
      v38 = 9;
    }

    if (v38 == 3)
    {
      if (v37 == 3)
      {
        v39 = 0;
      }

      else
      {
        v39 = 1 << v31;
      }

      v27 |= v39;
      v40 = (v33[21] != 0) << 8;
    }

    else
    {
      if (v38 == v37)
      {
        v45 = 0;
      }

      else
      {
        v45 = 1 << v31;
      }

      v27 |= v45;
      if (v38 <= 0x16)
      {
        v46 = 1 << v38;
        if (((1 << v38) & 0x41F3C0) != 0)
        {
          v41 = 0;
          v42 = 2 * v35;
          goto LABEL_70;
        }

        if ((v46 & 0x3C0000) != 0)
        {
          v41 = 0;
          v42 = 4;
          goto LABEL_70;
        }

        if ((v46 & 0x20C00) != 0)
        {
          v41 = 0;
          v42 = 4 * v35;
          goto LABEL_70;
        }
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
      v47 = v38 - 4 < 2 || v38 == 2;
      if (!v47)
      {
        goto LABEL_70;
      }
    }

    v41 = v40;
    v42 = v33[7];
LABEL_70:
    v44 = v10;
    if (v2 != 2)
    {
      if (v38 - 2 > 0x14)
      {
        v44 = 0;
      }

      else
      {
        v44 = dword_29D2F4B5C[v38 - 2];
      }
    }

    v43 = v38 & 0x1F | (32 * (v33[7] & 7)) | ((v38 != v37) << 25) | v41 | *(v89 + v31) & 0xFDFFF000 | ((v33[19] & 7) << 9);
    goto LABEL_75;
  }

  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
LABEL_88:
  v55 = *(result + 80);
  if (v55 == -1 || (v56 = *(v89 + v55), (v56 & 0x1F) == 0))
  {
    v57 = 0;
  }

  else
  {
    *result = v56;
    v57 = 1;
  }

  v58 = *(result + 81);
  if (v58 != -1)
  {
    v59 = *(v89 + v58);
    if ((v59 & 0x1F) != 0)
    {
      *(result + 4) = v59;
      v57 |= 2u;
    }
  }

  v60 = *(result + 82);
  if (v60 != -1)
  {
    v61 = *(v89 + v60);
    if ((v61 & 0x1F) != 0)
    {
      *(result + 8) = v61;
      v57 |= 4u;
    }
  }

  v62 = *(result + 83);
  if (v62 != -1)
  {
    v63 = *(v89 + v62);
    if ((v63 & 0x1F) != 0)
    {
      *(result + 12) = v63;
      v57 |= 8u;
    }
  }

  v64 = *(result + 84);
  if (v64 != -1)
  {
    v65 = *(v89 + v64);
    if ((v65 & 0x1F) != 0)
    {
      *(result + 16) = v65;
      v57 |= 0x10u;
    }
  }

  v66 = *(result + 85);
  if (v66 != -1)
  {
    v67 = *(v89 + v66);
    if ((v67 & 0x1F) != 0)
    {
      *(result + 20) = v67;
      v57 |= 0x20u;
    }
  }

  v68 = *(result + 86);
  if (v68 != -1)
  {
    v69 = *(v89 + v68);
    if ((v69 & 0x1F) != 0)
    {
      *(result + 24) = v69;
      v57 |= 0x40u;
    }
  }

  v70 = *(result + 87);
  if (v70 != -1)
  {
    v71 = *(v89 + v70);
    if ((v71 & 0x1F) != 0)
    {
      *(result + 28) = v71;
      v57 |= 0x80u;
    }
  }

  if (a2)
  {
    v72 = a2;
  }

  else
  {
    v72 = v24;
  }

  v73 = v72 + 7;
  v74 = v73 & 0x1FFFFFFF8;
  if ((v73 & 0x1FFFFFF00) != 0)
  {
    v74 = 256;
  }

  if (v74 <= 8)
  {
    LODWORD(v74) = 8;
  }

  if (v26)
  {
    v75 = 256;
  }

  else
  {
    v75 = v74;
  }

  if (v26)
  {
    v76 = *(result + 208);
    v77 = v76;
  }

  else
  {
    v77 = 0;
    v76 = 1;
  }

  if ((v4 != 255) | v3 & 1 || (v76 & 1) == 0)
  {
    v78 = *(result + 32) | 0x1FF000;
  }

  else
  {
    v78 = *(result + 32) & 0xFFE00FFF | (v75 << 12);
  }

  v79 = v78 & 0xFFFFF000 | (((27 - __clz(*(result + 96))) & 3) << 8) & 0xF3FF | (((27 - __clz(*(result + 97))) & 3) << 10) | v57;
  v80 = v77 | ~v26;
  if (v26)
  {
    v81 = 6291456;
  }

  else
  {
    v81 = 0x400000;
  }

  v82 = v79 & 0xE09FFFFF | v81;
  if (v80)
  {
    v79 = v82;
  }

  *(result + 32) = v79 & 0xE0FFFFFF;
  *(result + 100) = v75;
  *(result + 104) = v25;
  *(result + 44) = v27;
  return result;
}