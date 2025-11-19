uint64_t closure #1 in closure #2 in MediaMLWorker.getRawCellDataFromDB()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v16)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v15)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Double, &protocol witness table for Double);
      SQLiteDB.Row.get<A>(at:)(9, a1, &type metadata for Int, &protocol witness table for Int);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
      Array.append(_:)();
    }

    else
    {
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
      v18 = SQLError.init(code:desc:)(-1, v4);
      code = v18.code;
      countAndFlagsBits = v18.desc.value._countAndFlagsBits;
      object = v18.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v9 = swift_allocError();
      *v5 = code;
      *(v5 + 8) = countAndFlagsBits;
      *(v5 + 16) = object;
      swift_willThrow();

      return v9;
    }
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier not of type String", 0x1AuLL, 1);
    v17 = SQLError.init(code:desc:)(-1, v1);
    v12 = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    v11 = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v13 = swift_allocError();
    *v2 = v12;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = v11;
    swift_willThrow();
    return v13;
  }
}

uint64_t *closure #2 in MediaMLWorker.getRawWiFiDataFromDB()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v133 = partial apply for closure #1 in closure #2 in MediaMLWorker.getRawWiFiDataFromDB();
  v154 = 0;
  v153 = 0;
  v119 = &v152;
  v152 = 0;
  v120 = &v151;
  v151 = 0;
  v121 = &v150;
  v150 = 0;
  v124 = &v149;
  v149 = 0;
  v122 = &v148;
  v148 = 0;
  v123 = &v147;
  v147 = 0;
  v125 = &v146;
  v146 = 0;
  v126 = &v145;
  v145 = 0;
  v127 = &v144;
  v144 = 0;
  v128 = &v143;
  v143 = 0;
  v129 = &v142;
  v142 = 0;
  v130 = &v141;
  v141 = 0;
  v131 = &v140;
  v140 = 0;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v99 = v19 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v104 = v19 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v105);
  v109 = v19 - v108;
  v118 = 0;
  v110 = type metadata accessor for DataFrame();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v114 = v19 - v113;
  v154 = v19 - v113;
  v153 = a1;
  v115 = &type metadata for String;
  v152 = _allocateUninitializedArray<A>(_:)();
  v117 = &type metadata for Double;
  v151 = _allocateUninitializedArray<A>(_:)();
  v150 = _allocateUninitializedArray<A>(_:)();
  v149 = _allocateUninitializedArray<A>(_:)();
  v116 = &type metadata for Int;
  v148 = _allocateUninitializedArray<A>(_:)();
  v147 = _allocateUninitializedArray<A>(_:)();
  v146 = _allocateUninitializedArray<A>(_:)();
  v145 = _allocateUninitializedArray<A>(_:)();
  v144 = _allocateUninitializedArray<A>(_:)();
  v143 = _allocateUninitializedArray<A>(_:)();
  v142 = _allocateUninitializedArray<A>(_:)();
  v141 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v132;
  v140 = v3;
  v136[2] = v119;
  v136[3] = v120;
  v136[4] = v121;
  v136[5] = v122;
  v136[6] = v123;
  v136[7] = v124;
  v136[8] = v125;
  v136[9] = v126;
  v136[10] = v127;
  v136[11] = v128;
  v136[12] = v129;
  v136[13] = v130;
  v136[14] = v131;
  (*(*a1 + 144))(v133, v136);
  v134 = v4;
  v135 = v4;
  if (v4)
  {
    v19[1] = v135;
    outlined destroy of [Double](&v140);
    outlined destroy of [Double](&v141);
    outlined destroy of [Double](&v142);
    outlined destroy of [Int](&v143);
    outlined destroy of [Int](&v144);
    outlined destroy of [Int](&v145);
    outlined destroy of [Int](&v146);
    outlined destroy of [Int](&v147);
    outlined destroy of [Int](&v148);
    outlined destroy of [String](&v149);
    outlined destroy of [String](&v150);
    outlined destroy of [Double](&v151);
    return outlined destroy of [String](&v152);
  }

  else
  {
    DataFrame.init()();
    v72 = 1;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id", 0xAuLL, 1);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
    v93 = &v152;
    v20 = v152;

    v22 = &v139;
    v139 = v20;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v35 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v36 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v38 = *(v106 + 8);
    v37 = v106 + 8;
    v38(v109, v105);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("timestamp", 9uLL, v72 & 1);
    v27 = v6._countAndFlagsBits;
    v25 = v6._object;
    v92 = &v151;
    v24 = v151;

    v26 = &v138;
    v138 = v24;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v77 = lazy protocol witness table accessor for type [Double] and conformance [A]();
    v78 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v80 = *(v101 + 8);
    v79 = v101 + 8;
    v80(v104, v100);
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name", 8uLL, v72 & 1);
    v28 = v7._countAndFlagsBits;
    v30 = v7._object;
    v91 = &v150;
    v29 = v150;

    v137[2] = v29;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v38(v109, v105);
    v46 = 4;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid", 4uLL, v72 & 1);
    v31 = v8._countAndFlagsBits;
    v33 = v8._object;
    v90 = &v149;
    v32 = v149;

    v137[1] = v32;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v38(v109, v105);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", v46, v72 & 1);
    v42 = v9._countAndFlagsBits;
    v40 = v9._object;
    v89 = &v148;
    v39 = v148;

    v41 = v137;
    v137[0] = v39;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v61 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v62 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64 = *(v96 + 8);
    v63 = v96 + 8;
    v64(v99, v95);
    v56 = 3;
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dow", 3uLL, v72 & 1);
    v43 = v10._countAndFlagsBits;
    v45 = v10._object;
    v88 = &v147;
    v44 = v147;

    v136[23] = v44;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v99, v95);
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rssi", v46, v72 & 1);
    v47 = v11._countAndFlagsBits;
    v49 = v11._object;
    v87 = &v146;
    v48 = v146;

    v136[22] = v48;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v99, v95);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cca", v56, v72 & 1);
    v50 = v12._countAndFlagsBits;
    v52 = v12._object;
    v86 = &v145;
    v51 = v145;

    v136[21] = v51;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v99, v95);
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noise", 5uLL, v72 & 1);
    v53 = v13._countAndFlagsBits;
    v55 = v13._object;
    v85 = &v144;
    v54 = v144;

    v136[20] = v54;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v99, v95);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("snr", v56, v72 & 1);
    v57 = v14._countAndFlagsBits;
    v59 = v14._object;
    v84 = &v143;
    v58 = v143;

    v136[19] = v58;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v99, v95);
    v68 = 7;
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tx_rate", 7uLL, v72 & 1);
    v65 = v15._countAndFlagsBits;
    v67 = v15._object;
    v83 = &v142;
    v66 = v142;

    v136[18] = v66;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v80(v104, v100);
    v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rx_rate", v68, v72 & 1);
    v69 = v16._countAndFlagsBits;
    v71 = v16._object;
    v82 = &v141;
    v70 = v141;

    v136[17] = v70;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v80(v104, v100);
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("throughput_true", 0xFuLL, v72 & 1);
    v73 = v17._countAndFlagsBits;
    v75 = v17._object;
    v81 = &v140;
    v74 = v140;

    v136[16] = v74;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v80(v104, v100);
    (*(v111 + 32))(v94, v114, v110);
    outlined destroy of [Double](v81);
    outlined destroy of [Double](v82);
    outlined destroy of [Double](v83);
    outlined destroy of [Int](v84);
    outlined destroy of [Int](v85);
    outlined destroy of [Int](v86);
    outlined destroy of [Int](v87);
    outlined destroy of [Int](v88);
    outlined destroy of [Int](v89);
    outlined destroy of [String](v90);
    outlined destroy of [String](v91);
    outlined destroy of [Double](v92);
    return outlined destroy of [String](v93);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getRawWiFiDataFromDB()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v23)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for Double, &protocol witness table for Double);
    SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for String, &protocol witness table for String);
    if (v22)
    {
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for String, &protocol witness table for String);
      if (v21)
      {
        SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(9, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(10, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(11, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(12, a1, &type metadata for Double, &protocol witness table for Double);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();
        Array.append(_:)();

        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
      }

      else
      {
        v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid not of type String", 0x17uLL, 1);
        v26 = SQLError.init(code:desc:)(-1, v6);
        code = v26.code;
        countAndFlagsBits = v26.desc.value._countAndFlagsBits;
        object = v26.desc.value._object;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v11 = swift_allocError();
        *v7 = code;
        *(v7 + 8) = countAndFlagsBits;
        *(v7 + 16) = object;
        swift_willThrow();

        return v11;
      }
    }

    else
    {
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
      v25 = SQLError.init(code:desc:)(-1, v4);
      v14 = v25.code;
      v12 = v25.desc.value._countAndFlagsBits;
      v13 = v25.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v15 = swift_allocError();
      *v5 = v14;
      *(v5 + 8) = v12;
      *(v5 + 16) = v13;
      swift_willThrow();

      return v15;
    }
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id not of type String", 0x1DuLL, 1);
    v24 = SQLError.init(code:desc:)(-1, v1);
    v18 = v24.code;
    desc_8 = v24.desc.value._countAndFlagsBits;
    v17 = v24.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v19 = swift_allocError();
    *v2 = v18;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = v17;
    swift_willThrow();
    return v19;
  }
}

uint64_t closure #2 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v14;

  *(v24 + 24) = &type metadata for String;
  *(v24 + 32) = &protocol witness table for String;
  *v24 = a2;
  *(v24 + 8) = a3;

  *(v24 + 64) = &type metadata for String;
  *(v24 + 72) = &protocol witness table for String;
  *(v24 + 40) = a4;
  *(v24 + 48) = a5;
  *(v24 + 104) = &type metadata for Int;
  *(v24 + 112) = &protocol witness table for Int;
  *(v24 + 80) = a6;
  *(v24 + 144) = &type metadata for Int;
  *(v24 + 152) = &protocol witness table for Int;
  *(v24 + 120) = a7;
  *(v24 + 184) = &type metadata for Int;
  *(v24 + 192) = &protocol witness table for Int;
  *(v24 + 160) = a8;
  *(v24 + 224) = &type metadata for Int;
  *(v24 + 232) = &protocol witness table for Int;
  *(v24 + 200) = a10;
  *(v24 + 264) = &type metadata for Int;
  *(v24 + 272) = &protocol witness table for Int;
  *(v24 + 240) = a11;
  *(v24 + 304) = &type metadata for Int;
  *(v24 + 312) = &protocol witness table for Int;
  *(v24 + 280) = a12;
  *(v24 + 344) = &type metadata for Int;
  *(v24 + 352) = &protocol witness table for Int;
  *(v24 + 320) = a13;
  *(v24 + 384) = &type metadata for Double;
  *(v24 + 392) = &protocol witness table for Double;
  *(v24 + 360) = a9;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v26)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t MediaMLWorker.getProcessedCellDataFromDB()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.getProcessedCellDataFromDB(), 0);
}

void MediaMLWorker.getProcessedCellDataFromDB()()
{
  v1 = v0[8];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getProcessedCellDataFromDB(), 0, v13, v2, v2);
  v0[9] = 0;

  v11 = *(v12 + 32);
  *(v12 + 80) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH CarrierAppNamepair as (SELECT carrier, app_name FROM processedcell GROUP BY carrier, app_name HAVING COUNT(*) > 5)\nSELECT p.carrier, p.app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, throughput_true\nFROM processedcell p JOIN CarrierAppNamepair c\nON p.carrier = c.carrier AND p.app_name = c.app_name", 0x150uLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.getProcessedCellDataFromDB(), v11);
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v15 = SQLError.init(code:desc:)(-3, v4);
    code = v15.code;
    desc_8 = v15.desc.value._countAndFlagsBits;
    object = v15.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = code;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    swift_willThrow();
    v6 = *(*(v12 + 16) + 8);
    v7 = *(v12 + 16);

    v6();
  }
}

uint64_t MediaMLWorker.getProcessedCellDataFromDB()()
{
  v10 = v0[12];
  v11 = v0[11];
  v1 = v0[10];
  v2 = v0[9];
  v9 = v0[7];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v11, v10, closure #2 in MediaMLWorker.getProcessedCellDataFromDB());
  v0[13] = v2;
  if (v2)
  {
    v6 = *(v8 + 16);
    v5 = MediaMLWorker.getProcessedCellDataFromDB();
  }

  else
  {
    v3 = *(v8 + 96);

    v4 = *(v8 + 16);
    v5 = MediaMLWorker.getProcessedCellDataFromDB();
  }

  return _swift_task_switch(v5, 0);
}

{
  v1 = *(v0 + 80);
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

{
  v1 = v0[13];
  v2 = v0[12];
  v7 = v0[10];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v3 = v0[13];
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t *closure #2 in MediaMLWorker.getProcessedCellDataFromDB()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v101 = partial apply for closure #1 in closure #2 in MediaMLWorker.getProcessedCellDataFromDB();
  v118 = 0;
  v117 = 0;
  v91 = &v116;
  v116 = 0;
  v92 = &v115;
  v115 = 0;
  v93 = &v114;
  v114 = 0;
  v94 = &v113;
  v113 = 0;
  v95 = &v112;
  v112 = 0;
  v96 = &v111;
  v111 = 0;
  v97 = &v110;
  v110 = 0;
  v98 = &v109;
  v109 = 0;
  v99 = &v108;
  v108 = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v72 = v15 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v77 = v15 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v78);
  v82 = v15 - v81;
  v90 = 0;
  v83 = type metadata accessor for DataFrame();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v87 = v15 - v86;
  v118 = v15 - v86;
  v117 = a1;
  v88 = &type metadata for String;
  v116 = _allocateUninitializedArray<A>(_:)();
  v115 = _allocateUninitializedArray<A>(_:)();
  v89 = &type metadata for Int;
  v114 = _allocateUninitializedArray<A>(_:)();
  v113 = _allocateUninitializedArray<A>(_:)();
  v112 = _allocateUninitializedArray<A>(_:)();
  v111 = _allocateUninitializedArray<A>(_:)();
  v110 = _allocateUninitializedArray<A>(_:)();
  v109 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v100;
  v108 = v3;
  v104[2] = v91;
  v104[3] = v92;
  v104[4] = v93;
  v104[5] = v94;
  v104[6] = v95;
  v104[7] = v96;
  v104[8] = v97;
  v104[9] = v98;
  v104[10] = v99;
  (*(*a1 + 144))(v101, v104);
  v102 = v4;
  v103 = v4;
  if (v4)
  {
    v15[1] = v103;
    outlined destroy of [Double](&v108);
    outlined destroy of [Int](&v109);
    outlined destroy of [Int](&v110);
    outlined destroy of [Int](&v111);
    outlined destroy of [Int](&v112);
    outlined destroy of [Int](&v113);
    outlined destroy of [Int](&v114);
    outlined destroy of [String](&v115);
    return outlined destroy of [String](&v116);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_carrier.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v66 = &v116;
    v16 = v116;

    v18 = &v107;
    v107 = v16;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v24 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v27 = *(v79 + 8);
    v26 = v79 + 8;
    v27(v82, v78);
    v6 = kMediaML_appName.unsafeMutableAddressor();
    v20 = v6->_countAndFlagsBits;
    v22 = v6->_object;

    v65 = &v115;
    v21 = v115;

    v106[1] = v21;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v27(v82, v78);
    v7 = kMediaML_binnedRssi.unsafeMutableAddressor();
    v31 = v7->_countAndFlagsBits;
    v29 = v7->_object;

    v64 = &v114;
    v28 = v114;

    v30 = v106;
    v106[0] = v28;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v48 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v49 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v51 = *(v74 + 8);
    v50 = v74 + 8;
    v51(v77, v73);
    v8 = kMediaML_binnedRsrp.unsafeMutableAddressor();
    v32 = v8->_countAndFlagsBits;
    v34 = v8->_object;

    v63 = &v113;
    v33 = v113;

    v105[5] = v33;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v51(v77, v73);
    v9 = kMediaML_binnedRsrq.unsafeMutableAddressor();
    v35 = v9->_countAndFlagsBits;
    v37 = v9->_object;

    v62 = &v112;
    v36 = v112;

    v105[4] = v36;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v51(v77, v73);
    v10 = kMediaML_binnedRscp.unsafeMutableAddressor();
    v38 = v10->_countAndFlagsBits;
    v40 = v10->_object;

    v61 = &v111;
    v39 = v111;

    v105[3] = v39;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v51(v77, v73);
    v11 = kMediaML_binnedSnr.unsafeMutableAddressor();
    v41 = v11->_countAndFlagsBits;
    v43 = v11->_object;

    v60 = &v110;
    v42 = v110;

    v105[2] = v42;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v51(v77, v73);
    v12 = kMediaML_bars.unsafeMutableAddressor();
    v44 = v12->_countAndFlagsBits;
    v46 = v12->_object;

    v59 = &v109;
    v45 = v109;

    v105[1] = v45;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v51(v77, v73);
    v13 = kMediaML_throughputTrue.unsafeMutableAddressor();
    v56 = v13->_countAndFlagsBits;
    v53 = v13->_object;

    v58 = &v108;
    v52 = v108;

    v54 = v105;
    v105[0] = v52;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v57 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v69 + 8))(v72, v68);
    (*(v84 + 32))(v67, v87, v83);
    outlined destroy of [Double](v58);
    outlined destroy of [Int](v59);
    outlined destroy of [Int](v60);
    outlined destroy of [Int](v61);
    outlined destroy of [Int](v62);
    outlined destroy of [Int](v63);
    outlined destroy of [Int](v64);
    outlined destroy of [String](v65);
    return outlined destroy of [String](v66);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getProcessedCellDataFromDB()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v16)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v15)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Double, &protocol witness table for Double);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
    }

    else
    {
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName not of type String", 0x1AuLL, 1);
      v18 = SQLError.init(code:desc:)(-1, v4);
      code = v18.code;
      countAndFlagsBits = v18.desc.value._countAndFlagsBits;
      object = v18.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v9 = swift_allocError();
      *v5 = code;
      *(v5 + 8) = countAndFlagsBits;
      *(v5 + 16) = object;
      swift_willThrow();

      return v9;
    }
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier not of type String", 0x1AuLL, 1);
    v17 = SQLError.init(code:desc:)(-1, v1);
    v12 = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    v11 = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v13 = swift_allocError();
    *v2 = v12;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = v11;
    swift_willThrow();
    return v13;
  }
}

uint64_t closure #2 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t closure #3 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t implicit closure #11 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t closure #4 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v15;

  *(v27 + 24) = &type metadata for String;
  *(v27 + 32) = &protocol witness table for String;
  *v27 = a2;
  *(v27 + 8) = a3;

  *(v27 + 64) = &type metadata for String;
  *(v27 + 72) = &protocol witness table for String;
  *(v27 + 40) = a4;
  *(v27 + 48) = a5;

  *(v27 + 104) = &type metadata for String;
  *(v27 + 112) = &protocol witness table for String;
  *(v27 + 80) = a6;
  *(v27 + 88) = a7;
  *(v27 + 144) = &type metadata for Int;
  *(v27 + 152) = &protocol witness table for Int;
  *(v27 + 120) = a8;
  *(v27 + 184) = &type metadata for Int;
  *(v27 + 192) = &protocol witness table for Int;
  *(v27 + 160) = a12;
  *(v27 + 224) = &type metadata for Int;
  *(v27 + 232) = &protocol witness table for Int;
  *(v27 + 200) = a13;
  *(v27 + 264) = &type metadata for Int;
  *(v27 + 272) = &protocol witness table for Int;
  *(v27 + 240) = a14;
  *(v27 + 304) = &type metadata for Double;
  *(v27 + 312) = &protocol witness table for Double;
  *(v27 + 280) = a9;
  *(v27 + 344) = &type metadata for Double;
  *(v27 + 352) = &protocol witness table for Double;
  *(v27 + 320) = a10;
  *(v27 + 384) = &type metadata for Double;
  *(v27 + 392) = &protocol witness table for Double;
  *(v27 + 360) = a11;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v29)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t MediaMLWorker.getProcessedWiFiDataFromDB()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.getProcessedWiFiDataFromDB(), 0);
}

void MediaMLWorker.getProcessedWiFiDataFromDB()()
{
  v1 = v0[8];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getProcessedWiFiDataFromDB(), 0, v13, v2, v2);
  v0[9] = 0;

  v11 = *(v12 + 32);
  *(v12 + 80) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH AppNameSSIDpairs as (SELECT app_name, ssid FROM processedwifi GROUP BY app_name, ssid HAVING COUNT(*)>20)\nSELECT session_id, p.app_name, p.ssid, hour, dow, rssi, noise, tx_rate, rx_rate, throughput_true\nFROM processedwifi p JOIN AppNameSSIDpairs a\nON p.app_name = a.app_name AND p.ssid = a.ssid", 0x12BuLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.getProcessedWiFiDataFromDB(), v11);
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v15 = SQLError.init(code:desc:)(-3, v4);
    code = v15.code;
    desc_8 = v15.desc.value._countAndFlagsBits;
    object = v15.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = code;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    swift_willThrow();
    v6 = *(*(v12 + 16) + 8);
    v7 = *(v12 + 16);

    v6();
  }
}

uint64_t MediaMLWorker.getProcessedWiFiDataFromDB()()
{
  v10 = v0[12];
  v11 = v0[11];
  v1 = v0[10];
  v2 = v0[9];
  v9 = v0[7];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v11, v10, closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB());
  v0[13] = v2;
  if (v2)
  {
    v6 = *(v8 + 16);
    v5 = MediaMLWorker.getProcessedWiFiDataFromDB();
  }

  else
  {
    v3 = *(v8 + 96);

    v4 = *(v8 + 16);
    v5 = MediaMLWorker.getProcessedWiFiDataFromDB();
  }

  return _swift_task_switch(v5, 0);
}

{
  v1 = *(v0 + 80);
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

{
  v1 = v0[13];
  v2 = v0[12];
  v7 = v0[10];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v3 = v0[13];
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t *closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v111 = partial apply for closure #1 in closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB();
  v129 = 0;
  v128 = 0;
  v100 = &v127;
  v127 = 0;
  v101 = &v126;
  v126 = 0;
  v104 = &v125;
  v125 = 0;
  v102 = &v124;
  v124 = 0;
  v103 = &v123;
  v123 = 0;
  v105 = &v122;
  v122 = 0;
  v106 = &v121;
  v121 = 0;
  v107 = &v120;
  v120 = 0;
  v108 = &v119;
  v119 = 0;
  v109 = &v118;
  v118 = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76);
  v80 = &v16 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v85 = &v16 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = &v16 - v89;
  v99 = 0;
  v91 = type metadata accessor for DataFrame();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v95 = &v16 - v94;
  v129 = &v16 - v94;
  v128 = a1;
  v96 = &type metadata for String;
  v127 = _allocateUninitializedArray<A>(_:)();
  v126 = _allocateUninitializedArray<A>(_:)();
  v125 = _allocateUninitializedArray<A>(_:)();
  v97 = &type metadata for Int;
  v124 = _allocateUninitializedArray<A>(_:)();
  v123 = _allocateUninitializedArray<A>(_:)();
  v122 = _allocateUninitializedArray<A>(_:)();
  v121 = _allocateUninitializedArray<A>(_:)();
  v98 = &type metadata for Double;
  v120 = _allocateUninitializedArray<A>(_:)();
  v119 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v110;
  v118 = v3;
  v114[2] = v100;
  v114[3] = v101;
  v114[4] = v102;
  v114[5] = v103;
  v114[6] = v104;
  v114[7] = v105;
  v114[8] = v106;
  v114[9] = v107;
  v114[10] = v108;
  v114[11] = v109;
  (*(*a1 + 144))(v111, v114);
  v112 = v4;
  v113 = v4;
  if (v4)
  {
    v16 = v113;
    outlined destroy of [Double](&v118);
    outlined destroy of [Double](&v119);
    outlined destroy of [Double](&v120);
    outlined destroy of [Int](&v121);
    outlined destroy of [Int](&v122);
    outlined destroy of [Int](&v123);
    outlined destroy of [Int](&v124);
    outlined destroy of [String](&v125);
    outlined destroy of [String](&v126);
    return outlined destroy of [String](&v127);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_sessionID.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v74 = &v127;
    v17 = v127;

    v19 = &v117;
    v117 = v17;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v28 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v29 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v31 = *(v87 + 8);
    v30 = v87 + 8;
    v31(v90, v86);
    v6 = kMediaML_appName.unsafeMutableAddressor();
    v21 = v6->_countAndFlagsBits;
    v23 = v6->_object;

    v73 = &v126;
    v22 = v126;

    v116[2] = v22;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v31(v90, v86);
    v7 = kMediaML_ssid.unsafeMutableAddressor();
    v24 = v7->_countAndFlagsBits;
    v26 = v7->_object;

    v72 = &v125;
    v25 = v125;

    v116[1] = v25;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v31(v90, v86);
    v8 = kMediaML_hourOfDay.unsafeMutableAddressor();
    v35 = v8->_countAndFlagsBits;
    v33 = v8->_object;

    v71 = &v124;
    v32 = v124;

    v34 = v116;
    v116[0] = v32;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v46 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v47 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v49 = *(v82 + 8);
    v48 = v82 + 8;
    v49(v85, v81);
    v9 = kMediaML_dayOfWeek.unsafeMutableAddressor();
    v36 = v9->_countAndFlagsBits;
    v38 = v9->_object;

    v70 = &v123;
    v37 = v123;

    v115[3] = v37;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v49(v85, v81);
    v10 = kMediaML_rssi.unsafeMutableAddressor();
    v39 = v10->_countAndFlagsBits;
    v41 = v10->_object;

    v69 = &v122;
    v40 = v122;

    v115[2] = v40;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v49(v85, v81);
    v11 = kMediaML_noise.unsafeMutableAddressor();
    v42 = v11->_countAndFlagsBits;
    v44 = v11->_object;

    v68 = &v121;
    v43 = v121;

    v115[1] = v43;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v49(v85, v81);
    v12 = kMediaML_txRate.unsafeMutableAddressor();
    v53 = v12->_countAndFlagsBits;
    v51 = v12->_object;

    v67 = &v120;
    v50 = v120;

    v52 = v115;
    v115[0] = v50;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v61 = lazy protocol witness table accessor for type [Double] and conformance [A]();
    v62 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64 = *(v77 + 8);
    v63 = v77 + 8;
    v64(v80, v76);
    v13 = kMediaML_rxRate.unsafeMutableAddressor();
    v54 = v13->_countAndFlagsBits;
    v56 = v13->_object;

    v66 = &v119;
    v55 = v119;

    v114[13] = v55;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v80, v76);
    v14 = kMediaML_throughputTrue.unsafeMutableAddressor();
    v57 = v14->_countAndFlagsBits;
    v59 = v14->_object;

    v65 = &v118;
    v58 = v118;

    v114[12] = v58;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v64(v80, v76);
    (*(v92 + 32))(v75, v95, v91);
    outlined destroy of [Double](v65);
    outlined destroy of [Double](v66);
    outlined destroy of [Double](v67);
    outlined destroy of [Int](v68);
    outlined destroy of [Int](v69);
    outlined destroy of [Int](v70);
    outlined destroy of [Int](v71);
    outlined destroy of [String](v72);
    outlined destroy of [String](v73);
    return outlined destroy of [String](v74);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v23)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v22)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for String, &protocol witness table for String);
      if (v21)
      {
        SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(9, a1, &type metadata for Double, &protocol witness table for Double);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();

        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();
        Array.append(_:)();

        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
      }

      else
      {
        v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid not of type String", 0x17uLL, 1);
        v26 = SQLError.init(code:desc:)(-1, v6);
        code = v26.code;
        countAndFlagsBits = v26.desc.value._countAndFlagsBits;
        object = v26.desc.value._object;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v11 = swift_allocError();
        *v7 = code;
        *(v7 + 8) = countAndFlagsBits;
        *(v7 + 16) = object;
        swift_willThrow();

        return v11;
      }
    }

    else
    {
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
      v25 = SQLError.init(code:desc:)(-1, v4);
      v14 = v25.code;
      v12 = v25.desc.value._countAndFlagsBits;
      v13 = v25.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v15 = swift_allocError();
      *v5 = v14;
      *(v5 + 8) = v12;
      *(v5 + 16) = v13;
      swift_willThrow();

      return v15;
    }
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id not of type String", 0x1DuLL, 1);
    v24 = SQLError.init(code:desc:)(-1, v1);
    v18 = v24.code;
    desc_8 = v24.desc.value._countAndFlagsBits;
    v17 = v24.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v19 = swift_allocError();
    *v2 = v18;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = v17;
    swift_willThrow();
    return v19;
  }
}

uint64_t MediaMLWorker.getWiFiDataStandardDeviation()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.getWiFiDataStandardDeviation(), 0);
}

void MediaMLWorker.getWiFiDataStandardDeviation()()
{
  v1 = v0[8];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getWiFiDataStandardDeviation(), 0, v13, v2, v2);
  v0[9] = 0;

  v11 = *(v12 + 32);
  *(v12 + 80) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH CTE as (SELECT app_name, ssid, AVG(throughput_true) AS throughput_mean FROM processedwifi GROUP BY app_name, ssid, session_id)\nSELECT app_name, ssid, AVG(throughput_mean*throughput_mean)-(AVG(throughput_mean)*AVG(throughput_mean)) AS throughput_var\nFROM CTE\nGROUP BY app_name, ssid", 0x11EuLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.getWiFiDataStandardDeviation(), v11);
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v15 = SQLError.init(code:desc:)(-3, v4);
    code = v15.code;
    desc_8 = v15.desc.value._countAndFlagsBits;
    object = v15.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = code;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    swift_willThrow();
    v6 = *(*(v12 + 16) + 8);
    v7 = *(v12 + 16);

    v6();
  }
}

uint64_t MediaMLWorker.getWiFiDataStandardDeviation()()
{
  v10 = v0[12];
  v11 = v0[11];
  v1 = v0[10];
  v2 = v0[9];
  v9 = v0[7];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v11, v10, closure #2 in MediaMLWorker.getWiFiDataStandardDeviation());
  v0[13] = v2;
  if (v2)
  {
    v6 = *(v8 + 16);
    v5 = MediaMLWorker.getWiFiDataStandardDeviation();
  }

  else
  {
    v3 = *(v8 + 96);

    v4 = *(v8 + 16);
    v5 = MediaMLWorker.getWiFiDataStandardDeviation();
  }

  return _swift_task_switch(v5, 0);
}

{
  v1 = *(v0 + 80);
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

{
  v1 = v0[13];
  v2 = v0[12];
  v7 = v0[10];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v3 = v0[13];
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t closure #2 in MediaMLWorker.saveWiFiDataStandardDeviation()(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation()(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v16 = v8;

  *(v16 + 24) = &type metadata for String;
  *(v16 + 32) = &protocol witness table for String;
  *v16 = a2;
  *(v16 + 8) = a3;

  *(v16 + 64) = &type metadata for String;
  *(v16 + 72) = &protocol witness table for String;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 104) = &type metadata for Double;
  *(v16 + 112) = &protocol witness table for Double;
  *(v16 + 80) = a7;
  *(v16 + 144) = &type metadata for Int;
  *(v16 + 152) = &protocol witness table for Int;
  *(v16 + 120) = a6;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v18)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t *closure #2 in MediaMLWorker.getWiFiDataStandardDeviation()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v53 = partial apply for closure #1 in closure #2 in MediaMLWorker.getWiFiDataStandardDeviation();
  v66 = 0;
  v65 = 0;
  v49 = &v64;
  v64 = 0;
  v50 = &v63;
  v63 = 0;
  v51 = &v62;
  v62 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v36 = v9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v41 = v9 - v40;
  v48 = 0;
  v42 = type metadata accessor for DataFrame();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v46 = v9 - v45;
  v66 = v9 - v45;
  v65 = a1;
  v47 = &type metadata for String;
  v64 = _allocateUninitializedArray<A>(_:)();
  v63 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v52;
  v62 = v3;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  (*(*a1 + 144))(v53, v56);
  v54 = v4;
  v55 = v4;
  if (v4)
  {
    v9[1] = v55;
    outlined destroy of [Double](&v62);
    outlined destroy of [String](&v63);
    return outlined destroy of [String](&v64);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_appName.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v30 = &v64;
    v10 = v64;

    v12 = &v61;
    v61 = v10;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v18 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v19 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v21 = *(v38 + 8);
    v20 = v38 + 8;
    v21(v41, v37);
    v6 = kMediaML_ssid.unsafeMutableAddressor();
    v14 = v6->_countAndFlagsBits;
    v16 = v6->_object;

    v29 = &v63;
    v15 = v63;

    v60[1] = v15;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v21(v41, v37);
    v7 = kMediaML_throughputStdDev.unsafeMutableAddressor();
    v26 = v7->_countAndFlagsBits;
    v23 = v7->_object;

    v28 = &v62;
    v22 = v62;

    v24 = v60;
    v60[0] = v22;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v27 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v33 + 8))(v36, v32);
    (*(v43 + 32))(v31, v46, v42);
    outlined destroy of [Double](v28);
    outlined destroy of [String](v29);
    return outlined destroy of [String](v30);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getWiFiDataStandardDeviation()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v16)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v15)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Double, &protocol witness table for Double);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
    }

    else
    {
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid not of type String", 0x17uLL, 1);
      v18 = SQLError.init(code:desc:)(-1, v4);
      code = v18.code;
      countAndFlagsBits = v18.desc.value._countAndFlagsBits;
      object = v18.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v9 = swift_allocError();
      *v5 = code;
      *(v5 + 8) = countAndFlagsBits;
      *(v5 + 16) = object;
      swift_willThrow();

      return v9;
    }
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
    v17 = SQLError.init(code:desc:)(-1, v1);
    v12 = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    v11 = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v13 = swift_allocError();
    *v2 = v12;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = v11;
    swift_willThrow();
    return v13;
  }
}

uint64_t closure #2 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t closure #3 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

BOOL closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v4 = *a1;
  v5 = *(a1 + 8);
  v11 = *a1;
  v12 = v5 & 1;
  v10 = a2;
  outlined init with copy of Any?(a2, v7);
  if (!v8)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v7, v9);
  swift_dynamicCast();
  return (v5 & 1) == 0 && v4 == v6;
}

uint64_t closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v18 = v9;

  *(v18 + 24) = &type metadata for String;
  *(v18 + 32) = &protocol witness table for String;
  *v18 = a2;
  *(v18 + 8) = a3;

  *(v18 + 64) = &type metadata for String;
  *(v18 + 72) = &protocol witness table for String;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 104) = &type metadata for Int;
  *(v18 + 112) = &protocol witness table for Int;
  *(v18 + 80) = a6;
  *(v18 + 144) = &type metadata for Double;
  *(v18 + 152) = &protocol witness table for Double;
  *(v18 + 120) = a8;
  *(v18 + 184) = &type metadata for Int;
  *(v18 + 192) = &protocol witness table for Int;
  *(v18 + 160) = a7;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v20)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t *closure #2 in MediaMLWorker.getCellDataStandardDeviation()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v67 = partial apply for closure #1 in closure #2 in MediaMLWorker.getCellDataStandardDeviation();
  v83 = 0;
  v82 = 0;
  v62 = &v81;
  v81 = 0;
  v63 = &v80;
  v80 = 0;
  v64 = &v79;
  v79 = 0;
  v65 = &v78;
  v78 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = &v10 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v49 = &v10 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v54 = &v10 - v53;
  v61 = 0;
  v55 = type metadata accessor for DataFrame();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v59 = &v10 - v58;
  v83 = &v10 - v58;
  v82 = a1;
  v60 = &type metadata for String;
  v81 = _allocateUninitializedArray<A>(_:)();
  v80 = _allocateUninitializedArray<A>(_:)();
  v79 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v66;
  v78 = v3;
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  (*(*a1 + 144))(v67, v70);
  v68 = v4;
  v69 = v4;
  if (v4)
  {
    v10 = v69;
    outlined destroy of [Double](&v78);
    outlined destroy of [Int](&v79);
    outlined destroy of [String](&v80);
    return outlined destroy of [String](&v81);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_appName.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v38 = &v81;
    v11 = v81;

    v13 = &v77;
    v77 = v11;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v19 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v22 = *(v51 + 8);
    v21 = v51 + 8;
    v22(v54, v50);
    v6 = kMediaML_carrier.unsafeMutableAddressor();
    v15 = v6->_countAndFlagsBits;
    v17 = v6->_object;

    v37 = &v80;
    v16 = v80;

    v76[1] = v16;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v22(v54, v50);
    v7 = kMediaML_bars.unsafeMutableAddressor();
    v27 = v7->_countAndFlagsBits;
    v24 = v7->_object;

    v36 = &v79;
    v23 = v79;

    v25 = v76;
    v76[0] = v23;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v28 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v46 + 8))(v49, v45);
    v8 = kMediaML_throughputStdDev.unsafeMutableAddressor();
    v33 = v8->_countAndFlagsBits;
    v30 = v8->_object;

    v35 = &v78;
    v29 = v78;

    v31 = &v75;
    v75 = v29;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v34 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v41 + 8))(v44, v40);
    (*(v56 + 32))(v39, v59, v55);
    outlined destroy of [Double](v35);
    outlined destroy of [Int](v36);
    outlined destroy of [String](v37);
    return outlined destroy of [String](v38);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getCellDataStandardDeviation()(uint64_t a1)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v16)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v15)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Double, &protocol witness table for Double);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
    }

    else
    {
      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier not of type String", 0x1AuLL, 1);
      v18 = SQLError.init(code:desc:)(-1, v4);
      code = v18.code;
      countAndFlagsBits = v18.desc.value._countAndFlagsBits;
      object = v18.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v9 = swift_allocError();
      *v5 = code;
      *(v5 + 8) = countAndFlagsBits;
      *(v5 + 16) = object;
      swift_willThrow();

      return v9;
    }
  }

  else
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
    v17 = SQLError.init(code:desc:)(-1, v1);
    v12 = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    v11 = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v13 = swift_allocError();
    *v2 = v12;
    *(v2 + 8) = desc_8;
    *(v2 + 16) = v11;
    swift_willThrow();
    return v13;
  }
}

uint64_t closure #2 in MediaMLWorker.saveModelStatsToDB(modelStats:)(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v17 = *a2;
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  *v3 = v17;
  v16 = a2[1];
  v3[8] = &type metadata for Int;
  v3[9] = &protocol witness table for Int;
  v3[5] = v16;
  v15 = a2[2];
  v3[13] = &type metadata for Int;
  v3[14] = &protocol witness table for Int;
  v3[10] = v15;
  v14 = a2[3];
  v3[18] = &type metadata for Int;
  v3[19] = &protocol witness table for Int;
  v3[15] = v14;
  v13 = a2[4];
  v3[23] = &type metadata for Int;
  v3[24] = &protocol witness table for Int;
  v3[20] = v13;
  v12 = a2[5];
  v3[28] = &type metadata for Int;
  v3[29] = &protocol witness table for Int;
  v3[25] = v12;
  v11 = a2[6];
  v3[33] = &type metadata for Int;
  v3[34] = &protocol witness table for Int;
  v3[30] = v11;
  v10 = a2[7];
  v3[38] = &type metadata for Double;
  v3[39] = &protocol witness table for Double;
  v3[35] = v10;
  v9 = a2[8];
  v3[43] = &type metadata for Double;
  v3[44] = &protocol witness table for Double;
  v3[40] = v9;
  v8 = a2[9];
  v3[48] = &type metadata for Int;
  v3[49] = &protocol witness table for Int;
  v3[45] = v8;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t static MediaMLWorker.$main()()
{
  type metadata accessor for MediaMLWorker();
  lazy protocol witness table accessor for type MediaMLWorker and conformance MediaMLWorker();
  return static AppExtension.main()();
}

uint64_t MediaMLWorker.init()@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v5[1] = 0;
  v12 = type metadata accessor for URL();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v1 = v5 - v6;
  v11 = v5 - v6;
  v2 = type metadata accessor for MediaMLWorker();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v13 = v5 - v7;
  v15 = v5 - v7;
  v3 = mediaMLDataDirectory.unsafeMutableAddressor();
  (*(v9 + 16))(v1, v3, v12);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rawdata.db", 0xAuLL, 1)._object;
  URL.appendingPathComponent(_:isDirectory:)();

  (*(v9 + 8))(v11, v12);
  return outlined init with take of MediaMLWorker(v13, v14);
}

uint64_t protocol witness for MLHostExtension.shouldRun(context:) in conformance MediaMLWorker(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for MLHostExtension.shouldRun(context:) in conformance MediaMLWorker;

  return MediaMLWorker.shouldRun(context:)(a1);
}

{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t protocol witness for MLHostExtension.doWork(context:) in conformance MediaMLWorker(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for MLHostExtension.doWork(context:) in conformance MediaMLWorker;

  return MediaMLWorker.doWork(context:)(a1);
}

{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance MediaMLWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v7 + 16) = v7;
  v8 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance MediaMLWorker;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance MediaMLWorker()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

id @nonobjc NSNumber.init(value:)(uint64_t a1)
{
  return [v1 initWithInteger:a1];
}

{
  return [v1 initWithInt:a1];
}

id @nonobjc NSString.init(string:)()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:?];

  return v3;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  type metadata accessor for ManagedBuffer();
  v5 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

void *implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  v2;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2);
}

void OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  partial apply for closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(a3 + *(*a3 + class metadata base offset for ManagedBuffer + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

uint64_t sub_1000646D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100064724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void closure #1 in OSLogArguments.append(_:)(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  v8;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v8)
  {
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    v8;
    *v4 = v8;

    *a2 = v4 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000648F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100064A38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100064A84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

uint64_t sub_100064BA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100064BF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors()
{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  v2 = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Double and conformance Double);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Order?(uint64_t a1)
{
  v3 = type metadata accessor for Order();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100064F64()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #13 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)();
}

uint64_t sub_100065094()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #14 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #14 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)();
}

uint64_t sub_10006522C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065278()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000653E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065494()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #10 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)();
}

uint64_t sub_1000655C4()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #11 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)();
}

uint64_t sub_10006575C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000657A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000658C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065A60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065AAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100065C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065CD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100065E44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t a1)
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

unint64_t lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice()
{
  v2 = lazy protocol witness table cache variable for type AnyColumnSlice and conformance AnyColumnSlice;
  if (!lazy protocol witness table cache variable for type AnyColumnSlice and conformance AnyColumnSlice)
  {
    type metadata accessor for AnyColumnSlice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyColumnSlice and conformance AnyColumnSlice);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of IndexingIterator<AnyColumnSlice>(uint64_t a1)
{
  v1 = type metadata accessor for AnyColumnSlice();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_10006602C()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #12 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #12 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)();
}

uint64_t sub_10006615C()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #13 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)();
}

uint64_t sub_1000662F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100066340()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006645C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000664A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000665B4()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)();
}

uint64_t sub_1000666E4()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)();
}

uint64_t sub_10006687C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000668C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000669E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100066A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100066B74()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_100066BD0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100066C18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
  v1 = lazy protocol witness table accessor for type [[Any]] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [[Any]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[Any]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[Any]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[Any]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100066DB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100066DFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100066EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100066EFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *outlined destroy of [String](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *outlined destroy of [Double](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSString()
{
  v2 = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSString);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100067194()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation()();
}

uint64_t sub_1000672C4()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation()();
}

uint64_t sub_10006745C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000674A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000675C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100067610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006771C()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation()();
}

uint64_t sub_10006784C()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation()();
}

uint64_t sub_1000679E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100067A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100067B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100067B98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100067CB8()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)();
}

uint64_t sub_100067DE8()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)();
}

uint64_t sub_100067F80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100067FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000680E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100068134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006826C()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)();
}

uint64_t sub_10006839C()
{
  v3 = *(type metadata accessor for DataFrame() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)();
}

uint64_t sub_100068534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100068580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006869C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000686E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for MediaMLWorker()
{
  v1 = type metadata singleton initialization cache for MediaMLWorker;
  if (!type metadata singleton initialization cache for MediaMLWorker)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type MediaMLWorker and conformance MediaMLWorker()
{
  v2 = lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker;
  if (!lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker)
  {
    type metadata accessor for MediaMLWorker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker;
  if (!lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker)
  {
    type metadata accessor for MediaMLWorker();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with take of MediaMLWorker(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkerErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WorkerErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for MediaMLWorker()
{
  v2 = type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t partial apply for closure #1 in closure #2 in MediaMLWorker.getWiFiDataStandardDeviation()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in closure #2 in MediaMLWorker.getWiFiDataStandardDeviation()(a1);
}

void *outlined init with copy of SQLiteDB?(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  return closure #1 in closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB()(a1);
}

uint64_t partial apply for closure #1 in closure #2 in MediaMLWorker.getProcessedCellDataFromDB()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  return closure #1 in closure #2 in MediaMLWorker.getProcessedCellDataFromDB()(a1);
}

void *outlined init with copy of String?(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t outlined destroy of (String?, String?)(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in MediaMLWorker.getRawWiFiDataFromDB()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  v13 = v1[12];
  v14 = v1[13];
  v15 = v1[14];
  return closure #1 in closure #2 in MediaMLWorker.getRawWiFiDataFromDB()(a1);
}

uint64_t partial apply for closure #1 in closure #2 in MediaMLWorker.getCellDataStandardDeviation()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #1 in closure #2 in MediaMLWorker.getCellDataStandardDeviation()(a1);
}

uint64_t partial apply for closure #1 in closure #2 in MediaMLWorker.getRawCellDataFromDB()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  return closure #1 in closure #2 in MediaMLWorker.getRawCellDataFromDB()(a1);
}

uint64_t sub_100069570()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000695BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined init with copy of MediaMLWorker(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_10006966C()
{
  v4 = *(type metadata accessor for MediaMLWorker() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(type metadata accessor for MediaMLWorker() - 8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v3 = (v10 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + v3);
  v12 = *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return closure #2 in closure #1 in MediaMLWorker.doWork(context:)(a1, v8, v9, v1 + v10, v11, v12);
}

uint64_t partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100069B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100069B98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100069DB4()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_10006A018()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_532(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_532TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_532TQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_10006A27C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  result = *(v0 + 16);
  implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:)();
  return result;
}

uint64_t sub_10006A32C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006A378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10006A3C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = lazy cache variable for type metadata for os_unfair_lock_s;
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
      return v1;
    }
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}