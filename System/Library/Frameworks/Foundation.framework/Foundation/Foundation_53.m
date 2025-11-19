uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 27;
    if (v13 != 27)
    {
      v15 = *(*(v3 + 56) + 8 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v15 == 0;

    if (!v15)
    {
      return v17;
    }

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = (*(a2 + 56) + 16 * v18);
    if (*v20 == v16 && v15 == v20[1])
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return v17;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_25:

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    v24 = v23[1];
    if (v24)
    {
      if (!v18)
      {
        return 0;
      }

      if (*v23 == v19 && v24 == v18)
      {

        result = v13;
        v7 = v27;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = v13;
        v7 = v27;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      result = v13;
      v7 = v27;
      if (v18)
      {
        goto LABEL_25;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation6LocaleV14IdentifierTypeO_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v15 == 0;

    if (!v15)
    {
      return v17;
    }

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = (*(a2 + 56) + 16 * v18);
    if (*v20 == v16 && v15 == v20[1])
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return v17;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SSSgTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];

    v17 = v15 == 1;
    if (v15 == 1)
    {
      return v17;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v18 & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v19 = (*(a2 + 56) + 16 * result);
    v20 = v19[1];
    if (v20)
    {
      if (!v15)
      {
        return v17;
      }

      if (*v19 == v16 && v20 == v15)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          return v17;
        }
      }
    }

    else if (v15)
    {
      goto LABEL_27;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SpySvSgGTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICUDateIntervalFormatterC9SignatureVAESgGMd);
  v68 = a2;
  v101 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (*(v5 + 16))
  {
    v63 = v2;
    v6 = 0;
    result = (v5 + 64);
    v8 = 1 << *(v5 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v5 + 64);
    v64 = (v8 + 63) >> 6;
    v65 = (v5 + 64);
    v66 = v5;
    v67 = v101 + 64;
    while (v10)
    {
      v41 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_15:
      v45 = v41 | (v6 << 6);
      v70 = v42;
      if (v68)
      {
        v46 = *(v5 + 48) + 392 * v45;
        v79 = *v46;
        v80 = *(v46 + 16);
        v81 = *(v46 + 32);
        v82 = *(v46 + 48);
        v83 = *(v46 + 64);
        v84 = *(v46 + 80);
        v47 = *(v46 + 96);
        v85 = *(v46 + 104);
        v86 = *(v46 + 120);
        v87 = *(v46 + 136);
        v88 = *(v46 + 152);
        v89 = *(v46 + 168);
        v90 = *(v46 + 184);
        v48 = *(v46 + 200);
        v49 = *(v46 + 201);
        v91 = *(v46 + 208);
        v92 = *(v46 + 224);
        v93 = *(v46 + 240);
        v94 = *(v46 + 256);
        v95 = *(v46 + 280);
        v96 = *(v46 + 272);
        v51 = *(v46 + 288);
        v50 = *(v46 + 296);
        v97 = *(v46 + 312);
        v98 = *(v46 + 304);
        v73 = *(v46 + 328);
        v99 = *(v46 + 336);
        v100 = *(v46 + 320);
        v52 = *(v46 + 352);
        v75 = *(v46 + 360);
        v74 = *(v46 + 368);
        v76 = *(v46 + 376);
        v77 = *(v46 + 384);
        v71 = *(*(v5 + 56) + 8 * v45);
        v72 = *(v46 + 344);
      }

      else
      {
        memcpy(__dst, (*(v5 + 48) + 392 * v45), 0x188uLL);
        v53 = *(*(v5 + 56) + 8 * v45);
        v76 = *(&__dst[23] + 1);
        v77 = *&__dst[24];
        v74 = *&__dst[23];
        v75 = *(&__dst[22] + 1);
        v52 = LOBYTE(__dst[22]);
        v99 = *&__dst[21];
        v100 = *&__dst[20];
        v72 = *(&__dst[21] + 1);
        v73 = *(&__dst[20] + 1);
        v97 = *(&__dst[19] + 1);
        v98 = *&__dst[19];
        v95 = *(&__dst[17] + 1);
        v96 = *&__dst[17];
        v50 = *(&__dst[18] + 1);
        v51 = *&__dst[18];
        v93 = __dst[15];
        v94 = __dst[16];
        v91 = __dst[13];
        v92 = __dst[14];
        v49 = BYTE9(__dst[12]);
        v48 = BYTE8(__dst[12]);
        v89 = *(&__dst[10] + 8);
        v90 = *(&__dst[11] + 8);
        v87 = *(&__dst[8] + 8);
        v88 = *(&__dst[9] + 8);
        v85 = *(&__dst[6] + 8);
        v86 = *(&__dst[7] + 8);
        v47 = __dst[6];
        v83 = __dst[4];
        v84 = __dst[5];
        v81 = __dst[2];
        v82 = __dst[3];
        v79 = __dst[0];
        v80 = __dst[1];
        outlined init with copy of ICUDateIntervalFormatter.Signature(__dst, v102);
        v71 = v53;
      }

      Hasher.init(_seed:)();
      __dst[0] = v79;
      __dst[1] = v80;
      __dst[2] = v81;
      __dst[3] = v82;
      __dst[4] = v83;
      __dst[5] = v84;
      v69 = v47;
      LOBYTE(__dst[6]) = v47;
      *(&__dst[6] + 8) = v85;
      *(&__dst[7] + 8) = v86;
      *(&__dst[8] + 8) = v87;
      *(&__dst[9] + 8) = v88;
      *(&__dst[10] + 8) = v89;
      *(&__dst[11] + 8) = v90;
      v78 = v48;
      BYTE8(__dst[12]) = v48;
      BYTE9(__dst[12]) = v49;
      __dst[13] = v91;
      __dst[14] = v92;
      __dst[15] = v93;
      __dst[16] = v94;
      *&__dst[17] = v96;
      *(&__dst[17] + 1) = v95;
      *&__dst[18] = v51;
      *(&__dst[18] + 1) = v50;
      *&__dst[19] = v98;
      *(&__dst[19] + 1) = v97;
      *&__dst[20] = v100;
      *(&__dst[20] + 1) = v73;
      *&__dst[21] = v99;
      *(&__dst[21] + 1) = v72;
      Locale.Components.hash(into:)(v102);
      MEMORY[0x1865CD060](v52);
      String.hash(into:)();
      String.hash(into:)();
      v54 = Hasher._finalize()();
      v55 = -1 << *(v101 + 32);
      v56 = v54 & ~v55;
      v57 = v56 >> 6;
      if (((-1 << v56) & ~*(v67 + 8 * (v56 >> 6))) == 0)
      {
        v58 = 0;
        v59 = (63 - v55) >> 6;
        v12 = v76;
        v13 = v74;
        v14 = v99;
        v15 = v100;
        result = v73;
        v17 = v97;
        v16 = v98;
        v19 = v95;
        v18 = v96;
        v21 = v50;
        v20 = v51;
        v23 = v93;
        v22 = v94;
        v25 = v91;
        v24 = v92;
        v27 = v78;
        v26 = v49;
        v29 = v89;
        v28 = v90;
        v31 = v87;
        v30 = v88;
        v33 = v85;
        v32 = v86;
        v35 = v83;
        v34 = v84;
        v37 = v81;
        v36 = v82;
        v39 = v79;
        v38 = v80;
        while (++v57 != v59 || (v58 & 1) == 0)
        {
          v60 = v57 == v59;
          if (v57 == v59)
          {
            v57 = 0;
          }

          v58 |= v60;
          v61 = *(v67 + 8 * v57);
          if (v61 != -1)
          {
            v11 = __clz(__rbit64(~v61)) + (v57 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v56) & ~*(v67 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
      v12 = v76;
      v13 = v74;
      v14 = v99;
      v15 = v100;
      result = v73;
      v17 = v97;
      v16 = v98;
      v19 = v95;
      v18 = v96;
      v21 = v50;
      v20 = v51;
      v23 = v93;
      v22 = v94;
      v25 = v91;
      v24 = v92;
      v27 = v78;
      v26 = v49;
      v29 = v89;
      v28 = v90;
      v31 = v87;
      v30 = v88;
      v33 = v85;
      v32 = v86;
      v35 = v83;
      v34 = v84;
      v37 = v81;
      v36 = v82;
      v39 = v79;
      v38 = v80;
LABEL_7:
      *(v67 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v40 = *(v101 + 48) + 392 * v11;
      *v40 = v39;
      *(v40 + 16) = v38;
      *(v40 + 32) = v37;
      *(v40 + 48) = v36;
      *(v40 + 64) = v35;
      *(v40 + 80) = v34;
      *(v40 + 96) = v69;
      *(v40 + 120) = v32;
      *(v40 + 104) = v33;
      *(v40 + 152) = v30;
      *(v40 + 136) = v31;
      *(v40 + 184) = v28;
      *(v40 + 168) = v29;
      *(v40 + 200) = v27;
      *(v40 + 201) = v26;
      *(v40 + 208) = v25;
      *(v40 + 224) = v24;
      *(v40 + 240) = v23;
      *(v40 + 256) = v22;
      *(v40 + 272) = v18;
      *(v40 + 280) = v19;
      *(v40 + 288) = v20;
      *(v40 + 296) = v21;
      *(v40 + 304) = v16;
      *(v40 + 312) = v17;
      *(v40 + 320) = v15;
      *(v40 + 328) = result;
      *(v40 + 336) = v14;
      *(v40 + 344) = v72;
      *(v40 + 352) = v52;
      *(v40 + 360) = v75;
      *(v40 + 368) = v13;
      *(v40 + 376) = v12;
      *(v40 + 384) = v77;
      *(*(v101 + 56) + 8 * v11) = v71;
      ++*(v101 + 16);
      result = v65;
      v5 = v66;
      v10 = v70;
    }

    v43 = v6;
    while (1)
    {
      v6 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v6 >= v64)
      {
        break;
      }

      v44 = result[v6];
      ++v43;
      if (v44)
      {
        v41 = __clz(__rbit64(v44));
        v42 = (v44 - 1) & v44;
        goto LABEL_15;
      }
    }

    if ((v68 & 1) == 0)
    {

      v3 = v63;
      goto LABEL_34;
    }

    v62 = 1 << *(v5 + 32);
    v3 = v63;
    if (v62 >= 64)
    {
      bzero(result, ((v62 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v62;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v101;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

{
  v4 = type metadata accessor for CombineIdentifier();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v37 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = v15;
    do
    {
      v16 = v8;
      v17 = v38 * v10;
      v18 = v13;
      v19 = v14;
      v36(v7, *(a2 + 48) + v38 * v10, v4);
      lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier();
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v35)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v37)
      {
        if (v21 >= v37 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v38 * a1;
          v26 = v24 + v17 + v38;
          v27 = v38 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v38 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v37 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 392 * a1), a2, 0x188uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 96 * result);
  v6 = a2[3];
  v5[2] = a2[2];
  v5[3] = v6;
  v7 = a2[5];
  v5[4] = a2[4];
  v5[5] = v7;
  v8 = a2[1];
  *v5 = *a2;
  v5[1] = v8;
  v9 = a5[7] + 16 * result;
  *v9 = a3;
  *(v9 + 8) = a4 & 1;
  v10 = a5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v12;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a6[6] + 24 * a1;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  v10 = a6[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a5, v11);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

Swift::Int specialized Set.hash(into:)(uint64_t a1, uint64_t a2)
{
  result = Hasher._finalize()();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](v12);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1865CD060](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.hash(into:)(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1865CD060](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v11 = Hasher._finalize()();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 48) + 4 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;
    Hasher._combine(_:)(v12);

    String.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1865CD060](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v5)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 8 * v11);
      v13 = *(*(a2 + 56) + 16 * v11 + 8);

      if (!v13)
      {
        break;
      }

      v5 &= v5 - 1;
      MEMORY[0x1865CD060](v12);
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1865CD060](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = *(*(a2 + 48) + 16 * v12 + 8);
      outlined init with copy of AttributedString._AttributeValue(*(a2 + 56) + 72 * v12, &v19);
      v17 = v22;
      v18 = v20;
      v15 = v21;
      v16 = v19;
      v14 = v23;

      if (!v13)
      {
        break;
      }

      v6 &= v6 - 1;
      v19 = v16;
      v20 = v18;
      v21 = v15;
      v22 = v17;
      v23 = v14;
      String.hash(into:)();

      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of AttributedString._AttributeValue(&v19);
      result = Hasher._finalize()();
      v9 ^= result;
      v10 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1865CD060](v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v25 = 0;
  v10 = 0;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(a2 + 48) + 16 * v12 + 8);
    v14 = (*(a2 + 56) + 80 * v12);
    v16 = v14[3];
    v15 = v14[4];
    v17 = v14[2];
    v29 = v14[1];
    v28 = *v14;
    v30 = v17;
    v31 = v16;
    v32 = v15;
    v23 = v16;
    v24 = v29;
    v21 = v17;
    v22 = v28;
    v18 = v15;

    outlined init with copy of Morphology._CustomPronoun(&v28, v26);
    if (!v13)
    {
LABEL_23:

      return MEMORY[0x1865CD060](v25);
    }

    v28 = v22;
    v29 = v24;
    v30 = v21;
    v31 = v23;
    v32 = v18;
    v19 = *(a1 + 48);
    v26[2] = *(a1 + 32);
    v26[3] = v19;
    v27 = *(a1 + 64);
    v20 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v20;
    String.hash(into:)();

    if (*(&v28 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(&v29 + 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v29 + 1))
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (*(&v30 + 1))
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    Hasher._combine(_:)(0);
    if (*(&v30 + 1))
    {
LABEL_15:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(&v31 + 1))
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    Hasher._combine(_:)(0);
    if (*(&v31 + 1))
    {
LABEL_16:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(&v32 + 1))
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    if (*(&v32 + 1))
    {
LABEL_4:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_5;
    }

LABEL_22:
    Hasher._combine(_:)(0);
LABEL_5:
    v7 &= v7 - 1;
    outlined destroy of Morphology._CustomPronoun(&v28);
    result = Hasher._finalize()();
    v25 ^= result;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_23;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a2 + 48) + v11);
    v13 = *(*(a2 + 56) + 16 * v11 + 8);

    if (v13 == 1)
    {
LABEL_14:

      return MEMORY[0x1865CD060](v8);
    }

    MEMORY[0x1865CD060](v12);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v5 &= v5 - 1;
    result = Hasher._finalize()();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v5)) | (v10 << 6);
      v12 = *(*(a2 + 48) + v11);
      v13 = *(*(a2 + 56) + 16 * v11 + 8);

      if (!v13)
      {
        break;
      }

      v5 &= v5 - 1;
      MEMORY[0x1865CD060](v12);
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1865CD060](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v13 = v9;
LABEL_12:
    v12 = *(*(a2 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))) + 8);

    String.hash(into:)();

    if (v12)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v6 &= v6 - 1;
    result = Hasher._finalize()();
    v9 = result ^ v13;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1865CD060](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v13 = v9;
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized Dictionary<>.hash(into:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_8:
      v18 = __clz(__rbit64(v15)) | (v17 << 6);
      v19 = *(*(a2 + 48) + v18);
      if (v19 == 27)
      {
        return MEMORY[0x1865CD060](v10);
      }

      v15 &= v15 - 1;
      v20 = *(*(a2 + 56) + 8 * v18);
      MEMORY[0x1865CD060](v19, a2, a3, a4, a5, a6, a7, a8, *v9);
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v10 ^= result;
      v11 = v17;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return MEMORY[0x1865CD060](v10);
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8)) | (v10 << 6);
    v12 = *(*(a2 + 56) + 8 * v11);
    v8 &= v8 - 1;
    Hasher._combine(_:)(*(*(a2 + 48) + 4 * v11));
    MEMORY[0x1865CD060](v12);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1865CD060](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue()
{
  result = lazy protocol witness table cache variable for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue;
  if (!lazy protocol witness table cache variable for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue;
  if (!lazy protocol witness table cache variable for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeContainer and conformance AttributeContainer()
{
  result = lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer;
  if (!lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier()
{
  result = lazy protocol witness table cache variable for type CombineIdentifier and conformance CombineIdentifier;
  if (!lazy protocol witness table cache variable for type CombineIdentifier and conformance CombineIdentifier)
  {
    type metadata accessor for CombineIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CombineIdentifier and conformance CombineIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle);
  }

  return result;
}

uint64_t AttributedString.mergeAttributes(_:mergePolicy:)(uint64_t *a1, char *a2)
{
  v3 = v2;
  v4 = &v55;
  v48 = *a1;
  v46 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  v7 = &static AttributedString.Guts._nextVersion;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v6 + 40);
    v60 = *(v6 + 24);
    v61 = v8;
    v62 = *(v6 + 56);
    v9 = *(v6 + 72);
    v10 = *(v6 + 80);
    v11 = *(v6 + 88);
    v12 = *(v6 + 96);
    type metadata accessor for AttributedString.Guts();
    v6 = swift_allocObject();
    v13 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v60, v49);
    v14 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v14);
    if (v9)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v13)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = v61;
        *(v6 + 24) = v60;
        *(v6 + 16) = add_explicit;
        *(v6 + 40) = v18;
        *(v6 + 56) = v62;
        *(v6 + 72) = v9;
        *(v6 + 80) = v10;
        *(v6 + 88) = v11;
        *(v6 + 96) = v12;
        *(v6 + 104) = MEMORY[0x1E69E7CC0];

        *v3 = v6;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *(v6 + 16) = atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    v19 = *(v6 + 24);
    v20 = *(v6 + 56);
    v4[4] = *(v6 + 40);
    v4[5] = v20;
    v4[3] = v19;
    v21 = *(v6 + 56);
    v22 = *(v6 + 64);
    v44 = *(v6 + 40);
    v45 = *(v6 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v4[1] = v44;
    v55 = v45;
    v56 = v21;
    v57 = v22;
    v23 = v4[4];
    v4[9] = v4[3];
    v4[10] = v23;
    v64 = v59;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v63, v49);
    v24 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(v58);
    v25 = *(v6 + 40);
    v52 = *(v6 + 24);
    v53 = v25;
    v54 = *(v6 + 56);
    swift_unknownObjectRetain();
    v26 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v27 = v26 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v6, v24 >> 11, v26 >> 11, v48, v46);

    result = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v48);
    if ((result & 1) == 0)
    {
      return result;
    }

    v29 = 1 << *(v48 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v48 + 64);
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    if (!v31)
    {
      goto LABEL_18;
    }

    do
    {
LABEL_16:
      while (1)
      {
        v34 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v48 + 56) + 72 * (v34 | (v33 << 6)), v49);
        v35 = v50;
        v4 = v51;
        outlined copy of AttributedString.AttributeRunBoundaries?(v50, v51);
        outlined destroy of AttributedString._AttributeValue(v49);
        if (v4 != 1)
        {
          break;
        }

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v38 = v7[2];
      v37 = v7[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v47 = v38 + 1;
        v41 = v7;
        v42 = v7[2];
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v41);
        v39 = v47;
        v38 = v42;
        v7 = v43;
      }

      v7[2] = v39;
      v40 = &v7[2 * v38];
      v40[4] = v35;
      v40[5] = v4;
    }

    while (v31);
LABEL_18:
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v36 >= v32)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v24 >> 11, v27, 0, v7);
      }

      v31 = *(v48 + 64 + 8 * v36);
      ++v33;
      if (v31)
      {
        v33 = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }
}

BOOL specialized Collection.isEmpty.getter()
{
  if (v0[1] != v0[15])
  {
    return 0;
  }

  v1 = v0[26];
  v2 = v0[12];
  v3 = v2 == 2;
  if (v1 != 2)
  {
    v3 = 0;
  }

  if (v2 == 2 || v1 == 2)
  {
    return v3;
  }

  else
  {
    return (v0[23] ^ v0[9]) < 0x400uLL;
  }
}

uint64_t AttributedString.init(_:attributes:)@<X0>(uint64_t *a1@<X4>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  BigString.init(_:)();
  result = AttributedString.init(_:attributes:)(v7, v3, v4, &v6);
  *a2 = v6;
  return result;
}

uint64_t AttributedString.init<A>(_:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  static AttributedString._bstring<A>(from:)(a1, a3, v11);
  AttributedString.init(_:attributes:)(v11, v7, v8, &v10);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a4 = v10;
  return result;
}

uint64_t static AttributedString._bstring<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == MEMORY[0x1E69E6158])
  {

    result = BigString.init(_:)();
  }

  else if (v6 == MEMORY[0x1E69E67B0])
  {

    result = BigString.init(_:)();
  }

  else
  {
    if (v6 == &type metadata for AttributedString.CharacterView)
    {
      v15 = *v5;
      v16 = *(v5 + 24);
      v46 = *(v5 + 8);
      v47 = v16;
      v17 = *(v5 + 56);
      v48 = *(v5 + 40);
      v49 = v17;
      v18 = *(v15 + 40);
      v43 = *(v15 + 24);
      v44 = v18;
      v45 = *(v15 + 56);
      swift_unknownObjectRetain();
      result = BigString.init(_:)();
      v12 = v33;
      v13 = v34;
      v14 = v35;
      goto LABEL_9;
    }

    v9 = v5;
    v10 = v6;
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd) == v6)
    {
      v19 = v9[7];
      v20 = v9[5];
      v49 = v9[6];
      v50 = v19;
      v21 = v9[7];
      v22 = v9[9];
      v51 = v9[8];
      v52 = v22;
      v23 = v9[3];
      v24 = v9[1];
      v45 = v9[2];
      v46 = v23;
      v25 = v9[3];
      v26 = v9[5];
      v47 = v9[4];
      v48 = v26;
      v27 = v9[1];
      v43 = *v9;
      v44 = v27;
      v39 = v49;
      v40 = v21;
      v28 = v9[9];
      v41 = v51;
      v42 = v28;
      v35 = v45;
      v36 = v25;
      v37 = v47;
      v38 = v20;
      v33 = v43;
      v34 = v24;
      outlined init with copy of FloatingPointRoundingRule?(&v43, v32, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
      Slice<>._characters.getter(v32);
      BigString.init(_:)();
      v30 = v54;
      v31 = v53;
      v29 = v55;
      result = outlined destroy of TermOfAddress?(&v43, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
      v14 = v29;
      v13 = v30;
      v12 = v31;
      goto LABEL_9;
    }

    (*(v4 + 16))(v8, v9, v10);
    result = BigString.init<A>(_:)();
  }

  v12 = v43;
  v13 = v44;
  v14 = v45;
LABEL_9:
  *a3 = v12;
  a3[1] = v13;
  a3[2] = v14;
  return result;
}

uint64_t AttributedString.init<A, B>(_:including:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, ValueMetadata *a3@<X3>, void (**a4)(void *__return_ptr, void, void)@<X5>, void *a5@<X8>)
{
  Description = a3[-1].Description;
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  Description[2](v13, a1, v14, v11);
  AttributedString.init<A, B>(_:including:)(v13, a2, a3, a4, &v17);

  result = (Description[1])(a1, a3);
  *a5 = v17;
  return result;
}

uint64_t AttributedString.init<A, B>(_:including:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, ValueMetadata *a3@<X3>, void (**a4)(void *__return_ptr, void, void)@<X5>, uint64_t *a5@<X8>)
{
  if (a3 == &type metadata for AttributedString || a3 == &type metadata for AttributedSubstring)
  {
    v10 = *a1;
  }

  else
  {
    (a4)[7](v17, a3, a4);
    v10 = *&v17[0];
  }

  (a4)[4](v17, a3, a4);
  (a4)[5](&v18, a3, a4);
  v17[2] = v18;
  v17[3] = v19;
  v11 = specialized AttributedString.Guts.copy(in:)(v17, v10);

  *a5 = v11;

  v12 = static AttributeScope.scopeDescription.getter(a2);

  v13 = *(v11 + 40);
  v18 = *(v11 + 24);
  v19 = v13;
  v20 = *(v11 + 56);
  result = BigString.UTF8View.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v11, 0, v15, v12);

    swift_bridgeObjectRelease_n();
    v16 = *(a3[-1].Description + 1);

    return v16(a1, a3);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance AttributedString@<X0>(void *a1@<X8>)
{
  BigString.init(_:)();
  result = AttributedString.init(_:attributes:)(v4, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v3);
  *a1 = v3;
  return result;
}

uint64_t AttributedString.setAttributes(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = &v53;
  v45 = a1[1];
  v46 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  v6 = &static AttributedString.Guts._nextVersion;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v5 + 40);
    v58 = *(v5 + 24);
    v59 = v7;
    v60 = *(v5 + 56);
    v8 = *(v5 + 72);
    v9 = *(v5 + 80);
    v10 = *(v5 + 88);
    v11 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v5 = swift_allocObject();
    v12 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v58, v47);
    v13 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v13);
    if (v8)
    {
      v14 = v10 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == v12)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v17 = v59;
        *(v5 + 24) = v58;
        *(v5 + 16) = add_explicit;
        *(v5 + 40) = v17;
        *(v5 + 56) = v60;
        *(v5 + 72) = v8;
        *(v5 + 80) = v9;
        *(v5 + 88) = v10;
        *(v5 + 96) = v11;
        *(v5 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_29:
    swift_once();
  }

  *(v5 + 16) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  v18 = *(v5 + 24);
  v19 = *(v5 + 56);
  v3[4] = *(v5 + 40);
  v3[5] = v19;
  v3[3] = v18;
  v20 = *(v5 + 56);
  v21 = *(v5 + 64);
  v43 = *(v5 + 40);
  v44 = *(v5 + 24);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  v3[1] = v43;
  v53 = v44;
  v54 = v20;
  v55 = v21;
  v22 = v3[4];
  v3[9] = v3[3];
  v3[10] = v22;
  v62 = v57;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v61, v47);
  v23 = BigString.UnicodeScalarView.index(roundingDown:)();
  outlined destroy of BigString(v56);
  v24 = *(v5 + 40);
  v50 = *(v5 + 24);
  v51 = v24;
  v52 = *(v5 + 56);
  swift_unknownObjectRetain();
  v25 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v3 = (v25 >> 11);
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v23 >> 11, v25 >> 11, (v25 >> 11) - (v23 >> 11), v46, v45);
  v26 = 1 << *(v46 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v46 + 64);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_15:
    while (1)
    {
      v31 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      outlined init with copy of AttributedString._AttributeValue(*(v46 + 56) + 72 * (v31 | (v30 << 6)), v47);
      v32 = v48;
      v33 = v49;
      outlined copy of AttributedString.AttributeRunBoundaries?(v48, v49);
      outlined destroy of AttributedString._AttributeValue(v47);
      if (v33 != 1)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v36 = v6[2];
    v35 = v6[3];
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v45 = v36 + 1;
      v39 = v6;
      v40 = v6[2];
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v39);
      v37 = v45;
      v36 = v40;
      v6 = v41;
    }

    v6[2] = v37;
    v38 = &v6[2 * v36];
    v38[4] = v32;
    v38[5] = v33;
  }

  while (v28);
  while (1)
  {
LABEL_17:
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v34 >= v29)
    {
      break;
    }

    v28 = *(v46 + 64 + 8 * v34);
    ++v30;
    if (v28)
    {
      v30 = v34;
      goto LABEL_15;
    }
  }

  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v23 >> 11, v3, 0, v6);
}

uint64_t AttributedString.replaceAttributes(_:with:)(__int128 *a1, __int128 *a2)
{
  v5 = *a1;
  v32 = *a2;
  v33 = v5;
  v6 = v5;
  v7 = v32;
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v5, v32) & 1) == 0 || (result = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(&v33 + 1), *(&v32 + 1)), (result & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = &static AttributedString.Guts._nextVersion;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v4 = v2;
    v13 = *(v10 + 40);
    v36 = *(v10 + 24);
    v37 = v13;
    v38 = *(v10 + 56);
    v14 = *(v10 + 72);
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    v3 = *(v10 + 96);
    type metadata accessor for AttributedString.Guts();
    v10 = swift_allocObject();
    v15 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v36, v35);
    v16 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v16);
    if (v14)
    {
      v17 = v12 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (v18 != v15)
    {
      goto LABEL_24;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v20 = v37;
      *(v10 + 24) = v36;
      *(v10 + 16) = add_explicit;
      *(v10 + 40) = v20;
      *(v10 + 56) = v38;
      *(v10 + 72) = v14;
      *(v10 + 80) = v11;
      *(v10 + 88) = v12;
      *(v10 + 96) = v3;
      v12 = &static AttributedString.Guts._nextVersion;
      v11 = MEMORY[0x1E69E7CC0];
      *(v10 + 104) = MEMORY[0x1E69E7CC0];

      *v4 = v10;
LABEL_13:
      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      v14 = 1;
      *(v10 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v6) & 1) == 0)
      {
        v14 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v7);
      }

      v34 = v11;
      v21 = *(v10 + 40);
      v35[0] = *(v10 + 24);
      v35[1] = v21;
      v35[2] = *(v10 + 56);
      v22 = BigString.UTF8View.count.getter();
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
    }

    v23 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v31[2] = v6;
    v31[3] = *(&v33 + 1);
    *&v25 = MEMORY[0x1EEE9AC00](v24);
    v28[1] = v25;
    v28[2] = v32;
    v29 = v14 & 1;
    v30 = &v34;

    AttributedString._InternalRunsSlice.updateEach(when:with:)(partial apply for closure #1 in AttributedString.replaceAttributes(_:with:), v31, partial apply for closure #2 in AttributedString.replaceAttributes(_:with:), v28, v10, 0, v23);

    v26 = *(v34 + 16);
    if (v26)
    {
      v27 = (v34 + 40);
      do
      {
        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(*(v27 - 1), *v27, 0, 0);
        v27 += 2;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t closure #2 in AttributedString.replaceAttributes(_:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v114 = v8;
  while (v13)
  {
LABEL_13:
    v26 = (*(v8 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
    v27 = *v26;
    v24 = v26[1];
    v130 = 0;
    memset(v129, 0, sizeof(v129));
    outlined init with copy of FloatingPointRoundingRule?(v129, &v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v115 = v24;
    v116 = v27;
    if (*(&v125 + 1))
    {
      v122[2] = v126;
      v122[3] = v127;
      v123 = v128;
      v122[0] = v124;
      v122[1] = v125;
      outlined init with copy of AttributedString._AttributeValue(v122, &v117);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a1;
      v30 = *a1;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v24);
      v33 = *(v30 + 16);
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v36 = v31;
      if (*(v30 + 24) >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v37 = v30;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v58 = static _DictionaryStorage.copy(original:)();
          v37 = v58;
          if (*(v30 + 16))
          {
            v59 = (v58 + 64);
            v60 = (v30 + 64);
            v61 = ((1 << *(v37 + 32)) + 63) >> 6;
            if (v37 != v30 || v59 >= &v60[8 * v61])
            {
              memmove(v59, v60, 8 * v61);
            }

            v62 = 0;
            *(v37 + 16) = *(v30 + 16);
            v63 = 1 << *(v30 + 32);
            if (v63 < 64)
            {
              v64 = ~(-1 << v63);
            }

            else
            {
              v64 = -1;
            }

            v65 = v64 & *(v30 + 64);
            v66 = (v63 + 63) >> 6;
            v99 = v66;
            if (v65)
            {
              do
              {
                v67 = __clz(__rbit64(v65));
                v108 = (v65 - 1) & v65;
LABEL_42:
                v70 = v67 | (v62 << 6);
                v102 = 16 * v70;
                v71 = (*(v30 + 48) + 16 * v70);
                v104 = v71[1];
                v106 = *v71;
                v100 = 72 * v70;
                outlined init with copy of AttributedString._AttributeValue(*(v30 + 56) + 72 * v70, &v124);
                v72 = (*(v37 + 48) + v102);
                *v72 = v106;
                v72[1] = v104;
                v73 = *(v37 + 56) + v100;
                *v73 = v124;
                v74 = v125;
                v75 = v126;
                v76 = v127;
                *(v73 + 64) = v128;
                *(v73 + 32) = v75;
                *(v73 + 48) = v76;
                *(v73 + 16) = v74;

                v66 = v99;
                v65 = v108;
              }

              while (v108);
            }

            v68 = v62;
            while (1)
            {
              v62 = v68 + 1;
              if (__OFADD__(v68, 1))
              {
                break;
              }

              if (v62 >= v66)
              {
                goto LABEL_44;
              }

              v69 = *(v30 + 64 + 8 * v62);
              ++v68;
              if (v69)
              {
                v67 = __clz(__rbit64(v69));
                v108 = (v69 - 1) & v69;
                goto LABEL_42;
              }
            }

LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_44:
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
        v37 = v30;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v115);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_70;
        }

        v32 = v38;
      }

      a1 = v29;
      v8 = v114;
      if (v36)
      {
        v16 = *(v37 + 56) + 72 * v32;
        v18 = *(v16 + 16);
        v17 = *(v16 + 32);
        v19 = *(v16 + 48);
        v128 = *(v16 + 64);
        v127 = v19;
        v124 = *v16;
        v125 = v18;
        v126 = v17;
        v20 = *(v37 + 56) + 72 * v32;
        v21 = v118;
        v22 = v119;
        v23 = v120;
        *(v20 + 64) = v121;
        *(v20 + 32) = v22;
        *(v20 + 48) = v23;
        *(v20 + 16) = v21;
        *v20 = v117;
        outlined destroy of AttributedString._AttributeValue(v122);
        v24 = v115;
      }

      else
      {
        *(v37 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v50 = (*(v37 + 48) + 16 * v32);
        v24 = v115;
        *v50 = v116;
        v50[1] = v115;
        v51 = *(v37 + 56) + 72 * v32;
        *v51 = v117;
        v52 = v118;
        v53 = v119;
        v54 = v120;
        *(v51 + 64) = v121;
        *(v51 + 32) = v53;
        *(v51 + 48) = v54;
        *(v51 + 16) = v52;
        v55 = *(v37 + 16);
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_67;
        }

        *(v37 + 16) = v57;

        outlined destroy of AttributedString._AttributeValue(v122);
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0;
      }

      *a1 = v37;
    }

    else
    {

      outlined destroy of TermOfAddress?(&v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v24);
      if (v41)
      {
        v42 = v40;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v44 = *a1;
        if (v43)
        {
          v45 = *a1;
        }

        else
        {
          v101 = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v77 = static _DictionaryStorage.copy(original:)();
          v45 = v77;
          if (*(v44 + 16))
          {
            v78 = (v77 + 64);
            v79 = (v44 + 64);
            v80 = ((1 << *(v45 + 32)) + 63) >> 6;
            if (v45 != v44 || v78 >= &v79[8 * v80])
            {
              memmove(v78, v79, 8 * v80);
            }

            v81 = 0;
            *(v45 + 16) = *(v44 + 16);
            v82 = 1 << *(v44 + 32);
            if (v82 < 64)
            {
              v83 = ~(-1 << v82);
            }

            else
            {
              v83 = -1;
            }

            v84 = v83 & *(v44 + 64);
            v85 = (v82 + 63) >> 6;
            v103 = v85;
            if (v84)
            {
              do
              {
                v86 = __clz(__rbit64(v84));
                v109 = (v84 - 1) & v84;
LABEL_59:
                v89 = v86 | (v81 << 6);
                v105 = 16 * v89;
                v90 = (*(v44 + 48) + 16 * v89);
                v91 = v90[1];
                v107 = *v90;
                v92 = 72 * v89;
                outlined init with copy of AttributedString._AttributeValue(*(v44 + 56) + 72 * v89, &v124);
                v93 = (*(v45 + 48) + v105);
                *v93 = v107;
                v93[1] = v91;
                v94 = *(v45 + 56) + v92;
                *v94 = v124;
                v95 = v125;
                v96 = v126;
                v97 = v127;
                *(v94 + 64) = v128;
                *(v94 + 32) = v96;
                *(v94 + 48) = v97;
                *(v94 + 16) = v95;

                v85 = v103;
                v84 = v109;
              }

              while (v109);
            }

            v87 = v81;
            while (1)
            {
              v81 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                goto LABEL_69;
              }

              if (v81 >= v85)
              {
                break;
              }

              v88 = *(v44 + 64 + 8 * v81);
              ++v87;
              if (v88)
              {
                v86 = __clz(__rbit64(v88));
                v109 = (v88 - 1) & v88;
                goto LABEL_59;
              }
            }
          }

          a1 = v101;
          v8 = v114;
        }

        v46 = *(v45 + 56) + 72 * v42;
        v124 = *v46;
        v48 = *(v46 + 32);
        v47 = *(v46 + 48);
        v49 = *(v46 + 64);
        v125 = *(v46 + 16);
        v126 = v48;
        v128 = v49;
        v127 = v47;
        specialized _NativeDictionary._delete(at:)(v42, v45);
        *a1 = v45;
        v24 = v115;
      }

      else
      {
        v128 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
      }
    }

    v13 &= v13 - 1;
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v116, v24, &v124, v129);

    outlined destroy of TermOfAddress?(v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v25 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v25);
    ++v15;
    if (v13)
    {
      v15 = v25;
      goto LABEL_13;
    }
  }

  LOBYTE(v129[0]) = 0;
  result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a6, v129);
  if (a8)
  {
    return Array<A>._extend(with:)(a2, a3);
  }

  return result;
}

uint64_t AttributedString.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v27 - v7;
  v9 = *v3;
  v10 = *(*v3 + 40);
  v35 = *(*v3 + 24);
  v36 = v10;
  v37 = *(v9 + 56);
  v11 = BigString.startIndex.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = BigString.endIndex.getter();
  v34[0] = v11;
  v34[1] = v13;
  v34[2] = v15;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  v34[6] = v20;
  v34[7] = v21;
  AttributedString.Guts.getUniformValue<A>(in:key:)(v34, a1, a2, v32);
  if (v33)
  {
    v22 = v30;
    outlined init with copy of Hashable & Sendable(v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    v23 = swift_dynamicCast();
    v24 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v23)
    {
      v25 = *(AssociatedTypeWitness - 8);
      v24(v8, 0, 1, AssociatedTypeWitness);
      (*(v25 + 32))(v22, v8, AssociatedTypeWitness);
      outlined destroy of AttributedString._AttributeValue(v32);
      return (v24)(v22, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      v24(v8, 1, 1, AssociatedTypeWitness);
      result = (*(v28 + 8))(v8, v29);
      __break(1u);
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v32, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v30, 1, 1, AssociatedTypeWitness);
  }

  return result;
}

void (*AttributedString.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  AttributedString.subscript.getter(a3, a4, v15);
  return AttributedString.subscript.modify;
}

void AttributedString.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    AttributedString.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AttributedString.subscript.setter((*a1)[7], a2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AttributedString.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  specialized AttributedString.subscript.setter(a1, *(*a2 + *MEMORY[0x1E69E77B0] + 8), a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*AttributedString.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v8[2] = v10;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v9[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v9[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[7] = v14;
  AttributedString.subscript.getter(v10, a3, v14);
  return AttributedString.subscript.modify;
}

void AttributedString.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *((*a1)[4] + 16);
  v3((*a1)[6], v2[7], v2[3]);
  v5 = v2[6];
  v15 = v2[7];
  v7 = v2[4];
  v6 = v2[5];
  v9 = v2[2];
  v8 = v2[3];
  v10 = *v2;
  if (a2)
  {
    v3(v2[5], v5, v2[3]);
    AttributedString.subscript.setter(v6, v11, v9, v10);
    v12 = *(v7 + 8);
    v12(v5, v8);
    v13 = v15;
    v12(v15, v8);
  }

  else
  {
    AttributedString.subscript.setter(v5, v4, v2[2], *v2);
    v13 = v15;
    (*(v7 + 8))(v15, v8);
  }

  free(v13);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t AttributedString.subscript.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v14 = *(*v1 + 24);
  v15 = v4;
  v16 = *(v3 + 56);
  v13[0] = BigString.startIndex.getter();
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = BigString.endIndex.getter();
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v10;
  result = AttributedString.Guts.getUniformValues(in:)(v13);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = v12;
  return result;
}

double key path getter for AttributedString.subscript<A>(dynamicMember:) : <A>AttributedStringA@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *a1;
  AttributedString.subscript.getter(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AttributedString.subscript<A>(dynamicMember:) : <A>AttributedStringA(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];

  v5 = AttributedString.subscript.modify(v8);
  *v6 = v1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;

  return (v5)(v8, 0);
}

void (*AttributedString.subscript.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x2E0uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v7 + 24);
    v9 = *(v7 + 40);
    *(v5 + 104) = *(v7 + 56);
    *(v5 + 88) = v9;
    *(v5 + 72) = v8;
    v10 = *(v7 + 72);
    v11 = *(v7 + 80);
    v12 = *(v7 + 88);
    v13 = *(v7 + 96);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    v14 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v5 + 72, v5);
    v15 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v15);
    if (v10)
    {
      v16 = v12 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    if (v17 == v14)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_13:
        *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = *(v5 + 72);
        v19 = *(v5 + 88);
        *(v7 + 56) = *(v5 + 104);
        *(v7 + 40) = v19;
        *(v7 + 24) = v18;
        *(v7 + 72) = v10;
        *(v7 + 80) = v11;
        *(v7 + 88) = v12;
        *(v7 + 96) = v13;
        *(v7 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v7;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_13;
  }

LABEL_14:
  *(v5 + 728) = v7;
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v5 + 712) = 0u;
  v20 = MEMORY[0x1E69E7CD0];
  *(v5 + 696) = MEMORY[0x1E69E7CC8];
  *(v5 + 704) = v20;
  return AttributedString.subscript.modify;
}

void AttributedString.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 312);
  v4 = *(*a1 + 728);
  v5 = *(*a1 + 720);
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v80 = *(v2 + 712);
      v13 = *(v4 + 56);
      v14 = *(v4 + 40);
      *(v2 + 552) = *(v4 + 24);
      *(v2 + 568) = v14;
      *(v2 + 584) = v13;
      v15 = *(v4 + 56);
      v16 = *(v4 + 64);
      v69 = *(v4 + 40);
      v72 = *(v4 + 24);
      BigString.startIndex.getter();
      BigString.endIndex.getter();
      v3[18] = v72;
      v3[19] = v69;
      *(v2 + 632) = v15;
      *(v2 + 640) = v16;

      outlined init with copy of BigString(v2 + 552, v2);
      v10 = BigString.UnicodeScalarView.index(roundingDown:)();
      outlined destroy of BigString(v2 + 552);
      v17 = *(v4 + 40);
      v18 = *(v4 + 56);
      v3[21] = *(v4 + 24);
      v3[22] = v17;
      v3[23] = v18;
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    v45 = *(v2 + 696);
    v46 = *(v4 + 56);
    v47 = *(v4 + 40);
    *(v2 + 408) = *(v4 + 24);
    *(v2 + 424) = v47;
    *(v2 + 440) = v46;
    v48 = *(v4 + 56);
    v49 = *(v4 + 64);
    v70 = *(v4 + 40);
    v73 = *(v4 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v3[9] = v73;
    v3[10] = v70;
    *(v2 + 488) = v48;
    *(v2 + 496) = v49;

    outlined init with copy of BigString(v2 + 408, v2);
    v50 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(v2 + 408);
    v51 = *(v4 + 40);
    v52 = *(v4 + 56);
    v3[12] = *(v4 + 24);
    v3[13] = v51;
    v3[14] = v52;
    swift_unknownObjectRetain();
    v53 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v29 = v50 >> 11;
    v30 = v53 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v4, v50 >> 11, v53 >> 11, v45, 0);

    if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v45))
    {
      v54 = -1;
      v55 = -1 << *(v45 + 32);
      if (-v55 < 64)
      {
        v54 = ~(-1 << -v55);
      }

      v56 = v54 & *(v45 + 64);
      v57 = (63 - v55) >> 6;

      v58 = 0;
      v81 = MEMORY[0x1E69E7CC0];
      if (!v56)
      {
        goto LABEL_29;
      }

      do
      {
LABEL_27:
        while (1)
        {
          v59 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v45 + 56) + 72 * (v59 | (v58 << 6)), v2);
          v60 = *(v2 + 40);
          v61 = *(v2 + 48);
          outlined copy of AttributedString.AttributeRunBoundaries?(v60, v61);
          outlined destroy of AttributedString._AttributeValue(v2);
          if (v61 != 1)
          {
            break;
          }

          if (!v56)
          {
            goto LABEL_29;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
        }

        v64 = *(v81 + 2);
        v63 = *(v81 + 3);
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v79 = v64 + 1;
          v77 = *(v81 + 2);
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v81);
          v64 = v77;
          v65 = v79;
          v81 = v67;
        }

        *(v81 + 2) = v65;
        v66 = &v81[16 * v64];
        *(v66 + 4) = v60;
        *(v66 + 5) = v61;
      }

      while (v56);
LABEL_29:
      while (1)
      {
        v62 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_45;
        }

        if (v62 >= v57)
        {
LABEL_40:

          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v29, v30, 0, v81);

          goto LABEL_41;
        }

        v56 = *(v45 + 64 + 8 * v62);
        ++v58;
        if (v56)
        {
          v58 = v62;
          goto LABEL_27;
        }
      }
    }

LABEL_39:

    goto LABEL_41;
  }

  if (!v5)
  {
    v20 = *(v2 + 696);
    v21 = *(v4 + 56);
    v22 = *(v4 + 40);
    *(v2 + 120) = *(v4 + 24);
    *(v2 + 136) = v22;
    *(v2 + 152) = v21;
    v23 = *(v4 + 56);
    v24 = *(v4 + 64);
    v74 = *(v4 + 40);
    v75 = *(v4 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    *(v2 + 184) = v74;
    *(v2 + 168) = v75;
    *(v2 + 200) = v23;
    *(v2 + 208) = v24;

    outlined init with copy of BigString(v2 + 120, v2);
    v25 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(v2 + 120);
    v26 = *(v4 + 40);
    v27 = *(v4 + 56);
    *(v2 + 216) = *(v4 + 24);
    *(v2 + 232) = v26;
    *(v2 + 248) = v27;
    swift_unknownObjectRetain();
    v28 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v29 = v25 >> 11;
    v30 = v28 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v4, v25 >> 11, v28 >> 11, v20, 0);

    if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v20))
    {
      v31 = -1;
      v32 = -1 << *(v20 + 32);
      if (-v32 < 64)
      {
        v31 = ~(-1 << -v32);
      }

      v33 = v31 & *(v20 + 64);
      v34 = (63 - v32) >> 6;

      v35 = 0;
      v81 = MEMORY[0x1E69E7CC0];
      if (!v33)
      {
        goto LABEL_13;
      }

      do
      {
LABEL_11:
        while (1)
        {
          v36 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v20 + 56) + 72 * (v36 | (v35 << 6)), v2);
          v37 = *(v2 + 40);
          v38 = *(v2 + 48);
          outlined copy of AttributedString.AttributeRunBoundaries?(v37, v38);
          outlined destroy of AttributedString._AttributeValue(v2);
          if (v38 != 1)
          {
            break;
          }

          if (!v33)
          {
            goto LABEL_13;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
        }

        v41 = *(v81 + 2);
        v40 = *(v81 + 3);
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v78 = v41 + 1;
          v76 = *(v81 + 2);
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v81);
          v41 = v76;
          v42 = v78;
          v81 = v44;
        }

        *(v81 + 2) = v42;
        v43 = &v81[16 * v41];
        *(v43 + 4) = v37;
        *(v43 + 5) = v38;
      }

      while (v33);
LABEL_13:
      while (1)
      {
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v39 >= v34)
        {
          goto LABEL_40;
        }

        v33 = *(v20 + 64 + 8 * v39);
        ++v35;
        if (v33)
        {
          v35 = v39;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    goto LABEL_39;
  }

  v80 = *(v2 + 712);
  v6 = *(v4 + 56);
  v7 = *(v4 + 40);
  *(v2 + 264) = *(v4 + 24);
  *(v2 + 280) = v7;
  *(v2 + 296) = v6;
  v8 = *(v4 + 56);
  v9 = *(v4 + 64);
  v68 = *(v4 + 40);
  v71 = *(v4 + 24);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  *v3 = v71;
  v3[1] = v68;
  *(v2 + 344) = v8;
  *(v2 + 352) = v9;

  outlined init with copy of BigString(v2 + 264, v2);
  v10 = BigString.UnicodeScalarView.index(roundingDown:)();
  outlined destroy of BigString(v2 + 264);
  v11 = *(v4 + 40);
  v12 = *(v4 + 56);
  v3[3] = *(v4 + 24);
  v3[4] = v11;
  v3[5] = v12;
  swift_unknownObjectRetain();
LABEL_6:
  v19 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v80, v5, v10 >> 11, v19 >> 11, 1);

LABEL_41:

  free(v2);
}

uint64_t AttributedString.subscript.setter(uint64_t *a1)
{
  v2 = v1;
  v56 = *a1;
  v3 = a1[3];
  v55 = a1[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  v6 = &static AttributedString.Guts._nextVersion;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v5 + 40);
    v69 = *(v5 + 24);
    v70 = v7;
    v71 = *(v5 + 56);
    v8 = *(v5 + 72);
    v9 = *(v5 + 80);
    v11 = *(v5 + 88);
    v10 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v5 = swift_allocObject();
    v12 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v69, v57);
    v13 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v13);
    if (v8)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == v12)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v17 = v70;
        *(v5 + 24) = v69;
        *(v5 + 16) = add_explicit;
        *(v5 + 40) = v17;
        *(v5 + 56) = v71;
        *(v5 + 72) = v8;
        *(v5 + 80) = v9;
        *(v5 + 88) = v11;
        *(v5 + 96) = v10;
        *(v5 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v5;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    *(v5 + 16) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);

    if (v3)
    {
      v18 = *(v5 + 24);
      v19 = *(v5 + 56);
      v57[1] = *(v5 + 40);
      v58 = v19;
      v57[0] = v18;
      v20 = *(v5 + 56);
      v21 = *(v5 + 64);
      v51 = *(v5 + 40);
      v52 = *(v5 + 24);
      BigString.startIndex.getter();
      BigString.endIndex.getter();
      v66 = v52;
      v67 = v51;
      *&v68 = v20;
      *(&v68 + 1) = v21;

      outlined init with copy of BigString(v57, &v63);
      v22 = BigString.UnicodeScalarView.index(roundingDown:)();
      outlined destroy of BigString(v57);
      v23 = *(v5 + 40);
      v63 = *(v5 + 24);
      v64 = v23;
      v65 = *(v5 + 56);
      swift_unknownObjectRetain();
      v24 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v55, v3, v22 >> 11, v24 >> 11, 1);

      goto LABEL_33;
    }

    v25 = *(v5 + 24);
    v26 = *(v5 + 56);
    v67 = *(v5 + 40);
    v68 = v26;
    v66 = v25;
    v27 = *(v5 + 56);
    v28 = *(v5 + 64);
    v53 = *(v5 + 40);
    v54 = *(v5 + 24);
    BigString.startIndex.getter();
    v55 = BigString.endIndex.getter();
    v63 = v54;
    v64 = v53;
    *&v65 = v27;
    *(&v65 + 1) = v28;

    outlined init with copy of BigString(&v66, v57);
    v29 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v66);
    v30 = *(v5 + 40);
    v60 = *(v5 + 24);
    v61 = v30;
    v62 = *(v5 + 56);
    swift_unknownObjectRetain();
    v31 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v32 = v29 >> 11;
    v3 = v31 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v5, v29 >> 11, v31 >> 11, v56, 0);

    if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v56) & 1) == 0)
    {
      break;
    }

    v6 = (v56 + 64);
    v33 = 1 << *(v56 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v56 + 64);
    v36 = (v33 + 63) >> 6;

    v37 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      goto LABEL_20;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v56 + 56) + 72 * (v39 | (v37 << 6)), v57);
        v40 = *(&v58 + 1);
        v41 = v59;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v58 + 1), v59);
        outlined destroy of AttributedString._AttributeValue(v57);
        if (v41 != 1)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_20;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v55 = v44 + 1;
        v47 = v38;
        v48 = *(v38 + 2);
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v47);
        v45 = v55;
        v44 = v48;
        v38 = v49;
      }

      *(v38 + 2) = v45;
      v46 = &v38[16 * v44];
      *(v46 + 4) = v40;
      *(v46 + 5) = v41;
    }

    while (v35);
LABEL_20:
    while (1)
    {
      v42 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v42 >= v36)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v32, v3, 0, v38);

        goto LABEL_32;
      }

      v35 = v6[v42];
      ++v37;
      if (v35)
      {
        v37 = v42;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_32:

LABEL_33:
}

Swift::Int AttributedString.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized AttributedStringProtocol.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t (*protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = AttributedString.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

uint64_t protocol witness for AttributedStringProtocol.subscript.setter in conformance AttributedString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized AttributedString.subscript.setter(a1, a3, a4);

  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t (*protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString(void *a1, void *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AttributedString.subscript.modify(v7, a2, a4);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

uint64_t (*protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AttributedString.subscript.modify(v2);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

void protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized AttributedStringProtocol.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t specialized AttributedStringProtocol.hash(into:)(uint64_t a1)
{
  v279 = a1;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v276);
  v278 = &v257 - v2;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v288 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v274 = &v257 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v280 = &v257 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v257 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v293 = &v257 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v286 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v273 = &v257 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v257 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v257 - v18;
  v287 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v287);
  v275 = &v257 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v257 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v282 = &v257 - v25;
  v26 = *v1;
  v27 = *(v1 + 24);
  v321 = *(v1 + 8);
  v322 = v27;
  v28 = *(v1 + 56);
  v323 = *(v1 + 40);
  v324 = v28;
  v315 = v321;
  v316 = v27;
  v317 = v323;
  v318 = v28;
  v277 = v1;
  outlined init with copy of AttributedSubstring(v1, &v325);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v295 = v26;
  v283 = v23;
  *v23 = v26;
  v290 = v16;
  v29 = v293;
  v30 = v294;
  RangeSet.init()();
  v289 = v12;
  v281 = v19;
  RangeSet.ranges.getter();
  v31 = v288;
  (*(v288 + 16))(v29, v8, v30);
  v32 = *(v10 + 44);
  v33 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v284 = *(v31 + 8);
  v285 = v8;
  v288 = v31 + 8;
  v284(v8, v30);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v29 + v32) != v325)
  {
    v291 = v32;
    v292 = v33;
    do
    {
      v45 = dispatch thunk of Collection.subscript.read();
      v47 = v46[4];
      v48 = v46[7];
      v297 = v46[6];
      v298 = v47;
      v296 = v48;
      v45(&v325, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v49 = v295;
      v50 = *(v295 + 40);
      v366 = *(v295 + 24);
      v367 = v50;
      v368 = *(v295 + 56);
      swift_unknownObjectRetain();
      v51 = BigString.UnicodeScalarView.index(roundingDown:)();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      swift_unknownObjectRelease();
      v58 = *(v49 + 40);
      v363 = *(v49 + 24);
      v364 = v58;
      v365 = *(v49 + 56);
      swift_unknownObjectRetain();
      v59 = BigString.UnicodeScalarView.index(roundingDown:)();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      swift_unknownObjectRelease();
      v325 = v51;
      v326 = v53;
      v327 = v55;
      v328 = v57;
      v329 = v59;
      v330 = v61;
      v30 = v294;
      v331 = v63;
      v332 = v65;
      if ((v59 ^ v51) >= 0x400)
      {
        v66 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v66(&v315, 0);
      }

      v29 = v293;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v29 + v291) != v325);
  }

  outlined destroy of TermOfAddress?(v29, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v34 = v287;
  v35 = *(v287 + 24);
  v36 = v283;
  v37 = v289;
  v271 = *(v286 + 16);
  v272 = v286 + 16;
  v271(&v35[v283], v290, v289);
  v38 = v285;
  RangeSet.ranges.getter();
  v39 = RangeSet.Ranges.count.getter();
  v40 = v284;
  v284(v38, v30);
  v41 = *(v34 + 28);
  LODWORD(v291) = v39 > 1;
  *(v36 + v41) = v291;
  v42 = v280;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v315 == v325)
  {
    v40(v42, v30);
    v43 = v295;
    v44 = *(v295 + 72);
    if (v44)
    {
LABEL_4:
      v297 = *(v44 + 18);
LABEL_12:
      v298 = *(v43 + 96);
      v75 = *(v43 + 40);
      v360 = *(v43 + 24);
      v361 = v75;
      v362 = *(v43 + 56);
      v76 = BigString.startIndex.getter();
      v78 = v77;
      v80 = v79;
      v296 = v81;
      v82 = *(v43 + 72);
      v293 = *(v43 + 96);
      if (v82)
      {
        v292 = *(v82 + 18);
        v83 = *(v286 + 8);
        swift_unknownObjectRetain();
        v83(v290, v37);
        v280 = v83;
        v83(v281, v37);
        swift_unknownObjectRelease();
      }

      else
      {
        v84 = *(v286 + 8);
        v84(v290, v37);
        v280 = v84;
        v84(v281, v37);
        v292 = 0;
      }

      v85 = *(v43 + 40);
      v359[3] = *(v43 + 24);
      v359[4] = v85;
      v359[5] = *(v43 + 56);
      v86 = BigString.startIndex.getter();
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = -1;
      v99 = v76;
      v100 = v78;
      v101 = v80;
      v102 = v296;
      v103 = v296;
      v104 = v86;
      v105 = v87;
      v106 = v90;
      v107 = v92;
      v108 = -1;
      v109 = v298;
      goto LABEL_16;
    }

LABEL_11:
    v297 = 0;
    goto LABEL_12;
  }

  v67 = dispatch thunk of Collection.subscript.read();
  v69 = *v68;
  v269 = v68[1];
  v270 = v69;
  v70 = v68[2];
  v267 = v68[3];
  v268 = v70;
  v67(&v325, 0);
  v40(v42, v30);
  v71 = v274;
  RangeSet.ranges.getter();
  v72 = dispatch thunk of Collection.isEmpty.getter();
  v73 = v40;
  v74 = v30;
  v43 = v295;
  if (v72)
  {
    v73(v71, v74);
    v44 = *(v43 + 72);
    if (v44)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v280 = v35;
  v122 = v73;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v123 = dispatch thunk of Collection.subscript.read();
  v126 = v124[4];
  v125 = v124[5];
  v127 = v124[7];
  v264 = v124[6];
  v265 = v125;
  v266 = v127;
  v123(&v325, 0);
  v122(v71, v74);
  AttributedString.Guts.findRun(at:)(v270, v267, &v325);
  v297 = v326;
  v298 = v325;
  v260 = v328;
  v261 = v327;
  v274 = v331;
  v262 = v330;
  v263 = v332;
  v296 = v333;
  v128 = *(v43 + 40);
  v360 = *(v43 + 24);
  v361 = v128;
  v362 = *(v43 + 56);
  if ((BigString.endIndex.getter() ^ v126) >= 0x400)
  {
    v258 = v126;
    AttributedString.Guts.findRun(at:)(v126, v266, &v325);
    v292 = v326;
    v293 = v325;
    v97 = v327;
    v259 = v328;
    v257 = v330;
    v88 = v331;
    v90 = v332;
    v92 = v333;
    v156 = v285;
    v157 = v289;
    RangeSet.ranges.getter();
    v108 = RangeSet.Ranges.count.getter();
    v284(v156, v74);
    v158 = *(v286 + 8);
    v280 = v158;
    (v158)(v290, v157);
    v159 = v157;
    v36 = v283;
    (v158)(v281, v159);
    v86 = v257;
    v104 = v258;
    v96 = v259;
    v93 = v260;
    v98 = 0;
    v95 = v291;
    v109 = v298;
    v100 = v269;
    v99 = v270;
    v103 = v267;
    v101 = v268;
    v76 = v262;
    v80 = v263;
    v78 = v274;
    v102 = v296;
    v106 = v264;
    v105 = v265;
    v107 = v266;
    v94 = v261;
  }

  else
  {
    v130 = v264;
    v129 = v265;
    v131 = *(v43 + 72);
    if (v131)
    {
      v132 = *(v43 + 80);
    }

    else
    {
      v132 = 0;
    }

    v259 = v132;
    v133 = *(v43 + 96);
    v134 = swift_unknownObjectRetain();
    v293 = v133;
    v292 = specialized Rope._endPath.getter(v134);
    if (v131)
    {
      swift_unknownObjectRelease();
    }

    v135 = v285;
    v136 = v289;
    RangeSet.ranges.getter();
    v137 = v294;
    v108 = RangeSet.Ranges.count.getter();
    v284(v135, v137);
    v138 = *(v286 + 8);
    v138(v290, v136);
    v280 = v138;
    v138(v281, v136);
    v98 = 0;
    v97 = 0;
    v104 = v126;
    v86 = v126;
    v105 = v129;
    v88 = v129;
    v106 = v130;
    v90 = v130;
    v107 = v266;
    v103 = v267;
    v92 = v266;
    v95 = v291;
    v109 = v298;
    v100 = v269;
    v99 = v270;
    v101 = v268;
    v76 = v262;
    v80 = v263;
    v78 = v274;
    v102 = v296;
    v93 = v260;
    v94 = v261;
    v96 = v259;
  }

LABEL_16:
  *(v36 + 8) = v93;
  *(v36 + 16) = v109;
  *(v36 + 24) = v297;
  *(v36 + 32) = v94;
  *(v36 + 40) = v76;
  *(v36 + 48) = v78;
  *(v36 + 56) = v80;
  *(v36 + 64) = v102;
  *(v36 + 72) = v99;
  *(v36 + 80) = v100;
  *(v36 + 88) = v101;
  *(v36 + 96) = v103;
  *(v36 + 104) = v98;
  *(v36 + 112) = 0;
  *(v36 + 113) = v95;
  v110 = v292;
  v111 = v293;
  *(v36 + 120) = v96;
  *(v36 + 128) = v111;
  *(v36 + 136) = v110;
  *(v36 + 144) = v97;
  *(v36 + 152) = v86;
  *(v36 + 160) = v88;
  *(v36 + 168) = v90;
  *(v36 + 176) = v92;
  *(v36 + 184) = v104;
  *(v36 + 192) = v105;
  *(v36 + 200) = v106;
  *(v36 + 208) = v107;
  *(v36 + 216) = v108;
  *(v36 + 224) = 0;
  *(v36 + 225) = v95;
  v112 = v36;
  v113 = v282;
  outlined init with take of AttributedString.Runs(v112, v282);
  v114 = *(v113 + 8);
  v115 = *(v113 + 120);
  v116 = *(v113 + 184);
  v117 = *(v113 + 208);
  if (*(v113 + *(v287 + 28)))
  {
    result = 0;
    v160 = *(v113 + 112);
    v161 = *(v113 + 96);
    v268 = *(v113 + 104);
    v162 = *(v113 + 64);
    v163 = *(v113 + 72);
    v274 = *(v113 + 56);
    v164 = *(v113 + 40);
    v281 = *(v113 + 48);
    v258 = v116 >> 10;
    v261 = v163 >> 10;
    v262 = v161;
    v259 = v286 + 8;
    v260 = v117;
    v165 = v114;
    v166 = v161;
    v265 = v117;
    v167 = v115;
    v168 = *(v113 + 32);
    v296 = *(v113 + 24);
    v293 = *(v113 + 16);
    while (1)
    {
      LOBYTE(v315) = v160;
      if (v165 >= v115 && (v115 < v165 || v260 == 2 || v166 != 2 && v163 >> 10 >= v258))
      {
        goto LABEL_153;
      }

      if (v165 < v114)
      {
        goto LABEL_158;
      }

      v178 = v114 < v165 || v262 == 2;
      v179 = v178;
      if (!v178)
      {
        if (v166 == 2)
        {
          goto LABEL_181;
        }

        if (v261 > v163 >> 10)
        {
          goto LABEL_168;
        }
      }

      if (v165 >= v167)
      {
        if (v167 < v165)
        {
          goto LABEL_169;
        }

        if (v265 == 2)
        {
          goto LABEL_182;
        }

        if (v166 == 2)
        {
          if (!v179)
          {
            goto LABEL_180;
          }

          goto LABEL_64;
        }

        if (v163 >> 10 >= v116 >> 10)
        {
          goto LABEL_174;
        }
      }

      if ((v179 & 1) == 0)
      {
        if (v166 == 2)
        {
          goto LABEL_180;
        }

        if (v261 > v163 >> 10)
        {
          goto LABEL_172;
        }
      }

LABEL_64:
      if (v167 < v165)
      {
        goto LABEL_159;
      }

      if (v165 >= v167 && v166 != 2)
      {
        if (v265 == 2)
        {
          goto LABEL_183;
        }

        if (v116 >> 10 < v163 >> 10)
        {
          goto LABEL_170;
        }
      }

      if (v168 == 1)
      {
        goto LABEL_179;
      }

      v180 = v167;
      v181 = *v113;
      if (v293 != *(*v113 + 96))
      {
        goto LABEL_179;
      }

      v297 = v165;
      v298 = v168;
      v292 = v181;
      v283 = result;
      v270 = v116;
      v290 = v166;
      v263 = v164;
      v264 = v164 >> 11;
      v286 = v162;
      v267 = v163;
      if (v162 == 2)
      {
        v182 = *(v181 + 72);
        v183 = v293;
        if (v182)
        {
          v184 = *(v181 + 80);
          v185 = *(v181 + 88);
          swift_unknownObjectRetain();
          v186 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v183, v296, v298, v182, v184, v185);
          swift_unknownObjectRelease();
          v181 = v292;
        }

        else
        {
          v186 = 0;
        }

        v189 = *(v181 + 24);
        v190 = *(v181 + 40);
        v354 = *(v181 + 56);
        v353 = v190;
        v352 = v189;
        v191 = *(v181 + 40);
        v349 = *(v181 + 24);
        v350 = v191;
        v351 = *(v181 + 56);
        BigString.startIndex.getter();
        v291 = v192;
        v266 = v193;
        v371[0] = v352;
        v371[1] = v353;
        v372 = v354;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v371, &v325);
        v188 = v186;
        v266 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v352);
      }

      else
      {
        v187 = *(v181 + 40);
        v346 = *(v181 + 24);
        v347 = v187;
        v348 = *(v181 + 56);
        v188 = v164 >> 11;
        swift_unknownObjectRetain();
        v266 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v183 = v293;
      }

      v194 = *(v181 + 72);
      v195 = *(v181 + 96);
      v293 = *(v181 + 88);
      v325 = v183;
      v326 = v296;
      v327 = v298;
      if (__OFADD__(v297, 1))
      {
        goto LABEL_161;
      }

      if (v183 != v195)
      {
        goto LABEL_162;
      }

      v167 = v180;
      ++v297;
      if (v298)
      {
        v196 = *(v298 + 24 * ((v296 >> ((4 * *(v298 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v291 = v188 + v196;
        if (__OFADD__(v188, v196))
        {
          goto LABEL_167;
        }

        if (!v194)
        {
          goto LABEL_160;
        }

        v197 = v183;
        result = swift_unknownObjectRetain();
        v198 = v296;
        v199 = v298;
      }

      else
      {
        v200 = v296;
        swift_unknownObjectRetain();
        v201 = specialized Rope._Node.subscript.getter(v200, v194);

        v291 = v188 + v201;
        if (__OFADD__(v188, v201))
        {
          goto LABEL_173;
        }

        v197 = v183;
        v199 = v298;
        v198 = v296;
        if (!v194)
        {
          goto LABEL_160;
        }
      }

      if (v198 >= (((-15 << ((4 * *(v194 + 18) + 8) & 0x3C)) - 1) & *(v194 + 18) | (*(v194 + 16) << ((4 * *(v194 + 18) + 8) & 0x3C))))
      {
        goto LABEL_160;
      }

      if (v199 && (v202 = (4 * *(v199 + 18) + 8) & 0x3C, v203 = ((v198 >> v202) & 0xF) + 1, v203 < *(v199 + 16)))
      {
        v204 = v198;
        swift_unknownObjectRelease();
        v205 = (v203 << v202) | ((-15 << v202) - 1) & v204;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v325, v194))
      {
        swift_unknownObjectRelease();
        v205 = v326;
      }

      else
      {
        v206 = *(v194 + 18);
        v207 = *(v194 + 16);
        swift_unknownObjectRelease();
        v205 = ((-15 << ((4 * v206 + 8) & 0x3C)) - 1) & v206 | (v207 << ((4 * v206 + 8) & 0x3C));
        v325 = v197;
        v326 = v205;
        v327 = 0;
      }

      v113 = v282;
      v296 = v205;
      v293 = v325;
      v298 = v327;
      v208 = *(v287 + 24);
      v269 = v167;
      if (v315)
      {
        v271(v273, (v282 + v208), v289);
        if (v290 == 2)
        {
          v209 = v266;
        }

        else
        {
          v209 = v267;
        }

        v210 = v285;
        RangeSet.ranges.getter();
        v211 = v294;
        v212 = RangeSet.Ranges.count.getter();
        result = (v284)(v210, v211);
        if (v212 < 1)
        {
LABEL_154:
          __break(1u);
        }

        else
        {
          v213 = 0;
          v214 = v209 >> 10;
          while (!__OFADD__(v213, v212))
          {
            v215 = (v213 + v212) / 2;
            v216 = v285;
            RangeSet.ranges.getter();
            v217 = v294;
            RangeSet.Ranges.subscript.getter();
            result = (v284)(v216, v217);
            if (v214 < v325 >> 10)
            {
              v212 = (v213 + v212) / 2;
              if (v213 >= v215)
              {
                goto LABEL_154;
              }
            }

            else
            {
              v218 = v329;
              if (v214 < v329 >> 10)
              {
                result = (v280)(v273, v289);
                v113 = v282;
                v220 = v215;
                v167 = v269;
                goto LABEL_106;
              }

              v213 = v215 + 1;
              if (v215 + 1 >= v212)
              {
                goto LABEL_154;
              }
            }
          }
        }

        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v219 = v285;
      RangeSet.ranges.getter();
      v220 = v268;
      v221 = v294;
      RangeSet.Ranges.subscript.getter();
      result = (v284)(v219, v221);
      v218 = v329;
LABEL_106:
      if (v291 >= (v218 >> 11))
      {
        v177 = __OFADD__(v220, 1);
        v226 = v220 + 1;
        if (v177)
        {
          goto LABEL_171;
        }

        v298 = *(v287 + 24);
        v227 = v285;
        RangeSet.ranges.getter();
        v228 = v294;
        v229 = RangeSet.Ranges.count.getter();
        v230 = v284;
        v284(v227, v228);
        if (v226 == v229)
        {
          v165 = *(v113 + 120);
          v293 = *(v113 + 128);
          v168 = *(v113 + 144);
          v296 = *(v113 + 136);
          v164 = *(v113 + 152);
          v281 = *(v113 + 160);
          v162 = *(v113 + 176);
          v274 = *(v113 + 168);
          v163 = *(v113 + 184);
          v166 = *(v113 + 208);
          v268 = *(v113 + 216);
          v116 = v163;
          v265 = v166;
          v167 = v165;
          v160 = *(v113 + 224);
          v176 = v283;
        }

        else
        {
          RangeSet.ranges.getter();
          v268 = v226;
          RangeSet.Ranges.subscript.getter();
          result = v230(v227, v228);
          v163 = v325;
          v231 = v292;
          v232 = *(v292 + 88);
          v233 = v325 >> 11;
          v291 = *(v292 + 72);
          if (v291)
          {
            v234 = v232;
          }

          else
          {
            v234 = 0;
          }

          if (v234 < v233)
          {
            goto LABEL_176;
          }

          v293 = *(v292 + 96);
          v167 = v269;
          v290 = v328;
          v286 = v327;
          if (v291)
          {
            v281 = *(v292 + 80);
            v235 = (v291 + 16);
            v236 = *(v291 + 16);
            v237 = *(v291 + 18);
            v297 = v232;
            if (v233 < v232 && v236)
            {
              v296 = v326;
              result = swift_unknownObjectRetain_n();
              if (!v237)
              {
                v298 = 0;
                result = v291;
LABEL_139:
                v248 = 0;
                v249 = 24;
                v245 = v233;
                while (1)
                {
                  v250 = *(result + v249);
                  v233 = v245 - v250;
                  if (__OFSUB__(v245, v250))
                  {
                    goto LABEL_164;
                  }

                  if (__OFADD__(v233, 1))
                  {
                    goto LABEL_165;
                  }

                  if (v233 + 1 < 1)
                  {
                    goto LABEL_147;
                  }

                  ++v248;
                  v249 += 24;
                  v245 -= v250;
                  if (v236 == v248)
                  {
                    v248 = v236;
                    goto LABEL_145;
                  }
                }
              }

              v298 = v237;
              v238 = v291;
              do
              {
                v239 = *v235;
                if (*v235)
                {
                  v241 = 0;
                  v242 = (v238 + 40);
                  while (1)
                  {
                    v243 = *v242;
                    v242 += 3;
                    v244 = v233 - v243;
                    if (__OFSUB__(v233, v243))
                    {
                      goto LABEL_156;
                    }

                    if (__OFADD__(v244, 1))
                    {
                      goto LABEL_157;
                    }

                    if (v244 + 1 < 1)
                    {
                      v239 = v241;
                      goto LABEL_123;
                    }

                    ++v241;
                    v233 = v244;
                    if (v239 == v241)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                v244 = v233;
LABEL_132:
                if (v244)
                {
                  goto LABEL_166;
                }

                v233 = 0;
LABEL_123:
                v298 = (v239 << ((4 * v237 + 8) & 0x3C)) | ((-15 << ((4 * v237 + 8) & 0x3C)) - 1) & v298;
                v240 = *(v238 + 24 + 24 * v239);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                result = v240;
                v235 = (v240 + 16);
                LOBYTE(v237) = *(result + 18);
                v238 = result;
              }

              while (v237);
              LODWORD(v236) = *v235;
              if (*v235)
              {
                goto LABEL_139;
              }

              v248 = 0;
LABEL_145:
              if (!v233)
              {
                v245 = 0;
LABEL_147:
                v251 = result;
                swift_unknownObjectRelease();
                v247 = v251;
                v246 = v298 & 0xFFFFFFFFFFFFF0FFLL | (v248 << 8);
                goto LABEL_148;
              }

LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
              return result;
            }

            swift_unknownObjectRetain();
            v246 = ((-15 << ((4 * v237 + 8) & 0x3C)) - 1) & v237 | (v236 << ((4 * v237 + 8) & 0x3C));
            v245 = 0;
            v247 = 0;
LABEL_148:
            v296 = v246;
            v298 = v247;
            v297 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v293, v246, v247, v291, v281);
            result = swift_unknownObjectRelease();
            v113 = v282;
            v231 = v292;
          }

          else
          {
            v245 = 0;
            v297 = 0;
            v298 = 0;
            v296 = 0;
          }

          v252 = *(v231 + 40);
          v343 = *(v231 + 24);
          v344 = v252;
          v345 = *(v231 + 56);
          if (__OFSUB__(0, v245))
          {
            goto LABEL_177;
          }

          swift_unknownObjectRetain();
          v166 = v290;
          v164 = BigString.UTF8View.index(_:offsetBy:)();
          v281 = v253;
          v274 = v254;
          v256 = v255;
          swift_unknownObjectRelease();
          v162 = v256;
          v160 = 0;
          v176 = v283;
          v116 = v270;
          v165 = v297;
          v168 = v298;
        }
      }

      else
      {
        v268 = v220;
        if (v286 == 2)
        {
          v169 = *(v292 + 24);
          v170 = *(v292 + 40);
          v342 = *(v292 + 56);
          v341 = v170;
          v171 = *(v292 + 40);
          v337 = *(v292 + 24);
          v338 = v171;
          v339 = *(v292 + 56);
          v340 = v169;
          BigString.startIndex.getter();
          v373[0] = v340;
          v373[1] = v341;
          v374 = v342;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v373, &v325);
          v164 = BigString.UTF8View.index(_:offsetBy:)();
          v281 = v172;
          v274 = v173;
          v175 = v174;
          outlined destroy of BigString(&v340);
        }

        else
        {
          v222 = *(v292 + 40);
          v334 = *(v292 + 24);
          v335 = v222;
          v336 = *(v292 + 56);
          if (__OFSUB__(v291, v264))
          {
            goto LABEL_175;
          }

          swift_unknownObjectRetain();
          v164 = BigString.UTF8View.index(_:offsetBy:)();
          v281 = v223;
          v274 = v224;
          v175 = v225;
          swift_unknownObjectRelease();
        }

        v160 = 0;
        v163 = v164;
        v166 = v175;
        v176 = v283;
        v116 = v270;
        v165 = v297;
        v168 = v298;
        v162 = v175;
      }

      v177 = __OFADD__(v176, 1);
      result = v176 + 1;
      if (v177)
      {
        goto LABEL_163;
      }
    }
  }

  v118 = v115 - v114;
  if (__OFSUB__(v115, v114))
  {
    __break(1u);
  }

  else
  {
    v119 = *(v113 + 176);
    if (v117 == 2)
    {
      v120 = v119 != 2;
      v121 = v295;
    }

    else
    {
      v121 = v295;
      v120 = v119 == 2 || (v116 ^ *(v113 + 152)) > 0x3FF;
    }

    v140 = v278;
    v139 = v279;
    if (!__OFADD__(v118, v120))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_153:
  v140 = v278;
  v139 = v279;
  v121 = v295;
LABEL_31:
  MEMORY[0x1865CD060]();
  v141 = v275;
  outlined init with copy of AttributedString.Runs(v113, v275);
  outlined init with copy of AttributedString.Runs(v141, v140);
  v142 = (v140 + *(v276 + 36));
  v143 = *(v141 + 56);
  v144 = *(v141 + 88);
  v319 = *(v141 + 72);
  v320[0] = v144;
  *(v320 + 10) = *(v141 + 98);
  v145 = *(v141 + 24);
  v315 = *(v141 + 8);
  v316 = v145;
  v317 = *(v141 + 40);
  v318 = v143;
  outlined destroy of AttributedString.Runs(v141);
  v146 = v320[0];
  v142[4] = v319;
  v142[5] = v146;
  *(v142 + 90) = *(v320 + 10);
  v147 = v316;
  *v142 = v315;
  v142[1] = v147;
  v148 = v318;
  v142[2] = v317;
  v142[3] = v148;
  specialized IndexingIterator.next()(&v299);
  v305 = v299;
  v306 = v300;
  v308 = v302;
  v309 = v303;
  v307 = v301;
  v149 = v299;
  v310 = v304;
  v150 = *(&v299 + 1);
  v313 = v302;
  v314 = v303;
  v311 = v300;
  for (i = v301; v299; i = v301)
  {

    specialized Dictionary<>.hash(into:)(v139, v149);
    specialized Set.hash(into:)(v139, v150);

    v151 = *(v121 + 24);
    v152 = *(v121 + 40);
    v359[2] = *(v121 + 56);
    v359[1] = v152;
    v359[0] = v151;
    v355 = v311;
    v356 = i;
    v357 = v313;
    v358 = v314;
    v153 = *(v121 + 24);
    v154 = *(v121 + 40);
    v370 = *(v121 + 56);
    v369[0] = v153;
    v369[1] = v154;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v369, &v299);
    BigString.subscript.getter();
    outlined destroy of BigString(v359);
    BigSubstring.hash(into:)();
    outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
    outlined destroy of BigSubstring(&v325);
    specialized IndexingIterator.next()(&v299);
    v307 = v301;
    v308 = v302;
    v309 = v303;
    v310 = v304;
    v305 = v299;
    v306 = v300;
    v150 = *(&v299 + 1);
    v149 = v299;
    v313 = v302;
    v314 = v303;
    v311 = v300;
  }

  outlined destroy of AttributedSubstring(v277);
  outlined destroy of TermOfAddress?(v140, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  return outlined destroy of AttributedString.Runs(v113);
}

uint64_t specialized AttributedStringProtocol.hash(into:)(uint64_t a1, uint64_t a2)
{
  v284 = a1;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v262 - v3;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v293 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v280 = &v262 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v285 = &v262 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v292 = &v262 - v8;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd) - 8;
  MEMORY[0x1EEE9AC00](v303);
  v298 = &v262 - v9;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v288 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v279 = &v262 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v262 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v262 - v15;
  v289 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v289);
  v281 = &v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v262 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v290 = &v262 - v22;
  v23 = *(a2 + 40);
  v370 = *(a2 + 24);
  v371 = v23;
  v372 = *(a2 + 56);
  v24 = BigString.startIndex.getter();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = BigString.endIndex.getter();
  v326 = v24;
  v327 = v26;
  v32 = v298;
  v328 = v28;
  v329 = v30;
  v330 = v31;
  v331 = v33;
  v332 = v34;
  v333 = v35;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v299 = a2;
  v291 = v20;
  *v20 = a2;
  v294 = v13;
  v36 = v300;
  RangeSet.init()();
  v37 = v292;
  v286 = v16;
  RangeSet.ranges.getter();
  v38 = v293;
  (*(v293 + 16))(v32, v37, v36);
  v39 = *(v303 + 44);
  v40 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v41 = *(v38 + 8);
  v293 = v38 + 8;
  v287 = v41;
  v41(v37, v36);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v32 + v39) != v326)
  {
    v296 = v39;
    v297 = v40;
    do
    {
      v53 = dispatch thunk of Collection.subscript.read();
      v55 = v54[4];
      v56 = v54[7];
      v302 = v54[6];
      v303 = v55;
      v301 = v56;
      v53(&v326, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v57 = v299;
      v58 = *(v299 + 40);
      v367 = *(v299 + 24);
      v368 = v58;
      v369 = *(v299 + 56);
      swift_unknownObjectRetain();
      v59 = BigString.UnicodeScalarView.index(roundingDown:)();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      swift_unknownObjectRelease();
      v66 = *(v57 + 40);
      v364 = *(v57 + 24);
      v365 = v66;
      v366 = *(v57 + 56);
      swift_unknownObjectRetain();
      v67 = BigString.UnicodeScalarView.index(roundingDown:)();
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v36 = v300;
      swift_unknownObjectRelease();
      v326 = v59;
      v327 = v61;
      v328 = v63;
      v329 = v65;
      v330 = v67;
      v331 = v69;
      v332 = v71;
      v333 = v73;
      if ((v67 ^ v59) >= 0x400)
      {
        v74 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v74(&v320, 0);
      }

      v32 = v298;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v32 + v296) != v326);
  }

  outlined destroy of TermOfAddress?(v32, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v42 = v289;
  v43 = v291;
  v44 = v291 + *(v289 + 24);
  v45 = v295;
  v277 = *(v288 + 16);
  v278 = v288 + 16;
  v277(v44, v294, v295);
  v46 = v292;
  RangeSet.ranges.getter();
  v47 = RangeSet.Ranges.count.getter();
  v48 = v46;
  v49 = v287;
  v287(v48, v36);
  v50 = *(v42 + 28);
  LODWORD(v296) = v47 > 1;
  *(v43 + v50) = v296;
  v51 = v285;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v320 == v326)
  {
    v52 = v51;
LABEL_10:
    v49(v52, v36);
    v80 = v299;
    v81 = *(v299 + 72);
    if (v81)
    {
      v302 = *(v81 + 18);
    }

    else
    {
      v302 = 0;
    }

    v303 = *(v299 + 96);
    v82 = *(v299 + 40);
    v361 = *(v299 + 24);
    v362 = v82;
    v363 = *(v299 + 56);
    v83 = BigString.startIndex.getter();
    v85 = v84;
    v87 = v86;
    v301 = v88;
    v89 = *(v80 + 72);
    v298 = *(v80 + 96);
    if (v89)
    {
      v90 = *(v89 + 18);
      v91 = *(v288 + 8);
      swift_unknownObjectRetain();
      v91(v294, v45);
      v297 = v91;
      v91(v286, v45);
      v92 = v90;
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = *(v288 + 8);
      v93(v294, v45);
      v297 = v93;
      v93(v286, v45);
      v92 = 0;
    }

    v94 = *(v80 + 40);
    v360[3] = *(v80 + 24);
    v360[4] = v94;
    v360[5] = *(v80 + 56);
    v95 = BigString.startIndex.getter();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = -1;
    v108 = v83;
    v109 = v85;
    v110 = v87;
    v111 = v301;
    v112 = v301;
    v113 = v95;
    v114 = v96;
    v115 = v98;
    v116 = v101;
    v117 = -1;
    v118 = v303;
    goto LABEL_17;
  }

  v75 = dispatch thunk of Collection.subscript.read();
  v77 = *v76;
  v275 = v76[1];
  v276 = v77;
  v78 = v76[2];
  v273 = v76[3];
  v274 = v78;
  v75(&v326, 0);
  v49(v51, v36);
  v79 = v280;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v52 = v79;
    goto LABEL_10;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v129 = dispatch thunk of Collection.subscript.read();
  v131 = v130[4];
  v285 = v130[5];
  v132 = v130[6];
  v271 = v130[7];
  v272 = v132;
  v129(&v326, 0);
  v49(v79, v36);
  v133 = v299;
  AttributedString.Guts.findRun(at:)(v276, v273, &v326);
  v302 = v327;
  v303 = v326;
  v267 = v329;
  v268 = v328;
  v280 = v331;
  v269 = v332;
  v270 = v333;
  v301 = v334;
  v134 = *(v133 + 40);
  v361 = *(v133 + 24);
  v362 = v134;
  v363 = *(v133 + 56);
  v135 = v131;
  if ((BigString.endIndex.getter() ^ v131) >= 0x400)
  {
    v265 = v131;
    AttributedString.Guts.findRun(at:)(v131, v271, &v326);
    v298 = v326;
    v92 = v327;
    v266 = v329;
    v263 = v331;
    v264 = v328;
    v97 = v332;
    v156 = v45;
    v99 = v333;
    v101 = v334;
    v157 = v292;
    RangeSet.ranges.getter();
    v117 = RangeSet.Ranges.count.getter();
    v287(v157, v36);
    v158 = *(v288 + 8);
    v158(v294, v156);
    v297 = v158;
    v158(v286, v156);
    v95 = v263;
    v106 = v264;
    v113 = v265;
    v105 = v266;
    v107 = 0;
    v80 = v133;
    v104 = v296;
    v118 = v303;
    v109 = v275;
    v108 = v276;
    v112 = v273;
    v110 = v274;
    v83 = v280;
    v85 = v269;
    v87 = v270;
    v111 = v301;
    v114 = v285;
    v116 = v271;
    v115 = v272;
    v102 = v267;
    v103 = v268;
  }

  else
  {
    v136 = *(v133 + 72);
    if (v136)
    {
      v137 = *(v133 + 80);
    }

    else
    {
      v137 = 0;
    }

    v266 = v137;
    v138 = *(v133 + 96);
    v139 = swift_unknownObjectRetain();
    v298 = v138;
    v265 = specialized Rope._endPath.getter(v139);
    if (v136)
    {
      swift_unknownObjectRelease();
    }

    v140 = v292;
    RangeSet.ranges.getter();
    v141 = v300;
    v117 = RangeSet.Ranges.count.getter();
    v49(v140, v141);
    v142 = *(v288 + 8);
    v142(v294, v45);
    v297 = v142;
    v142(v286, v45);
    v107 = 0;
    v106 = 0;
    v113 = v135;
    v95 = v135;
    v114 = v285;
    v97 = v285;
    v116 = v271;
    v115 = v272;
    v99 = v272;
    v101 = v271;
    v80 = v299;
    v104 = v296;
    v118 = v303;
    v109 = v275;
    v108 = v276;
    v112 = v273;
    v110 = v274;
    v83 = v280;
    v85 = v269;
    v87 = v270;
    v111 = v301;
    v92 = v265;
    v105 = v266;
    v102 = v267;
    v103 = v268;
  }

LABEL_17:
  v119 = v291;
  *(v291 + 8) = v102;
  *(v119 + 16) = v118;
  *(v119 + 24) = v302;
  *(v119 + 32) = v103;
  *(v119 + 40) = v83;
  *(v119 + 48) = v85;
  *(v119 + 56) = v87;
  *(v119 + 64) = v111;
  *(v119 + 72) = v108;
  *(v119 + 80) = v109;
  *(v119 + 88) = v110;
  *(v119 + 96) = v112;
  *(v119 + 104) = v107;
  *(v119 + 112) = 0;
  *(v119 + 113) = v104;
  v120 = v298;
  *(v119 + 120) = v105;
  *(v119 + 128) = v120;
  *(v119 + 136) = v92;
  *(v119 + 144) = v106;
  *(v119 + 152) = v95;
  *(v119 + 160) = v97;
  *(v119 + 168) = v99;
  *(v119 + 176) = v101;
  *(v119 + 184) = v113;
  *(v119 + 192) = v114;
  *(v119 + 200) = v115;
  *(v119 + 208) = v116;
  *(v119 + 216) = v117;
  *(v119 + 224) = 0;
  *(v119 + 225) = v104;
  v121 = v290;
  outlined init with take of AttributedString.Runs(v119, v290);
  v122 = *(v121 + 8);
  v123 = *(v121 + 120);
  v124 = *(v121 + 184);
  if (*(v121 + *(v289 + 28)))
  {
    v159 = *(v121 + 208);
    result = 0;
    v160 = *(v121 + 112);
    v161 = *(v121 + 96);
    v273 = *(v121 + 104);
    v163 = *(v121 + 64);
    v162 = *(v121 + 72);
    v164 = *(v121 + 48);
    v276 = *(v121 + 56);
    v280 = v164;
    v165 = *(v121 + 40);
    v296 = *(v121 + 32);
    v265 = v159;
    v266 = v162 >> 10;
    v263 = v124 >> 10;
    v264 = v288 + 8;
    v166 = v122;
    v267 = v123;
    v268 = v161;
    v167 = v161;
    v271 = v159;
    v168 = v123;
    v169 = *(v121 + 24);
    v303 = *(v121 + 16);
    while (1)
    {
      LOBYTE(v320) = v160;
      if (v166 >= v123 && (v123 < v166 || v265 == 2 || v167 != 2 && v162 >> 10 >= v263))
      {
        goto LABEL_155;
      }

      if (v166 < v122)
      {
        goto LABEL_160;
      }

      v179 = v122 < v166 || v268 == 2;
      v180 = v179;
      v181 = v296;
      if (!v179)
      {
        if (v167 == 2)
        {
          goto LABEL_183;
        }

        if (v266 > v162 >> 10)
        {
          goto LABEL_170;
        }
      }

      if (v166 >= v168)
      {
        if (v168 < v166)
        {
          goto LABEL_171;
        }

        if (v271 == 2)
        {
          goto LABEL_184;
        }

        if (v167 == 2)
        {
          if (!v180)
          {
            goto LABEL_182;
          }

          goto LABEL_65;
        }

        if (v162 >> 10 >= v124 >> 10)
        {
          goto LABEL_176;
        }
      }

      if ((v180 & 1) == 0)
      {
        if (v167 == 2)
        {
          goto LABEL_182;
        }

        if (v266 > v162 >> 10)
        {
          goto LABEL_174;
        }
      }

LABEL_65:
      if (v168 < v166)
      {
        goto LABEL_161;
      }

      if (v166 >= v168 && v167 != 2)
      {
        if (v271 == 2)
        {
          goto LABEL_185;
        }

        if (v124 >> 10 < v162 >> 10)
        {
          goto LABEL_172;
        }
      }

      if (v296 == 1)
      {
        goto LABEL_181;
      }

      v182 = *v121;
      if (v303 != *(*v121 + 96))
      {
        goto LABEL_181;
      }

      v301 = v166;
      v302 = v169;
      v285 = result;
      v286 = v163;
      v298 = v182;
      v274 = v168;
      v275 = v124;
      v288 = v167;
      v291 = v162;
      v269 = v165;
      v270 = v165 >> 11;
      if (v163 == 2)
      {
        v183 = *(v182 + 9);
        if (v183)
        {
          v185 = *(v182 + 10);
          v184 = *(v182 + 11);
          swift_unknownObjectRetain();
          v186 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v303, v302, v181, v183, v185, v184);
          swift_unknownObjectRelease();
          v182 = v298;
        }

        else
        {
          v186 = 0;
        }

        v188 = *(v182 + 24);
        v189 = *(v182 + 40);
        v355 = *(v182 + 56);
        v354 = v189;
        v353 = v188;
        v190 = *(v182 + 40);
        v350 = *(v182 + 24);
        v351 = v190;
        v352 = *(v182 + 56);
        BigString.startIndex.getter();
        v294 = v191;
        v375[0] = v353;
        v375[1] = v354;
        v376 = v355;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v375, &v326);
        v272 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v353);
      }

      else
      {
        v187 = *(v182 + 40);
        v347 = *(v182 + 24);
        v348 = v187;
        v349 = *(v182 + 56);
        swift_unknownObjectRetain();
        v186 = v165 >> 11;
        v272 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
      }

      v192 = *(v182 + 9);
      v193 = *(v182 + 12);
      v326 = v303;
      v327 = v302;
      v328 = v181;
      if (__OFADD__(v301, 1))
      {
        goto LABEL_163;
      }

      if (v303 != v193)
      {
        goto LABEL_164;
      }

      v194 = v186;
      ++v301;
      if (v181)
      {
        v195 = v302;
        v196 = *(v181 + 24 * ((v302 >> ((4 * *(v181 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v294 = (v194 + v196);
        if (__OFADD__(v194, v196))
        {
          goto LABEL_169;
        }

        if (!v192)
        {
          goto LABEL_162;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v195 = v302;
        v197 = specialized Rope._Node.subscript.getter(v302, v192);
        v294 = v198;

        v294 = (v194 + v197);
        if (__OFADD__(v194, v197))
        {
          goto LABEL_175;
        }

        if (!v192)
        {
          goto LABEL_162;
        }
      }

      if (v195 >= (((-15 << ((4 * *(v192 + 18) + 8) & 0x3C)) - 1) & *(v192 + 18) | (*(v192 + 16) << ((4 * *(v192 + 18) + 8) & 0x3C))))
      {
        goto LABEL_162;
      }

      if (v181)
      {
        v199 = (4 * *(v181 + 18) + 8) & 0x3C;
        v200 = v181;
        v201 = ((v195 >> v199) & 0xF) + 1;
        if (v201 < *(v200 + 16))
        {
          swift_unknownObjectRelease();
          v202 = (v201 << v199) | ((-15 << v199) - 1) & v195;
LABEL_92:
          v302 = v202;
          goto LABEL_94;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v326, v192))
      {
        swift_unknownObjectRelease();
        v202 = v327;
        goto LABEL_92;
      }

      v203 = *(v192 + 18);
      v204 = *(v192 + 16);
      swift_unknownObjectRelease();
      v326 = v303;
      v302 = ((-15 << ((4 * v203 + 8) & 0x3C)) - 1) & v203 | (v204 << ((4 * v203 + 8) & 0x3C));
      v327 = v302;
      v328 = 0;
LABEL_94:
      v80 = v299;
      v303 = v326;
      v296 = v328;
      if (v320)
      {
        v277(v279, (v290 + *(v289 + 24)), v295);
        v205 = v292;
        if (v288 == 2)
        {
          v206 = v272;
        }

        else
        {
          v206 = v291;
        }

        RangeSet.ranges.getter();
        v207 = v300;
        v208 = RangeSet.Ranges.count.getter();
        result = (v287)(v205, v207);
        if (v208 < 1)
        {
LABEL_156:
          __break(1u);
        }

        else
        {
          v209 = 0;
          v210 = v206 >> 10;
          while (!__OFADD__(v209, v208))
          {
            v211 = (v209 + v208) / 2;
            v212 = v292;
            RangeSet.ranges.getter();
            v213 = v300;
            RangeSet.Ranges.subscript.getter();
            result = (v287)(v212, v213);
            if (v210 < v326 >> 10)
            {
              v208 = (v209 + v208) / 2;
              if (v209 >= v211)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v214 = v330;
              if (v210 < v330 >> 10)
              {
                result = v297(v279, v295);
                v80 = v299;
                v216 = v211;
                v123 = v267;
                goto LABEL_108;
              }

              v209 = v211 + 1;
              if (v211 + 1 >= v208)
              {
                goto LABEL_156;
              }
            }
          }
        }

        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      v215 = v292;
      RangeSet.ranges.getter();
      v216 = v273;
      v217 = v300;
      RangeSet.Ranges.subscript.getter();
      result = (v287)(v215, v217);
      v214 = v330;
LABEL_108:
      if (v294 >= (v214 >> 11))
      {
        v178 = __OFADD__(v216, 1);
        v223 = v216 + 1;
        v224 = v292;
        if (v178)
        {
          goto LABEL_173;
        }

        v225 = v290;
        RangeSet.ranges.getter();
        v226 = v300;
        v227 = RangeSet.Ranges.count.getter();
        v228 = v287;
        v287(v224, v226);
        if (v223 == v227)
        {
          v166 = *(v225 + 120);
          v303 = *(v225 + 128);
          v169 = *(v225 + 136);
          v296 = *(v225 + 144);
          v165 = *(v225 + 152);
          v280 = *(v225 + 160);
          v163 = *(v225 + 176);
          v276 = *(v225 + 168);
          v162 = *(v225 + 184);
          v167 = *(v225 + 208);
          v273 = *(v225 + 216);
          v124 = v162;
          v271 = v167;
          v168 = v166;
          v160 = *(v225 + 224);
          v121 = v225;
          v177 = v285;
          v123 = v267;
        }

        else
        {
          RangeSet.ranges.getter();
          v273 = v223;
          RangeSet.Ranges.subscript.getter();
          result = v228(v224, v226);
          v229 = v298;
          v230 = *(v298 + 11);
          v231 = v326 >> 11;
          v301 = *(v298 + 9);
          if (v301)
          {
            v232 = v230;
          }

          else
          {
            v232 = 0;
          }

          if (v232 < v231)
          {
            goto LABEL_178;
          }

          v303 = *(v298 + 12);
          v291 = v326;
          v288 = v329;
          v294 = v328;
          v286 = v327;
          if (v301)
          {
            v233 = *(v298 + 10);
            v235 = (v301 + 16);
            v234 = *(v301 + 16);
            v236 = *(v301 + 18);
            v280 = v230;
            v276 = v233;
            if (v231 < v230 && v234)
            {
              v237 = v234;
              result = swift_unknownObjectRetain_n();
              if (v236)
              {
                v302 = v236;
                v238 = v301;
                do
                {
                  v239 = *v235;
                  if (*v235)
                  {
                    v241 = 0;
                    v242 = (v238 + 40);
                    while (1)
                    {
                      v243 = *v242;
                      v242 += 3;
                      v244 = v231 - v243;
                      if (__OFSUB__(v231, v243))
                      {
                        goto LABEL_158;
                      }

                      if (__OFADD__(v244, 1))
                      {
                        goto LABEL_159;
                      }

                      if (v244 + 1 < 1)
                      {
                        v239 = v241;
                        goto LABEL_125;
                      }

                      ++v241;
                      v231 = v244;
                      if (v239 == v241)
                      {
                        goto LABEL_134;
                      }
                    }
                  }

                  v244 = v231;
LABEL_134:
                  if (v244)
                  {
                    goto LABEL_168;
                  }

                  v231 = 0;
LABEL_125:
                  v302 = (v239 << ((4 * v236 + 8) & 0x3C)) | ((-15 << ((4 * v236 + 8) & 0x3C)) - 1) & v302;
                  v240 = *(v238 + 24 + 24 * v239);
                  swift_unknownObjectRetain();
                  result = swift_unknownObjectRelease();
                  v235 = (v240 + 16);
                  LOBYTE(v236) = *(v240 + 18);
                  v238 = v240;
                }

                while (v236);
                v249 = v240;
                v250 = *v235;
                v123 = v267;
                if (*v235)
                {
                  goto LABEL_141;
                }

                v251 = 0;
LABEL_147:
                if (!v231)
                {
                  v245 = 0;
LABEL_149:
                  v254 = v249;
                  swift_unknownObjectRelease();
                  v247 = v302 & 0xFFFFFFFFFFFFF0FFLL | (v251 << 8);
                  v248 = v254;
                  goto LABEL_150;
                }

                goto LABEL_180;
              }

              v302 = 0;
              v249 = v301;
              v123 = v267;
              v250 = v237;
LABEL_141:
              v251 = 0;
              v252 = 24;
              v245 = v231;
              while (1)
              {
                v253 = *(v249 + v252);
                v231 = v245 - v253;
                if (__OFSUB__(v245, v253))
                {
                  break;
                }

                if (__OFADD__(v231, 1))
                {
                  goto LABEL_167;
                }

                if (v231 + 1 < 1)
                {
                  goto LABEL_149;
                }

                ++v251;
                v252 += 24;
                v245 -= v253;
                if (v250 == v251)
                {
                  v251 = v250;
                  goto LABEL_147;
                }
              }

LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
              return result;
            }

            v247 = ((-15 << ((4 * v236 + 8) & 0x3C)) - 1) & v236 | (v234 << ((4 * v236 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v245 = 0;
            v248 = 0;
            v123 = v267;
LABEL_150:
            v302 = v247;
            v296 = v248;
            v246 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v303, v247, v248, v301, v276);
            result = swift_unknownObjectRelease();
            v229 = v298;
            v80 = v299;
          }

          else
          {
            v245 = 0;
            v296 = 0;
            v302 = 0;
            v246 = 0;
            v123 = v267;
          }

          v255 = *(v229 + 40);
          v344 = *(v229 + 24);
          v345 = v255;
          v346 = *(v229 + 56);
          if (__OFSUB__(0, v245))
          {
            goto LABEL_179;
          }

          swift_unknownObjectRetain();
          v256 = v291;
          v257 = v288;
          v165 = BigString.UTF8View.index(_:offsetBy:)();
          v280 = v258;
          v276 = v259;
          v261 = v260;
          swift_unknownObjectRelease();
          v163 = v261;
          v167 = v257;
          v162 = v256;
          v160 = 0;
          v121 = v290;
          v177 = v285;
          v168 = v274;
          v124 = v275;
          v166 = v246;
          v169 = v302;
        }
      }

      else
      {
        v218 = v285;
        v273 = v216;
        if (v286 == 2)
        {
          v170 = *(v298 + 24);
          v171 = *(v298 + 56);
          v342 = *(v298 + 40);
          v343 = v171;
          v172 = *(v298 + 40);
          v338 = *(v298 + 24);
          v339 = v172;
          v340 = *(v298 + 56);
          v341 = v170;
          BigString.startIndex.getter();
          v377[0] = v341;
          v377[1] = v342;
          v378 = v343;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v377, &v326);
          v165 = BigString.UTF8View.index(_:offsetBy:)();
          v280 = v173;
          v276 = v174;
          v176 = v175;
          outlined destroy of BigString(&v341);
        }

        else
        {
          v219 = *(v298 + 40);
          v335 = *(v298 + 24);
          v336 = v219;
          v337 = *(v298 + 56);
          if (__OFSUB__(v294, v270))
          {
            goto LABEL_177;
          }

          swift_unknownObjectRetain();
          v165 = BigString.UTF8View.index(_:offsetBy:)();
          v280 = v220;
          v276 = v221;
          v176 = v222;
          swift_unknownObjectRelease();
        }

        v160 = 0;
        v162 = v165;
        v167 = v176;
        v121 = v290;
        v177 = v218;
        v168 = v274;
        v124 = v275;
        v166 = v301;
        v169 = v302;
        v163 = v176;
      }

      v178 = __OFADD__(v177, 1);
      result = (v177 + 1);
      if (v178)
      {
        goto LABEL_165;
      }
    }
  }

  v125 = v123 - v122;
  if (__OFSUB__(v123, v122))
  {
    __break(1u);
  }

  else
  {
    v126 = *(v121 + 176);
    if (*(v121 + 208) == 2)
    {
      v127 = v126 != 2;
      v128 = v284;
    }

    else
    {
      v128 = v284;
      v127 = v126 == 2 || (v124 ^ *(v121 + 152)) > 0x3FF;
    }

    v143 = v283;
    if (!__OFADD__(v125, v127))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_155:
  v143 = v283;
  v128 = v284;
LABEL_32:
  MEMORY[0x1865CD060]();
  v144 = v281;
  outlined init with copy of AttributedString.Runs(v121, v281);
  outlined init with copy of AttributedString.Runs(v144, v143);
  v145 = (v143 + *(v282 + 36));
  v146 = *(v144 + 56);
  v147 = *(v144 + 88);
  v324 = *(v144 + 72);
  v325[0] = v147;
  *(v325 + 10) = *(v144 + 98);
  v148 = *(v144 + 24);
  v320 = *(v144 + 8);
  v321 = v148;
  v322 = *(v144 + 40);
  v323 = v146;
  outlined destroy of AttributedString.Runs(v144);
  v149 = v325[0];
  v145[4] = v324;
  v145[5] = v149;
  *(v145 + 90) = *(v325 + 10);
  v150 = v321;
  *v145 = v320;
  v145[1] = v150;
  v151 = v323;
  v145[2] = v322;
  v145[3] = v151;
  specialized IndexingIterator.next()(&v304);
  v310 = v304;
  v311 = v305;
  v313 = v307;
  v314 = v308;
  v312 = v306;
  v152 = v304;
  v315 = v309;
  v153 = *(&v304 + 1);
  v318 = v307;
  v319 = v308;
  v316 = v305;
  for (i = v306; v304; i = v306)
  {

    specialized Dictionary<>.hash(into:)(v128, v152);
    specialized Set.hash(into:)(v128, v153);

    v154 = *(v80 + 40);
    v360[0] = *(v80 + 24);
    v360[1] = v154;
    v360[2] = *(v80 + 56);
    v356 = v316;
    v357 = i;
    v358 = v318;
    v359 = v319;
    v373[0] = v360[0];
    v373[1] = v154;
    v374 = *(v80 + 56);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v373, &v304);
    BigString.subscript.getter();
    outlined destroy of BigString(v360);
    BigSubstring.hash(into:)();
    outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
    outlined destroy of BigSubstring(&v326);
    specialized IndexingIterator.next()(&v304);
    v312 = v306;
    v313 = v307;
    v314 = v308;
    v315 = v309;
    v310 = v304;
    v311 = v305;
    v153 = *(&v304 + 1);
    v152 = v304;
    v318 = v307;
    v319 = v308;
    v316 = v305;
  }

  outlined destroy of TermOfAddress?(v143, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  return outlined destroy of AttributedString.Runs(v290);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized AttributedStringProtocol.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

__n128 specialized AttributedStringProtocol.description.getter(uint64_t a1)
{
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v427);
  v441 = (&v393 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v437 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v421 = &v393 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v423 = &v393 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v439 = &v393 - v8;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd) - 8;
  MEMORY[0x1EEE9AC00](v442);
  v434 = &v393 - v9;
  v428 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v428);
  v426 = &v393 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v429 = &v393 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v395 = &v393 - v14;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v424 = *(v440 - 8);
  MEMORY[0x1EEE9AC00](v440);
  v436 = &v393 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v430 = &v393 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v393 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v393 - v22;
  v24 = *(a1 + 40);
  v533 = *(a1 + 24);
  v534 = v24;
  v535 = *(a1 + 56);
  v25 = BigString.startIndex.getter();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = BigString.endIndex.getter();
  *&v511 = v25;
  *(&v511 + 1) = v27;
  *&v512 = v29;
  *(&v512 + 1) = v31;
  *&v513 = v32;
  *(&v513 + 1) = v33;
  *&v514 = v34;
  *(&v514 + 1) = v35;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v465 = 0;
  v466 = 0xE000000000000000;
  v36 = *(v424 + 16);
  v393 = v23;
  v397 = v36;
  v398 = v424 + 16;
  v36(v20, v23, v440);
  *v429 = a1;
  v422 = a1;

  v37 = v434;
  RangeSet.init()();
  v38 = v439;
  v425 = v20;
  RangeSet.ranges.getter();
  v39 = v437;
  v40 = v38;
  (*(v437 + 16))(v37, v38, v3);
  v41 = *(v442 + 44);
  v42 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v43 = *(v39 + 8);
  v437 = v39 + 8;
  v442 = v43;
  v43(v40, v3);
  dispatch thunk of Collection.endIndex.getter();
  v44 = *(v37 + v41);
  v433 = v3;
  if (v44 != v511)
  {
    v431 = v41;
    v432 = v42;
    do
    {
      v55 = dispatch thunk of Collection.subscript.read();
      v438 = v56[4];
      v57 = v56[6];
      *&v435 = v56[7];
      *(&v435 + 1) = v57;
      v55(&v511, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v58 = v422;
      v59 = *(v422 + 40);
      v530 = *(v422 + 24);
      v531 = v59;
      v532 = *(v422 + 56);
      swift_unknownObjectRetain();
      v60 = BigString.UnicodeScalarView.index(roundingDown:)();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      swift_unknownObjectRelease();
      v67 = *(v58 + 40);
      v527 = *(v58 + 24);
      v528 = v67;
      v529 = *(v58 + 56);
      swift_unknownObjectRetain();
      v68 = BigString.UnicodeScalarView.index(roundingDown:)();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      swift_unknownObjectRelease();
      *&v511 = v60;
      *(&v511 + 1) = v62;
      *&v512 = v64;
      v3 = v433;
      *(&v512 + 1) = v66;
      *&v513 = v68;
      *(&v513 + 1) = v70;
      *&v514 = v72;
      *(&v514 + 1) = v74;
      if ((v68 ^ v60) >= 0x400)
      {
        v75 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v75(v467, 0);
      }

      v37 = v434;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v37 + v431) != v511);
  }

  outlined destroy of TermOfAddress?(v37, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v45 = v428;
  v46 = v429;
  v47 = v440;
  v397(v429 + *(v428 + 24), v430, v440);
  v48 = v439;
  RangeSet.ranges.getter();
  v49 = RangeSet.Ranges.count.getter();
  v50 = v48;
  v51 = v442;
  (v442)(v50, v3);
  v52 = *(v45 + 28);
  LODWORD(v431) = v49 > 1;
  *(v46 + v52) = v431;
  v53 = v423;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v467[0] == v511)
  {
    v51(v53, v3);
    v54 = v422;
  }

  else
  {
    v76 = dispatch thunk of Collection.subscript.read();
    v78 = *v77;
    v419 = v77[1];
    v420 = v78;
    v79 = v77[2];
    v417 = v77[3];
    v418 = v79;
    v76(&v511, 0);
    v80 = v53;
    v81 = v51;
    v51(v80, v3);
    v82 = v421;
    RangeSet.ranges.getter();
    v83 = dispatch thunk of Collection.isEmpty.getter();
    v84 = v3;
    v54 = v422;
    if ((v83 & 1) == 0)
    {
      v350 = v82;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v351 = dispatch thunk of Collection.subscript.read();
      v353 = v352[4];
      v416 = v352[5];
      v354 = v352[7];
      v423 = v352[6];
      v351(&v511, 0);
      v81(v350, v84);
      AttributedString.Guts.findRun(at:)(v420, v417, &v511);
      v438 = *(&v511 + 1);
      v411 = *(&v512 + 1);
      v412 = v512;
      v421 = *(&v513 + 1);
      v414 = *(&v514 + 1);
      v415 = v514;
      *&v435 = v515;
      *(&v435 + 1) = v511;
      v355 = *(v54 + 40);
      v524 = *(v54 + 24);
      v525 = v355;
      v526 = *(v54 + 56);
      v356 = BigString.endIndex.getter();
      v413 = v354;
      if ((v356 ^ v353) > 0x3FF)
      {
        v409 = v353;
        AttributedString.Guts.findRun(at:)(v353, v354, &v511);
        v432 = *(&v511 + 1);
        v434 = v511;
        v410 = *(&v512 + 1);
        v110 = v512;
        v407 = v514;
        v408 = *(&v513 + 1);
        v366 = v47;
        v103 = *(&v514 + 1);
        v105 = v515;
        v86 = v439;
        RangeSet.ranges.getter();
        v122 = RangeSet.Ranges.count.getter();
        v81(v86, v84);
        v367 = *(v424 + 8);
        v367(v430, v366);
        v367(v425, v366);
        v100 = v407;
        v101 = v408;
        v109 = v410;
        v118 = v409;
        v123 = v429;
        v111 = 0;
        v98 = v427;
        v108 = v431;
        v113 = v419;
        v112 = v420;
        v115 = *(&v435 + 1);
        v116 = v435;
        v117 = v417;
        v114 = v418;
        v89 = v421;
        v93 = v414;
        v91 = v415;
        v119 = v416;
        v120 = v423;
        v107 = v412;
        v121 = v413;
        v106 = v411;
      }

      else
      {
        v357 = v416;
        v358 = v353;
        v359 = *(v54 + 72);
        if (v359)
        {
          v360 = *(v54 + 80);
        }

        else
        {
          v360 = 0;
        }

        v410 = v360;
        v361 = *(v54 + 96);
        v362 = swift_unknownObjectRetain();
        v434 = v361;
        v432 = specialized Rope._endPath.getter(v362);
        if (v359)
        {
          swift_unknownObjectRelease();
        }

        v363 = v429;
        v86 = v439;
        RangeSet.ranges.getter();
        v364 = v433;
        v122 = RangeSet.Ranges.count.getter();
        (v442)(v86, v364);
        v365 = *(v424 + 8);
        v365(v430, v47);
        v365(v425, v47);
        v123 = v363;
        v111 = 0;
        v110 = 0;
        v118 = v358;
        v101 = v358;
        v119 = v357;
        v100 = v357;
        v120 = v423;
        v103 = v423;
        v121 = v413;
        v93 = v414;
        v105 = v413;
        v98 = v427;
        v108 = v431;
        v113 = v419;
        v112 = v420;
        v115 = *(&v435 + 1);
        v116 = v435;
        v117 = v417;
        v114 = v418;
        v89 = v421;
        v91 = v415;
        v106 = v411;
        v107 = v412;
        v109 = v410;
      }

      goto LABEL_17;
    }

    v81(v82, v84);
  }

  v85 = *(v54 + 72);
  v86 = v439;
  v87 = v424;
  if (v85)
  {
    v438 = *(v85 + 18);
  }

  else
  {
    v438 = 0;
  }

  *(&v435 + 1) = *(v54 + 96);
  v88 = *(v54 + 40);
  v524 = *(v54 + 24);
  v525 = v88;
  v526 = *(v54 + 56);
  v89 = BigString.startIndex.getter();
  v91 = v90;
  v93 = v92;
  v94 = *(v54 + 72);
  v434 = *(v54 + 96);
  *&v435 = v95;
  if (v94)
  {
    v432 = *(v94 + 18);
    v96 = *(v87 + 8);
    swift_unknownObjectRetain();
    v96(v430, v47);
    v96(v425, v47);
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = *(v87 + 8);
    v97(v430, v47);
    v97(v425, v47);
    v432 = 0;
  }

  v98 = v427;
  v99 = *(v54 + 40);
  v523[2] = *(v54 + 24);
  v523[3] = v99;
  v523[4] = *(v54 + 56);
  v101 = BigString.startIndex.getter();
  v103 = v102;
  v105 = v104;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = -1;
  v112 = v89;
  v113 = v91;
  v114 = v93;
  v115 = *(&v435 + 1);
  v116 = v435;
  v117 = v435;
  v118 = v101;
  v119 = v100;
  v120 = v102;
  v121 = v105;
  v122 = -1;
  v123 = v429;
LABEL_17:
  *(v123 + 8) = v106;
  *(v123 + 16) = v115;
  *(v123 + 24) = v438;
  *(v123 + 32) = v107;
  *(v123 + 40) = v89;
  *(v123 + 48) = v91;
  *(v123 + 56) = v93;
  *(v123 + 64) = v116;
  *(v123 + 72) = v112;
  *(v123 + 80) = v113;
  *(v123 + 88) = v114;
  *(v123 + 96) = v117;
  *(v123 + 104) = v111;
  *(v123 + 112) = 0;
  *(v123 + 113) = v108;
  v124 = v434;
  *(v123 + 120) = v109;
  *(v123 + 128) = v124;
  *(v123 + 136) = v432;
  *(v123 + 144) = v110;
  *(v123 + 152) = v101;
  *(v123 + 160) = v100;
  *(v123 + 168) = v103;
  *(v123 + 176) = v105;
  *(v123 + 184) = v118;
  *(v123 + 192) = v119;
  *(v123 + 200) = v120;
  *(v123 + 208) = v121;
  *(v123 + 216) = v122;
  *(v123 + 224) = 0;
  *(v123 + 225) = v108;
  v125 = v395;
  outlined init with take of AttributedString.Runs(v123, v395);
  v126 = v426;
  outlined init with copy of AttributedString.Runs(v125, v426);
  v127 = v441;
  outlined init with copy of AttributedString.Runs(v126, v441);
  v128 = v127 + *(v98 + 36);
  v129 = *(v126 + 8);
  v130 = *(v126 + 16);
  v131 = *(v126 + 48);
  v462 = *(v126 + 32);
  v463 = v131;
  v132 = *(v126 + 72);
  v464 = *(v126 + 64);
  v460 = *(v126 + 80);
  v461 = v130;
  v459 = *(v126 + 112);
  v133 = *(v126 + 96);
  v458 = *(v126 + 104);
  outlined destroy of AttributedString.Runs(v126);
  v134 = v460;
  *(v128 + 8) = v461;
  v135 = v463;
  *(v128 + 24) = v462;
  *(v128 + 40) = v135;
  v427 = v129;
  *v128 = v129;
  *(v128 + 56) = v464;
  *(v128 + 64) = v132;
  v432 = v132;
  *(v128 + 72) = v134;
  v136 = v458;
  *(v128 + 88) = v133;
  *(v128 + 96) = v136;
  *(v128 + 104) = v459;
  v138 = *(v128 + 8);
  v137 = *(v128 + 16);
  v434 = v133;
  *&v435 = v137;
  v139 = *(v128 + 32);
  *(&v435 + 1) = *(v128 + 24);
  v429 = v139;
  v140 = *(v128 + 40);
  v425 = *(v128 + 48);
  v426 = v140;
  v141 = *(v128 + 56);
  v142 = *(v128 + 72);
  v418 = *(v128 + 80);
  v419 = v142;
  v396 = (v424 + 8);
  LODWORD(v424) = *(v128 + 104);
  v394 = v128;
  v143 = *(v128 + 105);
  v144 = v433;
  v145 = v440;
  while (1)
  {
    *&v505 = v427;
    *(&v505 + 1) = v138;
    v506 = v435;
    *&v507 = v429;
    *(&v507 + 1) = v426;
    v508.n128_u64[0] = v425;
    v508.n128_u64[1] = v141;
    *&v509 = v432;
    *(&v509 + 1) = v419;
    *&v510[0] = v418;
    *(&v510[0] + 1) = v434;
    *&v510[1] = v136;
    BYTE8(v510[1]) = v424;
    BYTE9(v510[1]) = v143;
    v147 = v427;
    v148 = v441;
    if (v427 == v441[15])
    {
      v149 = v441[26];
      if (v434 == 2)
      {
        if (v149 == 2)
        {
          goto LABEL_258;
        }
      }

      else if (v149 != 2 && (v441[23] ^ v432) < 0x400)
      {
        goto LABEL_258;
      }
    }

    v423 = v141;
    v431 = v138;
    v438 = v136;
    v150 = *(v441 + 23);
    v521 = *(v441 + 21);
    v522 = v150;
    v523[0] = *(v441 + 25);
    *(v523 + 10) = *(v441 + 210);
    v151 = *(v441 + 15);
    v517 = *(v441 + 13);
    v518 = v151;
    v152 = *(v441 + 19);
    v519 = *(v441 + 17);
    v520 = v152;
    v153 = *(v441 + 7);
    v513 = *(v441 + 5);
    v514 = v153;
    v154 = *(v441 + 11);
    v515 = *(v441 + 9);
    v516 = v154;
    v155 = *(v441 + 3);
    v511 = *(v441 + 1);
    v512 = v155;
    v156 = v511;
    v413 = v515;
    v157 = *(&v516 + 1);
    v158 = specialized Range.contains(_:)(&v505);
    if (v147 < v156 || (v158 & 1) == 0)
    {
      goto LABEL_265;
    }

    v159 = v156 < v147 || v157 == 2;
    v160 = v159;
    v161 = v431;
    v162 = *(&v435 + 1);
    if (!v159)
    {
      if (v434 == 2)
      {
        goto LABEL_287;
      }

      if (v432 >> 10 < v413 >> 10)
      {
        goto LABEL_277;
      }
    }

    LODWORD(v412) = v160;
    if (v518 < v147)
    {
      goto LABEL_266;
    }

    v414 = v522;
    v416 = *(&v523[0] + 1);
    v163 = v147 < v518 || v434 == 2;
    v164 = v163;
    LODWORD(v411) = v164;
    if (!v163)
    {
      if (v416 == 2)
      {
        goto LABEL_288;
      }

      if (v414 >> 10 < v432 >> 10)
      {
        goto LABEL_278;
      }
    }

    v421 = (v429 >> 11);
    v410 = v518;
    if (*(&v435 + 1) == 1 || (v430 = *v441, v431 != *(v430 + 12)))
    {
      if (*(v441 + *(v428 + 28)))
      {
        goto LABEL_273;
      }

      v170 = *v441;
      v148 = *(*v441 + 9);
      v171 = *(*v441 + 10);
      if (v148)
      {
        v172 = *(*v441 + 10);
      }

      else
      {
        v172 = 0;
      }

      if (v147 < 0 || v172 < v147)
      {
        goto LABEL_274;
      }

      v173 = *(v170 + 12);
      v420 = *(v170 + 11);
      v430 = v170;
      v408 = v171;
      if (v148)
      {
        v174 = (v148 + 16);
        v175 = *(v148 + 16);
        if (*(v148 + 16))
        {
          if (v147 < v171)
          {
            v415 = v173;
            v176 = *(v148 + 18);
            swift_unknownObjectRetain_n();
            if (v176)
            {
              v177 = v427;
              v178 = v176;
              v179 = v148;
              do
              {
                v180 = *v174;
                if (*v174)
                {
                  v182 = 0;
                  v183 = (v179 + 32);
                  while (1)
                  {
                    v184 = *v183;
                    v183 += 3;
                    v185 = v177 - v184;
                    if (__OFSUB__(v177, v184))
                    {
                      goto LABEL_253;
                    }

                    if (__OFADD__(v185, 1))
                    {
                      goto LABEL_254;
                    }

                    if (v185 + 1 < 1)
                    {
                      v180 = v182;
                      goto LABEL_63;
                    }

                    ++v182;
                    v177 = v185;
                    if (v180 == v182)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                v185 = v177;
LABEL_72:
                if (v185)
                {
                  goto LABEL_262;
                }

                v177 = 0;
LABEL_63:
                v178 = (v180 << ((4 * v176 + 8) & 0x3C)) | ((-15 << ((4 * v176 + 8) & 0x3C)) - 1) & v178;
                v181 = *(v179 + 24 + 24 * v180);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v174 = (v181 + 16);
                LOBYTE(v176) = *(v181 + 18);
                v179 = v181;
              }

              while (v176);
              v417 = v181;
              v175 = *v174;
              if (*v174)
              {
                v144 = v433;
                goto LABEL_79;
              }

              v144 = v433;
              v86 = v439;
              v193 = 0;
              if (!v177)
              {
LABEL_88:
                swift_unknownObjectRelease();
                v188 = v178 & 0xFFFFFFFFFFFFF0FFLL | (v193 << 8);
                v173 = v415;
                v187 = v420;
                goto LABEL_89;
              }

LABEL_285:
              __break(1u);
              goto LABEL_286;
            }

            v178 = 0;
            v177 = v427;
            v417 = v148;
LABEL_79:
            v191 = 0;
            v192 = v175;
            v193 = v177 & ~(v177 >> 63);
            v86 = v439;
            while ((v177 ^ v191) != 0x8000000000000000)
            {
              if (v193 == v191)
              {
                goto LABEL_88;
              }

              if (v192 == ++v191)
              {
                v193 = v192;
                if (v177 == v191)
                {
                  goto LABEL_88;
                }

                goto LABEL_285;
              }
            }

            goto LABEL_261;
          }
        }
      }

      v186 = swift_unknownObjectRetain();
      v187 = v420;
      v188 = specialized Rope._endPath.getter(v186);
      v417 = 0;
      v86 = v439;
LABEL_89:
      v190 = v423;
      v409 = v188;
      if (v148)
      {
        v189 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v173, v188, v417, v148, v408, v187);
        swift_unknownObjectRelease();
      }

      else
      {
        v189 = 0;
      }
    }

    else
    {
      if (v423 == 2)
      {
        v165 = *(v430 + 9);
        if (v165)
        {
          v167 = *(v430 + 10);
          v166 = *(v430 + 11);
          swift_unknownObjectRetain();
          v168 = v435;
          v169 = v167;
          v161 = v431;
          v408 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v431, v435, v162, v165, v169, v166);
          swift_unknownObjectRelease();
        }

        else
        {
          v408 = 0;
          v168 = v435;
        }

        v399 = 0;
        LODWORD(v420) = 1;
        v417 = v162;
        v409 = v168;
        v415 = v161;
        goto LABEL_100;
      }

      v173 = v431;
      v417 = *(&v435 + 1);
      v409 = v435;
      v189 = v421;
      v190 = v423;
    }

    LODWORD(v420) = v190 == 2;
    v399 = v190 != 2;
    v415 = v173;
    if (v190 != 2 && v421 == v189)
    {
      v194 = *(v430 + 40);
      v496 = *(v430 + 24);
      v497 = v194;
      v498 = *(v430 + 56);
      swift_unknownObjectRetain();
      v195 = BigString.UTF8View.index(roundingDown:)();
      v407 = v197;
      v408 = v196;
      v406 = v198;
      v199 = v195;
      swift_unknownObjectRelease();
      LODWORD(v420) = 0;
      if (v424)
      {
        goto LABEL_101;
      }

      goto LABEL_95;
    }

    v408 = v189;
LABEL_100:
    v206 = *(v430 + 24);
    v207 = *(v430 + 56);
    v503 = *(v430 + 40);
    v504 = v207;
    v208 = *(v430 + 40);
    v499 = *(v430 + 24);
    v500 = v208;
    v501 = *(v430 + 56);
    v502 = v206;
    v407 = BigString.startIndex.getter();
    v536[0] = v502;
    v536[1] = v503;
    v537 = v504;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v536, &v451);
    v199 = BigString.UTF8View.index(_:offsetBy:)();
    v407 = v210;
    v408 = v209;
    v406 = v211;
    outlined destroy of BigString(&v502);
    v190 = v423;
    if (v424)
    {
LABEL_101:
      v405 = v199;
      if (v434 == 2)
      {
        v212 = v199;
      }

      else
      {
        v212 = v432;
      }

      RangeSet.ranges.getter();
      v148 = v86;
      v213 = RangeSet.Ranges.count.getter();
      (v442)(v86, v144);
      if (v213 < 1)
      {
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      v214 = 0;
      v215 = v212 >> 10;
      while (!__OFADD__(v214, v213))
      {
        v216 = (v214 + v213) / 2;
        v217 = v439;
        RangeSet.ranges.getter();
        v148 = v217;
        RangeSet.Ranges.subscript.getter();
        (v442)(v217, v144);
        v200 = v451;
        if (v215 >= v451 >> 10)
        {
          v204 = v454;
          if (v215 < v454 >> 10)
          {
            v201 = v452;
            v203 = *(&v453 + 1);
            v202 = v453;
            v205 = v429;
            v190 = v423;
            v199 = v405;
            goto LABEL_112;
          }

          v214 = v216 + 1;
          v216 = v213;
        }

        v213 = v216;
        v145 = v440;
        if (v214 >= v216)
        {
          goto LABEL_252;
        }
      }

      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
      goto LABEL_263;
    }

LABEL_95:
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v442)(v86, v144);
    v200 = v451;
    v201 = v452;
    v203 = *(&v453 + 1);
    v202 = v453;
    v204 = v454;
    v205 = v429;
    if (v434 != 2 && (v432 >> 10 < v451 >> 10 || v432 >> 10 >= v454 >> 10))
    {
      goto LABEL_283;
    }

LABEL_112:
    v403 = v203;
    v404 = v202;
    v405 = v201;
    v219 = v425;
    v218 = v426;
    if (v420)
    {
      v205 = v199;
      v218 = v408;
      v219 = v407;
      v190 = v406;
    }

    v400 = v219;
    v401 = v190;
    v402 = v218;
    if (v434 == 2)
    {
      v220 = v199;
    }

    else
    {
      v220 = v432;
    }

    v221 = v419;
    if (v434 == 2)
    {
      v221 = v408;
    }

    v419 = v221;
    v222 = v418;
    if (v434 == 2)
    {
      v222 = v407;
    }

    v418 = v222;
    if (v434 == 2)
    {
      v223 = v406;
    }

    else
    {
      v223 = v434;
    }

    v408 = v223;
    v224 = v430;
    v225 = *(v430 + 9);
    v226 = *(v430 + 10);
    v227 = *(v430 + 11);
    v228 = *(v430 + 12);
    swift_unknownObjectRetain();
    v229 = specialized Rope.subscript.getter(v415, v409, v417, v225, v226, v227, v228);
    v231 = v230;
    v233 = v232;
    swift_unknownObjectRelease();
    if (v200 >> 10 >= v205 >> 10)
    {
      v234 = v200;
    }

    else
    {
      v234 = v205;
    }

    if (v200 >> 10 >= v205 >> 10)
    {
      v235 = v405;
    }

    else
    {
      v235 = v402;
    }

    if (v200 >> 10 >= v205 >> 10)
    {
      v236 = v404;
    }

    else
    {
      v236 = v400;
    }

    if (v200 >> 10 >= v205 >> 10)
    {
      v237 = v403;
    }

    else
    {
      v237 = v401;
    }

    v238 = v229 + (v205 >> 11);
    if (__OFADD__(v229, v205 >> 11))
    {
      goto LABEL_267;
    }

    if ((v204 >> 11) < v238)
    {
      v238 = v204 >> 11;
    }

    v239 = *(v224 + 24);
    v240 = *(v224 + 40);
    v241 = *(v224 + 56);
    v406 = v224 + 24;
    v493 = v239;
    v494 = v240;
    v495 = v241;
    if (__OFSUB__(v238, v220 >> 11))
    {
      goto LABEL_268;
    }

    v242 = v224;
    v407 = v234;
    v409 = v235;
    v415 = v236;
    v417 = v237;
    swift_unknownObjectRetain();
    v243 = BigString.UTF8View.index(_:offsetBy:)();
    v245 = v244;
    v247 = v246;
    v249 = v248;
    swift_unknownObjectRelease();
    v451 = v231;
    v452 = v233;
    *&v453 = v407;
    *(&v453 + 1) = v409;
    *&v454 = v415;
    *(&v454 + 1) = v417;
    *&v455 = v243;
    *(&v455 + 1) = v245;
    *&v456 = v247;
    *(&v456 + 1) = v249;
    v457 = v242;
    v250 = v242;
    if (v412)
    {
      v251 = v427;
      v145 = v440;
      v252 = v441;
      v253 = v431;
      v255 = *(&v435 + 1);
      v254 = v435;
      if (v427 >= v410)
      {
        if (v416 == 2)
        {
          goto LABEL_289;
        }

        if (v434 != 2)
        {
          v256 = v432 >> 10;
          goto LABEL_149;
        }
      }
    }

    else
    {
      v254 = v435;
      v251 = v427;
      if (v434 == 2)
      {
        goto LABEL_290;
      }

      v253 = v431;
      v256 = v432 >> 10;
      v145 = v440;
      v252 = v441;
      v255 = *(&v435 + 1);
      if (v432 >> 10 < v413 >> 10)
      {
        goto LABEL_279;
      }

      if (v427 >= v410)
      {
        if (v416 == 2)
        {
          goto LABEL_289;
        }

LABEL_149:
        if (v256 >= v414 >> 10)
        {
          goto LABEL_282;
        }
      }
    }

    if (!v411)
    {
      if (v416 == 2)
      {
        goto LABEL_291;
      }

      if (v414 >> 10 < v432 >> 10)
      {
        goto LABEL_280;
      }
    }

    if (v255 != 1 && v253 == *(v250 + 12))
    {
      *&v435 = v254;
      *(&v435 + 1) = v255;
      if ((v420 & 1) == 0)
      {

        v284 = v421;
        goto LABEL_199;
      }

      v257 = *(v250 + 9);
      if (v257)
      {
        v259 = *(v250 + 10);
        v258 = *(v250 + 11);

        swift_unknownObjectRetain();
        v260 = v431;
        v261 = v254;
        v262 = v255;
        v263 = v257;
        v264 = v259;
        v265 = v258;
LABEL_197:
        v284 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v260, v261, v262, v263, v264, v265);
        swift_unknownObjectRelease();
        goto LABEL_199;
      }

      goto LABEL_198;
    }

    if (*(v252 + *(v428 + 28)))
    {
      goto LABEL_275;
    }

    v148 = *(v250 + 9);
    v266 = *(v250 + 10);
    if (v148)
    {
      v267 = *(v250 + 10);
    }

    else
    {
      v267 = 0;
    }

    if (v251 < 0 || v267 < v251)
    {
      goto LABEL_276;
    }

    v268 = *(v250 + 12);
    v419 = *(v250 + 11);
    v431 = v268;
    if (v148)
    {
      v269 = (v148 + 16);
      v270 = *(v148 + 16);
      if (*(v148 + 16))
      {
        if (v251 < v266)
        {
          break;
        }
      }
    }

    v282 = swift_unknownObjectRetain();
    v261 = specialized Rope._endPath.getter(v282);
    v283 = 0;
    v435 = v261;
    if (v148)
    {
LABEL_196:
      v260 = v268;
      v262 = v283;
      v263 = v148;
      v264 = v266;
      v265 = v419;
      goto LABEL_197;
    }

LABEL_198:
    v284 = 0;
LABEL_199:
    v291 = v399;
    if (v421 != v284)
    {
      v291 = 0;
    }

    v419 = v284;
    if (v291)
    {
      v292 = *(v250 + 40);
      v484 = *(v250 + 24);
      v485 = v292;
      v486 = *(v250 + 56);
      swift_unknownObjectRetain();
      v418 = BigString.UTF8View.index(roundingDown:)();
      swift_unknownObjectRelease();
      v294 = *(&v435 + 1);
      v293 = v435;
      v295 = v431;
      v296 = v251;
    }

    else
    {
      v297 = *v406;
      v298 = *(v406 + 2);
      v491 = *(v406 + 1);
      v492 = v298;
      v299 = *(v430 + 40);
      v487 = *(v430 + 24);
      v488 = v299;
      v489 = *(v430 + 56);
      v490 = v297;
      BigString.startIndex.getter();
      v418 = v300;
      v301 = v430;
      v293 = v435;
      v538[0] = v490;
      v538[1] = v491;
      v539 = v492;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v538, &v443);
      v295 = v431;
      v250 = v301;
      v296 = v427;
      v294 = *(&v435 + 1);
      v418 = BigString.UTF8View.index(_:offsetBy:)();
      outlined destroy of BigString(&v490);
    }

    v302 = v250;
    v304 = *(v250 + 9);
    v303 = *(v250 + 10);
    v305 = *(v302 + 11);
    v306 = *(v302 + 12);
    v443 = v295;
    *&v444 = v293;
    *(&v444 + 1) = v294;
    v307 = __OFADD__(v296, 1);
    v308 = v296 + 1;
    if (v307)
    {
      goto LABEL_269;
    }

    v427 = v308;
    swift_unknownObjectRetain();
    *&v435 = v293;
    *(&v435 + 1) = v294;
    v431 = v305;
    v309 = specialized Rope.subscript.getter(v295, v293, v294, v304, v303, v305, v306);

    if (__OFADD__(v419, v309))
    {
      goto LABEL_270;
    }

    if (v295 != v306)
    {
      goto LABEL_271;
    }

    v419 += v309;
    v310 = v304;
    v311 = specialized Rope._endPath.getter(v304);
    v312 = v435;
    if (v435 >= v311)
    {
      goto LABEL_272;
    }

    v313 = v295;
    if (*(&v435 + 1) && (v314 = (4 * *(*(&v435 + 1) + 18) + 8) & 0x3C, v315 = ((v435 >> v314) & 0xF) + 1, v315 < *(*(&v435 + 1) + 16)))
    {
      swift_unknownObjectRelease();
      *&v435 = (v315 << v314) | ((-15 << v314) - 1) & v312;
      v316 = v428;
      v317 = v441;
    }

    else
    {
      if (specialized Rope._Node.formSuccessor(of:)(&v443, v310))
      {
        swift_unknownObjectRelease();
        *&v435 = v444;
      }

      else
      {
        v318 = specialized Rope._endPath.getter(v310);
        swift_unknownObjectRelease();
        v443 = v313;
        v444 = v318;
        *&v435 = v318;
      }

      v316 = v428;
      v317 = v441;
    }

    v319 = *(v316 + 24);
    v144 = v433;
    v86 = v439;
    v431 = v443;
    *(&v435 + 1) = *(&v444 + 1);
    if (v424)
    {
      v397(v436, (v317 + v319), v145);
      if (v434 == 2)
      {
        v320 = v418;
      }

      else
      {
        v320 = v432;
      }

      RangeSet.ranges.getter();
      v148 = v86;
      v321 = RangeSet.Ranges.count.getter();
      (v442)(v86, v144);
      if (v321 >= 1)
      {
        v322 = 0;
        v323 = v320 >> 10;
        while (!__OFADD__(v322, v321))
        {
          v324 = (v322 + v321) / 2;
          RangeSet.ranges.getter();
          v148 = v86;
          RangeSet.Ranges.subscript.getter();
          (v442)(v86, v144);
          if (v323 < v443 >> 10)
          {
            v321 = (v322 + v321) / 2;
            if (v322 >= v324)
            {
              goto LABEL_255;
            }
          }

          else
          {
            v438 = (v322 + v321) / 2;
            v148 = v446;
            if (v323 < v446 >> 10)
            {
              (*v396)(v436, v145);
              v317 = v441;
              v316 = v428;
              goto LABEL_229;
            }

            v322 = v438 + 1;
            if (v438 + 1 >= v321)
            {
              goto LABEL_255;
            }
          }
        }

        goto LABEL_260;
      }

LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:

      v368 = v508;
      v369 = v510[0];
      v371 = v394;
      v370 = v395;
      v394[4] = v509;
      v371[5] = v369;
      *(v371 + 90) = *(v510 + 10);
      v372 = v506;
      *v371 = v505;
      v371[1] = v372;
      v371[2] = v507;
      v371[3] = v368;
      outlined destroy of AttributedString.Runs(v370);
      (*v396)(v393, v145);
      outlined destroy of TermOfAddress?(v148, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      return result;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v442)(v86, v144);
    v148 = v446;
LABEL_229:
    if (v419 >= (v148 >> 11))
    {
      if (__OFADD__(v438, 1))
      {
        goto LABEL_281;
      }

      ++v438;
      RangeSet.ranges.getter();
      v335 = RangeSet.Ranges.count.getter();
      v336 = v442;
      (v442)(v86, v144);
      if (v438 == v335)
      {
        v337 = *(v317 + 120);
        v338 = *(v317 + 128);
        v339 = *(v317 + 144);
        *&v435 = *(v317 + 136);
        *(&v435 + 1) = v339;
        v340 = *(v317 + 160);
        v429 = *(v317 + 152);
        v426 = v340;
        v427 = v337;
        v334 = *(v317 + 176);
        v425 = *(v317 + 168);
        v341 = *(v317 + 192);
        v432 = *(v317 + 184);
        v342 = *(v317 + 208);
        v418 = *(v317 + 200);
        v419 = v341;
        v434 = v342;
        v438 = *(v317 + 216);
        LODWORD(v424) = *(v317 + 224);
        v343 = *(v317 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v336(v86, v144);
        v432 = v443;
        v418 = *(&v444 + 1);
        v419 = v444;
        v434 = v445;
        AttributedString.Guts.findRun(at:)(v443, v445, &v443);
        LODWORD(v424) = 0;
        v338 = v443;
        v435 = v444;
        v427 = v445;
        v429 = v447;
        v334 = v450;
        v425 = v449;
        v426 = v448;
        v343 = *(v317 + *(v316 + 28));
      }

      LODWORD(v430) = v343;
    }

    else
    {
      if (v420)
      {
        v325 = *v406;
        v326 = *(v406 + 2);
        v482 = *(v406 + 1);
        v483 = v326;
        v327 = *(v430 + 40);
        v478 = *(v430 + 24);
        v479 = v327;
        v480 = *(v430 + 56);
        v481 = v325;
        v434 = BigString.startIndex.getter();
        v540[0] = v481;
        v540[1] = v482;
        v541 = v483;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v540, &v443);
        v328 = BigString.UTF8View.index(_:offsetBy:)();
        v330 = v329;
        v332 = v331;
        v334 = v333;
        outlined destroy of BigString(&v481);
      }

      else
      {
        v344 = *(v430 + 40);
        v475 = *(v430 + 24);
        v476 = v344;
        v477 = *(v430 + 56);
        if (__OFSUB__(v419, v421))
        {
          goto LABEL_284;
        }

        swift_unknownObjectRetain();
        v328 = BigString.UTF8View.index(_:offsetBy:)();
        v330 = v345;
        v332 = v346;
        v334 = v347;
        swift_unknownObjectRelease();
      }

      LODWORD(v424) = 0;
      LODWORD(v430) = *(v441 + *(v428 + 28));
      v429 = v328;
      v432 = v328;
      v425 = v332;
      v426 = v330;
      v418 = v332;
      v419 = v330;
      v434 = v334;
      v338 = v431;
    }

    v141 = v334;
    v348 = *(v422 + 40);
    v472 = *(v422 + 24);
    v473 = v348;
    v474 = *(v422 + 56);
    v468 = v453;
    v469 = v454;
    v470 = v455;
    v471 = v456;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](v467);
    v349 = v465 & 0xFFFFFFFFFFFFLL;
    if ((v466 & 0x2000000000000000) != 0)
    {
      v349 = HIBYTE(v466) & 0xF;
    }

    if (v349)
    {
      MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    }

    v443 = 0;
    *&v444 = 0xE000000000000000;
    MEMORY[0x1865CB0E0]();

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    v146 = v451;

    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v146);

    MEMORY[0x1865CB0E0](v443, v444);

    outlined destroy of AttributedString.Runs.Run(&v451);
    v136 = v438;
    v138 = v338;
    v143 = v430;
  }

  *(&v435 + 1) = v266;
  v271 = v250;
  v272 = *(v148 + 18);
  swift_unknownObjectRetain_n();

  if (!v272)
  {
    v287 = v271;
    v274 = 0;
    v273 = v427;
    v286 = v148;
LABEL_187:
    v288 = 0;
    v289 = v270;
    v290 = v273 & ~(v273 >> 63);
    v283 = v286;
    while ((v273 ^ v288) != 0x8000000000000000)
    {
      if (v290 == v288)
      {
        goto LABEL_195;
      }

      if (v289 == ++v288)
      {
        v290 = v289;
        if (v273 == v288)
        {
          goto LABEL_195;
        }

        goto LABEL_286;
      }
    }

LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  v273 = v427;
  v274 = v272;
  v275 = v148;
  do
  {
    v276 = *v269;
    if (*v269)
    {
      v278 = 0;
      v279 = (v275 + 32);
      while (1)
      {
        v280 = *v279;
        v279 += 3;
        v281 = v273 - v280;
        if (__OFSUB__(v273, v280))
        {
          goto LABEL_256;
        }

        if (__OFADD__(v281, 1))
        {
          goto LABEL_257;
        }

        if (v281 + 1 < 1)
        {
          v276 = v278;
          goto LABEL_170;
        }

        ++v278;
        v273 = v281;
        if (v276 == v278)
        {
          goto LABEL_179;
        }
      }
    }

    v281 = v273;
LABEL_179:
    if (v281)
    {
      goto LABEL_264;
    }

    v273 = 0;
LABEL_170:
    v274 = (v276 << ((4 * v272 + 8) & 0x3C)) | ((-15 << ((4 * v272 + 8) & 0x3C)) - 1) & v274;
    v277 = *(v275 + 24 + 24 * v276);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v269 = (v277 + 16);
    LOBYTE(v272) = *(v277 + 18);
    v275 = v277;
  }

  while (v272);
  v285 = v277;
  v270 = *v269;
  if (*v269)
  {
    v286 = v285;
    v287 = v430;
    goto LABEL_187;
  }

  v283 = v285;
  v287 = v430;
  v290 = 0;
  if (!v273)
  {
LABEL_195:
    swift_unknownObjectRelease();
    v261 = v274 & 0xFFFFFFFFFFFFF0FFLL | (v290 << 8);
    v251 = v427;
    v268 = v431;
    v266 = *(&v435 + 1);
    v250 = v287;
    *&v435 = v261;
    *(&v435 + 1) = v283;
    goto LABEL_196;
  }

LABEL_286:
  __break(1u);
LABEL_287:
  v374 = v510[0];
  v375 = v394;
  v394[4] = v509;
  v375[5] = v374;
  *(v375 + 90) = *(v510 + 10);
  v376 = v506;
  *v375 = v505;
  v375[1] = v376;
  v377 = v508;
  v375[2] = v507;
  v375[3] = v377;
  __break(1u);
LABEL_288:
  v378 = v510[0];
  v379 = v394;
  v394[4] = v509;
  v379[5] = v378;
  *(v379 + 90) = *(v510 + 10);
  v380 = v506;
  *v379 = v505;
  v379[1] = v380;
  v381 = v508;
  v379[2] = v507;
  v379[3] = v381;
  __break(1u);
LABEL_289:
  v382 = v510[0];
  v383 = v394;
  v394[4] = v509;
  v383[5] = v382;
  *(v383 + 90) = *(v510 + 10);
  v384 = v506;
  *v383 = v505;
  v383[1] = v384;
  v385 = v508;
  v383[2] = v507;
  v383[3] = v385;
  __break(1u);
LABEL_290:
  v386 = v510[0];
  v387 = v394;
  v394[4] = v509;
  v387[5] = v386;
  *(v387 + 90) = *(v510 + 10);
  v388 = v506;
  *v387 = v505;
  v387[1] = v388;
  v389 = v508;
  v387[2] = v507;
  v387[3] = v389;
  __break(1u);
LABEL_291:
  v390 = v510[0];
  v391 = v394;
  v394[4] = v509;
  v391[5] = v390;
  *(v391 + 90) = *(v510 + 10);
  v392 = v506;
  *v391 = v505;
  v391[1] = v392;
  result = v508;
  v391[2] = v507;
  v391[3] = result;
  __break(1u);
  return result;
}

void specialized AttributedString.replaceSubrange<A, B>(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  v7 = &unk_1EA7B2000;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = a2;
    v8 = *(v6 + 40);
    v37 = *(v6 + 24);
    v38 = v8;
    v39 = *(v6 + 56);
    v9 = *(v6 + 72);
    v10 = *(v6 + 80);
    v12 = *(v6 + 88);
    v11 = *(v6 + 96);
    type metadata accessor for AttributedString.Guts();
    v6 = swift_allocObject();
    v13 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v37, v36);
    v14 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v14);
    if (v9)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v13)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = v38;
        *(v6 + 24) = v37;
        *(v6 + 16) = add_explicit;
        *(v6 + 40) = v18;
        *(v6 + 56) = v39;
        *(v6 + 72) = v9;
        *(v6 + 80) = v10;
        *(v6 + 88) = v12;
        *(v6 + 96) = v11;
        *(v6 + 104) = MEMORY[0x1E69E7CC0];

        *v3 = v6;
        a2 = v26;
        v7 = &unk_1EA7B2000;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v7[147] != -1)
  {
    swift_once();
  }

  *(v6 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v19 = *(v6 + 40);
  v36[5] = *(v6 + 24);
  v36[6] = v19;
  v36[7] = *(v6 + 56);
  *&v27 = v6;
  *(&v27 + 1) = BigString.startIndex.getter();
  *&v28 = v20;
  *(&v28 + 1) = v21;
  *&v29 = v22;
  *(&v29 + 1) = BigString.endIndex.getter();
  *&v30 = v23;
  *(&v30 + 1) = v24;
  v31 = v25;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v36[2] = v29;
  v36[3] = v30;
  v36[4] = v31;
  v36[0] = v27;
  v36[1] = v28;
  outlined destroy of AttributedString.CharacterView(v36);
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(&v27, a2);
}

void AttributedString.replaceSubrange<A, B>(_:with:)(uint64_t a1, uint64_t *a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = a6;
    v11 = *(v10 + 40);
    v42 = *(v10 + 24);
    v43 = v11;
    v44 = *(v10 + 56);
    v13 = *(v10 + 72);
    v12 = *(v10 + 80);
    v14 = *(v10 + 88);
    v15 = *(v10 + 96);
    type metadata accessor for AttributedString.Guts();
    v10 = swift_allocObject();
    v16 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v42, v41);
    v17 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v17);
    if (v13)
    {
      v18 = v14 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18;
    if (v19 == v16)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v21 = v43;
        *(v10 + 24) = v42;
        *(v10 + 16) = add_explicit;
        *(v10 + 40) = v21;
        *(v10 + 56) = v44;
        *(v10 + 72) = v13;
        *(v10 + 80) = v12;
        *(v10 + 88) = v14;
        *(v10 + 96) = v15;
        *(v10 + 104) = MEMORY[0x1E69E7CC0];

        *v7 = v10;
        a6 = v29;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v10 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v22 = *(v10 + 40);
  v41[5] = *(v10 + 24);
  v41[6] = v22;
  v41[7] = *(v10 + 56);
  *&v32 = v10;
  *(&v32 + 1) = BigString.startIndex.getter();
  *&v33 = v23;
  *(&v33 + 1) = v24;
  *&v34 = v25;
  *(&v34 + 1) = BigString.endIndex.getter();
  *&v35 = v26;
  *(&v35 + 1) = v27;
  v36 = v28;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v41[2] = v34;
  v41[3] = v35;
  v41[4] = v36;
  v41[0] = v32;
  v41[1] = v33;
  outlined destroy of AttributedString.CharacterView(v41);
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v35 = v40;
  AttributedString.Guts.replaceSubrange<A>(_:with:)(&v32, a2, a4, a6);
}

void AttributedString.insert<A>(_:at:)(uint64_t *a1, void *a2, ValueMetadata *a3, uint64_t a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  specialized AttributedString.replaceSubrange<A, B>(_:with:)(&v8, a1, a3, a4);
}

uint64_t AttributedString.removeSubrange<A>(_:)(uint64_t a1)
{
  BigString.init()();
  v7 = 0;
  MEMORY[0x1865D26B0](&v7, 8);
  v2 = v7;
  type metadata accessor for AttributedString.Guts();
  inited = swift_initStackObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(inited + 24) = v8;
  v5 = v10;
  *(inited + 40) = v9;
  *(inited + 16) = add_explicit;
  *(inited + 56) = v5;
  *(inited + 72) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = v2;
  *(inited + 104) = MEMORY[0x1E69E7CC0];
  specialized AttributedString.replaceSubrange<A, B>(_:with:)(a1, inited);
  swift_setDeallocating();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void static AttributedString.+ infix<A>(_:_:)(void *a1@<X0>, uint64_t *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;

  AttributedString.append<A>(_:)(a2, a3, a4);
}

uint64_t key path setter for AttributedString.subscript<A>(_:) : <A>AttributedStringA(_OWORD *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v3 = a1[3];
  v11 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v7[2] = v9;
  v7[3] = v3;
  v7[4] = a1[4];
  v7[0] = v8[0];
  v7[1] = v1;
  outlined init with copy of AttributedSubstring(v8, &v6);
  return specialized AttributedString.subscript.setter(v7);
}

uint64_t AttributedString.subscript.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  specialized AttributedString.subscript.setter(a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

__n128 closure #1 in RangeSet<>._attributedStringIndices(version:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = a2;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 40) = result;
  *(a3 + 56) = v5;
  *(a3 + 72) = a2;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateV_AC0E10ComponentsVtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateV_AC0E10ComponentsVtGMR, &_s10Foundation4DateV_AA0B10ComponentsVtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateV4date_AC0E10ComponentsV10componentstGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateV4date_AC0E10ComponentsV10componentstGMR, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMR, &_sSays5UInt8VGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySo16UDateFormatFieldVGGMd, &_ss23_ContiguousArrayStorageCySaySo16UDateFormatFieldVGGMR, &_sSaySo16UDateFormatFieldVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVG_So16NSInflectionRuleCtGMd, &_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVG_So16NSInflectionRuleCtGMR, &_sSny10Foundation16AttributedStringV5IndexVG_So16NSInflectionRuleCtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVG_So27NSLocalizedNumberFormatRuleCtGMd, &_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVG_So27NSLocalizedNumberFormatRuleCtGMR, &_sSny10Foundation16AttributedStringV5IndexVG_So27NSLocalizedNumberFormatRuleCtMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 296);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[37 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 296 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 88);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[11 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 88 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t specialized Rope._Node.split(keeping:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 18);
  if (v4)
  {
    v5 = &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd;
  }

  else
  {
    v5 = &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 18) = v4;
  v16 = v6;
  if (*(v3 + 16) <= a1)
  {
    return v6;
  }

  if (a1 < 1)
  {
    v1[1] = 0;
    v1[2] = 0;
    *v1 = v6;
  }

  else
  {
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v8 = *v1;
    if (isUniquelyReferenced_nonNull)
    {
      v9 = v1;
    }

    else
    {
      v10 = specialized Rope._Node.copy()(*v1);
      v12 = v11;
      v14 = v13;
      swift_unknownObjectRelease();
      *v1 = v10;
      v1[1] = v12;
      v8 = v10;
      v9 = v1;
      v1[2] = v14;
    }

    specialized Rope._Node.prependChildren(movingFromSuffixOf:count:)(v9, *(v8 + 16) - a1);
    return v16;
  }

  return v3;
}

uint64_t specialized Rope._Node._appendNode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (result)
  {
    v8 = v3[1];
  }

  else
  {
    v9 = specialized Rope._Node.copy()(*v3);
    v8 = v10;
    v12 = v11;
    result = swift_unknownObjectRelease();
    *v3 = v9;
    v3[1] = v8;
    v3[2] = v12;
  }

  if (__OFADD__(v8, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3[1] = v8 + a2;
  v13 = v3[2];
  v14 = __OFADD__(v13, a3);
  v15 = v13 + a3;
  if (v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3[2] = v15;
  v16 = *v3;
  v17 = *(*v3 + 16);
  v18 = (*v3 + 24 * *(*v3 + 16));
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  if (v17 != 0xFFFF)
  {
    *(v16 + 16) = v17 + 1;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

void specialized closure #2 in Rope._Node.extract<A>(from:to:in:into:)(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = a3;
  if (*a1)
  {
    v9 = 0;
    v10 = (a2 + 16);
    v11 = a3;
    while (1)
    {
      v12 = *v10;
      v10 += 3;
      v8 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        break;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_48;
      }

      if (v8 + 1 < 1)
      {
        goto LABEL_9;
      }

      ++v9;
      v11 = v8;
      if (v7 == v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_7:
  if (v8)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v11 = 0;
  v9 = *a1;
LABEL_9:
  v13 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    goto LABEL_50;
  }

  v14 = v11 + v13;
  if (__OFADD__(v11, v13))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= v7)
  {
    v16 = v9;
  }

  else
  {
    v15 = (a2 + 24 * v9 + 16);
    v16 = v9;
    while (1)
    {
      v18 = *v15;
      v15 += 3;
      v17 = v18;
      if (v18 >= v14)
      {
        break;
      }

      v19 = __OFSUB__(v14, v17);
      v14 -= v17;
      if (v19)
      {
        goto LABEL_49;
      }

      if (v7 == ++v16)
      {
        v16 = *a1;
        break;
      }
    }
  }

  v20 = (a2 + 24 * v9);
  if (v9 == v16)
  {
    if (v14 < v11 || v20[2] < v14 || v11 < 0)
    {
      goto LABEL_53;
    }

    if (v11 != v14)
    {
      v21 = *v20;
      v22 = *(*v20 + 18);
      swift_unknownObjectRetain();
      v23 = v21 + 16;
      v24 = (v21 + 24);
      v25 = v11;
      if (!v22)
      {
LABEL_24:
        specialized closure #1 in Rope._Node.extract<A>(from:to:in:into:)(v23, v24, v25, v14, a5);
LABEL_43:

        swift_unknownObjectRelease();
        return;
      }

LABEL_42:
      specialized closure #2 in Rope._Node.extract<A>(from:to:in:into:)(v23, v24, v25, v14, a5);
      goto LABEL_43;
    }
  }

  else
  {
    if (v11 < 0)
    {
      goto LABEL_54;
    }

    v26 = v20[2];
    if (v26 < v11)
    {
      goto LABEL_54;
    }

    if (v11 != v26)
    {
      v27 = *v20;
      v28 = *(*v20 + 18);
      swift_unknownObjectRetain();
      v29 = v27 + 16;
      v30 = (v27 + 24);
      if (v28)
      {
        specialized closure #2 in Rope._Node.extract<A>(from:to:in:into:)(v29, v30, v11, v26, a5);
      }

      else
      {
        specialized closure #1 in Rope._Node.extract<A>(from:to:in:into:)(v29, v30, v11, v26, a5);
      }

      swift_unknownObjectRelease();
    }

    v31 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_55;
    }

    if (v16 < v31)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v31 != v16)
    {
      if (v31 >= v16)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v32 = ~v9 + v16;
      v33 = (a2 + 24 * v9 + 40);
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v33 += 3;
        v36 = swift_unknownObjectRetain();
        specialized Rope.Builder._insertBeforeTip(_:)(v36, v34, v35);
        --v32;
      }

      while (v32);
    }

    if (v14 < 0 || (v37 = (a2 + 24 * v16), v37[2] < v14))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v14)
    {
      v38 = *v37;
      v39 = *(*v37 + 18);
      swift_unknownObjectRetain();
      v23 = v38 + 16;
      v24 = (v38 + 24);
      v25 = 0;
      if (!v39)
      {
        goto LABEL_24;
      }

      goto LABEL_42;
    }
  }
}

uint64_t specialized Rope.Builder._appendNow(_:)(unint64_t a1, uint64_t a2, int64_t a3)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v75 = a1;
  v76 = a2;
  v77 = a3;
  v63 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_56:
    v72 = 0;
    v51 = a1;
    swift_unknownObjectRetain();
    MEMORY[0x1865D26B0](&v72, 8);
    v52 = v72;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = v63;
    }

    else
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
    }

    v55 = v53[2];
    v54 = v53[3];
    if (v55 >= v54 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
    }

    v53[2] = v55 + 1;
    v56 = &v53[4 * v55];
    v56[4] = v51;
    v56[5] = v7;
    v56[6] = v6;
    v56[7] = v52;
    v50 = v53;
LABEL_61:
    result = swift_unknownObjectRelease();
    *v59 = v50;
    return result;
  }

  swift_unknownObjectRetain();
  v62 = v8;
  v9 = v63;
  v58 = v8;
LABEL_3:
  v10 = v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v12 = v10;
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v12 = result;
  }

  v13 = v12[2];
  v14 = v62;
  if (!v13)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v6, 1, v63);
LABEL_55:
    v48[2] = v6;
    v49 = &v48[4 * v8];
    v49[4] = v10;
    v49[5] = v3;
    v49[6] = v5;
    v49[7] = v7;
    v50 = v48;
    swift_unknownObjectRelease();
    goto LABEL_61;
  }

  v60 = v6;
  v61 = v7;
  v15 = v13 - 1;
  v16 = &v12[4 * v13];
  v7 = *v16;
  v5 = v16[1];
  v6 = v16[2];
  v10 = v16[3];
  v12[2] = v15;
  v63 = v12;
  while (1)
  {
    v8 = v6;
    v4 = v5;
    v17 = v7;
    v18 = v10;
    if (!v7)
    {
      break;
    }

    if (*(v7 + 18) >= *(v14 + 18))
    {
      v72 = v7;
      v73 = v5;
      v74 = v6;
      v36 = *(v14 + 18);
      if (*(v7 + 18) == v36)
      {
        v3 = &v72;
        v37 = specialized Rope._Node.rebalance(nextNeighbor:)(&v75);
        v38 = v72;
        v7 = v73;
        v6 = v74;
        if (v37)
        {
          swift_unknownObjectRelease();
LABEL_45:
          v75 = v38;
LABEL_46:
          v8 = v58;
          v62 = v38;
          v76 = v7;
          v77 = v6;
          v9 = v63;
          if (v63[2])
          {
            goto LABEL_3;
          }

          swift_unknownObjectRelease();
          a1 = v38;
          goto LABEL_56;
        }

        v8 = *(v72 + 18) + 1;
        if (((v8 >> 8) & 1) == 0)
        {
          v5 = v72;
          v10 = v75;
          v3 = v76;
          v41 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
          v38 = swift_allocObject();
          *(v38 + 16) = 0;
          *(v38 + 18) = v8;
          v4 = v7 + v3;
          if (!__OFADD__(v7, v3))
          {
            v8 = v6 + v41;
            if (!__OFADD__(v6, v41))
            {
              specialized closure #1 in static Rope._Node.createInner(children:_:)((v38 + 16), v38 + 24, v5, v7, v6, v10, v3, v41);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v75 = v38;
              v7 += v3;
              v6 += v41;
              goto LABEL_46;
            }

            goto LABEL_76;
          }

LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_36:
      if (*(v14 + 16) == 15 && *(v7 + 16) != 15)
      {
        if (v7)
        {
          v39 = *(v7 + 18);
          v36 = *(v14 + 18);
        }

        else
        {
          v39 = 0;
        }

        v40 = v36 + 1;
        if ((v40 >> 8))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v39 == v40)
        {
          if (!v7)
          {
            __break(1u);
            goto LABEL_79;
          }

          v3 = &v72;
          specialized Rope._Node._appendNode(_:)(v14, v61, v60);
          v38 = v72;
          v7 = v73;
          v6 = v74;
          goto LABEL_45;
        }
      }

      v7 = v10;
      swift_unknownObjectRelease();
      v10 = v63[2];
      v5 = v63[3];
      v3 = v10 + 1;
      swift_unknownObjectRetain();
      if (v10 < v5 >> 1)
      {
LABEL_63:
        v63[2] = v3;
        v57 = &v63[4 * v10];
        v57[4] = v17;
        v57[5] = v4;
        v57[6] = v8;
        v57[7] = v7;
        swift_unknownObjectRelease();
        v7 = v61;
        a1 = v62;
        v6 = v60;
        goto LABEL_56;
      }

LABEL_77:
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v3, 1, v63);
      goto LABEL_63;
    }

LABEL_12:
    v19 = v12[2];
    if (!v19)
    {
      v42 = v12;
      v43 = v14;
      v44 = v18;
      swift_unknownObjectRelease();
      v69 = 0;
      swift_unknownObjectRetain();
      MEMORY[0x1865D26B0](&v69, 8);
      v10 = _s19CollectionsInternal4RopeV4joinyACyxGAEn_AEntFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(v7, v5, v8, v44, v43, v61, v60);
      v3 = v45;
      v5 = v46;
      v7 = v47;
      v8 = v42[2];
      v4 = v42[3];
      v6 = v8 + 1;
      swift_unknownObjectRetain();
      if (v8 >= v4 >> 1)
      {
        goto LABEL_71;
      }

      v48 = v63;
      goto LABEL_55;
    }

    v20 = v19 - 1;
    v21 = &v12[4 * v19];
    v3 = *v21;
    v22 = v21[1];
    v23 = v21[2];
    v10 = v21[3];
    v12[2] = v20;
    v7 = v3;
    v5 = v22;
    v6 = v23;
    if (v17)
    {
      if (*(v17 + 16))
      {
        v10 = v18;
        v7 = v17;
        v5 = v4;
        v6 = v8;
        if (v3)
        {
          if (*(v3 + 16))
          {
            v69 = v3;
            v70 = v22;
            v71 = v23;
            v66 = v17;
            v67 = v4;
            v68 = v8;
            if (*(v3 + 18) >= *(v17 + 18))
            {
              v3 = &v69;
              v30 = specialized Rope._Node._graftBack(_:)(v65, &v66);
              if (v30)
              {
                v4 = v69;
                v5 = *(v69 + 18) + 1;
                if ((v5 >> 8))
                {
                  goto LABEL_66;
                }

                v33 = v30;
                v3 = v31;
                v34 = v32;
                v10 = v70;
                v8 = v71;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
                v35 = swift_allocObject();
                *(v35 + 18) = v5;
                v5 = v10 + v3;
                if (__OFADD__(v10, v3))
                {
                  goto LABEL_68;
                }

                v6 = v8 + v34;
                if (__OFADD__(v8, v34))
                {
                  goto LABEL_70;
                }

                v7 = v35;
                *(v35 + 24) = v4;
                *(v35 + 32) = v10;
                *(v35 + 40) = v8;
                *(v35 + 48) = v33;
                *(v35 + 56) = v3;
                *(v35 + 64) = v34;
                *(v35 + 16) = 2;
                v64 = 0;
                swift_unknownObjectRetain();
                MEMORY[0x1865D26B0](&v64, 8);
                v10 = v64;
                v3 = v66;
              }

              else
              {
                v7 = v69;
                v5 = v70;
                v6 = v71;
                v64 = 0;
                swift_unknownObjectRetain();
                MEMORY[0x1865D26B0](&v64, 8);
                v10 = v64;
                v3 = v66;
              }
            }

            else
            {
              v3 = &v66;
              v24 = specialized Rope._Node._graftFront(_:)(v65, &v69);
              if (v24)
              {
                v27 = v24;
                v5 = *(v24 + 18) + 1;
                if ((v5 >> 8))
                {
                  goto LABEL_65;
                }

                v3 = v25;
                v28 = v26;
                v4 = v66;
                v10 = v67;
                v8 = v68;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
                v29 = swift_allocObject();
                *(v29 + 18) = v5;
                v5 = v3 + v10;
                if (__OFADD__(v3, v10))
                {
                  goto LABEL_67;
                }

                v6 = v28 + v8;
                if (__OFADD__(v28, v8))
                {
                  goto LABEL_69;
                }

                v7 = v29;
                *(v29 + 24) = v27;
                *(v29 + 32) = v3;
                *(v29 + 40) = v28;
                *(v29 + 48) = v4;
                *(v29 + 56) = v10;
                *(v29 + 64) = v8;
                *(v29 + 16) = 2;
                v64 = 0;
                swift_unknownObjectRetain();
                MEMORY[0x1865D26B0](&v64, 8);
                v10 = v64;
              }

              else
              {
                v7 = v66;
                v5 = v67;
                v6 = v68;
                v64 = 0;
                swift_unknownObjectRetain();
                MEMORY[0x1865D26B0](&v64, 8);
                v10 = v64;
              }
            }

            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            v14 = v62;
            v12 = v63;
          }

          else
          {
            v10 = v18;
            result = swift_unknownObjectRelease();
            v14 = v62;
            v12 = v63;
            v7 = v17;
            v5 = v4;
            v6 = v8;
          }
        }
      }

      else
      {
        result = swift_unknownObjectRelease();
        v14 = v62;
        v12 = v63;
        v7 = v3;
        v5 = v22;
        v6 = v23;
      }
    }
  }

  if (*(v14 + 18))
  {
    goto LABEL_12;
  }

  v72 = 0;
  v73 = v5;
  v74 = v6;
  v36 = *(v14 + 18);
  if (*(v14 + 18))
  {
    goto LABEL_36;
  }

LABEL_79:
  __break(1u);
  return result;
}