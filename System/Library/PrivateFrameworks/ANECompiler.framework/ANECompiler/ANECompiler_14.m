google::protobuf::UnknownFieldSet *operations_research::glop::GlopParameters::Clear(operations_research::glop::GlopParameters *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 7) = 0;
    *(this + 16) = 256;
    *(this + 36) = 0x100000001;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 3) = xmmword_23CE3AE70;
    *(this + 4) = xmmword_23CE3AE80;
    *(this + 5) = xmmword_23CE3AE90;
    *(this + 6) = xmmword_23CE3AEA0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 14) = 0x3EB0C6F7A0B5ED8DLL;
    *(this + 15) = 0x4000000002;
    *(this + 8) = xmmword_23CE3AEB0;
    *(this + 18) = 0x300000002;
    *(this + 19) = 0x3F847AE147AE147BLL;
  }

  if (HIBYTE(v1))
  {
    *(this + 20) = 0x7FF0000000000000;
    *(this + 21) = -1;
    *(this + 22) = 0x3CD203AF9EE75616;
    *(this + 23) = 0x9601010101;
  }

  v2 = *(this + 5);
  if (v2)
  {
    *(this + 12) = xmmword_23CE3AED0;
    *(this + 13) = xmmword_23CE389E0;
    *(this + 56) = 16843009;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 57) = 1;
    *(this + 232) = xmmword_23CE3AEC0;
    *(this + 31) = 0x100000001;
    *(this + 16) = xmmword_23CE3AEE0;
    *(this + 34) = 0x3E7AD7F29ABCAF48;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 35) = 0x4044000000000000;
    *(this + 36) = 0x101010101;
    *(this + 37) = 0x4A511B0EC57E649ALL;
    *(this + 38) = 0x7FF0000000000000;
  }

  if ((v2 & 0x3000000) != 0)
  {
    *(this + 39) = 0x46293E5939A08CEALL;
    *(this + 40) = 0x39B4484BFEEBC2A0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 1) = 0;
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::glop::GlopParameters::_InternalSerialize(operations_research::glop::GlopParameters *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 4);
  if ((v4 & 0x40) == 0)
  {
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_65;
  }

  if (*a3 <= a2)
  {
    v138 = a3;
    v186 = this;
    v94 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v138;
    this = v186;
    v12 = v186[9];
    *v94 = 8;
    v13 = v94 + 1;
    if (v12 < 0x80)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v12 = *(this + 9);
    *a2 = 8;
    v13 = a2 + 1;
    if (v12 < 0x80)
    {
LABEL_63:
      LOBYTE(v14) = v12;
      goto LABEL_64;
    }
  }

  do
  {
    *v13++ = v12 | 0x80;
    v14 = v12 >> 7;
    v95 = v12 >> 14;
    v12 >>= 7;
  }

  while (v95);
LABEL_64:
  *v13 = v14;
  a2 = v13 + 1;
  if ((v4 & 0x80) == 0)
  {
LABEL_3:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_69;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    v139 = a3;
    v187 = this;
    v96 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v139;
    this = v187;
    v15 = v187[10];
    *v96 = 16;
    v16 = v96 + 1;
    if (v15 < 0x80)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v15 = *(this + 10);
    *a2 = 16;
    v16 = a2 + 1;
    if (v15 < 0x80)
    {
LABEL_67:
      LOBYTE(v17) = v15;
      goto LABEL_68;
    }
  }

  do
  {
    *v16++ = v15 | 0x80;
    v17 = v15 >> 7;
    v97 = v15 >> 14;
    v15 >>= 7;
  }

  while (v97);
LABEL_68:
  *v16 = v17;
  a2 = v16 + 1;
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= a2)
  {
    v140 = a3;
    v188 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v140;
    this = v188;
  }

  v18 = *(this + 6);
  *a2 = 49;
  *(a2 + 1) = v18;
  a2 += 9;
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

LABEL_72:
  if (*a3 <= a2)
  {
    v141 = a3;
    v189 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v141;
    this = v189;
  }

  v19 = *(this + 7);
  *a2 = 65;
  *(a2 + 1) = v19;
  a2 += 9;
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (*a3 <= a2)
  {
    v142 = a3;
    v190 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v142;
    this = v190;
  }

  v20 = *(this + 8);
  *a2 = 73;
  *(a2 + 1) = v20;
  a2 += 9;
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_81;
  }

LABEL_78:
  if (*a3 <= a2)
  {
    v143 = a3;
    v191 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v143;
    this = v191;
  }

  v21 = *(this + 9);
  *a2 = 81;
  *(a2 + 1) = v21;
  a2 += 9;
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    v144 = a3;
    v192 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v144;
    this = v192;
  }

  v22 = *(this + 10);
  *a2 = 89;
  *(a2 + 1) = v22;
  a2 += 9;
  if ((v4 & 0x2000) == 0)
  {
LABEL_9:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_87;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    v145 = a3;
    v193 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v145;
    this = v193;
  }

  v23 = *(this + 11);
  *a2 = 97;
  *(a2 + 1) = v23;
  a2 += 9;
  if ((v4 & 0x4000) == 0)
  {
LABEL_10:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    v146 = a3;
    v194 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v146;
    this = v194;
  }

  v24 = *(this + 12);
  *a2 = 105;
  *(a2 + 1) = v24;
  a2 += 9;
  if ((v4 & 0x8000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_93;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    v147 = a3;
    v195 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v147;
    this = v195;
  }

  v25 = *(this + 13);
  *a2 = 113;
  *(a2 + 1) = v25;
  a2 += 9;
  if ((v4 & 0x10000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_96;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    v148 = a3;
    v196 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v148;
    this = v196;
  }

  v26 = *(this + 14);
  *a2 = 121;
  *(a2 + 1) = v26;
  a2 += 9;
  if ((v4 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_99;
  }

LABEL_96:
  if (*a3 <= a2)
  {
    v149 = a3;
    v197 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v149;
    this = v197;
  }

  v27 = *(this + 184);
  *a2 = 384;
  a2[2] = v27;
  a2 += 3;
  if ((v4 & 0x20000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_103;
  }

LABEL_99:
  if (*a3 <= a2)
  {
    v150 = a3;
    v198 = this;
    v98 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v150;
    this = v198;
    v28 = v198[30];
    *v98 = 392;
    v29 = v98 + 2;
    if (v28 < 0x80)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v28 = *(this + 30);
    *a2 = 392;
    v29 = a2 + 2;
    if (v28 < 0x80)
    {
LABEL_101:
      LOBYTE(v30) = v28;
      goto LABEL_102;
    }
  }

  do
  {
    *v29++ = v28 | 0x80;
    v30 = v28 >> 7;
    v99 = v28 >> 14;
    v28 >>= 7;
  }

  while (v99);
LABEL_102:
  *v29 = v30;
  a2 = v29 + 1;
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_106;
  }

LABEL_103:
  if (*a3 <= a2)
  {
    v151 = a3;
    v199 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v151;
    this = v199;
  }

  v31 = *(this + 185);
  *a2 = 400;
  a2[2] = v31;
  a2 += 3;
  if ((v4 & 0x40000) == 0)
  {
LABEL_16:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_110;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    v152 = a3;
    v200 = this;
    v100 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v152;
    this = v200;
    v32 = v200[31];
    *v100 = 408;
    v33 = v100 + 2;
    if (v32 < 0x80)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v32 = *(this + 31);
    *a2 = 408;
    v33 = a2 + 2;
    if (v32 < 0x80)
    {
LABEL_108:
      LOBYTE(v34) = v32;
      goto LABEL_109;
    }
  }

  do
  {
    *v33++ = v32 | 0x80;
    v34 = v32 >> 7;
    v101 = v32 >> 14;
    v32 >>= 7;
  }

  while (v101);
LABEL_109:
  *v33 = v34;
  a2 = v33 + 1;
  if ((v4 & 0x200000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_114;
  }

LABEL_110:
  if (*a3 <= a2)
  {
    v153 = a3;
    v201 = this;
    v102 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v153;
    this = v201;
    v35 = v201[36];
    *v102 = 416;
    v36 = v102 + 2;
    if (v35 < 0x80)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v35 = *(this + 36);
    *a2 = 416;
    v36 = a2 + 2;
    if (v35 < 0x80)
    {
LABEL_112:
      LOBYTE(v37) = v35;
      goto LABEL_113;
    }
  }

  do
  {
    *v36++ = v35 | 0x80;
    v37 = v35 >> 7;
    v103 = v35 >> 14;
    v35 >>= 7;
  }

  while (v103);
LABEL_113:
  *v36 = v37;
  a2 = v36 + 1;
  if ((v4 & 0x80000) == 0)
  {
LABEL_18:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_117;
  }

LABEL_114:
  if (*a3 <= a2)
  {
    v154 = a3;
    v202 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v154;
    this = v202;
  }

  v38 = *(this + 16);
  *a2 = 425;
  *(a2 + 2) = v38;
  a2 += 10;
  if ((v4 & 0x100000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= a2)
  {
    v155 = a3;
    v203 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v155;
    this = v203;
  }

  v39 = *(this + 17);
  *a2 = 433;
  *(a2 + 2) = v39;
  a2 += 10;
  if ((v4 & 0x40000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_123;
  }

LABEL_120:
  if (*a3 <= a2)
  {
    v156 = a3;
    v204 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v156;
    this = v204;
  }

  v40 = *(this + 187);
  *a2 = 448;
  a2[2] = v40;
  a2 += 3;
  if ((v4 & 0x800000) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_126;
  }

LABEL_123:
  if (*a3 <= a2)
  {
    v157 = a3;
    v205 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v157;
    this = v205;
  }

  v41 = *(this + 19);
  *a2 = 457;
  *(a2 + 2) = v41;
  a2 += 10;
  if ((v4 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_129;
  }

LABEL_126:
  if (*a3 <= a2)
  {
    v158 = a3;
    v206 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v158;
    this = v206;
  }

  v42 = *(this + 20);
  *a2 = 465;
  *(a2 + 2) = v42;
  a2 += 10;
  if ((v4 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_133;
  }

LABEL_129:
  if (*a3 <= a2)
  {
    v159 = a3;
    v207 = this;
    v104 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v159;
    this = v207;
    v43 = *(v207 + 21);
    *v104 = 472;
    v44 = v104 + 2;
    if (v43 < 0x80)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v43 = *(this + 21);
    *a2 = 472;
    v44 = a2 + 2;
    if (v43 < 0x80)
    {
LABEL_131:
      LOBYTE(v45) = v43;
      goto LABEL_132;
    }
  }

  do
  {
    *v44++ = v43 | 0x80;
    v45 = v43 >> 7;
    v105 = v43 >> 14;
    v43 >>= 7;
  }

  while (v105);
LABEL_132:
  *v44 = v45;
  a2 = v44 + 1;
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_137;
  }

LABEL_133:
  if (*a3 <= a2)
  {
    v160 = a3;
    v208 = this;
    v106 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v160;
    this = v208;
    v46 = v208[37];
    *v106 = 488;
    v47 = v106 + 2;
    if (v46 < 0x80)
    {
      goto LABEL_135;
    }
  }

  else
  {
    v46 = *(this + 37);
    *a2 = 488;
    v47 = a2 + 2;
    if (v46 < 0x80)
    {
LABEL_135:
      LOBYTE(v48) = v46;
      goto LABEL_136;
    }
  }

  do
  {
    *v47++ = v46 | 0x80;
    v48 = v46 >> 7;
    v107 = v46 >> 14;
    v46 >>= 7;
  }

  while (v107);
LABEL_136:
  *v47 = v48;
  a2 = v47 + 1;
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_140;
  }

LABEL_137:
  if (*a3 <= a2)
  {
    v161 = a3;
    v209 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v161;
    this = v209;
  }

  v49 = *(this + 22);
  *a2 = 497;
  *(a2 + 2) = v49;
  a2 += 10;
  if ((v4 & 1) == 0)
  {
LABEL_26:
    if ((v4 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_143;
  }

LABEL_140:
  if (*a3 <= a2)
  {
    v162 = a3;
    v210 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v162;
    this = v210;
  }

  v50 = *(this + 28);
  *a2 = 504;
  a2[2] = v50;
  a2 += 3;
  if ((v4 & 2) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_146;
  }

LABEL_143:
  if (*a3 <= a2)
  {
    v163 = a3;
    v211 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v163;
    this = v211;
  }

  v51 = *(this + 29);
  *a2 = 640;
  a2[2] = v51;
  a2 += 3;
  if ((v4 & 0x80000000) == 0)
  {
LABEL_28:
    v5 = *(this + 5);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_150;
  }

LABEL_146:
  if (*a3 <= a2)
  {
    v243 = this;
    v134 = a3;
    v135 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v134;
    v136 = v135;
    this = v243;
    v52 = v243[47];
    *v136 = 648;
    v53 = (v136 + 1);
    if (v52 < 0x80)
    {
      goto LABEL_148;
    }
  }

  else
  {
    v52 = *(this + 47);
    *a2 = 648;
    v53 = a2 + 2;
    if (v52 < 0x80)
    {
LABEL_148:
      LOBYTE(v54) = v52;
      goto LABEL_149;
    }
  }

  do
  {
    *v53++ = v52 | 0x80;
    v54 = v52 >> 7;
    v137 = v52 >> 14;
    v52 >>= 7;
  }

  while (v137);
LABEL_149:
  *v53 = v54;
  a2 = v53 + 1;
  v5 = *(this + 5);
  if ((v5 & 0x20) == 0)
  {
LABEL_29:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_153;
  }

LABEL_150:
  if (*a3 <= a2)
  {
    v164 = a3;
    v212 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v164;
    this = v212;
  }

  v55 = *(this + 225);
  *a2 = 656;
  a2[2] = v55;
  a2 += 3;
  if ((v5 & 0x40) == 0)
  {
LABEL_30:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_156;
  }

LABEL_153:
  if (*a3 <= a2)
  {
    v165 = a3;
    v213 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v165;
    this = v213;
  }

  v56 = *(this + 226);
  *a2 = 664;
  a2[2] = v56;
  a2 += 3;
  if ((v5 & 0x80) == 0)
  {
LABEL_31:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_159;
  }

LABEL_156:
  if (*a3 <= a2)
  {
    v166 = a3;
    v214 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v166;
    this = v214;
  }

  v57 = *(this + 227);
  *a2 = 672;
  a2[2] = v57;
  a2 += 3;
  if ((v5 & 0x20000) == 0)
  {
LABEL_32:
    if ((v5 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_162;
  }

LABEL_159:
  if (*a3 <= a2)
  {
    v167 = a3;
    v215 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v167;
    this = v215;
  }

  v58 = *(this + 288);
  *a2 = 680;
  a2[2] = v58;
  a2 += 3;
  if ((v5 & 1) == 0)
  {
LABEL_33:
    if ((v5 & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_165;
  }

LABEL_162:
  if (*a3 <= a2)
  {
    v168 = a3;
    v216 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v168;
    this = v216;
  }

  v59 = *(this + 24);
  *a2 = 689;
  *(a2 + 2) = v59;
  a2 += 10;
  if ((v5 & 2) == 0)
  {
LABEL_34:
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_168;
  }

LABEL_165:
  if (*a3 <= a2)
  {
    v169 = a3;
    v217 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v169;
    this = v217;
  }

  v60 = *(this + 25);
  *a2 = 697;
  *(a2 + 2) = v60;
  a2 += 10;
  if ((v5 & 4) == 0)
  {
LABEL_35:
    if ((v5 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_171;
  }

LABEL_168:
  if (*a3 <= a2)
  {
    v170 = a3;
    v218 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v170;
    this = v218;
  }

  v61 = *(this + 26);
  *a2 = 705;
  *(a2 + 2) = v61;
  a2 += 10;
  if ((v5 & 8) == 0)
  {
LABEL_36:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_174;
  }

LABEL_171:
  if (*a3 <= a2)
  {
    v171 = a3;
    v219 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v171;
    this = v219;
  }

  v62 = *(this + 27);
  *a2 = 713;
  *(a2 + 2) = v62;
  a2 += 10;
  if ((v5 & 0x200) == 0)
  {
LABEL_37:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_177;
  }

LABEL_174:
  if (*a3 <= a2)
  {
    v172 = a3;
    v220 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v172;
    this = v220;
  }

  v63 = *(this + 29);
  *a2 = 721;
  *(a2 + 2) = v63;
  a2 += 10;
  if ((v5 & 0x100) == 0)
  {
LABEL_38:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_181;
  }

LABEL_177:
  if (*a3 <= a2)
  {
    v173 = a3;
    v221 = this;
    v108 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v173;
    this = v221;
    v64 = v221[57];
    *v108 = 728;
    v65 = v108 + 2;
    if (v64 < 0x80)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v64 = *(this + 57);
    *a2 = 728;
    v65 = a2 + 2;
    if (v64 < 0x80)
    {
LABEL_179:
      LOBYTE(v66) = v64;
      goto LABEL_180;
    }
  }

  do
  {
    *v65++ = v64 | 0x80;
    v66 = v64 >> 7;
    v109 = v64 >> 14;
    v64 >>= 7;
  }

  while (v109);
LABEL_180:
  *v65 = v66;
  a2 = v65 + 1;
  if ((v5 & 0x800) == 0)
  {
LABEL_39:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_185;
  }

LABEL_181:
  if (*a3 <= a2)
  {
    v174 = a3;
    v222 = this;
    v110 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v174;
    this = v222;
    v67 = v222[62];
    *v110 = 736;
    v68 = v110 + 2;
    if (v67 < 0x80)
    {
      goto LABEL_183;
    }
  }

  else
  {
    v67 = *(this + 62);
    *a2 = 736;
    v68 = a2 + 2;
    if (v67 < 0x80)
    {
LABEL_183:
      LOBYTE(v69) = v67;
      goto LABEL_184;
    }
  }

  do
  {
    *v68++ = v67 | 0x80;
    v69 = v67 >> 7;
    v111 = v67 >> 14;
    v67 >>= 7;
  }

  while (v111);
LABEL_184:
  *v68 = v69;
  a2 = v68 + 1;
  if ((v5 & 0x400) == 0)
  {
LABEL_40:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_188;
  }

LABEL_185:
  if (*a3 <= a2)
  {
    v175 = a3;
    v223 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v175;
    this = v223;
  }

  v70 = *(this + 30);
  *a2 = 745;
  *(a2 + 2) = v70;
  a2 += 10;
  if ((v5 & 0x2000) == 0)
  {
LABEL_41:
    if ((*(this + 16) & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_191;
  }

LABEL_188:
  if (*a3 <= a2)
  {
    v224 = this;
    v112 = a3;
    v113 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v112;
    a2 = v113;
    this = v224;
  }

  v71 = *(this + 32);
  *a2 = 929;
  *(a2 + 2) = v71;
  a2 += 10;
  if ((*(this + 16) & 4) == 0)
  {
LABEL_42:
    v6 = *(this + 5);
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_194;
  }

LABEL_191:
  if (*a3 <= a2)
  {
    v225 = this;
    v114 = a3;
    v115 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v114;
    a2 = v115;
    this = v225;
  }

  v72 = *(this + 30);
  *a2 = 936;
  a2[2] = v72;
  a2 += 3;
  v6 = *(this + 5);
  if ((v6 & 0x4000) == 0)
  {
LABEL_43:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_197;
  }

LABEL_194:
  if (*a3 <= a2)
  {
    v176 = a3;
    v226 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v176;
    this = v226;
  }

  v73 = *(this + 33);
  *a2 = 945;
  *(a2 + 2) = v73;
  a2 += 10;
  if ((v6 & 0x8000) == 0)
  {
LABEL_44:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_200;
  }

LABEL_197:
  if (*a3 <= a2)
  {
    v177 = a3;
    v227 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v177;
    this = v227;
  }

  v74 = *(this + 34);
  *a2 = 953;
  *(a2 + 2) = v74;
  a2 += 10;
  if ((v6 & 0x10000) == 0)
  {
LABEL_45:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_203;
  }

LABEL_200:
  if (*a3 <= a2)
  {
    v178 = a3;
    v228 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v178;
    this = v228;
  }

  v75 = *(this + 35);
  *a2 = 961;
  *(a2 + 2) = v75;
  a2 += 10;
  if ((v6 & 0x1000) == 0)
  {
LABEL_46:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_207;
  }

LABEL_203:
  if (*a3 <= a2)
  {
    v179 = a3;
    v229 = this;
    v116 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v179;
    this = v229;
    v76 = v229[63];
    *v116 = 968;
    v77 = v116 + 2;
    if (v76 < 0x80)
    {
      goto LABEL_205;
    }
  }

  else
  {
    v76 = *(this + 63);
    *a2 = 968;
    v77 = a2 + 2;
    if (v76 < 0x80)
    {
LABEL_205:
      LOBYTE(v78) = v76;
      goto LABEL_206;
    }
  }

  do
  {
    *v77++ = v76 | 0x80;
    v78 = v76 >> 7;
    v117 = v76 >> 14;
    v76 >>= 7;
  }

  while (v117);
LABEL_206:
  *v77 = v78;
  a2 = v77 + 1;
  if ((v6 & 0x10) == 0)
  {
LABEL_47:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_210;
  }

LABEL_207:
  if (*a3 <= a2)
  {
    v180 = a3;
    v230 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v180;
    this = v230;
  }

  v79 = *(this + 224);
  *a2 = 976;
  a2[2] = v79;
  a2 += 3;
  if ((v6 & 0x400000) == 0)
  {
LABEL_48:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_213;
  }

LABEL_210:
  if (*a3 <= a2)
  {
    v181 = a3;
    v231 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v181;
    this = v231;
  }

  v80 = *(this + 37);
  *a2 = 985;
  *(a2 + 2) = v80;
  a2 += 10;
  if ((v6 & 0x200000) == 0)
  {
LABEL_49:
    if ((*(this + 16) & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_217;
  }

LABEL_213:
  if (*a3 <= a2)
  {
    v232 = this;
    v118 = a3;
    v119 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v118;
    v120 = v119;
    this = v232;
    v81 = v232[73];
    *v120 = 992;
    v82 = (v120 + 1);
    if (v81 < 0x80)
    {
      goto LABEL_215;
    }
  }

  else
  {
    v81 = *(this + 73);
    *a2 = 992;
    v82 = a2 + 2;
    if (v81 < 0x80)
    {
LABEL_215:
      LOBYTE(v83) = v81;
      goto LABEL_216;
    }
  }

  do
  {
    *v82++ = v81 | 0x80;
    v83 = v81 >> 7;
    v121 = v81 >> 14;
    v81 >>= 7;
  }

  while (v121);
LABEL_216:
  *v82 = v83;
  a2 = v82 + 1;
  if ((*(this + 16) & 8) == 0)
  {
LABEL_50:
    if ((*(this + 22) & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_220;
  }

LABEL_217:
  if (*a3 <= a2)
  {
    v233 = this;
    v122 = a3;
    v123 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v122;
    a2 = v123;
    this = v233;
  }

  v84 = *(this + 31);
  *a2 = 1000;
  a2[2] = v84;
  a2 += 3;
  if ((*(this + 22) & 4) == 0)
  {
LABEL_51:
    if ((*(this + 19) & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_223;
  }

LABEL_220:
  if (*a3 <= a2)
  {
    v234 = this;
    v124 = a3;
    v125 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v124;
    a2 = v125;
    this = v234;
  }

  v85 = *(this + 289);
  *a2 = 1008;
  a2[2] = v85;
  a2 += 3;
  if ((*(this + 19) & 0x20) == 0)
  {
LABEL_52:
    v7 = *(this + 5);
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_226;
  }

LABEL_223:
  if (*a3 <= a2)
  {
    v235 = this;
    v126 = a3;
    v127 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v126;
    a2 = v127;
    this = v235;
  }

  v86 = *(this + 186);
  *a2 = 1016;
  a2[2] = v86;
  a2 += 3;
  v7 = *(this + 5);
  if ((v7 & 0x800000) == 0)
  {
LABEL_53:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_229;
  }

LABEL_226:
  if (*a3 <= a2)
  {
    v182 = a3;
    v236 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v182;
    this = v236;
  }

  v87 = *(this + 38);
  *a2 = 1153;
  *(a2 + 2) = v87;
  a2 += 10;
  if ((v7 & 0x100000) == 0)
  {
LABEL_54:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_232;
  }

LABEL_229:
  if (*a3 <= a2)
  {
    v183 = a3;
    v237 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v183;
    this = v237;
  }

  v88 = *(this + 291);
  *a2 = 1160;
  a2[2] = v88;
  a2 += 3;
  if ((v7 & 0x80000) == 0)
  {
LABEL_55:
    v8 = *(this + 4);
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_235;
  }

LABEL_232:
  if (*a3 <= a2)
  {
    v238 = this;
    v128 = a3;
    v129 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v128;
    a2 = v129;
    this = v238;
  }

  v89 = *(this + 290);
  *a2 = 1168;
  a2[2] = v89;
  a2 += 3;
  v8 = *(this + 4);
  if ((v8 & 0x20) == 0)
  {
LABEL_56:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*a3 <= a2)
  {
    v184 = a3;
    v239 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v184;
    this = v239;
  }

  v90 = *(this + 33);
  *a2 = 1176;
  a2[2] = v90;
  a2 += 3;
  if ((v8 & 0x10) == 0)
  {
LABEL_57:
    v9 = *(this + 5);
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_241;
  }

LABEL_238:
  if (*a3 <= a2)
  {
    v240 = this;
    v130 = a3;
    v131 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v130;
    a2 = v131;
    this = v240;
  }

  v91 = *(this + 32);
  *a2 = 1192;
  a2[2] = v91;
  a2 += 3;
  v9 = *(this + 5);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_244:
    if (*a3 <= a2)
    {
      v242 = this;
      v132 = a3;
      v133 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v132;
      a2 = v133;
      this = v242;
    }

    v93 = *(this + 40);
    *a2 = 1209;
    *(a2 + 2) = v93;
    a2 += 10;
    v10 = *(this + 1);
    if ((v10 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_247;
  }

LABEL_241:
  if (*a3 <= a2)
  {
    v185 = a3;
    v241 = this;
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v185;
    this = v241;
  }

  v92 = *(this + 39);
  *a2 = 1201;
  *(a2 + 2) = v92;
  a2 += 10;
  if ((v9 & 0x2000000) != 0)
  {
    goto LABEL_244;
  }

LABEL_59:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

LABEL_247:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::glop::GlopParameters::ByteSizeLong(operations_research::glop::GlopParameters *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    v2 = 0;
    if ((v1 & 0xFF00) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  v2 = 3;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 3;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 3;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 3;
  }

  if ((v1 & 0x10) != 0)
  {
    v2 += 3;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 += 3;
  }

  if ((v1 & 0x40) == 0)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_129:
    v2 += ((640 - 9 * __clz(*(this + 10))) >> 6) + 1;
    if ((v1 & 0xFF00) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  v2 += ((640 - 9 * __clz(*(this + 9))) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
    goto LABEL_129;
  }

LABEL_16:
  if ((v1 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  if ((v1 & 0x100) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x200) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x400) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x800) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x1000) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x2000) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x4000) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x8000) != 0)
  {
    v2 += 9;
  }

LABEL_33:
  if ((v1 & 0xFF0000) != 0)
  {
    if ((v1 & 0x10000) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 30)) + 640) >> 6) + 2;
    }

    if ((v1 & 0x40000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 31)) + 640) >> 6) + 2;
    }

    if ((v1 & 0x80000) != 0)
    {
      v2 += 10;
    }

    if ((v1 & 0x100000) != 0)
    {
      v2 += 10;
    }

    if ((v1 & 0x200000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 36)) + 640) >> 6) + 2;
    }

    if ((v1 & 0x400000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 37)) + 640) >> 6) + 2;
    }

    if ((v1 & 0x800000) != 0)
    {
      v2 += 10;
    }
  }

  if (HIBYTE(v1))
  {
    if ((v1 & 0x1000000) != 0)
    {
      v2 += 10;
    }

    if ((v1 & 0x2000000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 21)) + 640) >> 6) + 2;
    }

    if ((v1 & 0x4000000) != 0)
    {
      v2 += 10;
    }

    if ((v1 & 0x8000000) != 0)
    {
      v2 += 3;
    }

    if ((v1 & 0x10000000) != 0)
    {
      v2 += 3;
    }

    if ((v1 & 0x20000000) != 0)
    {
      v2 += 3;
    }

    if ((v1 & 0x40000000) != 0)
    {
      v2 += 3;
    }

    if ((v1 & 0x80000000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 47)) + 640) >> 6) + 2;
    }
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (v3)
    {
      v2 += 10;
    }

    if ((v3 & 2) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 4) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 8) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 0x10) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x20) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x40) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x80) != 0)
    {
      v2 += 3;
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v2 += ((-9 * __clz(*(this + 57)) + 640) >> 6) + 2;
    }

    if ((v3 & 0x200) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 0x400) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 0x800) != 0)
    {
      v2 += ((-9 * __clz(*(this + 62)) + 640) >> 6) + 2;
    }

    if ((v3 & 0x1000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 63)) + 640) >> 6) + 2;
    }

    if ((v3 & 0x2000) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 0x4000) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 0x8000) != 0)
    {
      v2 += 10;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v2 += 10;
    }

    if ((v3 & 0x20000) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x40000) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x80000) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x100000) != 0)
    {
      v2 += 3;
    }

    if ((v3 & 0x200000) != 0)
    {
      v2 += ((-9 * __clz(*(this + 73)) + 640) >> 6) + 2;
    }

    v4 = v2 + 10;
    if ((v3 & 0x400000) == 0)
    {
      v4 = v2;
    }

    v2 = v4 + 10;
    if ((v3 & 0x800000) == 0)
    {
      v2 = v4;
    }
  }

  v5 = (v2 + 10);
  if ((v3 & 0x1000000) == 0)
  {
    v5 = v2;
  }

  if ((v3 & 0x2000000) != 0)
  {
    v5 = (v5 + 10);
  }

  if ((v3 & 0x3000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v2;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v6, this + 6);
}

operations_research::glop::GlopParameters *operations_research::glop::GlopParameters::CopyFrom(operations_research::glop::GlopParameters *this, const operations_research::glop::GlopParameters *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::glop::GlopParameters::Clear(this);

    return operations_research::glop::GlopParameters::MergeImpl(v4, a2, v5);
  }

  return this;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::glop::GlopParameters>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *(v2 + 8) = a1;
  }

  else
  {
    v2 = operator new(0x148uLL);
    *(v2 + 8) = 0;
  }

  *v2 = off_284F3B7C8;
  *(v2 + 16) = 0;
  *(v2 + 33) = 1;
  *(v2 + 36) = 0x100000001;
  *(v2 + 48) = xmmword_23CE3AE70;
  *(v2 + 64) = xmmword_23CE3AE80;
  *(v2 + 80) = xmmword_23CE3AE90;
  *(v2 + 96) = xmmword_23CE3AEA0;
  *(v2 + 112) = 0x3EB0C6F7A0B5ED8DLL;
  *(v2 + 120) = 0x4000000002;
  *(v2 + 128) = xmmword_23CE3AEB0;
  *(v2 + 144) = 0x300000002;
  *(v2 + 152) = xmmword_23CE3AEC0;
  *(v2 + 168) = -1;
  *(v2 + 176) = 0x3CD203AF9EE75616;
  *(v2 + 184) = 0x9601010101;
  *(v2 + 192) = xmmword_23CE3AED0;
  *(v2 + 208) = xmmword_23CE389E0;
  *(v2 + 224) = 0x101010101;
  *(v2 + 232) = xmmword_23CE3AEC0;
  *(v2 + 248) = 0x100000001;
  *(v2 + 256) = xmmword_23CE3AEE0;
  *(v2 + 272) = xmmword_23CE3AEF0;
  *(v2 + 288) = 0x101010101;
  *(v2 + 296) = 0x4A511B0EC57E649ALL;
  result = INFINITY;
  *(v2 + 304) = xmmword_23CE3AF00;
  *(v2 + 320) = 0x39B4484BFEEBC2A0;
  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return result;
}

double operations_research::sat::SatParameters::SharedCtor(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 176) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 184) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 372) = 32;
  *(a1 + 376) = 0x200000001;
  *(a1 + 384) = xmmword_23CE3BED0;
  *(a1 + 400) = 0x3FEFF7CED916872BLL;
  *(a1 + 408) = 21474836490000;
  *(a1 + 416) = xmmword_23CE3BEE0;
  *(a1 + 432) = 0x3F847AE147AE147BLL;
  *(a1 + 440) = 0x100000032;
  *(a1 + 448) = 0x7FF0000000000000;
  *(a1 + 456) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 464) = 10000;
  *(a1 + 472) = 0xC800000001;
  *(a1 + 480) = 0x3FE0000000000000;
  *(a1 + 488) = xmmword_23CE3BEF0;
  *(a1 + 504) = 0x403E000000000000;
  *(a1 + 512) = 0x3200000005;
  *(a1 + 520) = 0x3FF0000000000000;
  *(a1 + 528) = xmmword_23CE3BF00;
  *(a1 + 544) = 0x101010100001388;
  *(a1 + 552) = 0x3FF0000000000000;
  *(a1 + 560) = 1;
  *(a1 + 564) = 0x101010101010101;
  *(a1 + 572) = xmmword_23CE3BF10;
  *(a1 + 588) = 2;
  *(a1 + 592) = 0x3FA999999999999ALL;
  *(a1 + 600) = 0x6400000258;
  *(a1 + 608) = 100;
  *(a1 + 616) = 0x416312D000000000;
  *(a1 + 624) = 0x3500000032;
  *(a1 + 632) = 0x3FF0000000000000;
  *(a1 + 640) = xmmword_23CE3BF20;
  *(a1 + 656) = 0x101010100000003;
  *(a1 + 664) = 0x426D1A94A2000000;
  *(a1 + 672) = 0x4197D78400000000;
  *(a1 + 680) = 0x4000000001;
  *(a1 + 688) = 0x101010101010101;
  *(a1 + 696) = 0x10000000ALL;
  *(a1 + 704) = xmmword_23CE3BF30;
  *(a1 + 720) = 0x1010101000003E8;
  *(a1 + 728) = 0x3F1A36E2EB1C432DLL;
  *(a1 + 736) = 0x3E800000002;
  *(a1 + 752) = 0x201010101;
  *(a1 + 744) = 0x101010101010101;
  *(a1 + 760) = 0x3FE0000000000000;
  *(a1 + 768) = xmmword_23CE3BF40;
  *(a1 + 784) = 0x4415AF1D78B58C40;
  *(a1 + 792) = 100000000;
  *(a1 + 800) = 0x3F50624DD2F1A9FCLL;
  *(a1 + 808) = 0x101010100000002;
  *(a1 + 816) = 0x4024000000000000;
  *(a1 + 824) = 0x7D000000002;
  *(a1 + 832) = xmmword_23CE3BF50;
  *(a1 + 848) = 0x800000003CLL;
  *(a1 + 856) = 0x3FE0000000000000;
  *(a1 + 864) = xmmword_23CE3BF60;
  *(a1 + 880) = xmmword_23CE3BF70;
  *(a1 + 896) = 0x3FE0000000000000;
  *(a1 + 904) = 0x200000064;
  *(a1 + 912) = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
  *(a1 + 928) = 0x300000064;
  *(a1 + 936) = 0x3FC999999999999ALL;
  *(a1 + 944) = 0x3FF0000000000000;
  *(a1 + 952) = 5368709140000;
  *(a1 + 960) = xmmword_23CE3BF80;
  *(a1 + 368) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  return result;
}

void *operations_research::sat::SatParameters::SatParameters(void *a1, uint64_t a2)
{
  *a1 = off_284F3B868;
  a1[1] = a2;
  operations_research::sat::SatParameters::SharedCtor(a1, a2);
  return a1;
}

uint64_t operations_research::sat::SatParameters::SatParameters(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F3B868;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v8 = *(a3 + 16);
  v9 = *(a3 + 32);
  *(a1 + 56) = 0;
  *(a1 + 32) = v9;
  *(a1 + 16) = v8;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = a2;
  v10 = *(a3 + 56);
  if (v10)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 56, 0, *(a3 + 56));
    *(a1 + 56) = v10;
    if (v10 >= 1)
    {
      v11 = *(a1 + 64);
      v12 = *(a3 + 64);
      if (v10 < 8)
      {
        goto LABEL_10;
      }

      if ((v11 - v12) < 0x20)
      {
        goto LABEL_10;
      }

      v13 = v10;
      v14 = v10 & 0x7FFFFFF8;
      LODWORD(v10) = v10 - (v10 & 0x7FFFFFF8);
      v15 = &v11[v14];
      v16 = &v12[v14];
      v17 = (v12 + 4);
      v18 = v11 + 4;
      v19 = v14;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      v11 = v15;
      v12 = v16;
      if (v14 != v13)
      {
LABEL_10:
        v21 = v10 + 1;
        do
        {
          v22 = *v12++;
          *v11++ = v22;
          --v21;
        }

        while (v21 > 1);
      }
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  if (*(a3 + 80))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(a1 + 72, a3 + 72);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  if (*(a3 + 104))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(a1 + 96, a3 + 96);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  if (*(a3 + 128))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a1 + 120), (a3 + 120), google::protobuf::Arena::CopyConstruct<operations_research::sat::SatParameters>);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  if (*(a3 + 152))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(a1 + 144, a3 + 144);
  }

  v23 = *(a3 + 168);
  if ((v23 & 3) != 0)
  {
    v23 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 168), a2);
  }

  *(a1 + 168) = v23;
  v24 = *(a3 + 176);
  if ((v24 & 3) != 0)
  {
    v24 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 176), a2);
  }

  *(a1 + 176) = v24;
  v25 = *(a3 + 184);
  if ((v25 & 3) != 0)
  {
    v25 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 184), a2);
  }

  *(a1 + 184) = v25;
  memcpy((a1 + 192), (a3 + 192), 0x310uLL);
  return a1;
}

void sub_23C9C1750(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2);
  if (*(v1 + 60) >= 1)
  {
    v6 = *(v1 + 64);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::SatParameters::~SatParameters(operations_research::sat::SatParameters *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 21);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 22);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 23);
  operations_research::sat::SatParameters::Impl_::~Impl_((this + 16));
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 21);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 22);
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 23);
  operations_research::sat::SatParameters::Impl_::~Impl_((this + 16));

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SatParameters::MergeImpl(operations_research::sat::SatParameters *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(this + 14);
    v7 = (v6 + v5);
    if (*(this + 15) < v7)
    {
      google::protobuf::RepeatedField<int>::Grow(this + 56, v6, v7);
      LODWORD(v6) = *(this + 14);
      v8 = *(this + 8);
      *(this + 14) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(this + 8);
      *(this + 14) = v7;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    v9 = *(a2 + 8);
    v10 = (v8 + 4 * v6);
    if (v5 < 8)
    {
      goto LABEL_9;
    }

    v11 = 4 * v6 + v8;
    if ((v11 - v9) < 0x20)
    {
      goto LABEL_9;
    }

    v12 = v5;
    v13 = v5 & 0x7FFFFFF8;
    LODWORD(v5) = v5 - (v5 & 0x7FFFFFF8);
    v10 += v13;
    v14 = &v9[v13];
    v15 = (v9 + 4);
    v16 = (v11 + 16);
    v17 = v13;
    do
    {
      v18 = *v15;
      *(v16 - 1) = *(v15 - 1);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    v9 = v14;
    if (v13 != v12)
    {
LABEL_9:
      v19 = v5 + 1;
      do
      {
        v20 = *v9++;
        *v10++ = v20;
        --v19;
      }

      while (v19 > 1);
    }
  }

LABEL_11:
  if (*(a2 + 20))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 72, a2 + 72);
  }

  if (*(a2 + 26))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 96, a2 + 96);
  }

  if (*(a2 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 30, (a2 + 120), google::protobuf::Arena::CopyConstruct<operations_research::sat::SatParameters>);
  }

  if (*(a2 + 38))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 144, a2 + 144);
  }

  v21 = *(a2 + 4);
  if (!v21)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    v23 = *(a2 + 21);
    *(this + 4) |= 1u;
    v24 = *(this + 1);
    if (v24)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 21, (v23 & 0xFFFFFFFFFFFFFFFCLL), *(v24 & 0xFFFFFFFFFFFFFFFELL));
      if ((v21 & 2) != 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 21, (v23 & 0xFFFFFFFFFFFFFFFCLL), v24);
      if ((v21 & 2) != 0)
      {
        goto LABEL_70;
      }
    }

LABEL_22:
    if ((v21 & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_72:
    v27 = *(a2 + 23);
    *(this + 4) |= 4u;
    v28 = *(this + 1);
    if (v28)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 23, (v27 & 0xFFFFFFFFFFFFFFFCLL), *(v28 & 0xFFFFFFFFFFFFFFFELL));
      if ((v21 & 8) != 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 23, (v27 & 0xFFFFFFFFFFFFFFFCLL), v28);
      if ((v21 & 8) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_24:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

  if ((v21 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_70:
  v25 = *(a2 + 22);
  *(this + 4) |= 2u;
  v26 = *(this + 1);
  if (v26)
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 22, (v25 & 0xFFFFFFFFFFFFFFFCLL), *(v26 & 0xFFFFFFFFFFFFFFFELL));
    if ((v21 & 4) != 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 22, (v25 & 0xFFFFFFFFFFFFFFFCLL), v26);
    if ((v21 & 4) != 0)
    {
      goto LABEL_72;
    }
  }

LABEL_23:
  if ((v21 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_74:
  *(this + 48) = *(a2 + 48);
  if ((v21 & 0x10) == 0)
  {
LABEL_25:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_76:
    *(this + 25) = *(a2 + 25);
    if ((v21 & 0x40) == 0)
    {
LABEL_27:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_75:
  *(this + 49) = *(a2 + 49);
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_76;
  }

LABEL_26:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_77:
  *(this + 26) = *(a2 + 26);
  if ((v21 & 0x80) != 0)
  {
LABEL_28:
    *(this + 54) = *(a2 + 54);
  }

LABEL_29:
  if ((v21 & 0xFF00) == 0)
  {
    goto LABEL_39;
  }

  if ((v21 & 0x100) != 0)
  {
    *(this + 55) = *(a2 + 55);
    if ((v21 & 0x200) == 0)
    {
LABEL_32:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_81;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  *(this + 56) = *(a2 + 56);
  if ((v21 & 0x400) == 0)
  {
LABEL_33:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(this + 57) = *(a2 + 57);
  if ((v21 & 0x800) == 0)
  {
LABEL_34:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(this + 29) = *(a2 + 29);
  if ((v21 & 0x1000) == 0)
  {
LABEL_35:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(this + 30) = *(a2 + 30);
  if ((v21 & 0x2000) == 0)
  {
LABEL_36:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(this + 62) = *(a2 + 62);
  if ((v21 & 0x4000) == 0)
  {
LABEL_37:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_85:
  *(this + 252) = *(a2 + 252);
  if ((v21 & 0x8000) != 0)
  {
LABEL_38:
    *(this + 253) = *(a2 + 253);
  }

LABEL_39:
  if ((v21 & 0xFF0000) == 0)
  {
    goto LABEL_49;
  }

  if ((v21 & 0x10000) != 0)
  {
    *(this + 254) = *(a2 + 254);
    if ((v21 & 0x20000) == 0)
    {
LABEL_42:
      if ((v21 & 0x40000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_89;
    }
  }

  else if ((v21 & 0x20000) == 0)
  {
    goto LABEL_42;
  }

  *(this + 255) = *(a2 + 255);
  if ((v21 & 0x40000) == 0)
  {
LABEL_43:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(this + 32) = *(a2 + 32);
  if ((v21 & 0x80000) == 0)
  {
LABEL_44:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(this + 66) = *(a2 + 66);
  if ((v21 & 0x100000) == 0)
  {
LABEL_45:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(this + 268) = *(a2 + 268);
  if ((v21 & 0x200000) == 0)
  {
LABEL_46:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(this + 269) = *(a2 + 269);
  if ((v21 & 0x400000) == 0)
  {
LABEL_47:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_93:
  *(this + 270) = *(a2 + 270);
  if ((v21 & 0x800000) != 0)
  {
LABEL_48:
    *(this + 271) = *(a2 + 271);
  }

LABEL_49:
  if (!HIBYTE(v21))
  {
    goto LABEL_58;
  }

  if ((v21 & 0x1000000) != 0)
  {
    *(this + 272) = *(a2 + 272);
    if ((v21 & 0x2000000) == 0)
    {
LABEL_52:
      if ((v21 & 0x4000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_487;
    }
  }

  else if ((v21 & 0x2000000) == 0)
  {
    goto LABEL_52;
  }

  *(this + 273) = *(a2 + 273);
  if ((v21 & 0x4000000) == 0)
  {
LABEL_53:
    if ((v21 & 0x8000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_488;
  }

LABEL_487:
  *(this + 274) = *(a2 + 274);
  if ((v21 & 0x8000000) == 0)
  {
LABEL_54:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_489;
  }

LABEL_488:
  *(this + 275) = *(a2 + 275);
  if ((v21 & 0x10000000) == 0)
  {
LABEL_55:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_490;
  }

LABEL_489:
  *(this + 69) = *(a2 + 69);
  if ((v21 & 0x20000000) == 0)
  {
LABEL_56:
    if ((v21 & 0x40000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_491;
  }

LABEL_490:
  *(this + 280) = *(a2 + 280);
  if ((v21 & 0x40000000) == 0)
  {
LABEL_57:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_492;
  }

LABEL_491:
  *(this + 281) = *(a2 + 281);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_58:
    v22 = *(a2 + 5);
    if (!v22)
    {
      goto LABEL_103;
    }

LABEL_59:
    if (v22)
    {
      *(this + 283) = *(a2 + 283);
      if ((v22 & 2) == 0)
      {
LABEL_61:
        if ((v22 & 4) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_97;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_61;
    }

    *(this + 284) = *(a2 + 284);
    if ((v22 & 4) == 0)
    {
LABEL_62:
      if ((v22 & 8) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

LABEL_97:
    *(this + 285) = *(a2 + 285);
    if ((v22 & 8) == 0)
    {
LABEL_63:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_99;
    }

LABEL_98:
    *(this + 286) = *(a2 + 286);
    if ((v22 & 0x10) == 0)
    {
LABEL_64:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_100;
    }

LABEL_99:
    *(this + 287) = *(a2 + 287);
    if ((v22 & 0x20) == 0)
    {
LABEL_65:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_101;
    }

LABEL_100:
    *(this + 288) = *(a2 + 288);
    if ((v22 & 0x40) == 0)
    {
LABEL_66:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_103;
      }

LABEL_102:
      *(this + 290) = *(a2 + 290);
      goto LABEL_103;
    }

LABEL_101:
    *(this + 289) = *(a2 + 289);
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_492:
  *(this + 282) = *(a2 + 282);
  v22 = *(a2 + 5);
  if (v22)
  {
    goto LABEL_59;
  }

LABEL_103:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v22 & 0x100) != 0)
  {
    *(this + 291) = *(a2 + 291);
    if ((v22 & 0x200) == 0)
    {
LABEL_106:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_144;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_106;
  }

  *(this + 292) = *(a2 + 292);
  if ((v22 & 0x400) == 0)
  {
LABEL_107:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(this + 293) = *(a2 + 293);
  if ((v22 & 0x800) == 0)
  {
LABEL_108:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(this + 294) = *(a2 + 294);
  if ((v22 & 0x1000) == 0)
  {
LABEL_109:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(this + 295) = *(a2 + 295);
  if ((v22 & 0x2000) == 0)
  {
LABEL_110:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(this + 37) = *(a2 + 37);
  if ((v22 & 0x4000) == 0)
  {
LABEL_111:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_148:
  *(this + 76) = *(a2 + 76);
  if ((v22 & 0x8000) != 0)
  {
LABEL_112:
    *(this + 308) = *(a2 + 308);
  }

LABEL_113:
  if ((v22 & 0xFF0000) == 0)
  {
    goto LABEL_123;
  }

  if ((v22 & 0x10000) != 0)
  {
    *(this + 309) = *(a2 + 309);
    if ((v22 & 0x20000) == 0)
    {
LABEL_116:
      if ((v22 & 0x40000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_152;
    }
  }

  else if ((v22 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

  *(this + 310) = *(a2 + 310);
  if ((v22 & 0x40000) == 0)
  {
LABEL_117:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(this + 311) = *(a2 + 311);
  if ((v22 & 0x80000) == 0)
  {
LABEL_118:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(this + 312) = *(a2 + 312);
  if ((v22 & 0x100000) == 0)
  {
LABEL_119:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(this + 313) = *(a2 + 313);
  if ((v22 & 0x200000) == 0)
  {
LABEL_120:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(this + 314) = *(a2 + 314);
  if ((v22 & 0x400000) == 0)
  {
LABEL_121:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

LABEL_156:
  *(this + 315) = *(a2 + 315);
  if ((v22 & 0x800000) != 0)
  {
LABEL_122:
    *(this + 316) = *(a2 + 316);
  }

LABEL_123:
  if (!HIBYTE(v22))
  {
    goto LABEL_132;
  }

  if ((v22 & 0x1000000) != 0)
  {
    *(this + 317) = *(a2 + 317);
    if ((v22 & 0x2000000) == 0)
    {
LABEL_126:
      if ((v22 & 0x4000000) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_496;
    }
  }

  else if ((v22 & 0x2000000) == 0)
  {
    goto LABEL_126;
  }

  *(this + 318) = *(a2 + 318);
  if ((v22 & 0x4000000) == 0)
  {
LABEL_127:
    if ((v22 & 0x8000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_497;
  }

LABEL_496:
  *(this + 319) = *(a2 + 319);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_128:
    if ((v22 & 0x10000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_498;
  }

LABEL_497:
  *(this + 320) = *(a2 + 320);
  if ((v22 & 0x10000000) == 0)
  {
LABEL_129:
    if ((v22 & 0x20000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_499;
  }

LABEL_498:
  *(this + 321) = *(a2 + 321);
  if ((v22 & 0x20000000) == 0)
  {
LABEL_130:
    if ((v22 & 0x40000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_500;
  }

LABEL_499:
  *(this + 322) = *(a2 + 322);
  if ((v22 & 0x40000000) == 0)
  {
LABEL_131:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_501;
  }

LABEL_500:
  *(this + 323) = *(a2 + 323);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_132:
    v29 = *(a2 + 6);
    if (!v29)
    {
      goto LABEL_166;
    }

LABEL_133:
    if (v29)
    {
      *(this + 325) = *(a2 + 325);
      if ((v29 & 2) == 0)
      {
LABEL_135:
        if ((v29 & 4) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_160;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_135;
    }

    *(this + 326) = *(a2 + 326);
    if ((v29 & 4) == 0)
    {
LABEL_136:
      if ((v29 & 8) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_161;
    }

LABEL_160:
    *(this + 327) = *(a2 + 327);
    if ((v29 & 8) == 0)
    {
LABEL_137:
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_162;
    }

LABEL_161:
    *(this + 328) = *(a2 + 328);
    if ((v29 & 0x10) == 0)
    {
LABEL_138:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_163;
    }

LABEL_162:
    *(this + 329) = *(a2 + 329);
    if ((v29 & 0x20) == 0)
    {
LABEL_139:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_164;
    }

LABEL_163:
    *(this + 330) = *(a2 + 330);
    if ((v29 & 0x40) == 0)
    {
LABEL_140:
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_166;
      }

LABEL_165:
      *(this + 83) = *(a2 + 83);
      goto LABEL_166;
    }

LABEL_164:
    *(this + 331) = *(a2 + 331);
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

LABEL_501:
  *(this + 324) = *(a2 + 324);
  v29 = *(a2 + 6);
  if (v29)
  {
    goto LABEL_133;
  }

LABEL_166:
  if ((v29 & 0xFF00) == 0)
  {
    goto LABEL_176;
  }

  if ((v29 & 0x100) != 0)
  {
    *(this + 336) = *(a2 + 336);
    if ((v29 & 0x200) == 0)
    {
LABEL_169:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_207;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_169;
  }

  *(this + 337) = *(a2 + 337);
  if ((v29 & 0x400) == 0)
  {
LABEL_170:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(this + 338) = *(a2 + 338);
  if ((v29 & 0x800) == 0)
  {
LABEL_171:
    if ((v29 & 0x1000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(this + 339) = *(a2 + 339);
  if ((v29 & 0x1000) == 0)
  {
LABEL_172:
    if ((v29 & 0x2000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(this + 340) = *(a2 + 340);
  if ((v29 & 0x2000) == 0)
  {
LABEL_173:
    if ((v29 & 0x4000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(this + 341) = *(a2 + 341);
  if ((v29 & 0x4000) == 0)
  {
LABEL_174:
    if ((v29 & 0x8000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

LABEL_211:
  *(this + 342) = *(a2 + 342);
  if ((v29 & 0x8000) != 0)
  {
LABEL_175:
    *(this + 343) = *(a2 + 343);
  }

LABEL_176:
  if ((v29 & 0xFF0000) == 0)
  {
    goto LABEL_186;
  }

  if ((v29 & 0x10000) != 0)
  {
    *(this + 86) = *(a2 + 86);
    if ((v29 & 0x20000) == 0)
    {
LABEL_179:
      if ((v29 & 0x40000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_215;
    }
  }

  else if ((v29 & 0x20000) == 0)
  {
    goto LABEL_179;
  }

  *(this + 87) = *(a2 + 87);
  if ((v29 & 0x40000) == 0)
  {
LABEL_180:
    if ((v29 & 0x80000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_216;
  }

LABEL_215:
  *(this + 352) = *(a2 + 352);
  if ((v29 & 0x80000) == 0)
  {
LABEL_181:
    if ((v29 & 0x100000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_217;
  }

LABEL_216:
  *(this + 353) = *(a2 + 353);
  if ((v29 & 0x100000) == 0)
  {
LABEL_182:
    if ((v29 & 0x200000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_218;
  }

LABEL_217:
  *(this + 354) = *(a2 + 354);
  if ((v29 & 0x200000) == 0)
  {
LABEL_183:
    if ((v29 & 0x400000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_219;
  }

LABEL_218:
  *(this + 89) = *(a2 + 89);
  if ((v29 & 0x400000) == 0)
  {
LABEL_184:
    if ((v29 & 0x800000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_185;
  }

LABEL_219:
  *(this + 45) = *(a2 + 45);
  if ((v29 & 0x800000) != 0)
  {
LABEL_185:
    *(this + 92) = *(a2 + 92);
  }

LABEL_186:
  if (!HIBYTE(v29))
  {
    goto LABEL_195;
  }

  if ((v29 & 0x1000000) != 0)
  {
    *(this + 93) = *(a2 + 93);
    if ((v29 & 0x2000000) == 0)
    {
LABEL_189:
      if ((v29 & 0x4000000) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_505;
    }
  }

  else if ((v29 & 0x2000000) == 0)
  {
    goto LABEL_189;
  }

  *(this + 94) = *(a2 + 94);
  if ((v29 & 0x4000000) == 0)
  {
LABEL_190:
    if ((v29 & 0x8000000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_506;
  }

LABEL_505:
  *(this + 95) = *(a2 + 95);
  if ((v29 & 0x8000000) == 0)
  {
LABEL_191:
    if ((v29 & 0x10000000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_507;
  }

LABEL_506:
  *(this + 48) = *(a2 + 48);
  if ((v29 & 0x10000000) == 0)
  {
LABEL_192:
    if ((v29 & 0x20000000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_508;
  }

LABEL_507:
  *(this + 49) = *(a2 + 49);
  if ((v29 & 0x20000000) == 0)
  {
LABEL_193:
    if ((v29 & 0x40000000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_509;
  }

LABEL_508:
  *(this + 50) = *(a2 + 50);
  if ((v29 & 0x40000000) == 0)
  {
LABEL_194:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_510;
  }

LABEL_509:
  *(this + 102) = *(a2 + 102);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_195:
    v30 = *(a2 + 7);
    if (!v30)
    {
      goto LABEL_229;
    }

LABEL_196:
    if (v30)
    {
      *(this + 52) = *(a2 + 52);
      if ((v30 & 2) == 0)
      {
LABEL_198:
        if ((v30 & 4) == 0)
        {
          goto LABEL_199;
        }

        goto LABEL_223;
      }
    }

    else if ((v30 & 2) == 0)
    {
      goto LABEL_198;
    }

    *(this + 53) = *(a2 + 53);
    if ((v30 & 4) == 0)
    {
LABEL_199:
      if ((v30 & 8) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_224;
    }

LABEL_223:
    *(this + 54) = *(a2 + 54);
    if ((v30 & 8) == 0)
    {
LABEL_200:
      if ((v30 & 0x10) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_225;
    }

LABEL_224:
    *(this + 110) = *(a2 + 110);
    if ((v30 & 0x10) == 0)
    {
LABEL_201:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_226;
    }

LABEL_225:
    *(this + 111) = *(a2 + 111);
    if ((v30 & 0x20) == 0)
    {
LABEL_202:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_227;
    }

LABEL_226:
    *(this + 56) = *(a2 + 56);
    if ((v30 & 0x40) == 0)
    {
LABEL_203:
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_229;
      }

LABEL_228:
      *(this + 58) = *(a2 + 58);
      goto LABEL_229;
    }

LABEL_227:
    *(this + 57) = *(a2 + 57);
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

LABEL_510:
  *(this + 103) = *(a2 + 103);
  v30 = *(a2 + 7);
  if (v30)
  {
    goto LABEL_196;
  }

LABEL_229:
  if ((v30 & 0xFF00) == 0)
  {
    goto LABEL_239;
  }

  if ((v30 & 0x100) != 0)
  {
    *(this + 118) = *(a2 + 118);
    if ((v30 & 0x200) == 0)
    {
LABEL_232:
      if ((v30 & 0x400) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_270;
    }
  }

  else if ((v30 & 0x200) == 0)
  {
    goto LABEL_232;
  }

  *(this + 119) = *(a2 + 119);
  if ((v30 & 0x400) == 0)
  {
LABEL_233:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_271;
  }

LABEL_270:
  *(this + 60) = *(a2 + 60);
  if ((v30 & 0x800) == 0)
  {
LABEL_234:
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(this + 122) = *(a2 + 122);
  if ((v30 & 0x1000) == 0)
  {
LABEL_235:
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_273;
  }

LABEL_272:
  *(this + 123) = *(a2 + 123);
  if ((v30 & 0x2000) == 0)
  {
LABEL_236:
    if ((v30 & 0x4000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(this + 124) = *(a2 + 124);
  if ((v30 & 0x4000) == 0)
  {
LABEL_237:
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_238;
  }

LABEL_274:
  *(this + 125) = *(a2 + 125);
  if ((v30 & 0x8000) != 0)
  {
LABEL_238:
    *(this + 63) = *(a2 + 63);
  }

LABEL_239:
  if ((v30 & 0xFF0000) == 0)
  {
    goto LABEL_249;
  }

  if ((v30 & 0x10000) != 0)
  {
    *(this + 128) = *(a2 + 128);
    if ((v30 & 0x20000) == 0)
    {
LABEL_242:
      if ((v30 & 0x40000) == 0)
      {
        goto LABEL_243;
      }

      goto LABEL_278;
    }
  }

  else if ((v30 & 0x20000) == 0)
  {
    goto LABEL_242;
  }

  *(this + 129) = *(a2 + 129);
  if ((v30 & 0x40000) == 0)
  {
LABEL_243:
    if ((v30 & 0x80000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_279;
  }

LABEL_278:
  *(this + 65) = *(a2 + 65);
  if ((v30 & 0x80000) == 0)
  {
LABEL_244:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(this + 66) = *(a2 + 66);
  if ((v30 & 0x100000) == 0)
  {
LABEL_245:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(this + 67) = *(a2 + 67);
  if ((v30 & 0x200000) == 0)
  {
LABEL_246:
    if ((v30 & 0x400000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(this + 136) = *(a2 + 136);
  if ((v30 & 0x400000) == 0)
  {
LABEL_247:
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_248;
  }

LABEL_282:
  *(this + 548) = *(a2 + 548);
  if ((v30 & 0x800000) != 0)
  {
LABEL_248:
    *(this + 549) = *(a2 + 549);
  }

LABEL_249:
  if (!HIBYTE(v30))
  {
    goto LABEL_258;
  }

  if ((v30 & 0x1000000) != 0)
  {
    *(this + 550) = *(a2 + 550);
    if ((v30 & 0x2000000) == 0)
    {
LABEL_252:
      if ((v30 & 0x4000000) == 0)
      {
        goto LABEL_253;
      }

      goto LABEL_514;
    }
  }

  else if ((v30 & 0x2000000) == 0)
  {
    goto LABEL_252;
  }

  *(this + 551) = *(a2 + 551);
  if ((v30 & 0x4000000) == 0)
  {
LABEL_253:
    if ((v30 & 0x8000000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_515;
  }

LABEL_514:
  *(this + 69) = *(a2 + 69);
  if ((v30 & 0x8000000) == 0)
  {
LABEL_254:
    if ((v30 & 0x10000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_516;
  }

LABEL_515:
  *(this + 140) = *(a2 + 140);
  if ((v30 & 0x10000000) == 0)
  {
LABEL_255:
    if ((v30 & 0x20000000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_517;
  }

LABEL_516:
  *(this + 564) = *(a2 + 564);
  if ((v30 & 0x20000000) == 0)
  {
LABEL_256:
    if ((v30 & 0x40000000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_518;
  }

LABEL_517:
  *(this + 565) = *(a2 + 565);
  if ((v30 & 0x40000000) == 0)
  {
LABEL_257:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_519;
  }

LABEL_518:
  *(this + 566) = *(a2 + 566);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_258:
    v31 = *(a2 + 8);
    if (!v31)
    {
      goto LABEL_292;
    }

LABEL_259:
    if (v31)
    {
      *(this + 568) = *(a2 + 568);
      if ((v31 & 2) == 0)
      {
LABEL_261:
        if ((v31 & 4) == 0)
        {
          goto LABEL_262;
        }

        goto LABEL_286;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_261;
    }

    *(this + 569) = *(a2 + 569);
    if ((v31 & 4) == 0)
    {
LABEL_262:
      if ((v31 & 8) == 0)
      {
        goto LABEL_263;
      }

      goto LABEL_287;
    }

LABEL_286:
    *(this + 570) = *(a2 + 570);
    if ((v31 & 8) == 0)
    {
LABEL_263:
      if ((v31 & 0x10) == 0)
      {
        goto LABEL_264;
      }

      goto LABEL_288;
    }

LABEL_287:
    *(this + 571) = *(a2 + 571);
    if ((v31 & 0x10) == 0)
    {
LABEL_264:
      if ((v31 & 0x20) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_289;
    }

LABEL_288:
    *(this + 143) = *(a2 + 143);
    if ((v31 & 0x20) == 0)
    {
LABEL_265:
      if ((v31 & 0x40) == 0)
      {
        goto LABEL_266;
      }

      goto LABEL_290;
    }

LABEL_289:
    *(this + 144) = *(a2 + 144);
    if ((v31 & 0x40) == 0)
    {
LABEL_266:
      if ((v31 & 0x80) == 0)
      {
        goto LABEL_292;
      }

LABEL_291:
      *(this + 146) = *(a2 + 146);
      goto LABEL_292;
    }

LABEL_290:
    *(this + 145) = *(a2 + 145);
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_291;
  }

LABEL_519:
  *(this + 567) = *(a2 + 567);
  v31 = *(a2 + 8);
  if (v31)
  {
    goto LABEL_259;
  }

LABEL_292:
  if ((v31 & 0xFF00) == 0)
  {
    goto LABEL_302;
  }

  if ((v31 & 0x100) != 0)
  {
    *(this + 147) = *(a2 + 147);
    if ((v31 & 0x200) == 0)
    {
LABEL_295:
      if ((v31 & 0x400) == 0)
      {
        goto LABEL_296;
      }

      goto LABEL_333;
    }
  }

  else if ((v31 & 0x200) == 0)
  {
    goto LABEL_295;
  }

  *(this + 74) = *(a2 + 74);
  if ((v31 & 0x400) == 0)
  {
LABEL_296:
    if ((v31 & 0x800) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_334;
  }

LABEL_333:
  *(this + 150) = *(a2 + 150);
  if ((v31 & 0x800) == 0)
  {
LABEL_297:
    if ((v31 & 0x1000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_335;
  }

LABEL_334:
  *(this + 151) = *(a2 + 151);
  if ((v31 & 0x1000) == 0)
  {
LABEL_298:
    if ((v31 & 0x2000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_336;
  }

LABEL_335:
  *(this + 76) = *(a2 + 76);
  if ((v31 & 0x2000) == 0)
  {
LABEL_299:
    if ((v31 & 0x4000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_337;
  }

LABEL_336:
  *(this + 77) = *(a2 + 77);
  if ((v31 & 0x4000) == 0)
  {
LABEL_300:
    if ((v31 & 0x8000) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_301;
  }

LABEL_337:
  *(this + 156) = *(a2 + 156);
  if ((v31 & 0x8000) != 0)
  {
LABEL_301:
    *(this + 157) = *(a2 + 157);
  }

LABEL_302:
  if ((v31 & 0xFF0000) == 0)
  {
    goto LABEL_312;
  }

  if ((v31 & 0x10000) != 0)
  {
    *(this + 79) = *(a2 + 79);
    if ((v31 & 0x20000) == 0)
    {
LABEL_305:
      if ((v31 & 0x40000) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_341;
    }
  }

  else if ((v31 & 0x20000) == 0)
  {
    goto LABEL_305;
  }

  *(this + 80) = *(a2 + 80);
  if ((v31 & 0x40000) == 0)
  {
LABEL_306:
    if ((v31 & 0x80000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_342;
  }

LABEL_341:
  *(this + 81) = *(a2 + 81);
  if ((v31 & 0x80000) == 0)
  {
LABEL_307:
    if ((v31 & 0x100000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_343;
  }

LABEL_342:
  *(this + 164) = *(a2 + 164);
  if ((v31 & 0x100000) == 0)
  {
LABEL_308:
    if ((v31 & 0x200000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_344;
  }

LABEL_343:
  *(this + 660) = *(a2 + 660);
  if ((v31 & 0x200000) == 0)
  {
LABEL_309:
    if ((v31 & 0x400000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_345;
  }

LABEL_344:
  *(this + 661) = *(a2 + 661);
  if ((v31 & 0x400000) == 0)
  {
LABEL_310:
    if ((v31 & 0x800000) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_311;
  }

LABEL_345:
  *(this + 662) = *(a2 + 662);
  if ((v31 & 0x800000) != 0)
  {
LABEL_311:
    *(this + 663) = *(a2 + 663);
  }

LABEL_312:
  if (!HIBYTE(v31))
  {
    goto LABEL_321;
  }

  if ((v31 & 0x1000000) != 0)
  {
    *(this + 83) = *(a2 + 83);
    if ((v31 & 0x2000000) == 0)
    {
LABEL_315:
      if ((v31 & 0x4000000) == 0)
      {
        goto LABEL_316;
      }

      goto LABEL_523;
    }
  }

  else if ((v31 & 0x2000000) == 0)
  {
    goto LABEL_315;
  }

  *(this + 84) = *(a2 + 84);
  if ((v31 & 0x4000000) == 0)
  {
LABEL_316:
    if ((v31 & 0x8000000) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_524;
  }

LABEL_523:
  *(this + 170) = *(a2 + 170);
  if ((v31 & 0x8000000) == 0)
  {
LABEL_317:
    if ((v31 & 0x10000000) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_525;
  }

LABEL_524:
  *(this + 171) = *(a2 + 171);
  if ((v31 & 0x10000000) == 0)
  {
LABEL_318:
    if ((v31 & 0x20000000) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_526;
  }

LABEL_525:
  *(this + 688) = *(a2 + 688);
  if ((v31 & 0x20000000) == 0)
  {
LABEL_319:
    if ((v31 & 0x40000000) == 0)
    {
      goto LABEL_320;
    }

    goto LABEL_527;
  }

LABEL_526:
  *(this + 689) = *(a2 + 689);
  if ((v31 & 0x40000000) == 0)
  {
LABEL_320:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_528;
  }

LABEL_527:
  *(this + 690) = *(a2 + 690);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_321:
    v32 = *(a2 + 9);
    if (!v32)
    {
      goto LABEL_355;
    }

LABEL_322:
    if (v32)
    {
      *(this + 692) = *(a2 + 692);
      if ((v32 & 2) == 0)
      {
LABEL_324:
        if ((v32 & 4) == 0)
        {
          goto LABEL_325;
        }

        goto LABEL_349;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_324;
    }

    *(this + 693) = *(a2 + 693);
    if ((v32 & 4) == 0)
    {
LABEL_325:
      if ((v32 & 8) == 0)
      {
        goto LABEL_326;
      }

      goto LABEL_350;
    }

LABEL_349:
    *(this + 694) = *(a2 + 694);
    if ((v32 & 8) == 0)
    {
LABEL_326:
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_327;
      }

      goto LABEL_351;
    }

LABEL_350:
    *(this + 695) = *(a2 + 695);
    if ((v32 & 0x10) == 0)
    {
LABEL_327:
      if ((v32 & 0x20) == 0)
      {
        goto LABEL_328;
      }

      goto LABEL_352;
    }

LABEL_351:
    *(this + 174) = *(a2 + 174);
    if ((v32 & 0x20) == 0)
    {
LABEL_328:
      if ((v32 & 0x40) == 0)
      {
        goto LABEL_329;
      }

      goto LABEL_353;
    }

LABEL_352:
    *(this + 175) = *(a2 + 175);
    if ((v32 & 0x40) == 0)
    {
LABEL_329:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_355;
      }

LABEL_354:
      *(this + 89) = *(a2 + 89);
      goto LABEL_355;
    }

LABEL_353:
    *(this + 88) = *(a2 + 88);
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_355;
    }

    goto LABEL_354;
  }

LABEL_528:
  *(this + 691) = *(a2 + 691);
  v32 = *(a2 + 9);
  if (v32)
  {
    goto LABEL_322;
  }

LABEL_355:
  if ((v32 & 0xFF00) == 0)
  {
    goto LABEL_365;
  }

  if ((v32 & 0x100) != 0)
  {
    *(this + 180) = *(a2 + 180);
    if ((v32 & 0x200) == 0)
    {
LABEL_358:
      if ((v32 & 0x400) == 0)
      {
        goto LABEL_359;
      }

      goto LABEL_396;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_358;
  }

  *(this + 724) = *(a2 + 724);
  if ((v32 & 0x400) == 0)
  {
LABEL_359:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_360;
    }

    goto LABEL_397;
  }

LABEL_396:
  *(this + 725) = *(a2 + 725);
  if ((v32 & 0x800) == 0)
  {
LABEL_360:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_361;
    }

    goto LABEL_398;
  }

LABEL_397:
  *(this + 726) = *(a2 + 726);
  if ((v32 & 0x1000) == 0)
  {
LABEL_361:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_362;
    }

    goto LABEL_399;
  }

LABEL_398:
  *(this + 727) = *(a2 + 727);
  if ((v32 & 0x2000) == 0)
  {
LABEL_362:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_400;
  }

LABEL_399:
  *(this + 91) = *(a2 + 91);
  if ((v32 & 0x4000) == 0)
  {
LABEL_363:
    if ((v32 & 0x8000) == 0)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

LABEL_400:
  *(this + 184) = *(a2 + 184);
  if ((v32 & 0x8000) != 0)
  {
LABEL_364:
    *(this + 185) = *(a2 + 185);
  }

LABEL_365:
  if ((v32 & 0xFF0000) == 0)
  {
    goto LABEL_375;
  }

  if ((v32 & 0x10000) != 0)
  {
    *(this + 744) = *(a2 + 744);
    if ((v32 & 0x20000) == 0)
    {
LABEL_368:
      if ((v32 & 0x40000) == 0)
      {
        goto LABEL_369;
      }

      goto LABEL_404;
    }
  }

  else if ((v32 & 0x20000) == 0)
  {
    goto LABEL_368;
  }

  *(this + 745) = *(a2 + 745);
  if ((v32 & 0x40000) == 0)
  {
LABEL_369:
    if ((v32 & 0x80000) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_405;
  }

LABEL_404:
  *(this + 746) = *(a2 + 746);
  if ((v32 & 0x80000) == 0)
  {
LABEL_370:
    if ((v32 & 0x100000) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_406;
  }

LABEL_405:
  *(this + 747) = *(a2 + 747);
  if ((v32 & 0x100000) == 0)
  {
LABEL_371:
    if ((v32 & 0x200000) == 0)
    {
      goto LABEL_372;
    }

    goto LABEL_407;
  }

LABEL_406:
  *(this + 748) = *(a2 + 748);
  if ((v32 & 0x200000) == 0)
  {
LABEL_372:
    if ((v32 & 0x400000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_408;
  }

LABEL_407:
  *(this + 749) = *(a2 + 749);
  if ((v32 & 0x400000) == 0)
  {
LABEL_373:
    if ((v32 & 0x800000) == 0)
    {
      goto LABEL_375;
    }

    goto LABEL_374;
  }

LABEL_408:
  *(this + 750) = *(a2 + 750);
  if ((v32 & 0x800000) != 0)
  {
LABEL_374:
    *(this + 751) = *(a2 + 751);
  }

LABEL_375:
  if (!HIBYTE(v32))
  {
    goto LABEL_384;
  }

  if ((v32 & 0x1000000) != 0)
  {
    *(this + 752) = *(a2 + 752);
    if ((v32 & 0x2000000) == 0)
    {
LABEL_378:
      if ((v32 & 0x4000000) == 0)
      {
        goto LABEL_379;
      }

      goto LABEL_532;
    }
  }

  else if ((v32 & 0x2000000) == 0)
  {
    goto LABEL_378;
  }

  *(this + 753) = *(a2 + 753);
  if ((v32 & 0x4000000) == 0)
  {
LABEL_379:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_533;
  }

LABEL_532:
  *(this + 754) = *(a2 + 754);
  if ((v32 & 0x8000000) == 0)
  {
LABEL_380:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_534;
  }

LABEL_533:
  *(this + 755) = *(a2 + 755);
  if ((v32 & 0x10000000) == 0)
  {
LABEL_381:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_535;
  }

LABEL_534:
  *(this + 189) = *(a2 + 189);
  if ((v32 & 0x20000000) == 0)
  {
LABEL_382:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_383;
    }

    goto LABEL_536;
  }

LABEL_535:
  *(this + 95) = *(a2 + 95);
  if ((v32 & 0x40000000) == 0)
  {
LABEL_383:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_384;
    }

    goto LABEL_537;
  }

LABEL_536:
  *(this + 192) = *(a2 + 192);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_384:
    v33 = *(a2 + 10);
    if (!v33)
    {
      goto LABEL_418;
    }

LABEL_385:
    if (v33)
    {
      *(this + 773) = *(a2 + 773);
      if ((v33 & 2) == 0)
      {
LABEL_387:
        if ((v33 & 4) == 0)
        {
          goto LABEL_388;
        }

        goto LABEL_412;
      }
    }

    else if ((v33 & 2) == 0)
    {
      goto LABEL_387;
    }

    *(this + 774) = *(a2 + 774);
    if ((v33 & 4) == 0)
    {
LABEL_388:
      if ((v33 & 8) == 0)
      {
        goto LABEL_389;
      }

      goto LABEL_413;
    }

LABEL_412:
    *(this + 775) = *(a2 + 775);
    if ((v33 & 8) == 0)
    {
LABEL_389:
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_390;
      }

      goto LABEL_414;
    }

LABEL_413:
    *(this + 194) = *(a2 + 194);
    if ((v33 & 0x10) == 0)
    {
LABEL_390:
      if ((v33 & 0x20) == 0)
      {
        goto LABEL_391;
      }

      goto LABEL_415;
    }

LABEL_414:
    *(this + 195) = *(a2 + 195);
    if ((v33 & 0x20) == 0)
    {
LABEL_391:
      if ((v33 & 0x40) == 0)
      {
        goto LABEL_392;
      }

      goto LABEL_416;
    }

LABEL_415:
    *(this + 98) = *(a2 + 98);
    if ((v33 & 0x40) == 0)
    {
LABEL_392:
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_418;
      }

LABEL_417:
      *(this + 100) = *(a2 + 100);
      goto LABEL_418;
    }

LABEL_416:
    *(this + 99) = *(a2 + 99);
    if ((v33 & 0x80) == 0)
    {
      goto LABEL_418;
    }

    goto LABEL_417;
  }

LABEL_537:
  *(this + 772) = *(a2 + 772);
  v33 = *(a2 + 10);
  if (v33)
  {
    goto LABEL_385;
  }

LABEL_418:
  if ((v33 & 0xFF00) == 0)
  {
    goto LABEL_428;
  }

  if ((v33 & 0x100) != 0)
  {
    *(this + 202) = *(a2 + 202);
    if ((v33 & 0x200) == 0)
    {
LABEL_421:
      if ((v33 & 0x400) == 0)
      {
        goto LABEL_422;
      }

      goto LABEL_459;
    }
  }

  else if ((v33 & 0x200) == 0)
  {
    goto LABEL_421;
  }

  *(this + 812) = *(a2 + 812);
  if ((v33 & 0x400) == 0)
  {
LABEL_422:
    if ((v33 & 0x800) == 0)
    {
      goto LABEL_423;
    }

    goto LABEL_460;
  }

LABEL_459:
  *(this + 813) = *(a2 + 813);
  if ((v33 & 0x800) == 0)
  {
LABEL_423:
    if ((v33 & 0x1000) == 0)
    {
      goto LABEL_424;
    }

    goto LABEL_461;
  }

LABEL_460:
  *(this + 814) = *(a2 + 814);
  if ((v33 & 0x1000) == 0)
  {
LABEL_424:
    if ((v33 & 0x2000) == 0)
    {
      goto LABEL_425;
    }

    goto LABEL_462;
  }

LABEL_461:
  *(this + 815) = *(a2 + 815);
  if ((v33 & 0x2000) == 0)
  {
LABEL_425:
    if ((v33 & 0x4000) == 0)
    {
      goto LABEL_426;
    }

    goto LABEL_463;
  }

LABEL_462:
  *(this + 102) = *(a2 + 102);
  if ((v33 & 0x4000) == 0)
  {
LABEL_426:
    if ((v33 & 0x8000) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_427;
  }

LABEL_463:
  *(this + 206) = *(a2 + 206);
  if ((v33 & 0x8000) != 0)
  {
LABEL_427:
    *(this + 207) = *(a2 + 207);
  }

LABEL_428:
  if ((v33 & 0xFF0000) == 0)
  {
    goto LABEL_438;
  }

  if ((v33 & 0x10000) != 0)
  {
    *(this + 104) = *(a2 + 104);
    if ((v33 & 0x20000) == 0)
    {
LABEL_431:
      if ((v33 & 0x40000) == 0)
      {
        goto LABEL_432;
      }

      goto LABEL_467;
    }
  }

  else if ((v33 & 0x20000) == 0)
  {
    goto LABEL_431;
  }

  *(this + 105) = *(a2 + 105);
  if ((v33 & 0x40000) == 0)
  {
LABEL_432:
    if ((v33 & 0x80000) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_468;
  }

LABEL_467:
  *(this + 212) = *(a2 + 212);
  if ((v33 & 0x80000) == 0)
  {
LABEL_433:
    if ((v33 & 0x100000) == 0)
    {
      goto LABEL_434;
    }

    goto LABEL_469;
  }

LABEL_468:
  *(this + 213) = *(a2 + 213);
  if ((v33 & 0x100000) == 0)
  {
LABEL_434:
    if ((v33 & 0x200000) == 0)
    {
      goto LABEL_435;
    }

    goto LABEL_470;
  }

LABEL_469:
  *(this + 107) = *(a2 + 107);
  if ((v33 & 0x200000) == 0)
  {
LABEL_435:
    if ((v33 & 0x400000) == 0)
    {
      goto LABEL_436;
    }

    goto LABEL_471;
  }

LABEL_470:
  *(this + 108) = *(a2 + 108);
  if ((v33 & 0x400000) == 0)
  {
LABEL_436:
    if ((v33 & 0x800000) == 0)
    {
      goto LABEL_438;
    }

    goto LABEL_437;
  }

LABEL_471:
  *(this + 109) = *(a2 + 109);
  if ((v33 & 0x800000) != 0)
  {
LABEL_437:
    *(this + 220) = *(a2 + 220);
  }

LABEL_438:
  if (!HIBYTE(v33))
  {
    goto LABEL_447;
  }

  if ((v33 & 0x1000000) != 0)
  {
    *(this + 221) = *(a2 + 221);
    if ((v33 & 0x2000000) == 0)
    {
LABEL_441:
      if ((v33 & 0x4000000) == 0)
      {
        goto LABEL_442;
      }

      goto LABEL_541;
    }
  }

  else if ((v33 & 0x2000000) == 0)
  {
    goto LABEL_441;
  }

  *(this + 222) = *(a2 + 222);
  if ((v33 & 0x4000000) == 0)
  {
LABEL_442:
    if ((v33 & 0x8000000) == 0)
    {
      goto LABEL_443;
    }

    goto LABEL_542;
  }

LABEL_541:
  *(this + 223) = *(a2 + 223);
  if ((v33 & 0x8000000) == 0)
  {
LABEL_443:
    if ((v33 & 0x10000000) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_543;
  }

LABEL_542:
  *(this + 112) = *(a2 + 112);
  if ((v33 & 0x10000000) == 0)
  {
LABEL_444:
    if ((v33 & 0x20000000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_544;
  }

LABEL_543:
  *(this + 226) = *(a2 + 226);
  if ((v33 & 0x20000000) == 0)
  {
LABEL_445:
    if ((v33 & 0x40000000) == 0)
    {
      goto LABEL_446;
    }

    goto LABEL_545;
  }

LABEL_544:
  *(this + 227) = *(a2 + 227);
  if ((v33 & 0x40000000) == 0)
  {
LABEL_446:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_546;
  }

LABEL_545:
  *(this + 114) = *(a2 + 114);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_447:
    v34 = *(a2 + 44);
    if (!v34)
    {
      goto LABEL_481;
    }

LABEL_448:
    if (v34)
    {
      *(this + 232) = *(a2 + 232);
      if ((v34 & 2) == 0)
      {
LABEL_450:
        if ((v34 & 4) == 0)
        {
          goto LABEL_451;
        }

        goto LABEL_475;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_450;
    }

    *(this + 233) = *(a2 + 233);
    if ((v34 & 4) == 0)
    {
LABEL_451:
      if ((v34 & 8) == 0)
      {
        goto LABEL_452;
      }

      goto LABEL_476;
    }

LABEL_475:
    *(this + 117) = *(a2 + 117);
    if ((v34 & 8) == 0)
    {
LABEL_452:
      if ((v34 & 0x10) == 0)
      {
        goto LABEL_453;
      }

      goto LABEL_477;
    }

LABEL_476:
    *(this + 118) = *(a2 + 118);
    if ((v34 & 0x10) == 0)
    {
LABEL_453:
      if ((v34 & 0x20) == 0)
      {
        goto LABEL_454;
      }

      goto LABEL_478;
    }

LABEL_477:
    *(this + 238) = *(a2 + 238);
    if ((v34 & 0x20) == 0)
    {
LABEL_454:
      if ((v34 & 0x40) == 0)
      {
        goto LABEL_455;
      }

      goto LABEL_479;
    }

LABEL_478:
    *(this + 239) = *(a2 + 239);
    if ((v34 & 0x40) == 0)
    {
LABEL_455:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_481;
      }

LABEL_480:
      *(this + 121) = *(a2 + 121);
      goto LABEL_481;
    }

LABEL_479:
    *(this + 120) = *(a2 + 120);
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_481;
    }

    goto LABEL_480;
  }

LABEL_546:
  *(this + 115) = *(a2 + 115);
  v34 = *(a2 + 44);
  if (v34)
  {
    goto LABEL_448;
  }

LABEL_481:
  v35 = *(this + 3);
  *(this + 2) |= *(a2 + 2);
  *(this + 3) = *(a2 + 3) | v35;
  v36 = *(this + 5);
  *(this + 4) |= *(a2 + 4);
  *(this + 5) = *(a2 + 5) | v36;
  v37 = *(a2 + 1);
  if (v37)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(this + 1, ((v37 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::SatParameters::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 14) = 0;
  if (*(this + 20) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(this + 72);
  }

  if (*(v1 + 104) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v1 + 96);
  }

  if (*(v1 + 128) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v1 + 120));
  }

  if (*(v1 + 152) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v1 + 144);
  }

  v2 = *(v1 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_22;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    v14 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    this = google::protobuf::internal::ArenaStringPtr::ClearToDefault((v1 + 168), &operations_research::sat::SatParameters::Impl_::_i_give_permission_to_break_this_code_default_default_restart_algorithms_);
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    this = google::protobuf::internal::ArenaStringPtr::ClearToDefault((v1 + 168), &operations_research::sat::SatParameters::Impl_::_i_give_permission_to_break_this_code_default_default_restart_algorithms_);
    if ((v2 & 2) != 0)
    {
LABEL_16:
      v4 = *(v1 + 176) & 0xFFFFFFFFFFFFFFFCLL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }

LABEL_22:
      if ((v2 & 0xF8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

LABEL_12:
  if ((v2 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v5 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    goto LABEL_22;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 0xF8) != 0)
  {
LABEL_23:
    *(v1 + 192) = 0;
    *(v1 + 200) = 0;
    *(v1 + 216) = 0;
    *(v1 + 208) = 0;
  }

LABEL_24:
  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 252) = 0;
    *(v1 + 236) = 0u;
    *(v1 + 220) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 254) = 0;
    *(v1 + 270) = 0;
    *(v1 + 262) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 272) = 0;
    *(v1 + 279) = 0;
  }

  v6 = *(v1 + 20);
  if (v6)
  {
    *(v1 + 283) = 0;
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(v1 + 299) = 0;
    *(v1 + 291) = 0;
    *(v1 + 307) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(v1 + 309) = 0;
  }

  if (HIBYTE(v6))
  {
    *(v1 + 317) = 0;
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    *(v1 + 332) = 0;
    *(v1 + 325) = 0;
  }

  if ((v7 & 0xFF00) != 0)
  {
    *(v1 + 336) = 0;
  }

  if ((v7 & 0xFF0000) != 0)
  {
    *(v1 + 344) = 0;
    *(v1 + 352) = 0;
    *(v1 + 368) = 0;
    *(v1 + 360) = 0;
  }

  if (HIBYTE(v7))
  {
    *(v1 + 372) = 32;
    *(v1 + 376) = 0x200000001;
    *(v1 + 384) = xmmword_23CE3BED0;
    *(v1 + 400) = 0x3FEFF7CED916872BLL;
    *(v1 + 408) = 21474836490000;
  }

  v8 = *(v1 + 28);
  if (v8)
  {
    *(v1 + 416) = xmmword_23CE3BEE0;
    *(v1 + 432) = 0x3F847AE147AE147BLL;
    *(v1 + 440) = 0x100000032;
    *(v1 + 448) = 0x7FF0000000000000;
    *(v1 + 456) = 0x7FFFFFFFFFFFFFFFLL;
    *(v1 + 464) = 10000;
  }

  if ((v8 & 0xFF00) != 0)
  {
    *(v1 + 472) = 0xC800000001;
    *(v1 + 480) = 0x3FE0000000000000;
    *(v1 + 488) = xmmword_23CE3BEF0;
    *(v1 + 504) = 0x403E000000000000;
  }

  if ((v8 & 0xFF0000) != 0)
  {
    *(v1 + 512) = 0x3200000005;
    *(v1 + 520) = 0x3FF0000000000000;
    *(v1 + 528) = xmmword_23CE3BF00;
    *(v1 + 544) = 5000;
    *(v1 + 548) = 257;
  }

  if (HIBYTE(v8))
  {
    *(v1 + 550) = 257;
    *(v1 + 552) = 0x3FF0000000000000;
    *(v1 + 560) = 0x101010100000001;
  }

  v9 = *(v1 + 32);
  if (v9)
  {
    *(v1 + 568) = xmmword_23CE3BF90;
    *(v1 + 584) = 1;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(v1 + 588) = 2;
    *(v1 + 592) = 0x3FA999999999999ALL;
    *(v1 + 600) = 0x6400000258;
    *(v1 + 608) = 100;
    *(v1 + 616) = 0x416312D000000000;
    *(v1 + 624) = 0x3500000032;
  }

  if ((v9 & 0xFF0000) != 0)
  {
    *(v1 + 632) = 0x3FF0000000000000;
    *(v1 + 640) = xmmword_23CE3BF20;
    *(v1 + 656) = 0x101010100000003;
  }

  if (HIBYTE(v9))
  {
    *(v1 + 664) = 0x426D1A94A2000000;
    *(v1 + 672) = 0x4197D78400000000;
    *(v1 + 680) = 0x4000000001;
    *(v1 + 688) = 16843009;
  }

  v10 = *(v1 + 36);
  if (v10)
  {
    *(v1 + 692) = 16843009;
    *(v1 + 696) = 0x10000000ALL;
    *(v1 + 704) = xmmword_23CE3BF30;
  }

  if ((v10 & 0xFF00) != 0)
  {
    *(v1 + 720) = 0x1010101000003E8;
    *(v1 + 728) = 0x3F1A36E2EB1C432DLL;
    *(v1 + 736) = 0x3E800000002;
  }

  if ((v10 & 0xFF0000) != 0)
  {
    *(v1 + 744) = 0x101010101010101;
  }

  if (HIBYTE(v10))
  {
    *(v1 + 752) = 0x201010101;
    *(v1 + 760) = 0x3FE0000000000000;
    *(v1 + 768) = 16;
    *(v1 + 772) = 1;
  }

  v11 = *(v1 + 40);
  if (v11)
  {
    *(v1 + 773) = 257;
    *(v1 + 775) = 1;
    *(v1 + 776) = 0x100000003;
    *(v1 + 784) = 0x4415AF1D78B58C40;
    *(v1 + 792) = 100000000;
    *(v1 + 800) = 0x3F50624DD2F1A9FCLL;
  }

  if ((v11 & 0xFF00) != 0)
  {
    *(v1 + 808) = 0x101010100000002;
    *(v1 + 816) = 0x4024000000000000;
    *(v1 + 824) = 0x7D000000002;
  }

  if ((v11 & 0xFF0000) != 0)
  {
    *(v1 + 832) = xmmword_23CE3BF50;
    *(v1 + 848) = 0x800000003CLL;
    *(v1 + 856) = 0x3FE0000000000000;
    *(v1 + 864) = xmmword_23CE3BF60;
    *(v1 + 880) = 100;
  }

  if (HIBYTE(v11))
  {
    *(v1 + 884) = 100;
    *(v1 + 888) = 0x100000002;
    *(v1 + 896) = 0x3FE0000000000000;
    *(v1 + 904) = 0x200000064;
    *(v1 + 912) = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
  }

  if (*(v1 + 44))
  {
    *(v1 + 928) = 0x300000064;
    *(v1 + 936) = 0x3FC999999999999ALL;
    *(v1 + 944) = 0x3FF0000000000000;
    *(v1 + 952) = 5368709140000;
    *(v1 + 960) = xmmword_23CE3BF80;
  }

  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v13 = *(v1 + 8);
  v12 = (v1 + 8);
  if (v13)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v12);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::SatParameters::_InternalSerialize(operations_research::sat::SatParameters *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  if ((*(this + 16) & 8) == 0)
  {
    v9 = *(this + 6);
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_46;
  }

  if (*a3 <= a2)
  {
    v463 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    v18 = *(this + 48);
    *v463 = 8;
    v19 = v463 + 1;
    if (v18 < 0x80)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v18 = *(this + 48);
    *a2 = 8;
    v19 = a2 + 1;
    if (v18 < 0x80)
    {
LABEL_44:
      LOBYTE(v20) = v18;
      goto LABEL_45;
    }
  }

  do
  {
    *v19++ = v18 | 0x80;
    v20 = v18 >> 7;
    v464 = v18 >> 14;
    v18 >>= 7;
  }

  while (v464);
LABEL_45:
  *v19 = v20;
  v7 = (v19 + 1);
  v9 = *(this + 6);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_3:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_50;
  }

LABEL_46:
  if (*a3 <= v7)
  {
    v465 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v21 = *(this + 94);
    *v465 = 16;
    v22 = v465 + 1;
    if (v21 < 0x80)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v21 = *(this + 94);
    *v7 = 16;
    v22 = v7 + 1;
    if (v21 < 0x80)
    {
LABEL_48:
      LOBYTE(v23) = v21;
      goto LABEL_49;
    }
  }

  do
  {
    *v22++ = v21 | 0x80;
    v23 = v21 >> 7;
    v466 = v21 >> 14;
    v21 >>= 7;
  }

  while (v466);
LABEL_49:
  *v22 = v23;
  v7 = (v22 + 1);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_4:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_50:
  if (*a3 <= v7)
  {
    v467 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v24 = *(this + 95);
    *v467 = 32;
    v25 = v467 + 1;
    if (v24 < 0x80)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v24 = *(this + 95);
    *v7 = 32;
    v25 = v7 + 1;
    if (v24 < 0x80)
    {
LABEL_52:
      LOBYTE(v26) = v24;
      goto LABEL_53;
    }
  }

  do
  {
    *v25++ = v24 | 0x80;
    v26 = v24 >> 7;
    v468 = v24 >> 14;
    v24 >>= 7;
  }

  while (v468);
LABEL_53:
  *v25 = v26;
  v7 = (v25 + 1);
  if ((v9 & 0x40000000) == 0)
  {
LABEL_5:
    if ((*(this + 16) & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<11>(a3, *(this + 102), v7);
  if ((*(this + 16) & 0x10) == 0)
  {
LABEL_6:
    v10 = *(this + 6);
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<13>(a3, *(this + 49), v7);
  v10 = *(this + 6);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_7:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v27 = *(this + 48);
  *v7 = 121;
  *(v7 + 1) = v27;
  v7 = (v7 + 9);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_8:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v28 = *(this + 49);
  *v7 = 385;
  *(v7 + 2) = v28;
  v7 = (v7 + 10);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_9:
    v11 = *(this + 7);
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v29 = *(this + 50);
  *v7 = 393;
  *(v7 + 2) = v29;
  v7 = (v7 + 10);
  v11 = *(this + 7);
  if ((v11 & 1) == 0)
  {
LABEL_10:
    if ((v11 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v30 = *(this + 52);
  *v7 = 401;
  *(v7 + 2) = v30;
  v7 = (v7 + 10);
  if ((v11 & 2) == 0)
  {
LABEL_11:
    if ((v11 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v31 = *(this + 53);
  *v7 = 433;
  *(v7 + 2) = v31;
  v7 = (v7 + 10);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((*(this + 6) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v32 = *(this + 54);
  *v7 = 441;
  *(v7 + 2) = v32;
  v7 = (v7 + 10);
  if ((*(this + 6) & 0x80000000) == 0)
  {
LABEL_13:
    v12 = *(this + 7);
    if ((v12 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_74:
  if (*a3 <= v7)
  {
    v603 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v33 = *(this + 103);
    *v603 = 448;
    v34 = v603 + 2;
    if (v33 < 0x80)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v33 = *(this + 103);
    *v7 = 448;
    v34 = v7 + 2;
    if (v33 < 0x80)
    {
LABEL_76:
      LOBYTE(v35) = v33;
      goto LABEL_77;
    }
  }

  do
  {
    *v34++ = v33 | 0x80;
    v35 = v33 >> 7;
    v604 = v33 >> 14;
    v33 >>= 7;
  }

  while (v604);
LABEL_77:
  *v34 = v35;
  v7 = (v34 + 1);
  v12 = *(this + 7);
  if ((v12 & 8) == 0)
  {
LABEL_14:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_82;
  }

LABEL_78:
  if (*a3 <= v7)
  {
    v469 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v36 = *(this + 110);
    *v469 = 496;
    v37 = v469 + 2;
    if (v36 < 0x80)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v36 = *(this + 110);
    *v7 = 496;
    v37 = v7 + 2;
    if (v36 < 0x80)
    {
LABEL_80:
      LOBYTE(v38) = v36;
      goto LABEL_81;
    }
  }

  do
  {
    *v37++ = v36 | 0x80;
    v38 = v36 >> 7;
    v470 = v36 >> 14;
    v36 >>= 7;
  }

  while (v470);
LABEL_81:
  *v37 = v38;
  v7 = (v37 + 1);
  if ((v12 & 0x10) == 0)
  {
LABEL_15:
    if ((*(this + 16) & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_86;
  }

LABEL_82:
  if (*a3 <= v7)
  {
    v471 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v39 = *(this + 111);
    *v471 = 504;
    v40 = v471 + 2;
    if (v39 < 0x80)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v39 = *(this + 111);
    *v7 = 504;
    v40 = v7 + 2;
    if (v39 < 0x80)
    {
LABEL_84:
      LOBYTE(v41) = v39;
      goto LABEL_85;
    }
  }

  do
  {
    *v40++ = v39 | 0x80;
    v41 = v39 >> 7;
    v472 = v39 >> 14;
    v39 >>= 7;
  }

  while (v472);
LABEL_85:
  *v40 = v41;
  v7 = (v40 + 1);
  if ((*(this + 16) & 0x20) == 0)
  {
LABEL_16:
    v13 = *(this + 7);
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_89;
  }

LABEL_86:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v42 = *(this + 25);
  *v7 = 641;
  *(v7 + 2) = v42;
  v7 = (v7 + 10);
  v13 = *(this + 7);
  if ((v13 & 0x100) == 0)
  {
LABEL_17:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_93;
  }

LABEL_89:
  if (*a3 <= v7)
  {
    v473 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v43 = *(this + 118);
    *v473 = 656;
    v44 = v473 + 2;
    if (v43 < 0x80)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v43 = *(this + 118);
    *v7 = 656;
    v44 = v7 + 2;
    if (v43 < 0x80)
    {
LABEL_91:
      LOBYTE(v45) = v43;
      goto LABEL_92;
    }
  }

  do
  {
    *v44++ = v43 | 0x80;
    v45 = v43 >> 7;
    v474 = v43 >> 14;
    v43 >>= 7;
  }

  while (v474);
LABEL_92:
  *v44 = v45;
  v7 = (v44 + 1);
  if ((v13 & 0x400000) == 0)
  {
LABEL_18:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_96;
  }

LABEL_93:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v46 = *(this + 548);
  *v7 = 664;
  *(v7 + 2) = v46;
  v7 = (v7 + 3);
  if ((v13 & 0x20) == 0)
  {
LABEL_19:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_99;
  }

LABEL_96:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v47 = *(this + 56);
  *v7 = 673;
  *(v7 + 2) = v47;
  v7 = (v7 + 10);
  if ((v13 & 0x40) == 0)
  {
LABEL_20:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_99:
  if (*a3 <= v7)
  {
    v475 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v48 = *(this + 57);
    *v475 = 680;
    v49 = v475 + 2;
    if (v48 < 0x80)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v48 = *(this + 57);
    *v7 = 680;
    v49 = v7 + 2;
    if (v48 < 0x80)
    {
LABEL_101:
      LOBYTE(v50) = v48;
      goto LABEL_102;
    }
  }

  do
  {
    *v49++ = v48 | 0x80;
    v50 = v48 >> 7;
    v476 = v48 >> 14;
    v48 >>= 7;
  }

  while (v476);
LABEL_102:
  *v49 = v50;
  v7 = (v49 + 1);
  if ((v13 & 0x80) == 0)
  {
LABEL_21:
    if ((*(this + 20) & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_107;
  }

LABEL_103:
  if (*a3 <= v7)
  {
    v477 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v51 = *(this + 58);
    *v477 = 704;
    v52 = v477 + 2;
    if (v51 < 0x80)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v51 = *(this + 58);
    *v7 = 704;
    v52 = v7 + 2;
    if (v51 < 0x80)
    {
LABEL_105:
      LOBYTE(v53) = v51;
      goto LABEL_106;
    }
  }

  do
  {
    *v52++ = v51 | 0x80;
    v53 = v51 >> 7;
    v478 = v51 >> 14;
    v51 >>= 7;
  }

  while (v478);
LABEL_106:
  *v52 = v53;
  v7 = (v52 + 1);
  if ((*(this + 20) & 0x80) == 0)
  {
LABEL_22:
    if ((*(this + 18) & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_110;
  }

LABEL_107:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v54 = *(this + 290);
  *v7 = 712;
  *(v7 + 2) = v54;
  v7 = (v7 + 3);
  if ((*(this + 18) & 0x20) == 0)
  {
LABEL_23:
    if ((*(this + 31) & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_113;
  }

LABEL_110:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v55 = *(this + 269);
  *v7 = 728;
  *(v7 + 2) = v55;
  v7 = (v7 + 3);
  if ((*(this + 31) & 0x10) == 0)
  {
LABEL_24:
    if ((*(this + 16) & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v56 = *(this + 564);
  *v7 = 736;
  *(v7 + 2) = v56;
  v7 = (v7 + 3);
  if ((*(this + 16) & 0x40) == 0)
  {
LABEL_25:
    v14 = *(this + 7);
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v57 = *(this + 26);
  *v7 = 745;
  *(v7 + 2) = v57;
  v7 = (v7 + 10);
  v14 = *(this + 7);
  if ((v14 & 0x200) == 0)
  {
LABEL_26:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_123;
  }

LABEL_119:
  if (*a3 <= v7)
  {
    v479 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v58 = *(this + 119);
    *v479 = 752;
    v59 = v479 + 2;
    if (v58 < 0x80)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v58 = *(this + 119);
    *v7 = 752;
    v59 = v7 + 2;
    if (v58 < 0x80)
    {
LABEL_121:
      LOBYTE(v60) = v58;
      goto LABEL_122;
    }
  }

  do
  {
    *v59++ = v58 | 0x80;
    v60 = v58 >> 7;
    v480 = v58 >> 14;
    v58 >>= 7;
  }

  while (v480);
LABEL_122:
  *v59 = v60;
  v7 = (v59 + 1);
  if ((v14 & 0x400) == 0)
  {
LABEL_27:
    if ((*(this + 18) & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_126;
  }

LABEL_123:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v61 = *(this + 60);
  *v7 = 761;
  *(v7 + 2) = v61;
  v7 = (v7 + 10);
  if ((*(this + 18) & 0x40) == 0)
  {
LABEL_28:
    v15 = *(this + 7);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_129;
  }

LABEL_126:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v62 = *(this + 270);
  *v7 = 896;
  *(v7 + 2) = v62;
  v7 = (v7 + 3);
  v15 = *(this + 7);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_132;
  }

LABEL_129:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v63 = *(this + 567);
  *v7 = 904;
  *(v7 + 2) = v63;
  v7 = (v7 + 3);
  if ((v15 & 0x800) == 0)
  {
LABEL_30:
    if ((*(this + 16) & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_136;
  }

LABEL_132:
  if (*a3 <= v7)
  {
    v481 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v64 = *(this + 122);
    *v481 = 912;
    v65 = v481 + 2;
    if (v64 < 0x80)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v64 = *(this + 122);
    *v7 = 912;
    v65 = v7 + 2;
    if (v64 < 0x80)
    {
LABEL_134:
      LOBYTE(v66) = v64;
      goto LABEL_135;
    }
  }

  do
  {
    *v65++ = v64 | 0x80;
    v66 = v64 >> 7;
    v482 = v64 >> 14;
    v64 >>= 7;
  }

  while (v482);
LABEL_135:
  *v65 = v66;
  v7 = (v65 + 1);
  if ((*(this + 16) & 0x80) == 0)
  {
LABEL_31:
    if ((*(this + 20) & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_140;
  }

LABEL_136:
  if (*a3 <= v7)
  {
    v483 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v67 = *(this + 54);
    *v483 = 920;
    v68 = v483 + 2;
    if (v67 < 0x80)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v67 = *(this + 54);
    *v7 = 920;
    v68 = v7 + 2;
    if (v67 < 0x80)
    {
LABEL_138:
      LOBYTE(v69) = v67;
      goto LABEL_139;
    }
  }

  do
  {
    *v68++ = v67 | 0x80;
    v69 = v67 >> 7;
    v484 = v67 >> 14;
    v67 >>= 7;
  }

  while (v484);
LABEL_139:
  *v68 = v69;
  v7 = (v68 + 1);
  if ((*(this + 20) & 1) == 0)
  {
LABEL_32:
    v16 = *(this + 7);
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_143;
  }

LABEL_140:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v70 = *(this + 283);
  *v7 = 928;
  *(v7 + 2) = v70;
  v7 = (v7 + 3);
  v16 = *(this + 7);
  if ((v16 & 0x1000) == 0)
  {
LABEL_33:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_147;
  }

LABEL_143:
  if (*a3 <= v7)
  {
    v485 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v71 = *(this + 123);
    *v485 = 936;
    v72 = v485 + 2;
    if (v71 < 0x80)
    {
      goto LABEL_145;
    }
  }

  else
  {
    v71 = *(this + 123);
    *v7 = 936;
    v72 = v7 + 2;
    if (v71 < 0x80)
    {
LABEL_145:
      LOBYTE(v73) = v71;
      goto LABEL_146;
    }
  }

  do
  {
    *v72++ = v71 | 0x80;
    v73 = v71 >> 7;
    v486 = v71 >> 14;
    v71 >>= 7;
  }

  while (v486);
LABEL_146:
  *v72 = v73;
  v7 = (v72 + 1);
  if ((v16 & 0x2000) == 0)
  {
LABEL_34:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_151;
  }

LABEL_147:
  if (*a3 <= v7)
  {
    v487 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v74 = *(this + 124);
    *v487 = 944;
    v75 = v487 + 2;
    if (v74 < 0x80)
    {
      goto LABEL_149;
    }
  }

  else
  {
    v74 = *(this + 124);
    *v7 = 944;
    v75 = v7 + 2;
    if (v74 < 0x80)
    {
LABEL_149:
      LOBYTE(v76) = v74;
      goto LABEL_150;
    }
  }

  do
  {
    *v75++ = v74 | 0x80;
    v76 = v74 >> 7;
    v488 = v74 >> 14;
    v74 >>= 7;
  }

  while (v488);
LABEL_150:
  *v75 = v76;
  v7 = (v75 + 1);
  if ((v16 & 0x4000) == 0)
  {
LABEL_35:
    if ((v16 & 0x20000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_155;
  }

LABEL_151:
  if (*a3 <= v7)
  {
    v489 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v77 = *(this + 125);
    *v489 = 952;
    v78 = v489 + 2;
    if (v77 < 0x80)
    {
      goto LABEL_153;
    }
  }

  else
  {
    v77 = *(this + 125);
    *v7 = 952;
    v78 = v7 + 2;
    if (v77 < 0x80)
    {
LABEL_153:
      LOBYTE(v79) = v77;
      goto LABEL_154;
    }
  }

  do
  {
    *v78++ = v77 | 0x80;
    v79 = v77 >> 7;
    v490 = v77 >> 14;
    v77 >>= 7;
  }

  while (v490);
LABEL_154:
  *v78 = v79;
  v7 = (v78 + 1);
  if ((v16 & 0x20000000) == 0)
  {
LABEL_36:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_158;
  }

LABEL_155:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v80 = *(this + 565);
  *v7 = 960;
  *(v7 + 2) = v80;
  v7 = (v7 + 3);
  if ((v16 & 0x8000) == 0)
  {
LABEL_37:
    if ((*(this + 17) & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_161;
  }

LABEL_158:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v81 = *(this + 63);
  *v7 = 969;
  *(v7 + 2) = v81;
  v7 = (v7 + 10);
  if ((*(this + 17) & 1) == 0)
  {
LABEL_38:
    if ((*(this + 30) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_165;
  }

LABEL_161:
  if (*a3 <= v7)
  {
    v491 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v82 = *(this + 55);
    *v491 = 976;
    v83 = v491 + 2;
    if (v82 < 0x80)
    {
      goto LABEL_163;
    }
  }

  else
  {
    v82 = *(this + 55);
    *v7 = 976;
    v83 = v7 + 2;
    if (v82 < 0x80)
    {
LABEL_163:
      LOBYTE(v84) = v82;
      goto LABEL_164;
    }
  }

  do
  {
    *v83++ = v82 | 0x80;
    v84 = v82 >> 7;
    v492 = v82 >> 14;
    v82 >>= 7;
  }

  while (v492);
LABEL_164:
  *v83 = v84;
  v7 = (v83 + 1);
  if ((*(this + 30) & 1) == 0)
  {
LABEL_39:
    if ((*(this + 17) & 2) == 0)
    {
      goto LABEL_40;
    }

LABEL_169:
    if (*a3 <= v7)
    {
      v495 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
      v88 = *(this + 56);
      *v495 = 992;
      v89 = v495 + 2;
      if (v88 < 0x80)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v88 = *(this + 56);
      *v7 = 992;
      v89 = v7 + 2;
      if (v88 < 0x80)
      {
LABEL_171:
        LOBYTE(v90) = v88;
        goto LABEL_172;
      }
    }

    do
    {
      *v89++ = v88 | 0x80;
      v90 = v88 >> 7;
      v496 = v88 >> 14;
      v88 >>= 7;
    }

    while (v496);
LABEL_172:
    *v89 = v90;
    v7 = (v89 + 1);
    v17 = *(this + 14);
    if (v17 < 1)
    {
      goto LABEL_182;
    }

    goto LABEL_173;
  }

LABEL_165:
  if (*a3 <= v7)
  {
    v493 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v85 = *(this + 128);
    *v493 = 984;
    v86 = v493 + 2;
    if (v85 < 0x80)
    {
      goto LABEL_167;
    }
  }

  else
  {
    v85 = *(this + 128);
    *v7 = 984;
    v86 = v7 + 2;
    if (v85 < 0x80)
    {
LABEL_167:
      LOBYTE(v87) = v85;
      goto LABEL_168;
    }
  }

  do
  {
    *v86++ = v85 | 0x80;
    v87 = v85 >> 7;
    v494 = v85 >> 14;
    v85 >>= 7;
  }

  while (v494);
LABEL_168:
  *v86 = v87;
  v7 = (v86 + 1);
  if ((*(this + 17) & 2) != 0)
  {
    goto LABEL_169;
  }

LABEL_40:
  v17 = *(this + 14);
  if (v17 >= 1)
  {
LABEL_173:
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v7)
      {
        v95 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
        v92 = *(*(this + 8) + 4 * i);
        *v95 = 1000;
        v93 = v95 + 2;
        if (v92 >= 0x80)
        {
          do
          {
LABEL_180:
            *v93++ = v92 | 0x80;
            v94 = v92 >> 7;
            v96 = v92 >> 14;
            v92 >>= 7;
          }

          while (v96);
          goto LABEL_177;
        }
      }

      else
      {
        v92 = *(*(this + 8) + 4 * i);
        *v7 = 1000;
        v93 = v7 + 2;
        if (v92 >= 0x80)
        {
          goto LABEL_180;
        }
      }

      LOBYTE(v94) = v92;
LABEL_177:
      *v93 = v94;
      v7 = (v93 + 1);
    }
  }

LABEL_182:
  v97 = *(this + 7);
  if ((v97 & 0x20000) == 0)
  {
    if ((v97 & 0x40000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_318;
  }

  if (*a3 <= v7)
  {
    v497 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v118 = *(this + 129);
    *v497 = 1008;
    v119 = v497 + 2;
    if (v118 < 0x80)
    {
      goto LABEL_316;
    }
  }

  else
  {
    v118 = *(this + 129);
    *v7 = 1008;
    v119 = v7 + 2;
    if (v118 < 0x80)
    {
LABEL_316:
      LOBYTE(v120) = v118;
      goto LABEL_317;
    }
  }

  do
  {
    *v119++ = v118 | 0x80;
    v120 = v118 >> 7;
    v498 = v118 >> 14;
    v118 >>= 7;
  }

  while (v498);
LABEL_317:
  *v119 = v120;
  v7 = (v119 + 1);
  if ((v97 & 0x40000) == 0)
  {
LABEL_184:
    if ((*(this + 18) & 1) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_321;
  }

LABEL_318:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v121 = *(this + 65);
  *v7 = 1017;
  *(v7 + 2) = v121;
  v7 = (v7 + 10);
  if ((*(this + 18) & 1) == 0)
  {
LABEL_185:
    v98 = *(this + 7);
    if ((v98 & 0x200000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_324;
  }

LABEL_321:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v122 = *(this + 254);
  *v7 = 1152;
  *(v7 + 2) = v122;
  v7 = (v7 + 3);
  v98 = *(this + 7);
  if ((v98 & 0x200000) == 0)
  {
LABEL_186:
    if ((v98 & 0x80000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_328;
  }

LABEL_324:
  if (*a3 <= v7)
  {
    v499 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v123 = *(this + 136);
    *v499 = 1160;
    v124 = v499 + 2;
    if (v123 < 0x80)
    {
      goto LABEL_326;
    }
  }

  else
  {
    v123 = *(this + 136);
    *v7 = 1160;
    v124 = v7 + 2;
    if (v123 < 0x80)
    {
LABEL_326:
      LOBYTE(v125) = v123;
      goto LABEL_327;
    }
  }

  do
  {
    *v124++ = v123 | 0x80;
    v125 = v123 >> 7;
    v500 = v123 >> 14;
    v123 >>= 7;
  }

  while (v500);
LABEL_327:
  *v124 = v125;
  v7 = (v124 + 1);
  if ((v98 & 0x80000) == 0)
  {
LABEL_187:
    if ((v98 & 0x100000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_331;
  }

LABEL_328:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v126 = *(this + 66);
  *v7 = 1169;
  *(v7 + 2) = v126;
  v7 = (v7 + 10);
  if ((v98 & 0x100000) == 0)
  {
LABEL_188:
    v99 = *(this + 4);
    if ((v99 & 0x400) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_334;
  }

LABEL_331:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v127 = *(this + 67);
  *v7 = 1177;
  *(v7 + 2) = v127;
  v7 = (v7 + 10);
  v99 = *(this + 4);
  if ((v99 & 0x400) == 0)
  {
LABEL_189:
    if ((v99 & 0x800) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_338;
  }

LABEL_334:
  if (*a3 <= v7)
  {
    v501 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v128 = *(this + 57);
    *v501 = 1184;
    v129 = v501 + 2;
    if (v128 < 0x80)
    {
      goto LABEL_336;
    }
  }

  else
  {
    v128 = *(this + 57);
    *v7 = 1184;
    v129 = v7 + 2;
    if (v128 < 0x80)
    {
LABEL_336:
      LOBYTE(v130) = v128;
      goto LABEL_337;
    }
  }

  do
  {
    *v129++ = v128 | 0x80;
    v130 = v128 >> 7;
    v502 = v128 >> 14;
    v128 >>= 7;
  }

  while (v502);
LABEL_337:
  *v129 = v130;
  v7 = (v129 + 1);
  if ((v99 & 0x800) == 0)
  {
LABEL_190:
    if ((v99 & 1) == 0)
    {
      goto LABEL_191;
    }

LABEL_341:
    v132 = *(this + 21) & 0xFFFFFFFFFFFFFFFCLL;
    v133 = *(v132 + 23);
    if (v133 < 0 && (v133 = *(v132 + 8), v133 > 127) || *a3 - v7 + 13 < v133)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 70, v132, v7);
      if ((*(this + 31) & 4) != 0)
      {
        goto LABEL_348;
      }
    }

    else
    {
      *v7 = 1202;
      v134 = v7 + 3;
      *(v7 + 2) = v133;
      if (*(v132 + 23) >= 0)
      {
        v135 = v132;
      }

      else
      {
        v135 = *v132;
      }

      memcpy(v7 + 3, v135, v133);
      v7 = &v134[v133];
      if ((*(this + 31) & 4) != 0)
      {
        goto LABEL_348;
      }
    }

LABEL_192:
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_351;
  }

LABEL_338:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v131 = *(this + 29);
  *v7 = 1193;
  *(v7 + 2) = v131;
  v7 = (v7 + 10);
  if (v99)
  {
    goto LABEL_341;
  }

LABEL_191:
  if ((*(this + 31) & 4) == 0)
  {
    goto LABEL_192;
  }

LABEL_348:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v136 = *(this + 69);
  *v7 = 1209;
  *(v7 + 2) = v136;
  v7 = (v7 + 10);
  if ((*(this + 32) & 2) == 0)
  {
LABEL_193:
    v100 = *(this + 7);
    if ((v100 & 0x8000000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_354;
  }

LABEL_351:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v137 = *(this + 569);
  *v7 = 1216;
  *(v7 + 2) = v137;
  v7 = (v7 + 3);
  v100 = *(this + 7);
  if ((v100 & 0x8000000) == 0)
  {
LABEL_194:
    if ((v100 & 0x2000000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_358;
  }

LABEL_354:
  if (*a3 <= v7)
  {
    v503 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v138 = *(this + 140);
    *v503 = 1224;
    v139 = v503 + 2;
    if (v138 < 0x80)
    {
      goto LABEL_356;
    }
  }

  else
  {
    v138 = *(this + 140);
    *v7 = 1224;
    v139 = v7 + 2;
    if (v138 < 0x80)
    {
LABEL_356:
      LOBYTE(v140) = v138;
      goto LABEL_357;
    }
  }

  do
  {
    *v139++ = v138 | 0x80;
    v140 = v138 >> 7;
    v504 = v138 >> 14;
    v138 >>= 7;
  }

  while (v504);
LABEL_357:
  *v139 = v140;
  v7 = (v139 + 1);
  if ((v100 & 0x2000000) == 0)
  {
LABEL_195:
    v101 = *(this + 4);
    if ((v101 & 0x4000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_361;
  }

LABEL_358:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v141 = *(this + 551);
  *v7 = 1232;
  *(v7 + 2) = v141;
  v7 = (v7 + 3);
  v101 = *(this + 4);
  if ((v101 & 0x4000) == 0)
  {
LABEL_196:
    if ((v101 & 0x1000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_364;
  }

LABEL_361:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v142 = *(this + 252);
  *v7 = 1240;
  *(v7 + 2) = v142;
  v7 = (v7 + 3);
  if ((v101 & 0x1000) == 0)
  {
LABEL_197:
    if ((v101 & 0x8000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_367;
  }

LABEL_364:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v143 = *(this + 30);
  *v7 = 1249;
  *(v7 + 2) = v143;
  v7 = (v7 + 10);
  if ((v101 & 0x8000) == 0)
  {
LABEL_198:
    if ((*(this + 25) & 8) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_370;
  }

LABEL_367:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v144 = *(this + 253);
  *v7 = 1256;
  *(v7 + 2) = v144;
  v7 = (v7 + 3);
  if ((*(this + 25) & 8) == 0)
  {
LABEL_199:
    if ((*(this + 21) & 0x80) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_373;
  }

LABEL_370:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v145 = *(this + 339);
  *v7 = 1264;
  *(v7 + 2) = v145;
  v7 = (v7 + 3);
  if ((*(this + 21) & 0x80) == 0)
  {
LABEL_200:
    if ((*(this + 9) & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_376;
  }

LABEL_373:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v146 = *(this + 308);
  *v7 = 1272;
  *(v7 + 2) = v146;
  v7 = (v7 + 3);
  if ((*(this + 9) & 0x80000000) == 0)
  {
LABEL_201:
    if ((*(this + 17) & 0x20) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_379;
  }

LABEL_376:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v147 = *(this + 772);
  *v7 = 1408;
  *(v7 + 2) = v147;
  v7 = (v7 + 3);
  if ((*(this + 17) & 0x20) == 0)
  {
LABEL_202:
    if ((*(this + 22) & 0x40) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_383;
  }

LABEL_379:
  if (*a3 <= v7)
  {
    v505 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v148 = *(this + 62);
    *v505 = 1424;
    v149 = v505 + 2;
    if (v148 < 0x80)
    {
      goto LABEL_381;
    }
  }

  else
  {
    v148 = *(this + 62);
    *v7 = 1424;
    v149 = v7 + 2;
    if (v148 < 0x80)
    {
LABEL_381:
      LOBYTE(v150) = v148;
      goto LABEL_382;
    }
  }

  do
  {
    *v149++ = v148 | 0x80;
    v150 = v148 >> 7;
    v506 = v148 >> 14;
    v148 >>= 7;
  }

  while (v506);
LABEL_382:
  *v149 = v150;
  v7 = (v149 + 1);
  if ((*(this + 22) & 0x40) == 0)
  {
LABEL_203:
    if ((*(this + 30) & 0x80) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_386;
  }

LABEL_383:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v151 = *(this + 315);
  *v7 = 1432;
  *(v7 + 2) = v151;
  v7 = (v7 + 3);
  if ((*(this + 30) & 0x80) == 0)
  {
LABEL_204:
    if ((*(this + 23) & 0x10) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_389;
  }

LABEL_386:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v152 = *(this + 549);
  *v7 = 1440;
  *(v7 + 2) = v152;
  v7 = (v7 + 3);
  if ((*(this + 23) & 0x10) == 0)
  {
LABEL_205:
    if ((*(this + 32) & 4) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_392;
  }

LABEL_389:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v153 = *(this + 321);
  *v7 = 1448;
  *(v7 + 2) = v153;
  v7 = (v7 + 3);
  if ((*(this + 32) & 4) == 0)
  {
LABEL_206:
    if ((*(this + 20) & 2) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_395;
  }

LABEL_392:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v154 = *(this + 570);
  *v7 = 1456;
  *(v7 + 2) = v154;
  v7 = (v7 + 3);
  if ((*(this + 20) & 2) == 0)
  {
LABEL_207:
    if ((*(this + 32) & 1) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_398;
  }

LABEL_395:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v155 = *(this + 284);
  *v7 = 1464;
  *(v7 + 2) = v155;
  v7 = (v7 + 3);
  if ((*(this + 32) & 1) == 0)
  {
LABEL_208:
    if ((*(this + 31) & 1) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_401;
  }

LABEL_398:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v156 = *(this + 568);
  *v7 = 1472;
  *(v7 + 2) = v156;
  v7 = (v7 + 3);
  if ((*(this + 31) & 1) == 0)
  {
LABEL_209:
    v102 = *(this + 8);
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_404;
  }

LABEL_401:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v157 = *(this + 550);
  *v7 = 1480;
  *(v7 + 2) = v157;
  v7 = (v7 + 3);
  v102 = *(this + 8);
  if ((v102 & 0x10) == 0)
  {
LABEL_210:
    if ((v102 & 0x20) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_408;
  }

LABEL_404:
  if (*a3 <= v7)
  {
    v507 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v158 = *(this + 143);
    *v507 = 1488;
    v159 = v507 + 2;
    if (v158 < 0x80)
    {
      goto LABEL_406;
    }
  }

  else
  {
    v158 = *(this + 143);
    *v7 = 1488;
    v159 = v7 + 2;
    if (v158 < 0x80)
    {
LABEL_406:
      LOBYTE(v160) = v158;
      goto LABEL_407;
    }
  }

  do
  {
    *v159++ = v158 | 0x80;
    v160 = v158 >> 7;
    v508 = v158 >> 14;
    v158 >>= 7;
  }

  while (v508);
LABEL_407:
  *v159 = v160;
  v7 = (v159 + 1);
  if ((v102 & 0x20) == 0)
  {
LABEL_211:
    if ((*(this + 19) & 8) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_412;
  }

LABEL_408:
  if (*a3 <= v7)
  {
    v509 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v161 = *(this + 144);
    *v509 = 1496;
    v162 = v509 + 2;
    if (v161 < 0x80)
    {
      goto LABEL_410;
    }
  }

  else
  {
    v161 = *(this + 144);
    *v7 = 1496;
    v162 = v7 + 2;
    if (v161 < 0x80)
    {
LABEL_410:
      LOBYTE(v163) = v161;
      goto LABEL_411;
    }
  }

  do
  {
    *v162++ = v161 | 0x80;
    v163 = v161 >> 7;
    v510 = v161 >> 14;
    v161 >>= 7;
  }

  while (v510);
LABEL_411:
  *v162 = v163;
  v7 = (v162 + 1);
  if ((*(this + 19) & 8) == 0)
  {
LABEL_212:
    if ((*(this + 32) & 8) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_415;
  }

LABEL_412:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v164 = *(this + 275);
  *v7 = 1504;
  *(v7 + 2) = v164;
  v7 = (v7 + 3);
  if ((*(this + 32) & 8) == 0)
  {
LABEL_213:
    v103 = *(this + 9);
    if ((v103 & 0x1000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_418;
  }

LABEL_415:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v165 = *(this + 571);
  *v7 = 1512;
  *(v7 + 2) = v165;
  v7 = (v7 + 3);
  v103 = *(this + 9);
  if ((v103 & 0x1000) == 0)
  {
LABEL_214:
    if ((v103 & 0x8000000) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_421;
  }

LABEL_418:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v166 = *(this + 727);
  *v7 = 1520;
  *(v7 + 2) = v166;
  v7 = (v7 + 3);
  if ((v103 & 0x8000000) == 0)
  {
LABEL_215:
    if ((*(this + 21) & 2) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_424;
  }

LABEL_421:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v167 = *(this + 755);
  *v7 = 1528;
  *(v7 + 2) = v167;
  v7 = (v7 + 3);
  if ((*(this + 21) & 2) == 0)
  {
LABEL_216:
    if ((*(this + 32) & 0x40) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_427;
  }

LABEL_424:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v168 = *(this + 292);
  *v7 = 1680;
  *(v7 + 2) = v168;
  v7 = (v7 + 3);
  if ((*(this + 32) & 0x40) == 0)
  {
LABEL_217:
    if ((*(this + 18) & 8) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_431;
  }

LABEL_427:
  if (*a3 <= v7)
  {
    v511 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v169 = *(this + 145);
    *v511 = 1688;
    v170 = v511 + 2;
    if (v169 < 0x80)
    {
      goto LABEL_429;
    }
  }

  else
  {
    v169 = *(this + 145);
    *v7 = 1688;
    v170 = v7 + 2;
    if (v169 < 0x80)
    {
LABEL_429:
      LOBYTE(v171) = v169;
      goto LABEL_430;
    }
  }

  do
  {
    *v170++ = v169 | 0x80;
    v171 = v169 >> 7;
    v512 = v169 >> 14;
    v169 >>= 7;
  }

  while (v512);
LABEL_430:
  *v170 = v171;
  v7 = (v170 + 1);
  if ((*(this + 18) & 8) == 0)
  {
LABEL_218:
    if ((*(this + 21) & 0x10) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_435;
  }

LABEL_431:
  if (*a3 <= v7)
  {
    v513 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v172 = *(this + 66);
    *v513 = 1696;
    v173 = v513 + 2;
    if (v172 < 0x80)
    {
      goto LABEL_433;
    }
  }

  else
  {
    v172 = *(this + 66);
    *v7 = 1696;
    v173 = v7 + 2;
    if (v172 < 0x80)
    {
LABEL_433:
      LOBYTE(v174) = v172;
      goto LABEL_434;
    }
  }

  do
  {
    *v173++ = v172 | 0x80;
    v174 = v172 >> 7;
    v514 = v172 >> 14;
    v172 >>= 7;
  }

  while (v514);
LABEL_434:
  *v173 = v174;
  v7 = (v173 + 1);
  if ((*(this + 21) & 0x10) == 0)
  {
LABEL_219:
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_438;
  }

LABEL_435:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v175 = *(this + 295);
  *v7 = 1704;
  *(v7 + 2) = v175;
  v7 = (v7 + 3);
  if ((*(this + 24) & 2) == 0)
  {
LABEL_220:
    if ((*(this + 18) & 4) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_441;
  }

LABEL_438:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v176 = *(this + 326);
  *v7 = 1720;
  *(v7 + 2) = v176;
  v7 = (v7 + 3);
  if ((*(this + 18) & 4) == 0)
  {
LABEL_221:
    if ((*(this + 39) & 4) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_445;
  }

LABEL_441:
  if (*a3 <= v7)
  {
    v515 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v177 = *(this + 32);
    *v515 = 1728;
    v178 = v515 + 2;
    if (v177 < 0x80)
    {
      goto LABEL_443;
    }
  }

  else
  {
    v177 = *(this + 32);
    *v7 = 1728;
    v178 = v7 + 2;
    if (v177 < 0x80)
    {
LABEL_443:
      LOBYTE(v179) = v177;
      goto LABEL_444;
    }
  }

  do
  {
    *v178++ = v177 | 0x80;
    v179 = v177 >> 7;
    v516 = v177 >> 14;
    v177 >>= 7;
  }

  while (v516);
LABEL_444:
  *v178 = v179;
  v7 = (v178 + 1);
  if ((*(this + 39) & 4) == 0)
  {
LABEL_222:
    if ((*(this + 32) & 0x80) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_448;
  }

LABEL_445:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v180 = *(this + 754);
  *v7 = 1744;
  *(v7 + 2) = v180;
  v7 = (v7 + 3);
  if ((*(this + 32) & 0x80) == 0)
  {
LABEL_223:
    if ((*(this + 19) & 1) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_452;
  }

LABEL_448:
  if (*a3 <= v7)
  {
    v517 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v181 = *(this + 146);
    *v517 = 1752;
    v182 = v517 + 2;
    if (v181 < 0x80)
    {
      goto LABEL_450;
    }
  }

  else
  {
    v181 = *(this + 146);
    *v7 = 1752;
    v182 = v7 + 2;
    if (v181 < 0x80)
    {
LABEL_450:
      LOBYTE(v183) = v181;
      goto LABEL_451;
    }
  }

  do
  {
    *v182++ = v181 | 0x80;
    v183 = v181 >> 7;
    v518 = v181 >> 14;
    v181 >>= 7;
  }

  while (v518);
LABEL_451:
  *v182 = v183;
  v7 = (v182 + 1);
  if ((*(this + 19) & 1) == 0)
  {
LABEL_224:
    if ((*(this + 38) & 0x80) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_455;
  }

LABEL_452:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v184 = *(this + 272);
  *v7 = 1760;
  *(v7 + 2) = v184;
  v7 = (v7 + 3);
  if ((*(this + 38) & 0x80) == 0)
  {
LABEL_225:
    if ((*(this + 33) & 1) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_458;
  }

LABEL_455:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v185 = *(this + 751);
  *v7 = 1768;
  *(v7 + 2) = v185;
  v7 = (v7 + 3);
  if ((*(this + 33) & 1) == 0)
  {
LABEL_226:
    if ((*(this + 37) & 8) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_462;
  }

LABEL_458:
  if (*a3 <= v7)
  {
    v519 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v186 = *(this + 147);
    *v519 = 1776;
    v187 = v519 + 2;
    if (v186 < 0x80)
    {
      goto LABEL_460;
    }
  }

  else
  {
    v186 = *(this + 147);
    *v7 = 1776;
    v187 = v7 + 2;
    if (v186 < 0x80)
    {
LABEL_460:
      LOBYTE(v188) = v186;
      goto LABEL_461;
    }
  }

  do
  {
    *v187++ = v186 | 0x80;
    v188 = v186 >> 7;
    v520 = v186 >> 14;
    v186 >>= 7;
  }

  while (v520);
LABEL_461:
  *v187 = v188;
  v7 = (v187 + 1);
  if ((*(this + 37) & 8) == 0)
  {
LABEL_227:
    v104 = *(this + 8);
    if ((v104 & 0x20000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_465;
  }

LABEL_462:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v189 = *(this + 726);
  *v7 = 1920;
  *(v7 + 2) = v189;
  v7 = (v7 + 3);
  v104 = *(this + 8);
  if ((v104 & 0x20000000) == 0)
  {
LABEL_228:
    if ((v104 & 0x40000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_468;
  }

LABEL_465:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v190 = *(this + 689);
  *v7 = 1928;
  *(v7 + 2) = v190;
  v7 = (v7 + 3);
  if ((v104 & 0x40000000) == 0)
  {
LABEL_229:
    if ((v104 & 0x200) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_471;
  }

LABEL_468:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v191 = *(this + 690);
  *v7 = 1936;
  *(v7 + 2) = v191;
  v7 = (v7 + 3);
  if ((v104 & 0x200) == 0)
  {
LABEL_230:
    if ((*(this + 36) & 1) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_474;
  }

LABEL_471:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v192 = *(this + 74);
  *v7 = 1945;
  *(v7 + 2) = v192;
  v7 = (v7 + 10);
  if ((*(this + 36) & 1) == 0)
  {
LABEL_231:
    v105 = *(this + 8);
    if ((v105 & 0x100000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_477;
  }

LABEL_474:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v193 = *(this + 692);
  *v7 = 1952;
  *(v7 + 2) = v193;
  v7 = (v7 + 3);
  v105 = *(this + 8);
  if ((v105 & 0x100000) == 0)
  {
LABEL_232:
    if ((v105 & 0x400) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_480;
  }

LABEL_477:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v194 = *(this + 660);
  *v7 = 1960;
  *(v7 + 2) = v194;
  v7 = (v7 + 3);
  if ((v105 & 0x400) == 0)
  {
LABEL_233:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_484;
  }

LABEL_480:
  if (*a3 <= v7)
  {
    v521 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v195 = *(this + 150);
    *v521 = 1976;
    v196 = v521 + 2;
    if (v195 < 0x80)
    {
      goto LABEL_482;
    }
  }

  else
  {
    v195 = *(this + 150);
    *v7 = 1976;
    v196 = v7 + 2;
    if (v195 < 0x80)
    {
LABEL_482:
      LOBYTE(v197) = v195;
      goto LABEL_483;
    }
  }

  do
  {
    *v196++ = v195 | 0x80;
    v197 = v195 >> 7;
    v522 = v195 >> 14;
    v195 >>= 7;
  }

  while (v522);
LABEL_483:
  *v196 = v197;
  v7 = (v196 + 1);
  if ((v105 & 0x200000) == 0)
  {
LABEL_234:
    if ((v105 & 0x800) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_487;
  }

LABEL_484:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v198 = *(this + 661);
  *v7 = 1984;
  *(v7 + 2) = v198;
  v7 = (v7 + 3);
  if ((v105 & 0x800) == 0)
  {
LABEL_235:
    if ((v105 & 0x4000) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_491;
  }

LABEL_487:
  if (*a3 <= v7)
  {
    v523 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v199 = *(this + 151);
    *v523 = 1992;
    v200 = v523 + 2;
    if (v199 < 0x80)
    {
      goto LABEL_489;
    }
  }

  else
  {
    v199 = *(this + 151);
    *v7 = 1992;
    v200 = v7 + 2;
    if (v199 < 0x80)
    {
LABEL_489:
      LOBYTE(v201) = v199;
      goto LABEL_490;
    }
  }

  do
  {
    *v200++ = v199 | 0x80;
    v201 = v199 >> 7;
    v524 = v199 >> 14;
    v199 >>= 7;
  }

  while (v524);
LABEL_490:
  *v200 = v201;
  v7 = (v200 + 1);
  if ((v105 & 0x4000) == 0)
  {
LABEL_236:
    if ((v105 & 0x1000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_495;
  }

LABEL_491:
  if (*a3 <= v7)
  {
    v525 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v202 = *(this + 156);
    *v525 = 2000;
    v203 = v525 + 2;
    if (v202 < 0x80)
    {
      goto LABEL_493;
    }
  }

  else
  {
    v202 = *(this + 156);
    *v7 = 2000;
    v203 = v7 + 2;
    if (v202 < 0x80)
    {
LABEL_493:
      LOBYTE(v204) = v202;
      goto LABEL_494;
    }
  }

  do
  {
    *v203++ = v202 | 0x80;
    v204 = v202 >> 7;
    v526 = v202 >> 14;
    v202 >>= 7;
  }

  while (v526);
LABEL_494:
  *v203 = v204;
  v7 = (v203 + 1);
  if ((v105 & 0x1000) == 0)
  {
LABEL_237:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_499;
  }

LABEL_495:
  if (*a3 <= v7)
  {
    v527 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v205 = *(this + 76);
    *v527 = 2008;
    v206 = v527 + 2;
    if (v205 < 0x80)
    {
      goto LABEL_497;
    }
  }

  else
  {
    v205 = *(this + 76);
    *v7 = 2008;
    v206 = v7 + 2;
    if (v205 < 0x80)
    {
LABEL_497:
      LOBYTE(v207) = v205;
      goto LABEL_498;
    }
  }

  do
  {
    *v206++ = v205 | 0x80;
    v207 = v205 >> 7;
    v528 = v205 >> 14;
    v205 >>= 7;
  }

  while (v528);
LABEL_498:
  *v206 = v207;
  v7 = (v206 + 1);
  if ((v105 & 0x2000) == 0)
  {
LABEL_238:
    if ((v105 & 0x10000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_502;
  }

LABEL_499:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v208 = *(this + 77);
  *v7 = 2017;
  *(v7 + 2) = v208;
  v7 = (v7 + 10);
  if ((v105 & 0x10000) == 0)
  {
LABEL_239:
    if ((v105 & 0x20000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_505;
  }

LABEL_502:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v209 = *(this + 79);
  *v7 = 2025;
  *(v7 + 2) = v209;
  v7 = (v7 + 10);
  if ((v105 & 0x20000) == 0)
  {
LABEL_240:
    if ((v105 & 0x8000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_508;
  }

LABEL_505:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v210 = *(this + 80);
  *v7 = 2033;
  *(v7 + 2) = v210;
  v7 = (v7 + 10);
  if ((v105 & 0x8000) == 0)
  {
LABEL_241:
    if ((v105 & 0x40000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_512;
  }

LABEL_508:
  if (*a3 <= v7)
  {
    v529 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v211 = *(this + 157);
    *v529 = 2040;
    v212 = v529 + 2;
    if (v211 < 0x80)
    {
      goto LABEL_510;
    }
  }

  else
  {
    v211 = *(this + 157);
    *v7 = 2040;
    v212 = v7 + 2;
    if (v211 < 0x80)
    {
LABEL_510:
      LOBYTE(v213) = v211;
      goto LABEL_511;
    }
  }

  do
  {
    *v212++ = v211 | 0x80;
    v213 = v211 >> 7;
    v530 = v211 >> 14;
    v211 >>= 7;
  }

  while (v530);
LABEL_511:
  *v212 = v213;
  v7 = (v212 + 1);
  if ((v105 & 0x40000) == 0)
  {
LABEL_242:
    if ((*(this + 38) & 0x20) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_515;
  }

LABEL_512:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v214 = *(this + 81);
  *v7 = 2177;
  *(v7 + 2) = v214;
  v7 = (v7 + 10);
  if ((*(this + 38) & 0x20) == 0)
  {
LABEL_243:
    if ((*(this + 24) & 0x10) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_518;
  }

LABEL_515:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v215 = *(this + 749);
  *v7 = 2184;
  *(v7 + 2) = v215;
  v7 = (v7 + 3);
  if ((*(this + 24) & 0x10) == 0)
  {
LABEL_244:
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_521;
  }

LABEL_518:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v216 = *(this + 329);
  *v7 = 2192;
  *(v7 + 2) = v216;
  v7 = (v7 + 3);
  if ((*(this + 36) & 2) == 0)
  {
LABEL_245:
    if ((*(this + 20) & 8) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_524;
  }

LABEL_521:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v217 = *(this + 693);
  *v7 = 2200;
  *(v7 + 2) = v217;
  v7 = (v7 + 3);
  if ((*(this + 20) & 8) == 0)
  {
LABEL_246:
    v106 = *(this + 4);
    if ((v106 & 0x2000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_527;
  }

LABEL_524:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v218 = *(this + 286);
  *v7 = 2208;
  *(v7 + 2) = v218;
  v7 = (v7 + 3);
  v106 = *(this + 4);
  if ((v106 & 0x2000000) == 0)
  {
LABEL_247:
    if ((v106 & 0x10000000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_530;
  }

LABEL_527:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v219 = *(this + 273);
  *v7 = 2216;
  *(v7 + 2) = v219;
  v7 = (v7 + 3);
  if ((v106 & 0x10000000) == 0)
  {
LABEL_248:
    if ((*(this + 38) & 1) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_534;
  }

LABEL_530:
  if (*a3 <= v7)
  {
    v531 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v220 = *(this + 69);
    *v531 = 2224;
    v221 = v531 + 2;
    if (v220 < 0x80)
    {
      goto LABEL_532;
    }
  }

  else
  {
    v220 = *(this + 69);
    *v7 = 2224;
    v221 = v7 + 2;
    if (v220 < 0x80)
    {
LABEL_532:
      LOBYTE(v222) = v220;
      goto LABEL_533;
    }
  }

  do
  {
    *v221++ = v220 | 0x80;
    v222 = v220 >> 7;
    v532 = v220 >> 14;
    v220 >>= 7;
  }

  while (v532);
LABEL_533:
  *v221 = v222;
  v7 = (v221 + 1);
  if ((*(this + 38) & 1) == 0)
  {
LABEL_249:
    if ((*(this + 19) & 0x20) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_537;
  }

LABEL_534:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v223 = *(this + 744);
  *v7 = 2232;
  *(v7 + 2) = v223;
  v7 = (v7 + 3);
  if ((*(this + 19) & 0x20) == 0)
  {
LABEL_250:
    if ((*(this + 24) & 1) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_540;
  }

LABEL_537:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v224 = *(this + 280);
  *v7 = 2240;
  *(v7 + 2) = v224;
  v7 = (v7 + 3);
  if ((*(this + 24) & 1) == 0)
  {
LABEL_251:
    if ((*(this + 34) & 8) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_543;
  }

LABEL_540:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v225 = *(this + 325);
  *v7 = 2248;
  *(v7 + 2) = v225;
  v7 = (v7 + 3);
  if ((*(this + 34) & 8) == 0)
  {
LABEL_252:
    if ((*(this + 38) & 2) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_547;
  }

LABEL_543:
  if (*a3 <= v7)
  {
    v533 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v226 = *(this + 164);
    *v533 = 2256;
    v227 = v533 + 2;
    if (v226 < 0x80)
    {
      goto LABEL_545;
    }
  }

  else
  {
    v226 = *(this + 164);
    *v7 = 2256;
    v227 = v7 + 2;
    if (v226 < 0x80)
    {
LABEL_545:
      LOBYTE(v228) = v226;
      goto LABEL_546;
    }
  }

  do
  {
    *v227++ = v226 | 0x80;
    v228 = v226 >> 7;
    v534 = v226 >> 14;
    v226 >>= 7;
  }

  while (v534);
LABEL_546:
  *v227 = v228;
  v7 = (v227 + 1);
  if ((*(this + 38) & 2) == 0)
  {
LABEL_253:
    v107 = *(this + 8);
    if ((v107 & 0x1000000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_550;
  }

LABEL_547:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v229 = *(this + 745);
  *v7 = 2432;
  *(v7 + 2) = v229;
  v7 = (v7 + 3);
  v107 = *(this + 8);
  if ((v107 & 0x1000000) == 0)
  {
LABEL_254:
    if ((v107 & 0x2000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_553;
  }

LABEL_550:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v230 = *(this + 83);
  *v7 = 2441;
  *(v7 + 2) = v230;
  v7 = (v7 + 10);
  if ((v107 & 0x2000000) == 0)
  {
LABEL_255:
    if ((v107 & 0x4000000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_556;
  }

LABEL_553:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v231 = *(this + 84);
  *v7 = 2449;
  *(v7 + 2) = v231;
  v7 = (v7 + 10);
  if ((v107 & 0x4000000) == 0)
  {
LABEL_256:
    if ((v107 & 0x8000000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_560;
  }

LABEL_556:
  if (*a3 <= v7)
  {
    v535 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v232 = *(this + 170);
    *v535 = 2456;
    v233 = v535 + 2;
    if (v232 < 0x80)
    {
      goto LABEL_558;
    }
  }

  else
  {
    v232 = *(this + 170);
    *v7 = 2456;
    v233 = v7 + 2;
    if (v232 < 0x80)
    {
LABEL_558:
      LOBYTE(v234) = v232;
      goto LABEL_559;
    }
  }

  do
  {
    *v233++ = v232 | 0x80;
    v234 = v232 >> 7;
    v536 = v232 >> 14;
    v232 >>= 7;
  }

  while (v536);
LABEL_559:
  *v233 = v234;
  v7 = (v233 + 1);
  if ((v107 & 0x8000000) == 0)
  {
LABEL_257:
    v108 = *(this + 5);
    if ((v108 & 0x400) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_564;
  }

LABEL_560:
  if (*a3 <= v7)
  {
    v537 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v235 = *(this + 171);
    *v537 = 2464;
    v236 = v537 + 2;
    if (v235 < 0x80)
    {
      goto LABEL_562;
    }
  }

  else
  {
    v235 = *(this + 171);
    *v7 = 2464;
    v236 = v7 + 2;
    if (v235 < 0x80)
    {
LABEL_562:
      LOBYTE(v237) = v235;
      goto LABEL_563;
    }
  }

  do
  {
    *v236++ = v235 | 0x80;
    v237 = v235 >> 7;
    v538 = v235 >> 14;
    v235 >>= 7;
  }

  while (v538);
LABEL_563:
  *v236 = v237;
  v7 = (v236 + 1);
  v108 = *(this + 5);
  if ((v108 & 0x400) == 0)
  {
LABEL_258:
    if ((v108 & 0x4000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_567;
  }

LABEL_564:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v238 = *(this + 293);
  *v7 = 2472;
  *(v7 + 2) = v238;
  v7 = (v7 + 3);
  if ((v108 & 0x4000) == 0)
  {
LABEL_259:
    v109 = *(this + 9);
    if ((v109 & 0x400) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_571;
  }

LABEL_567:
  if (*a3 <= v7)
  {
    v539 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v239 = *(this + 76);
    *v539 = 2488;
    v240 = v539 + 2;
    if (v239 < 0x80)
    {
      goto LABEL_569;
    }
  }

  else
  {
    v239 = *(this + 76);
    *v7 = 2488;
    v240 = v7 + 2;
    if (v239 < 0x80)
    {
LABEL_569:
      LOBYTE(v241) = v239;
      goto LABEL_570;
    }
  }

  do
  {
    *v240++ = v239 | 0x80;
    v241 = v239 >> 7;
    v540 = v239 >> 14;
    v239 >>= 7;
  }

  while (v540);
LABEL_570:
  *v240 = v241;
  v7 = (v240 + 1);
  v109 = *(this + 9);
  if ((v109 & 0x400) == 0)
  {
LABEL_260:
    if ((v109 & 0x10) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_574;
  }

LABEL_571:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v242 = *(this + 725);
  *v7 = 2496;
  *(v7 + 2) = v242;
  v7 = (v7 + 3);
  if ((v109 & 0x10) == 0)
  {
LABEL_261:
    if ((v109 & 0x20) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_578;
  }

LABEL_574:
  if (*a3 <= v7)
  {
    v541 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v243 = *(this + 174);
    *v541 = 2504;
    v244 = v541 + 2;
    if (v243 < 0x80)
    {
      goto LABEL_576;
    }
  }

  else
  {
    v243 = *(this + 174);
    *v7 = 2504;
    v244 = v7 + 2;
    if (v243 < 0x80)
    {
LABEL_576:
      LOBYTE(v245) = v243;
      goto LABEL_577;
    }
  }

  do
  {
    *v244++ = v243 | 0x80;
    v245 = v243 >> 7;
    v542 = v243 >> 14;
    v243 >>= 7;
  }

  while (v542);
LABEL_577:
  *v244 = v245;
  v7 = (v244 + 1);
  if ((v109 & 0x20) == 0)
  {
LABEL_262:
    if ((v109 & 0x40) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_582;
  }

LABEL_578:
  if (*a3 <= v7)
  {
    v543 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v246 = *(this + 175);
    *v543 = 2512;
    v247 = v543 + 2;
    if (v246 < 0x80)
    {
      goto LABEL_580;
    }
  }

  else
  {
    v246 = *(this + 175);
    *v7 = 2512;
    v247 = v7 + 2;
    if (v246 < 0x80)
    {
LABEL_580:
      LOBYTE(v248) = v246;
      goto LABEL_581;
    }
  }

  do
  {
    *v247++ = v246 | 0x80;
    v248 = v246 >> 7;
    v544 = v246 >> 14;
    v246 >>= 7;
  }

  while (v544);
LABEL_581:
  *v247 = v248;
  v7 = (v247 + 1);
  if ((v109 & 0x40) == 0)
  {
LABEL_263:
    if ((v109 & 0x80) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_585;
  }

LABEL_582:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v249 = *(this + 88);
  *v7 = 2521;
  *(v7 + 2) = v249;
  v7 = (v7 + 10);
  if ((v109 & 0x80) == 0)
  {
LABEL_264:
    if ((v109 & 0x100) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_588;
  }

LABEL_585:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v250 = *(this + 89);
  *v7 = 2529;
  *(v7 + 2) = v250;
  v7 = (v7 + 10);
  if ((v109 & 0x100) == 0)
  {
LABEL_265:
    if ((v109 & 0x2000) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_592;
  }

LABEL_588:
  if (*a3 <= v7)
  {
    v545 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v251 = *(this + 180);
    *v545 = 2536;
    v252 = v545 + 2;
    if (v251 < 0x80)
    {
      goto LABEL_590;
    }
  }

  else
  {
    v251 = *(this + 180);
    *v7 = 2536;
    v252 = v7 + 2;
    if (v251 < 0x80)
    {
LABEL_590:
      LOBYTE(v253) = v251;
      goto LABEL_591;
    }
  }

  do
  {
    *v252++ = v251 | 0x80;
    v253 = v251 >> 7;
    v546 = v251 >> 14;
    v251 >>= 7;
  }

  while (v546);
LABEL_591:
  *v252 = v253;
  v7 = (v252 + 1);
  if ((v109 & 0x2000) == 0)
  {
LABEL_266:
    if ((*(this + 21) & 0x20) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_595;
  }

LABEL_592:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v254 = *(this + 91);
  *v7 = 2553;
  *(v7 + 2) = v254;
  v7 = (v7 + 10);
  if ((*(this + 21) & 0x20) == 0)
  {
LABEL_267:
    if ((*(this + 24) & 0x20) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_598;
  }

LABEL_595:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v255 = *(this + 37);
  *v7 = 2689;
  *(v7 + 2) = v255;
  v7 = (v7 + 10);
  if ((*(this + 24) & 0x20) == 0)
  {
LABEL_268:
    if ((*(this + 19) & 0x40) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_601;
  }

LABEL_598:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v256 = *(this + 330);
  *v7 = 2696;
  *(v7 + 2) = v256;
  v7 = (v7 + 3);
  if ((*(this + 19) & 0x40) == 0)
  {
LABEL_269:
    if ((*(this + 35) & 0x10) == 0)
    {
      goto LABEL_270;
    }

    goto LABEL_604;
  }

LABEL_601:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v257 = *(this + 281);
  *v7 = 2704;
  *(v7 + 2) = v257;
  v7 = (v7 + 3);
  if ((*(this + 35) & 0x10) == 0)
  {
LABEL_270:
    v110 = *(this + 9);
    if ((v110 & 0x400000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_607;
  }

LABEL_604:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v258 = *(this + 688);
  *v7 = 2712;
  *(v7 + 2) = v258;
  v7 = (v7 + 3);
  v110 = *(this + 9);
  if ((v110 & 0x400000) == 0)
  {
LABEL_271:
    if ((v110 & 0x4000) == 0)
    {
      goto LABEL_272;
    }

    goto LABEL_610;
  }

LABEL_607:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v259 = *(this + 750);
  *v7 = 2720;
  *(v7 + 2) = v259;
  v7 = (v7 + 3);
  if ((v110 & 0x4000) == 0)
  {
LABEL_272:
    if ((v110 & 4) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_614;
  }

LABEL_610:
  if (*a3 <= v7)
  {
    v547 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v260 = *(this + 184);
    *v547 = 2728;
    v261 = v547 + 2;
    if (v260 < 0x80)
    {
      goto LABEL_612;
    }
  }

  else
  {
    v260 = *(this + 184);
    *v7 = 2728;
    v261 = v7 + 2;
    if (v260 < 0x80)
    {
LABEL_612:
      LOBYTE(v262) = v260;
      goto LABEL_613;
    }
  }

  do
  {
    *v261++ = v260 | 0x80;
    v262 = v260 >> 7;
    v548 = v260 >> 14;
    v260 >>= 7;
  }

  while (v548);
LABEL_613:
  *v261 = v262;
  v7 = (v261 + 1);
  if ((v110 & 4) == 0)
  {
LABEL_273:
    if ((*(this + 25) & 0x40) == 0)
    {
      goto LABEL_274;
    }

    goto LABEL_617;
  }

LABEL_614:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v263 = *(this + 694);
  *v7 = 2736;
  *(v7 + 2) = v263;
  v7 = (v7 + 3);
  if ((*(this + 25) & 0x40) == 0)
  {
LABEL_274:
    if ((*(this + 37) & 0x80) == 0)
    {
      goto LABEL_275;
    }

    goto LABEL_620;
  }

LABEL_617:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v264 = *(this + 342);
  *v7 = 2744;
  *(v7 + 2) = v264;
  v7 = (v7 + 3);
  if ((*(this + 37) & 0x80) == 0)
  {
LABEL_275:
    if ((*(this + 34) & 0x40) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_624;
  }

LABEL_620:
  if (*a3 <= v7)
  {
    v549 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v265 = *(this + 185);
    *v549 = 2752;
    v266 = v549 + 2;
    if (v265 < 0x80)
    {
      goto LABEL_622;
    }
  }

  else
  {
    v265 = *(this + 185);
    *v7 = 2752;
    v266 = v7 + 2;
    if (v265 < 0x80)
    {
LABEL_622:
      LOBYTE(v267) = v265;
      goto LABEL_623;
    }
  }

  do
  {
    *v266++ = v265 | 0x80;
    v267 = v265 >> 7;
    v550 = v265 >> 14;
    v265 >>= 7;
  }

  while (v550);
LABEL_623:
  *v266 = v267;
  v7 = (v266 + 1);
  if ((*(this + 34) & 0x40) == 0)
  {
LABEL_276:
    if ((*(this + 22) & 0x80) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_627;
  }

LABEL_624:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v268 = *(this + 662);
  *v7 = 2760;
  *(v7 + 2) = v268;
  v7 = (v7 + 3);
  if ((*(this + 22) & 0x80) == 0)
  {
LABEL_277:
    if ((*(this + 16) & 2) == 0)
    {
      goto LABEL_278;
    }

LABEL_630:
    v270 = *(this + 22) & 0xFFFFFFFFFFFFFFFCLL;
    v271 = *(v270 + 23);
    if (v271 < 0 && (v271 = *(v270 + 8), v271 > 127) || *a3 - v7 + 13 < v271)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 171, v270, v7);
      if ((*(this + 34) & 0x80) != 0)
      {
        goto LABEL_637;
      }
    }

    else
    {
      *v7 = 2778;
      v272 = v7 + 3;
      *(v7 + 2) = v271;
      if (*(v270 + 23) >= 0)
      {
        v273 = v270;
      }

      else
      {
        v273 = *v270;
      }

      memcpy(v7 + 3, v273, v271);
      v7 = &v272[v271];
      if ((*(this + 34) & 0x80) != 0)
      {
        goto LABEL_637;
      }
    }

LABEL_279:
    v111 = *(this + 5);
    if ((v111 & 4) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_640;
  }

LABEL_627:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v269 = *(this + 316);
  *v7 = 2768;
  *(v7 + 2) = v269;
  v7 = (v7 + 3);
  if ((*(this + 16) & 2) != 0)
  {
    goto LABEL_630;
  }

LABEL_278:
  if ((*(this + 34) & 0x80) == 0)
  {
    goto LABEL_279;
  }

LABEL_637:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v274 = *(this + 663);
  *v7 = 2784;
  *(v7 + 2) = v274;
  v7 = (v7 + 3);
  v111 = *(this + 5);
  if ((v111 & 4) == 0)
  {
LABEL_280:
    if ((v111 & 0x4000000) == 0)
    {
      goto LABEL_281;
    }

    goto LABEL_643;
  }

LABEL_640:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v275 = *(this + 285);
  *v7 = 2792;
  *(v7 + 2) = v275;
  v7 = (v7 + 3);
  if ((v111 & 0x4000000) == 0)
  {
LABEL_281:
    if ((*(this + 19) & 4) == 0)
    {
      goto LABEL_282;
    }

    goto LABEL_646;
  }

LABEL_643:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v276 = *(this + 319);
  *v7 = 2800;
  *(v7 + 2) = v276;
  v7 = (v7 + 3);
  if ((*(this + 19) & 4) == 0)
  {
LABEL_282:
    if ((*(this + 22) & 8) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_649;
  }

LABEL_646:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v277 = *(this + 274);
  *v7 = 2808;
  *(v7 + 2) = v277;
  v7 = (v7 + 3);
  if ((*(this + 22) & 8) == 0)
  {
LABEL_283:
    if ((*(this + 38) & 4) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_652;
  }

LABEL_649:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v278 = *(this + 312);
  *v7 = 2944;
  *(v7 + 2) = v278;
  v7 = (v7 + 3);
  if ((*(this + 38) & 4) == 0)
  {
LABEL_284:
    if ((*(this + 18) & 2) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_655;
  }

LABEL_652:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v279 = *(this + 746);
  *v7 = 2952;
  *(v7 + 2) = v279;
  v7 = (v7 + 3);
  if ((*(this + 18) & 2) == 0)
  {
LABEL_285:
    v112 = *(this + 5);
    if ((v112 & 0x20) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_658;
  }

LABEL_655:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v280 = *(this + 255);
  *v7 = 2960;
  *(v7 + 2) = v280;
  v7 = (v7 + 3);
  v112 = *(this + 5);
  if ((v112 & 0x20) == 0)
  {
LABEL_286:
    if ((v112 & 0x40) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_661;
  }

LABEL_658:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v281 = *(this + 288);
  *v7 = 2968;
  *(v7 + 2) = v281;
  v7 = (v7 + 3);
  if ((v112 & 0x40) == 0)
  {
LABEL_287:
    if ((v112 & 0x1000000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_664;
  }

LABEL_661:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v282 = *(this + 289);
  *v7 = 2976;
  *(v7 + 2) = v282;
  v7 = (v7 + 3);
  if ((v112 & 0x1000000) == 0)
  {
LABEL_288:
    if ((*(this + 41) & 2) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_667;
  }

LABEL_664:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v283 = *(this + 317);
  *v7 = 2984;
  *(v7 + 2) = v283;
  v7 = (v7 + 3);
  if ((*(this + 41) & 2) == 0)
  {
LABEL_289:
    if ((*(this + 39) & 0x10) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_670;
  }

LABEL_667:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v284 = *(this + 812);
  *v7 = 2992;
  *(v7 + 2) = v284;
  v7 = (v7 + 3);
  if ((*(this + 39) & 0x10) == 0)
  {
LABEL_290:
    if ((*(this + 16) & 4) == 0)
    {
      goto LABEL_291;
    }

LABEL_674:
    v288 = *(this + 23) & 0xFFFFFFFFFFFFFFFCLL;
    v289 = *(v288 + 23);
    if (v289 < 0 && (v289 = *(v288 + 8), v289 > 127) || *a3 - v7 + 13 < v289)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 185, v288, v7);
      if ((*(this + 31) & 0x40) != 0)
      {
        goto LABEL_681;
      }
    }

    else
    {
      *v7 = 3018;
      v290 = v7 + 3;
      *(v7 + 2) = v289;
      if (*(v288 + 23) >= 0)
      {
        v291 = v288;
      }

      else
      {
        v291 = *v288;
      }

      memcpy(v7 + 3, v291, v289);
      v7 = &v290[v289];
      if ((*(this + 31) & 0x40) != 0)
      {
        goto LABEL_681;
      }
    }

LABEL_292:
    if ((*(this + 18) & 0x10) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_684;
  }

LABEL_670:
  if (*a3 <= v7)
  {
    v551 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v285 = *(this + 189);
    *v551 = 3000;
    v286 = v551 + 2;
    if (v285 < 0x80)
    {
      goto LABEL_672;
    }
  }

  else
  {
    v285 = *(this + 189);
    *v7 = 3000;
    v286 = v7 + 2;
    if (v285 < 0x80)
    {
LABEL_672:
      LOBYTE(v287) = v285;
      goto LABEL_673;
    }
  }

  do
  {
    *v286++ = v285 | 0x80;
    v287 = v285 >> 7;
    v552 = v285 >> 14;
    v285 >>= 7;
  }

  while (v552);
LABEL_673:
  *v286 = v287;
  v7 = (v286 + 1);
  if ((*(this + 16) & 4) != 0)
  {
    goto LABEL_674;
  }

LABEL_291:
  if ((*(this + 31) & 0x40) == 0)
  {
    goto LABEL_292;
  }

LABEL_681:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v292 = *(this + 566);
  *v7 = 3024;
  *(v7 + 2) = v292;
  v7 = (v7 + 3);
  if ((*(this + 18) & 0x10) == 0)
  {
LABEL_293:
    v113 = *(this + 5);
    if ((v113 & 0x8000000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_687;
  }

LABEL_684:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v293 = *(this + 268);
  *v7 = 3032;
  *(v7 + 2) = v293;
  v7 = (v7 + 3);
  v113 = *(this + 5);
  if ((v113 & 0x8000000) == 0)
  {
LABEL_294:
    if ((v113 & 0x100) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_690;
  }

LABEL_687:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v294 = *(this + 320);
  *v7 = 3040;
  *(v7 + 2) = v294;
  v7 = (v7 + 3);
  if ((v113 & 0x100) == 0)
  {
LABEL_295:
    v114 = *(this + 9);
    if ((v114 & 0x20000000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_693;
  }

LABEL_690:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v295 = *(this + 291);
  *v7 = 3048;
  *(v7 + 2) = v295;
  v7 = (v7 + 3);
  v114 = *(this + 9);
  if ((v114 & 0x20000000) == 0)
  {
LABEL_296:
    if ((v114 & 0x40000000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_696;
  }

LABEL_693:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v296 = *(this + 95);
  *v7 = 3057;
  *(v7 + 2) = v296;
  v7 = (v7 + 10);
  if ((v114 & 0x40000000) == 0)
  {
LABEL_297:
    if ((*(this + 25) & 0x80) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_700;
  }

LABEL_696:
  if (*a3 <= v7)
  {
    v553 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v297 = *(this + 192);
    *v553 = 3064;
    v298 = v553 + 2;
    if (v297 < 0x80)
    {
      goto LABEL_698;
    }
  }

  else
  {
    v297 = *(this + 192);
    *v7 = 3064;
    v298 = v7 + 2;
    if (v297 < 0x80)
    {
LABEL_698:
      LOBYTE(v299) = v297;
      goto LABEL_699;
    }
  }

  do
  {
    *v298++ = v297 | 0x80;
    v299 = v297 >> 7;
    v554 = v297 >> 14;
    v297 >>= 7;
  }

  while (v554);
LABEL_699:
  *v298 = v299;
  v7 = (v298 + 1);
  if ((*(this + 25) & 0x80) == 0)
  {
LABEL_298:
    if ((*(this + 40) & 8) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_703;
  }

LABEL_700:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v300 = *(this + 343);
  *v7 = 3200;
  *(v7 + 2) = v300;
  v7 = (v7 + 3);
  if ((*(this + 40) & 8) == 0)
  {
LABEL_299:
    if ((*(this + 20) & 0x10) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_707;
  }

LABEL_703:
  if (*a3 <= v7)
  {
    v555 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v301 = *(this + 194);
    *v555 = 3208;
    v302 = v555 + 2;
    if (v301 < 0x80)
    {
      goto LABEL_705;
    }
  }

  else
  {
    v301 = *(this + 194);
    *v7 = 3208;
    v302 = v7 + 2;
    if (v301 < 0x80)
    {
LABEL_705:
      LOBYTE(v303) = v301;
      goto LABEL_706;
    }
  }

  do
  {
    *v302++ = v301 | 0x80;
    v303 = v301 >> 7;
    v556 = v301 >> 14;
    v301 >>= 7;
  }

  while (v556);
LABEL_706:
  *v302 = v303;
  v7 = (v302 + 1);
  if ((*(this + 20) & 0x10) == 0)
  {
LABEL_300:
    if ((*(this + 4) & 0x80000000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_710;
  }

LABEL_707:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v304 = *(this + 287);
  *v7 = 3216;
  *(v7 + 2) = v304;
  v7 = (v7 + 3);
  if ((*(this + 4) & 0x80000000) == 0)
  {
LABEL_301:
    if ((*(this + 40) & 0x10) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_713;
  }

LABEL_710:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v305 = *(this + 282);
  *v7 = 3224;
  *(v7 + 2) = v305;
  v7 = (v7 + 3);
  if ((*(this + 40) & 0x10) == 0)
  {
LABEL_302:
    if ((*(this + 24) & 8) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_717;
  }

LABEL_713:
  if (*a3 <= v7)
  {
    v557 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v306 = *(this + 195);
    *v557 = 3232;
    v307 = v557 + 2;
    if (v306 < 0x80)
    {
      goto LABEL_715;
    }
  }

  else
  {
    v306 = *(this + 195);
    *v7 = 3232;
    v307 = v7 + 2;
    if (v306 < 0x80)
    {
LABEL_715:
      LOBYTE(v308) = v306;
      goto LABEL_716;
    }
  }

  do
  {
    *v307++ = v306 | 0x80;
    v308 = v306 >> 7;
    v558 = v306 >> 14;
    v306 >>= 7;
  }

  while (v558);
LABEL_716:
  *v307 = v308;
  v7 = (v307 + 1);
  if ((*(this + 24) & 8) == 0)
  {
LABEL_303:
    if ((*(this + 36) & 8) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_720;
  }

LABEL_717:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v309 = *(this + 328);
  *v7 = 3240;
  *(v7 + 2) = v309;
  v7 = (v7 + 3);
  if ((*(this + 36) & 8) == 0)
  {
LABEL_304:
    if ((*(this + 40) & 0x20) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_723;
  }

LABEL_720:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v310 = *(this + 695);
  *v7 = 3248;
  *(v7 + 2) = v310;
  v7 = (v7 + 3);
  if ((*(this + 40) & 0x20) == 0)
  {
LABEL_305:
    if ((*(this + 22) & 4) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_726;
  }

LABEL_723:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v311 = *(this + 98);
  *v7 = 3257;
  *(v7 + 2) = v311;
  v7 = (v7 + 10);
  if ((*(this + 22) & 4) == 0)
  {
LABEL_306:
    v115 = *(this + 10);
    if ((v115 & 0x40) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_729;
  }

LABEL_726:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v312 = *(this + 311);
  *v7 = 3264;
  *(v7 + 2) = v312;
  v7 = (v7 + 3);
  v115 = *(this + 10);
  if ((v115 & 0x40) == 0)
  {
LABEL_307:
    if ((v115 & 0x400) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_733;
  }

LABEL_729:
  if (*a3 <= v7)
  {
    v559 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v313 = *(this + 99);
    *v559 = 3272;
    v314 = v559 + 2;
    if (v313 < 0x80)
    {
      goto LABEL_731;
    }
  }

  else
  {
    v313 = *(this + 99);
    *v7 = 3272;
    v314 = v7 + 2;
    if (v313 < 0x80)
    {
LABEL_731:
      LOBYTE(v315) = v313;
      goto LABEL_732;
    }
  }

  do
  {
    *v314++ = v313 | 0x80;
    v315 = v313 >> 7;
    v560 = v313 >> 14;
    v313 >>= 7;
  }

  while (v560);
LABEL_732:
  *v314 = v315;
  v7 = (v314 + 1);
  if ((v115 & 0x400) == 0)
  {
LABEL_308:
    if ((*(this + 8) & 0x80000000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_736;
  }

LABEL_733:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v316 = *(this + 813);
  *v7 = 3280;
  *(v7 + 2) = v316;
  v7 = (v7 + 3);
  if ((*(this + 8) & 0x80000000) == 0)
  {
LABEL_309:
    v116 = *(this + 10);
    if ((v116 & 4) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_739;
  }

LABEL_736:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v317 = *(this + 691);
  *v7 = 3288;
  *(v7 + 2) = v317;
  v7 = (v7 + 3);
  v116 = *(this + 10);
  if ((v116 & 4) == 0)
  {
LABEL_310:
    if ((v116 & 0x80) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_742;
  }

LABEL_739:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v318 = *(this + 775);
  *v7 = 3296;
  *(v7 + 2) = v318;
  v7 = (v7 + 3);
  if ((v116 & 0x80) == 0)
  {
LABEL_311:
    if ((*(this + 24) & 0x80) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_745;
  }

LABEL_742:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v319 = *(this + 100);
  *v7 = 3305;
  *(v7 + 2) = v319;
  v7 = (v7 + 10);
  if ((*(this + 24) & 0x80) == 0)
  {
LABEL_312:
    v117 = *(this + 20);
    if (v117 < 1)
    {
      goto LABEL_761;
    }

    goto LABEL_749;
  }

LABEL_745:
  if (*a3 <= v7)
  {
    v561 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v320 = *(this + 83);
    *v561 = 3312;
    v321 = v561 + 2;
    if (v320 < 0x80)
    {
      goto LABEL_747;
    }
  }

  else
  {
    v320 = *(this + 83);
    *v7 = 3312;
    v321 = v7 + 2;
    if (v320 < 0x80)
    {
LABEL_747:
      LOBYTE(v322) = v320;
      goto LABEL_748;
    }
  }

  do
  {
    *v321++ = v320 | 0x80;
    v322 = v320 >> 7;
    v562 = v320 >> 14;
    v320 >>= 7;
  }

  while (v562);
LABEL_748:
  *v321 = v322;
  v7 = (v321 + 1);
  v117 = *(this + 20);
  if (v117 < 1)
  {
    goto LABEL_761;
  }

LABEL_749:
  v323 = (this + 72);
  v324 = 8;
  do
  {
    while (1)
    {
      v325 = (*v323 & 1) != 0 ? (*v323 + v324 - 1) : (this + 72);
      v326 = *v325;
      v327 = *(*v325 + 23);
      if ((v327 & 0x8000000000000000) == 0 || (v327 = v326[1], v327 <= 127))
      {
        if (*a3 - v7 + 13 >= v327)
        {
          break;
        }
      }

      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 207, v326, v7);
      v324 += 8;
      if (!--v117)
      {
        goto LABEL_761;
      }
    }

    *v7 = 3322;
    *(v7 + 2) = v327;
    if (*(v326 + 23) < 0)
    {
      v326 = *v326;
    }

    v328 = v7 + 3;
    memcpy(v7 + 3, v326, v327);
    v7 = &v328[v327];
    v324 += 8;
    --v117;
  }

  while (v117);
LABEL_761:
  v329 = *(this + 26);
  if (v329 >= 1)
  {
    v330 = (this + 96);
    v331 = 8;
    do
    {
      while (1)
      {
        v332 = (*v330 & 1) != 0 ? (*v330 + v331 - 1) : (this + 96);
        v333 = *v332;
        v334 = *(*v332 + 23);
        if ((v334 & 0x8000000000000000) == 0 || (v334 = v333[1], v334 <= 127))
        {
          if (*a3 - v7 + 13 >= v334)
          {
            break;
          }
        }

        v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 209, v333, v7);
        v331 += 8;
        if (!--v329)
        {
          goto LABEL_774;
        }
      }

      *v7 = 3466;
      *(v7 + 2) = v334;
      if (*(v333 + 23) < 0)
      {
        v333 = *v333;
      }

      v335 = v7 + 3;
      memcpy(v7 + 3, v333, v334);
      v7 = &v335[v334];
      v331 += 8;
      --v329;
    }

    while (v329);
  }

LABEL_774:
  v336 = *(this + 32);
  if (v336)
  {
    v337 = 0;
    v338 = (this + 120);
    do
    {
      if (*v338)
      {
        v339 = (*v338 + 8 * v337 + 7);
      }

      else
      {
        v339 = (this + 120);
      }

      v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(0xD2, *v339, *(*v339 + 48), v7, a3, a6);
      ++v337;
    }

    while (v336 != v337);
  }

  if ((*(this + 41) & 1) == 0)
  {
    if ((*(this + 25) & 0x10) == 0)
    {
      goto LABEL_782;
    }

    goto LABEL_792;
  }

  if (*a3 <= v7)
  {
    v563 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v341 = *(this + 202);
    *v563 = 3480;
    v342 = v563 + 2;
    if (v341 < 0x80)
    {
      goto LABEL_790;
    }
  }

  else
  {
    v341 = *(this + 202);
    *v7 = 3480;
    v342 = v7 + 2;
    if (v341 < 0x80)
    {
LABEL_790:
      LOBYTE(v343) = v341;
      goto LABEL_791;
    }
  }

  do
  {
    *v342++ = v341 | 0x80;
    v343 = v341 >> 7;
    v564 = v341 >> 14;
    v341 >>= 7;
  }

  while (v564);
LABEL_791:
  *v342 = v343;
  v7 = (v342 + 1);
  if ((*(this + 25) & 0x10) == 0)
  {
LABEL_782:
    if ((*(this + 40) & 1) == 0)
    {
      goto LABEL_783;
    }

    goto LABEL_795;
  }

LABEL_792:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v344 = *(this + 340);
  *v7 = 3496;
  *(v7 + 2) = v344;
  v7 = (v7 + 3);
  if ((*(this + 40) & 1) == 0)
  {
LABEL_783:
    if ((*(this + 22) & 1) == 0)
    {
      goto LABEL_784;
    }

    goto LABEL_798;
  }

LABEL_795:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v345 = *(this + 773);
  *v7 = 3504;
  *(v7 + 2) = v345;
  v7 = (v7 + 3);
  if ((*(this + 22) & 1) == 0)
  {
LABEL_784:
    if ((*(this + 18) & 0x80) == 0)
    {
      goto LABEL_785;
    }

    goto LABEL_801;
  }

LABEL_798:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v346 = *(this + 309);
  *v7 = 3512;
  *(v7 + 2) = v346;
  v7 = (v7 + 3);
  if ((*(this + 18) & 0x80) == 0)
  {
LABEL_785:
    if ((*(this + 41) & 0x40) == 0)
    {
      goto LABEL_786;
    }

    goto LABEL_804;
  }

LABEL_801:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v347 = *(this + 271);
  *v7 = 3520;
  *(v7 + 2) = v347;
  v7 = (v7 + 3);
  if ((*(this + 41) & 0x40) == 0)
  {
LABEL_786:
    v340 = *(this + 38);
    if (v340 < 1)
    {
      goto LABEL_820;
    }

    goto LABEL_808;
  }

LABEL_804:
  if (*a3 <= v7)
  {
    v565 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v348 = *(this + 206);
    *v565 = 3528;
    v349 = v565 + 2;
    if (v348 < 0x80)
    {
      goto LABEL_806;
    }
  }

  else
  {
    v348 = *(this + 206);
    *v7 = 3528;
    v349 = v7 + 2;
    if (v348 < 0x80)
    {
LABEL_806:
      LOBYTE(v350) = v348;
      goto LABEL_807;
    }
  }

  do
  {
    *v349++ = v348 | 0x80;
    v350 = v348 >> 7;
    v566 = v348 >> 14;
    v348 >>= 7;
  }

  while (v566);
LABEL_807:
  *v349 = v350;
  v7 = (v349 + 1);
  v340 = *(this + 38);
  if (v340 < 1)
  {
    goto LABEL_820;
  }

LABEL_808:
  v351 = (this + 144);
  v352 = 8;
  do
  {
    while (1)
    {
      v353 = (*v351 & 1) != 0 ? (*v351 + v352 - 1) : (this + 144);
      v354 = *v353;
      v355 = *(*v353 + 23);
      if ((v355 & 0x8000000000000000) == 0 || (v355 = v354[1], v355 <= 127))
      {
        if (*a3 - v7 + 13 >= v355)
        {
          break;
        }
      }

      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 219, v354, v7);
      v352 += 8;
      if (!--v340)
      {
        goto LABEL_820;
      }
    }

    *v7 = 3546;
    *(v7 + 2) = v355;
    if (*(v354 + 23) < 0)
    {
      v354 = *v354;
    }

    v356 = v7 + 3;
    memcpy(v7 + 3, v354, v355);
    v7 = &v356[v355];
    v352 += 8;
    --v340;
  }

  while (v340);
LABEL_820:
  if ((*(this + 22) & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v370 = *(this + 310);
    *v7 = 3552;
    *(v7 + 2) = v370;
    v7 = (v7 + 3);
    if ((*(this + 41) & 0x20) == 0)
    {
LABEL_822:
      if ((*(this + 26) & 8) == 0)
      {
        goto LABEL_823;
      }

      goto LABEL_885;
    }
  }

  else if ((*(this + 41) & 0x20) == 0)
  {
    goto LABEL_822;
  }

  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v371 = *(this + 102);
  *v7 = 3561;
  *(v7 + 2) = v371;
  v7 = (v7 + 10);
  if ((*(this + 26) & 8) == 0)
  {
LABEL_823:
    if ((*(this + 23) & 2) == 0)
    {
      goto LABEL_824;
    }

    goto LABEL_888;
  }

LABEL_885:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v372 = *(this + 353);
  *v7 = 3568;
  *(v7 + 2) = v372;
  v7 = (v7 + 3);
  if ((*(this + 23) & 2) == 0)
  {
LABEL_824:
    if ((*(this + 38) & 8) == 0)
    {
      goto LABEL_825;
    }

    goto LABEL_891;
  }

LABEL_888:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v373 = *(this + 318);
  *v7 = 3576;
  *(v7 + 2) = v373;
  v7 = (v7 + 3);
  if ((*(this + 38) & 8) == 0)
  {
LABEL_825:
    if ((*(this + 26) & 4) == 0)
    {
      goto LABEL_826;
    }

    goto LABEL_894;
  }

LABEL_891:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v374 = *(this + 747);
  *v7 = 3712;
  *(v7 + 2) = v374;
  v7 = (v7 + 3);
  if ((*(this + 26) & 4) == 0)
  {
LABEL_826:
    v357 = *(this + 10);
    if ((v357 & 0x10000) == 0)
    {
      goto LABEL_827;
    }

    goto LABEL_897;
  }

LABEL_894:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v375 = *(this + 352);
  *v7 = 3720;
  *(v7 + 2) = v375;
  v7 = (v7 + 3);
  v357 = *(this + 10);
  if ((v357 & 0x10000) == 0)
  {
LABEL_827:
    if ((v357 & 0x8000) == 0)
    {
      goto LABEL_828;
    }

    goto LABEL_900;
  }

LABEL_897:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v376 = *(this + 104);
  *v7 = 3729;
  *(v7 + 2) = v376;
  v7 = (v7 + 10);
  if ((v357 & 0x8000) == 0)
  {
LABEL_828:
    if ((*(this + 22) & 0x10) == 0)
    {
      goto LABEL_829;
    }

    goto LABEL_904;
  }

LABEL_900:
  if (*a3 <= v7)
  {
    v567 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v377 = *(this + 207);
    *v567 = 3736;
    v378 = v567 + 2;
    if (v377 < 0x80)
    {
      goto LABEL_902;
    }
  }

  else
  {
    v377 = *(this + 207);
    *v7 = 3736;
    v378 = v7 + 2;
    if (v377 < 0x80)
    {
LABEL_902:
      LOBYTE(v379) = v377;
      goto LABEL_903;
    }
  }

  do
  {
    *v378++ = v377 | 0x80;
    v379 = v377 >> 7;
    v568 = v377 >> 14;
    v377 >>= 7;
  }

  while (v568);
LABEL_903:
  *v378 = v379;
  v7 = (v378 + 1);
  if ((*(this + 22) & 0x10) == 0)
  {
LABEL_829:
    if ((*(this + 42) & 4) == 0)
    {
      goto LABEL_830;
    }

    goto LABEL_907;
  }

LABEL_904:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v380 = *(this + 313);
  *v7 = 3744;
  *(v7 + 2) = v380;
  v7 = (v7 + 3);
  if ((*(this + 42) & 4) == 0)
  {
LABEL_830:
    if ((*(this + 25) & 1) == 0)
    {
      goto LABEL_831;
    }

    goto LABEL_911;
  }

LABEL_907:
  if (*a3 <= v7)
  {
    v569 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v381 = *(this + 212);
    *v569 = 3752;
    v382 = v569 + 2;
    if (v381 < 0x80)
    {
      goto LABEL_909;
    }
  }

  else
  {
    v381 = *(this + 212);
    *v7 = 3752;
    v382 = v7 + 2;
    if (v381 < 0x80)
    {
LABEL_909:
      LOBYTE(v383) = v381;
      goto LABEL_910;
    }
  }

  do
  {
    *v382++ = v381 | 0x80;
    v383 = v381 >> 7;
    v570 = v381 >> 14;
    v381 >>= 7;
  }

  while (v570);
LABEL_910:
  *v382 = v383;
  v7 = (v382 + 1);
  if ((*(this + 25) & 1) == 0)
  {
LABEL_831:
    v358 = *(this + 10);
    if ((v358 & 0x20000) == 0)
    {
      goto LABEL_832;
    }

    goto LABEL_914;
  }

LABEL_911:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v384 = *(this + 336);
  *v7 = 3760;
  *(v7 + 2) = v384;
  v7 = (v7 + 3);
  v358 = *(this + 10);
  if ((v358 & 0x20000) == 0)
  {
LABEL_832:
    if ((v358 & 0x800) == 0)
    {
      goto LABEL_833;
    }

    goto LABEL_917;
  }

LABEL_914:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v385 = *(this + 105);
  *v7 = 3777;
  *(v7 + 2) = v385;
  v7 = (v7 + 10);
  if ((v358 & 0x800) == 0)
  {
LABEL_833:
    if ((v358 & 0x1000) == 0)
    {
      goto LABEL_834;
    }

    goto LABEL_920;
  }

LABEL_917:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v386 = *(this + 814);
  *v7 = 3784;
  *(v7 + 2) = v386;
  v7 = (v7 + 3);
  if ((v358 & 0x1000) == 0)
  {
LABEL_834:
    if ((*(this + 26) & 1) == 0)
    {
      goto LABEL_835;
    }

    goto LABEL_923;
  }

LABEL_920:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v387 = *(this + 815);
  *v7 = 3792;
  *(v7 + 2) = v387;
  v7 = (v7 + 3);
  if ((*(this + 26) & 1) == 0)
  {
LABEL_835:
    if ((*(this + 23) & 0x40) == 0)
    {
      goto LABEL_836;
    }

    goto LABEL_927;
  }

LABEL_923:
  if (*a3 <= v7)
  {
    v571 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v388 = *(this + 86);
    *v571 = 3800;
    v389 = v571 + 2;
    if (v388 < 0x80)
    {
      goto LABEL_925;
    }
  }

  else
  {
    v388 = *(this + 86);
    *v7 = 3800;
    v389 = v7 + 2;
    if (v388 < 0x80)
    {
LABEL_925:
      LOBYTE(v390) = v388;
      goto LABEL_926;
    }
  }

  do
  {
    *v389++ = v388 | 0x80;
    v390 = v388 >> 7;
    v572 = v388 >> 14;
    v388 >>= 7;
  }

  while (v572);
LABEL_926:
  *v389 = v390;
  v7 = (v389 + 1);
  if ((*(this + 23) & 0x40) == 0)
  {
LABEL_836:
    v359 = *(this + 10);
    if ((v359 & 0x100000) == 0)
    {
      goto LABEL_837;
    }

    goto LABEL_930;
  }

LABEL_927:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v391 = *(this + 323);
  *v7 = 3808;
  *(v7 + 2) = v391;
  v7 = (v7 + 3);
  v359 = *(this + 10);
  if ((v359 & 0x100000) == 0)
  {
LABEL_837:
    if ((v359 & 0x80000) == 0)
    {
      goto LABEL_838;
    }

    goto LABEL_933;
  }

LABEL_930:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v392 = *(this + 107);
  *v7 = 3817;
  *(v7 + 2) = v392;
  v7 = (v7 + 10);
  if ((v359 & 0x80000) == 0)
  {
LABEL_838:
    if ((*(this + 26) & 2) == 0)
    {
      goto LABEL_839;
    }

    goto LABEL_937;
  }

LABEL_933:
  if (*a3 <= v7)
  {
    v573 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v393 = *(this + 213);
    *v573 = 3824;
    v394 = v573 + 2;
    if (v393 < 0x80)
    {
      goto LABEL_935;
    }
  }

  else
  {
    v393 = *(this + 213);
    *v7 = 3824;
    v394 = v7 + 2;
    if (v393 < 0x80)
    {
LABEL_935:
      LOBYTE(v395) = v393;
      goto LABEL_936;
    }
  }

  do
  {
    *v394++ = v393 | 0x80;
    v395 = v393 >> 7;
    v574 = v393 >> 14;
    v393 >>= 7;
  }

  while (v574);
LABEL_936:
  *v394 = v395;
  v7 = (v394 + 1);
  if ((*(this + 26) & 2) == 0)
  {
LABEL_839:
    if ((*(this + 23) & 0x20) == 0)
    {
      goto LABEL_840;
    }

    goto LABEL_941;
  }

LABEL_937:
  if (*a3 <= v7)
  {
    v575 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v396 = *(this + 87);
    *v575 = 3832;
    v397 = v575 + 2;
    if (v396 < 0x80)
    {
      goto LABEL_939;
    }
  }

  else
  {
    v396 = *(this + 87);
    *v7 = 3832;
    v397 = v7 + 2;
    if (v396 < 0x80)
    {
LABEL_939:
      LOBYTE(v398) = v396;
      goto LABEL_940;
    }
  }

  do
  {
    *v397++ = v396 | 0x80;
    v398 = v396 >> 7;
    v576 = v396 >> 14;
    v396 >>= 7;
  }

  while (v576);
LABEL_940:
  *v397 = v398;
  v7 = (v397 + 1);
  if ((*(this + 23) & 0x20) == 0)
  {
LABEL_840:
    if ((*(this + 42) & 0x20) == 0)
    {
      goto LABEL_841;
    }

    goto LABEL_944;
  }

LABEL_941:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v399 = *(this + 322);
  *v7 = 3968;
  *(v7 + 2) = v399;
  v7 = (v7 + 3);
  if ((*(this + 42) & 0x20) == 0)
  {
LABEL_841:
    v360 = *(this + 6);
    if ((v360 & 0x200000) == 0)
    {
      goto LABEL_842;
    }

    goto LABEL_947;
  }

LABEL_944:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v400 = *(this + 108);
  *v7 = 3985;
  *(v7 + 2) = v400;
  v7 = (v7 + 10);
  v360 = *(this + 6);
  if ((v360 & 0x200000) == 0)
  {
LABEL_842:
    if ((v360 & 0x400000) == 0)
    {
      goto LABEL_843;
    }

    goto LABEL_951;
  }

LABEL_947:
  if (*a3 <= v7)
  {
    v577 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v401 = *(this + 89);
    *v577 = 4000;
    v402 = v577 + 2;
    if (v401 < 0x80)
    {
      goto LABEL_949;
    }
  }

  else
  {
    v401 = *(this + 89);
    *v7 = 4000;
    v402 = v7 + 2;
    if (v401 < 0x80)
    {
LABEL_949:
      LOBYTE(v403) = v401;
      goto LABEL_950;
    }
  }

  do
  {
    *v402++ = v401 | 0x80;
    v403 = v401 >> 7;
    v578 = v401 >> 14;
    v401 >>= 7;
  }

  while (v578);
LABEL_950:
  *v402 = v403;
  v7 = (v402 + 1);
  if ((v360 & 0x400000) == 0)
  {
LABEL_843:
    v361 = *(this + 10);
    if ((v361 & 0x400000) == 0)
    {
      goto LABEL_844;
    }

    goto LABEL_954;
  }

LABEL_951:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v404 = *(this + 45);
  *v7 = 4025;
  *(v7 + 2) = v404;
  v7 = (v7 + 10);
  v361 = *(this + 10);
  if ((v361 & 0x400000) == 0)
  {
LABEL_844:
    if ((v361 & 0x800000) == 0)
    {
      goto LABEL_845;
    }

    goto LABEL_957;
  }

LABEL_954:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v405 = *(this + 109);
  *v7 = 4033;
  *(v7 + 2) = v405;
  v7 = (v7 + 10);
  if ((v361 & 0x800000) == 0)
  {
LABEL_845:
    if ((*(this + 39) & 2) == 0)
    {
      goto LABEL_846;
    }

    goto LABEL_961;
  }

LABEL_957:
  if (*a3 <= v7)
  {
    v579 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v406 = *(this + 220);
    *v579 = 4040;
    v407 = v579 + 2;
    if (v406 < 0x80)
    {
      goto LABEL_959;
    }
  }

  else
  {
    v406 = *(this + 220);
    *v7 = 4040;
    v407 = v7 + 2;
    if (v406 < 0x80)
    {
LABEL_959:
      LOBYTE(v408) = v406;
      goto LABEL_960;
    }
  }

  do
  {
    *v407++ = v406 | 0x80;
    v408 = v406 >> 7;
    v580 = v406 >> 14;
    v406 >>= 7;
  }

  while (v580);
LABEL_960:
  *v407 = v408;
  v7 = (v407 + 1);
  if ((*(this + 39) & 2) == 0)
  {
LABEL_846:
    v362 = *(this + 5);
    if ((v362 & 0x800) == 0)
    {
      goto LABEL_847;
    }

    goto LABEL_964;
  }

LABEL_961:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v409 = *(this + 753);
  *v7 = 4048;
  *(v7 + 2) = v409;
  v7 = (v7 + 3);
  v362 = *(this + 5);
  if ((v362 & 0x800) == 0)
  {
LABEL_847:
    if ((v362 & 0x200000) == 0)
    {
      goto LABEL_848;
    }

    goto LABEL_967;
  }

LABEL_964:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v410 = *(this + 294);
  *v7 = 4064;
  *(v7 + 2) = v410;
  v7 = (v7 + 3);
  if ((v362 & 0x200000) == 0)
  {
LABEL_848:
    if ((v362 & 0x80000000) == 0)
    {
      goto LABEL_849;
    }

    goto LABEL_970;
  }

LABEL_967:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v411 = *(this + 314);
  *v7 = 4072;
  *(v7 + 2) = v411;
  v7 = (v7 + 3);
  if ((v362 & 0x80000000) == 0)
  {
LABEL_849:
    v363 = *(this + 10);
    if ((v363 & 0x1000000) == 0)
    {
      goto LABEL_850;
    }

    goto LABEL_973;
  }

LABEL_970:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v412 = *(this + 324);
  *v7 = 4088;
  *(v7 + 2) = v412;
  v7 = (v7 + 3);
  v363 = *(this + 10);
  if ((v363 & 0x1000000) == 0)
  {
LABEL_850:
    if ((v363 & 0x2000000) == 0)
    {
      goto LABEL_851;
    }

    goto LABEL_977;
  }

LABEL_973:
  if (*a3 <= v7)
  {
    v581 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v413 = *(this + 221);
    *v581 = 4224;
    v414 = v581 + 2;
    if (v413 < 0x80)
    {
      goto LABEL_975;
    }
  }

  else
  {
    v413 = *(this + 221);
    *v7 = 4224;
    v414 = v7 + 2;
    if (v413 < 0x80)
    {
LABEL_975:
      LOBYTE(v415) = v413;
      goto LABEL_976;
    }
  }

  do
  {
    *v414++ = v413 | 0x80;
    v415 = v413 >> 7;
    v582 = v413 >> 14;
    v413 >>= 7;
  }

  while (v582);
LABEL_976:
  *v414 = v415;
  v7 = (v414 + 1);
  if ((v363 & 0x2000000) == 0)
  {
LABEL_851:
    if ((v363 & 0x4000000) == 0)
    {
      goto LABEL_852;
    }

    goto LABEL_981;
  }

LABEL_977:
  if (*a3 <= v7)
  {
    v583 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v416 = *(this + 222);
    *v583 = 4232;
    v417 = v583 + 2;
    if (v416 < 0x80)
    {
      goto LABEL_979;
    }
  }

  else
  {
    v416 = *(this + 222);
    *v7 = 4232;
    v417 = v7 + 2;
    if (v416 < 0x80)
    {
LABEL_979:
      LOBYTE(v418) = v416;
      goto LABEL_980;
    }
  }

  do
  {
    *v417++ = v416 | 0x80;
    v418 = v416 >> 7;
    v584 = v416 >> 14;
    v416 >>= 7;
  }

  while (v584);
LABEL_980:
  *v417 = v418;
  v7 = (v417 + 1);
  if ((v363 & 0x4000000) == 0)
  {
LABEL_852:
    if ((v363 & 0x8000000) == 0)
    {
      goto LABEL_853;
    }

    goto LABEL_985;
  }

LABEL_981:
  if (*a3 <= v7)
  {
    v585 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v419 = *(this + 223);
    *v585 = 4240;
    v420 = v585 + 2;
    if (v419 < 0x80)
    {
      goto LABEL_983;
    }
  }

  else
  {
    v419 = *(this + 223);
    *v7 = 4240;
    v420 = v7 + 2;
    if (v419 < 0x80)
    {
LABEL_983:
      LOBYTE(v421) = v419;
      goto LABEL_984;
    }
  }

  do
  {
    *v420++ = v419 | 0x80;
    v421 = v419 >> 7;
    v586 = v419 >> 14;
    v419 >>= 7;
  }

  while (v586);
LABEL_984:
  *v420 = v421;
  v7 = (v420 + 1);
  if ((v363 & 0x8000000) == 0)
  {
LABEL_853:
    if ((v363 & 0x10000000) == 0)
    {
      goto LABEL_854;
    }

    goto LABEL_988;
  }

LABEL_985:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v422 = *(this + 112);
  *v7 = 4249;
  *(v7 + 2) = v422;
  v7 = (v7 + 10);
  if ((v363 & 0x10000000) == 0)
  {
LABEL_854:
    if ((v363 & 0x20000000) == 0)
    {
      goto LABEL_855;
    }

    goto LABEL_992;
  }

LABEL_988:
  if (*a3 <= v7)
  {
    v587 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v423 = *(this + 226);
    *v587 = 4256;
    v424 = v587 + 2;
    if (v423 < 0x80)
    {
      goto LABEL_990;
    }
  }

  else
  {
    v423 = *(this + 226);
    *v7 = 4256;
    v424 = v7 + 2;
    if (v423 < 0x80)
    {
LABEL_990:
      LOBYTE(v425) = v423;
      goto LABEL_991;
    }
  }

  do
  {
    *v424++ = v423 | 0x80;
    v425 = v423 >> 7;
    v588 = v423 >> 14;
    v423 >>= 7;
  }

  while (v588);
LABEL_991:
  *v424 = v425;
  v7 = (v424 + 1);
  if ((v363 & 0x20000000) == 0)
  {
LABEL_855:
    v364 = *(this + 6);
    if ((v364 & 4) == 0)
    {
      goto LABEL_856;
    }

    goto LABEL_996;
  }

LABEL_992:
  if (*a3 <= v7)
  {
    v589 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v426 = *(this + 227);
    *v589 = 4264;
    v427 = v589 + 2;
    if (v426 < 0x80)
    {
      goto LABEL_994;
    }
  }

  else
  {
    v426 = *(this + 227);
    *v7 = 4264;
    v427 = v7 + 2;
    if (v426 < 0x80)
    {
LABEL_994:
      LOBYTE(v428) = v426;
      goto LABEL_995;
    }
  }

  do
  {
    *v427++ = v426 | 0x80;
    v428 = v426 >> 7;
    v590 = v426 >> 14;
    v426 >>= 7;
  }

  while (v590);
LABEL_995:
  *v427 = v428;
  v7 = (v427 + 1);
  v364 = *(this + 6);
  if ((v364 & 4) == 0)
  {
LABEL_856:
    if ((v364 & 0x200) == 0)
    {
      goto LABEL_857;
    }

    goto LABEL_999;
  }

LABEL_996:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v429 = *(this + 327);
  *v7 = 4272;
  *(v7 + 2) = v429;
  v7 = (v7 + 3);
  if ((v364 & 0x200) == 0)
  {
LABEL_857:
    if ((*(this + 44) & 1) == 0)
    {
      goto LABEL_858;
    }

    goto LABEL_1002;
  }

LABEL_999:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v430 = *(this + 337);
  *v7 = 4280;
  *(v7 + 2) = v430;
  v7 = (v7 + 3);
  if ((*(this + 44) & 1) == 0)
  {
LABEL_858:
    if ((*(this + 39) & 1) == 0)
    {
      goto LABEL_859;
    }

    goto LABEL_1006;
  }

LABEL_1002:
  if (*a3 <= v7)
  {
    v591 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v431 = *(this + 232);
    *v591 = 4288;
    v432 = v591 + 2;
    if (v431 < 0x80)
    {
      goto LABEL_1004;
    }
  }

  else
  {
    v431 = *(this + 232);
    *v7 = 4288;
    v432 = v7 + 2;
    if (v431 < 0x80)
    {
LABEL_1004:
      LOBYTE(v433) = v431;
      goto LABEL_1005;
    }
  }

  do
  {
    *v432++ = v431 | 0x80;
    v433 = v431 >> 7;
    v592 = v431 >> 14;
    v431 >>= 7;
  }

  while (v592);
LABEL_1005:
  *v432 = v433;
  v7 = (v432 + 1);
  if ((*(this + 39) & 1) == 0)
  {
LABEL_859:
    v365 = *(this + 10);
    if ((v365 & 0x40000000) == 0)
    {
      goto LABEL_860;
    }

    goto LABEL_1009;
  }

LABEL_1006:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v434 = *(this + 752);
  *v7 = 4296;
  *(v7 + 2) = v434;
  v7 = (v7 + 3);
  v365 = *(this + 10);
  if ((v365 & 0x40000000) == 0)
  {
LABEL_860:
    if ((v365 & 0x80000000) == 0)
    {
      goto LABEL_861;
    }

    goto LABEL_1012;
  }

LABEL_1009:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v435 = *(this + 114);
  *v7 = 4305;
  *(v7 + 2) = v435;
  v7 = (v7 + 10);
  if ((v365 & 0x80000000) == 0)
  {
LABEL_861:
    if ((*(this + 25) & 4) == 0)
    {
      goto LABEL_862;
    }

    goto LABEL_1015;
  }

LABEL_1012:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v436 = *(this + 115);
  *v7 = 4313;
  *(v7 + 2) = v436;
  v7 = (v7 + 10);
  if ((*(this + 25) & 4) == 0)
  {
LABEL_862:
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_863;
    }

    goto LABEL_1018;
  }

LABEL_1015:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v437 = *(this + 338);
  *v7 = 4320;
  *(v7 + 2) = v437;
  v7 = (v7 + 3);
  if ((*(this + 40) & 2) == 0)
  {
LABEL_863:
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_864;
    }

    goto LABEL_1021;
  }

LABEL_1018:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v438 = *(this + 774);
  *v7 = 4328;
  *(v7 + 2) = v438;
  v7 = (v7 + 3);
  if ((*(this + 44) & 2) == 0)
  {
LABEL_864:
    if ((*(this + 25) & 0x20) == 0)
    {
      goto LABEL_865;
    }

    goto LABEL_1025;
  }

LABEL_1021:
  if (*a3 <= v7)
  {
    v593 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v439 = *(this + 233);
    *v593 = 4336;
    v440 = v593 + 2;
    if (v439 < 0x80)
    {
      goto LABEL_1023;
    }
  }

  else
  {
    v439 = *(this + 233);
    *v7 = 4336;
    v440 = v7 + 2;
    if (v439 < 0x80)
    {
LABEL_1023:
      LOBYTE(v441) = v439;
      goto LABEL_1024;
    }
  }

  do
  {
    *v440++ = v439 | 0x80;
    v441 = v439 >> 7;
    v594 = v439 >> 14;
    v439 >>= 7;
  }

  while (v594);
LABEL_1024:
  *v440 = v441;
  v7 = (v440 + 1);
  if ((*(this + 25) & 0x20) == 0)
  {
LABEL_865:
    v366 = *(this + 11);
    if ((v366 & 0x10) == 0)
    {
      goto LABEL_866;
    }

    goto LABEL_1028;
  }

LABEL_1025:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v442 = *(this + 341);
  *v7 = 4344;
  *(v7 + 2) = v442;
  v7 = (v7 + 3);
  v366 = *(this + 11);
  if ((v366 & 0x10) == 0)
  {
LABEL_866:
    if ((v366 & 4) == 0)
    {
      goto LABEL_867;
    }

    goto LABEL_1032;
  }

LABEL_1028:
  if (*a3 <= v7)
  {
    v595 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v443 = *(this + 238);
    *v595 = 4480;
    v444 = v595 + 2;
    if (v443 < 0x80)
    {
      goto LABEL_1030;
    }
  }

  else
  {
    v443 = *(this + 238);
    *v7 = 4480;
    v444 = v7 + 2;
    if (v443 < 0x80)
    {
LABEL_1030:
      LOBYTE(v445) = v443;
      goto LABEL_1031;
    }
  }

  do
  {
    *v444++ = v443 | 0x80;
    v445 = v443 >> 7;
    v596 = v443 >> 14;
    v443 >>= 7;
  }

  while (v596);
LABEL_1031:
  *v444 = v445;
  v7 = (v444 + 1);
  if ((v366 & 4) == 0)
  {
LABEL_867:
    if ((v366 & 8) == 0)
    {
      goto LABEL_868;
    }

    goto LABEL_1035;
  }

LABEL_1032:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v446 = *(this + 117);
  *v7 = 4489;
  *(v7 + 2) = v446;
  v7 = (v7 + 10);
  if ((v366 & 8) == 0)
  {
LABEL_868:
    if ((v366 & 0x40) == 0)
    {
      goto LABEL_869;
    }

    goto LABEL_1038;
  }

LABEL_1035:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v447 = *(this + 118);
  *v7 = 4497;
  *(v7 + 2) = v447;
  v7 = (v7 + 10);
  if ((v366 & 0x40) == 0)
  {
LABEL_869:
    if ((v366 & 0x20) == 0)
    {
      goto LABEL_870;
    }

    goto LABEL_1041;
  }

LABEL_1038:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v448 = *(this + 120);
  *v7 = 4505;
  *(v7 + 2) = v448;
  v7 = (v7 + 10);
  if ((v366 & 0x20) == 0)
  {
LABEL_870:
    v367 = *(this + 6);
    if ((v367 & 0x40) == 0)
    {
      goto LABEL_871;
    }

    goto LABEL_1045;
  }

LABEL_1041:
  if (*a3 <= v7)
  {
    v597 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v449 = *(this + 239);
    *v597 = 4512;
    v450 = v597 + 2;
    if (v449 < 0x80)
    {
      goto LABEL_1043;
    }
  }

  else
  {
    v449 = *(this + 239);
    *v7 = 4512;
    v450 = v7 + 2;
    if (v449 < 0x80)
    {
LABEL_1043:
      LOBYTE(v451) = v449;
      goto LABEL_1044;
    }
  }

  do
  {
    *v450++ = v449 | 0x80;
    v451 = v449 >> 7;
    v598 = v449 >> 14;
    v449 >>= 7;
  }

  while (v598);
LABEL_1044:
  *v450 = v451;
  v7 = (v450 + 1);
  v367 = *(this + 6);
  if ((v367 & 0x40) == 0)
  {
LABEL_871:
    if ((v367 & 0x100000) == 0)
    {
      goto LABEL_872;
    }

    goto LABEL_1048;
  }

LABEL_1045:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v452 = *(this + 331);
  *v7 = 4520;
  *(v7 + 2) = v452;
  v7 = (v7 + 3);
  if ((v367 & 0x100000) == 0)
  {
LABEL_872:
    if ((*(this + 37) & 2) == 0)
    {
      goto LABEL_873;
    }

    goto LABEL_1051;
  }

LABEL_1048:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v453 = *(this + 354);
  *v7 = 4528;
  *(v7 + 2) = v453;
  v7 = (v7 + 3);
  if ((*(this + 37) & 2) == 0)
  {
LABEL_873:
    if ((*(this + 26) & 0x80) == 0)
    {
      goto LABEL_874;
    }

    goto LABEL_1054;
  }

LABEL_1051:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v454 = *(this + 724);
  *v7 = 4536;
  *(v7 + 2) = v454;
  v7 = (v7 + 3);
  if ((*(this + 26) & 0x80) == 0)
  {
LABEL_874:
    if ((*(this + 44) & 0x80) == 0)
    {
      goto LABEL_875;
    }

    goto LABEL_1058;
  }

LABEL_1054:
  if (*a3 <= v7)
  {
    v599 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v455 = *(this + 92);
    *v599 = 4544;
    v456 = v599 + 2;
    if (v455 < 0x80)
    {
      goto LABEL_1056;
    }
  }

  else
  {
    v455 = *(this + 92);
    *v7 = 4544;
    v456 = v7 + 2;
    if (v455 < 0x80)
    {
LABEL_1056:
      LOBYTE(v457) = v455;
      goto LABEL_1057;
    }
  }

  do
  {
    *v456++ = v455 | 0x80;
    v457 = v455 >> 7;
    v600 = v455 >> 14;
    v455 >>= 7;
  }

  while (v600);
LABEL_1057:
  *v456 = v457;
  v7 = (v456 + 1);
  if ((*(this + 44) & 0x80) == 0)
  {
LABEL_875:
    if ((*(this + 27) & 1) == 0)
    {
      goto LABEL_876;
    }

    goto LABEL_1061;
  }

LABEL_1058:
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  v458 = *(this + 121);
  *v7 = 4553;
  *(v7 + 2) = v458;
  v7 = (v7 + 10);
  if ((*(this + 27) & 1) == 0)
  {
LABEL_876:
    if ((*(this + 38) & 0x10) == 0)
    {
      goto LABEL_877;
    }

LABEL_1065:
    if (*a3 <= v7)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    }

    v462 = *(this + 748);
    *v7 = 4568;
    *(v7 + 2) = v462;
    v7 = (v7 + 3);
    v368 = *(this + 1);
    if ((v368 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_1068;
  }

LABEL_1061:
  if (*a3 <= v7)
  {
    v601 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
    v459 = *(this + 93);
    *v601 = 4560;
    v460 = v601 + 2;
    if (v459 < 0x80)
    {
      goto LABEL_1063;
    }
  }

  else
  {
    v459 = *(this + 93);
    *v7 = 4560;
    v460 = v7 + 2;
    if (v459 < 0x80)
    {
LABEL_1063:
      LOBYTE(v461) = v459;
      goto LABEL_1064;
    }
  }

  do
  {
    *v460++ = v459 | 0x80;
    v461 = v459 >> 7;
    v602 = v459 >> 14;
    v459 >>= 7;
  }

  while (v602);
LABEL_1064:
  *v460 = v461;
  v7 = (v460 + 1);
  if ((*(this + 38) & 0x10) != 0)
  {
    goto LABEL_1065;
  }

LABEL_877:
  v368 = *(this + 1);
  if ((v368 & 1) == 0)
  {
    return v7;
  }

LABEL_1068:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v368 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}