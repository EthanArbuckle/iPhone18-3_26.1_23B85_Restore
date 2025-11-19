void *closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  v128 = v0;
  v122 = v0[802];
  v120 = v0[801];
  v121 = v0[800];
  v1 = v0[775];
  v119 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v121(v1, v2, v119);
  v124 = Logger.logObject.getter();
  v123 = static os_log_type_t.info.getter();
  v125 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v124, v123))
  {
    v3 = *(v118 + 6512);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v115 = createStorage<A>(capacity:type:)(0);
    v116 = createStorage<A>(capacity:type:)(0);
    *(v118 + 6008) = buf;
    *(v118 + 6016) = v115;
    *(v118 + 6024) = v116;
    serialize(_:at:)(0, (v118 + 6008));
    serialize(_:at:)(0, (v118 + 6008));
    *(v118 + 6032) = v125;
    v117 = swift_task_alloc();
    v117[2] = v118 + 6008;
    v117[3] = v118 + 6016;
    v117[4] = v118 + 6024;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v124, v123, "Finished wifi model training and received modelStats", buf, 2u);
    destroyStorage<A>(_:count:)(v115);
    destroyStorage<A>(_:count:)(v116);
    UnsafeMutablePointer.deallocate()();

    v113 = 0;
  }

  else
  {

    v113 = *(v118 + 6512);
  }

  v109 = *(v118 + 6432);
  v110 = *(v118 + 6424);
  v107 = *(v118 + 6200);
  v108 = *(v118 + 6096);
  v5 = *(v118 + 6080);

  v110(v107, v108);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MLHost", 6uLL, 1);
  *(v118 + 6520) = v6;
  *(v118 + 5600) = v6;
  v111 = MLHostExtensionContext.taskName.getter();
  v112 = v7;
  *(v118 + 6536) = v111;
  *(v118 + 6544) = v7;
  *(v118 + 5616) = v111;
  *(v118 + 5624) = v7;
  *(v118 + 100) = 5001;
  if (isSeedBuild()())
  {
    *(v118 + 100) = 3001;
    v106 = 3001;
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.AppleMediaDiscoveryFramework", 0x26uLL, 1);
    String.utf8CString.getter();

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    swift_unknownObjectRelease();

    if (has_internal_diagnostics)
    {
      *(v118 + 100) = 1001;
      v104 = 1001;
    }

    else
    {
      v104 = 5001;
    }

    v106 = v104;
  }

  *(v118 + 188) = v106;
  memcpy((v118 + 368), (v118 + 192), 0x51uLL);
  memcpy(v126, (v118 + 368), sizeof(v126));
  if (v126[80])
  {
    v103 = v113;
  }

  else
  {
    memcpy((v118 + 2920), (v118 + 192), 0x51uLL);
    memcpy((v118 + 2832), (v118 + 2920), 0x51uLL);
    if (*(v118 + 2912))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v102 = *(v118 + 2832);
    memcpy((v118 + 3096), (v118 + 192), 0x51uLL);
    memcpy((v118 + 3008), (v118 + 3096), 0x51uLL);
    if (*(v118 + 3088))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v101 = *(v118 + 3072);
    memcpy((v118 + 3272), (v118 + 192), 0x51uLL);
    memcpy((v118 + 3184), (v118 + 3272), 0x51uLL);
    if (*(v118 + 3264))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v100 = *(v118 + 3240);
    memcpy((v118 + 3448), (v118 + 192), 0x51uLL);
    memcpy((v118 + 3360), (v118 + 3448), 0x51uLL);
    if (*(v118 + 3440))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v99 = *(v118 + 3384);
    memcpy((v118 + 3624), (v118 + 192), 0x51uLL);
    memcpy((v118 + 3536), (v118 + 3624), 0x51uLL);
    if (*(v118 + 3616))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v98 = *(v118 + 3576);
    memcpy((v118 + 3800), (v118 + 192), 0x51uLL);
    memcpy((v118 + 3712), (v118 + 3800), 0x51uLL);
    if (*(v118 + 3792))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v97 = *(v118 + 3760);
    memcpy((v118 + 3976), (v118 + 192), 0x51uLL);
    memcpy((v118 + 3888), (v118 + 3976), 0x51uLL);
    if (*(v118 + 3968))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v96 = *(v118 + 3920);
    memcpy((v118 + 4152), (v118 + 192), 0x51uLL);
    memcpy((v118 + 4064), (v118 + 4152), 0x51uLL);
    if (*(v118 + 4144))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v95 = *(v118 + 4072);
    memcpy((v118 + 4328), (v118 + 192), 0x51uLL);
    result = memcpy((v118 + 4240), (v118 + 4328), 0x51uLL);
    if (*(v118 + 4320))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v8 = *(v118 + 4256);
    if (__OFADD__(v95, v8))
    {
      goto LABEL_83;
    }

    v91 = *(v118 + 6416);
    v89 = *(v118 + 6408);
    v90 = *(v118 + 6400);
    v10 = *(v118 + 6192);
    v88 = *(v118 + 6096);
    reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(v102, v6._countAndFlagsBits, v6._object, v106, v111, v112, v99, v98, v101, v100, 1.2, v97, v96, v95 + v8);
    v11 = MediaMLWorker.logger.unsafeMutableAddressor();
    v90(v10, v11, v88);
    oslog = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    v94 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v92))
    {
      v84 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v85 = createStorage<A>(capacity:type:)(0);
      v86 = createStorage<A>(capacity:type:)(0);
      *(v118 + 5976) = v84;
      *(v118 + 5984) = v85;
      *(v118 + 5992) = v86;
      serialize(_:at:)(0, (v118 + 5976));
      serialize(_:at:)(0, (v118 + 5976));
      *(v118 + 6000) = v94;
      v87 = swift_task_alloc();
      v87[2] = v118 + 5976;
      v87[3] = v118 + 5984;
      v87[4] = v118 + 5992;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v113)
      {
      }

      _os_log_impl(&_mh_execute_header, oslog, v92, "Reported wifiModelStats to Core Analytics", v84, 2u);
      destroyStorage<A>(_:count:)(v85);
      destroyStorage<A>(_:count:)(v86);
      UnsafeMutablePointer.deallocate()();

      v83 = 0;
    }

    else
    {

      v83 = v113;
    }

    v81 = *(v118 + 6432);
    v82 = *(v118 + 6424);
    v79 = *(v118 + 6192);
    v80 = *(v118 + 6096);

    v82(v79, v80);
    memcpy((v118 + 4504), (v118 + 192), 0x51uLL);
    memcpy((v118 + 4416), (v118 + 4504), 0x51uLL);
    if (*(v118 + 4496))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v78 = *(v118 + 4480);
    if (v78 < *modelMAPEThreshold.unsafeMutableAddressor())
    {
      memcpy((v118 + 4680), (v118 + 192), 0x51uLL);
      memcpy((v118 + 4592), (v118 + 4680), 0x51uLL);
      if (*(v118 + 4672))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      memcpy((v118 + 5120), (v118 + 4592), 0x50uLL);
      v12 = swift_task_alloc();
      v13 = v118 + 5120;
      *(v118 + 6552) = v12;
      *v12 = *(v118 + 5632);
      v12[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
      v14 = *(v118 + 6072);

      return MediaMLWorker.saveModelStatsToDB(modelStats:)(v13);
    }

    v103 = v83;
  }

  memcpy((v118 + 456), (v118 + 280), 0x51uLL);
  memcpy(v127, (v118 + 456), sizeof(v127));
  if ((v127[80] & 1) == 0)
  {
    memcpy((v118 + 632), (v118 + 280), 0x51uLL);
    memcpy((v118 + 544), (v118 + 632), 0x51uLL);
    if (*(v118 + 624))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v77 = *(v118 + 544);
    memcpy((v118 + 808), (v118 + 280), 0x51uLL);
    memcpy((v118 + 720), (v118 + 808), 0x51uLL);
    if (*(v118 + 800))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v76 = *(v118 + 784);
    memcpy((v118 + 984), (v118 + 280), 0x51uLL);
    memcpy((v118 + 896), (v118 + 984), 0x51uLL);
    if (*(v118 + 976))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v75 = *(v118 + 952);
    memcpy((v118 + 1160), (v118 + 280), 0x51uLL);
    memcpy((v118 + 1072), (v118 + 1160), 0x51uLL);
    if (*(v118 + 1152))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v74 = *(v118 + 1096);
    memcpy((v118 + 1336), (v118 + 280), 0x51uLL);
    memcpy((v118 + 1248), (v118 + 1336), 0x51uLL);
    if (*(v118 + 1328))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v73 = *(v118 + 1288);
    memcpy((v118 + 1512), (v118 + 280), 0x51uLL);
    memcpy((v118 + 1424), (v118 + 1512), 0x51uLL);
    if (*(v118 + 1504))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v72 = *(v118 + 1472);
    memcpy((v118 + 1688), (v118 + 280), 0x51uLL);
    memcpy((v118 + 1600), (v118 + 1688), 0x51uLL);
    if (*(v118 + 1680))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v71 = *(v118 + 1632);
    memcpy((v118 + 1864), (v118 + 280), 0x51uLL);
    memcpy((v118 + 1776), (v118 + 1864), 0x51uLL);
    if (*(v118 + 1856))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v70 = *(v118 + 1784);
    memcpy((v118 + 2040), (v118 + 280), 0x51uLL);
    result = memcpy((v118 + 1952), (v118 + 2040), 0x51uLL);
    if (*(v118 + 2032))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v15 = *(v118 + 1968);
    if (!__OFADD__(v70, v15))
    {
      v66 = *(v118 + 6416);
      v64 = *(v118 + 6408);
      v65 = *(v118 + 6400);
      v17 = *(v118 + 6152);
      v63 = *(v118 + 6096);
      reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(v77, *(v118 + 6520), *(v118 + 6528), *(v118 + 188), *(v118 + 6536), *(v118 + 6544), v74, v73, v76, v75, 1.2, v72, v71, v70 + v15);
      v18 = MediaMLWorker.logger.unsafeMutableAddressor();
      v65(v17, v18, v63);
      log = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();
      v69 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(log, v67))
      {

        goto LABEL_72;
      }

      v59 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v60 = createStorage<A>(capacity:type:)(0);
      v61 = createStorage<A>(capacity:type:)(0);
      *(v118 + 5816) = v59;
      *(v118 + 5824) = v60;
      *(v118 + 5832) = v61;
      serialize(_:at:)(0, (v118 + 5816));
      serialize(_:at:)(0, (v118 + 5816));
      *(v118 + 5840) = v69;
      v62 = swift_task_alloc();
      v62[2] = v118 + 5816;
      v62[3] = v118 + 5824;
      v62[4] = v118 + 5832;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v103)
      {

        _os_log_impl(&_mh_execute_header, log, v67, "Reported cellModelStats to Core Analytics", v59, 2u);
        destroyStorage<A>(_:count:)(v60);
        destroyStorage<A>(_:count:)(v61);
        UnsafeMutablePointer.deallocate()();

LABEL_72:
        v57 = *(v118 + 6432);
        v58 = *(v118 + 6424);
        v55 = *(v118 + 6152);
        v56 = *(v118 + 6096);

        v58(v55, v56);
        memcpy((v118 + 2216), (v118 + 280), 0x51uLL);
        memcpy((v118 + 2128), (v118 + 2216), 0x51uLL);
        if (*(v118 + 2208))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v54 = *(v118 + 2192);
        if (v54 < *modelMAPEThreshold.unsafeMutableAddressor())
        {
          memcpy((v118 + 2392), (v118 + 280), 0x51uLL);
          memcpy((v118 + 2304), (v118 + 2392), 0x51uLL);
          if ((*(v118 + 2384) & 1) == 0)
          {
            memcpy((v118 + 5360), (v118 + 2304), 0x50uLL);
            v19 = swift_task_alloc();
            v13 = v118 + 5360;
            *(v118 + 6616) = v19;
            *v19 = *(v118 + 5632);
            v19[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
            v20 = *(v118 + 6072);

            return MediaMLWorker.saveModelStatsToDB(modelStats:)(v13);
          }

          return _assertionFailure(_:_:file:line:flags:)();
        }

        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

LABEL_79:
  v21 = *(v118 + 6544);
  v25 = *(v118 + 6528);
  v31 = *(v118 + 6264);
  v30 = *(v118 + 6256);
  v29 = *(v118 + 6248);
  v28 = *(v118 + 6240);
  v27 = *(v118 + 6232);
  v32 = *(v118 + 6216);
  v26 = *(v118 + 6224);

  v33 = *(v26 + 8);
  v33(v27, v32);
  v33(v28, v32);
  v33(v29, v32);
  v33(v30, v32);
  v33(v31, v32);
  v34 = *(v118 + 6296);
  v35 = *(v118 + 6280);
  v36 = *(v118 + 6264);
  v37 = *(v118 + 6256);
  v38 = *(v118 + 6248);
  v39 = *(v118 + 6240);
  v40 = *(v118 + 6232);
  v41 = *(v118 + 6208);
  v42 = *(v118 + 6200);
  v43 = *(v118 + 6192);
  v44 = *(v118 + 6184);
  v45 = *(v118 + 6176);
  v46 = *(v118 + 6168);
  v47 = *(v118 + 6160);
  v48 = *(v118 + 6152);
  v49 = *(v118 + 6144);
  v50 = *(v118 + 6136);
  v51 = *(v118 + 6128);
  v52 = *(v118 + 6120);
  v53 = *(v118 + 6112);
  v22 = *(v118 + 6088);
  OS_dispatch_semaphore.signal()();

  v23 = *(*(v118 + 5632) + 8);
  v24 = *(v118 + 5632);

  return v23();
}

{
  v86 = v0;
  v81 = v0[802];
  v79 = v0[801];
  v80 = v0[800];
  v1 = v0[770];
  v78 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v80(v1, v2, v78);
  v83 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  v84 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v83, v82))
  {
    v3 = *(v77 + 6608);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v74 = createStorage<A>(capacity:type:)(0);
    v75 = createStorage<A>(capacity:type:)(0);
    *(v77 + 5848) = buf;
    *(v77 + 5856) = v74;
    *(v77 + 5864) = v75;
    serialize(_:at:)(0, (v77 + 5848));
    serialize(_:at:)(0, (v77 + 5848));
    *(v77 + 5872) = v84;
    v76 = swift_task_alloc();
    v76[2] = v77 + 5848;
    v76[3] = v77 + 5856;
    v76[4] = v77 + 5864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v83, v82, "Deleted previous wifiStandardDeviation from wifiStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v74);
    destroyStorage<A>(_:count:)(v75);
    UnsafeMutablePointer.deallocate()();

    v72 = 0;
  }

  else
  {

    v72 = *(v77 + 6608);
  }

  v70 = *(v77 + 6432);
  v71 = *(v77 + 6424);
  v68 = *(v77 + 6160);
  v69 = *(v77 + 6096);

  v71(v68, v69);
  memcpy((v77 + 456), (v77 + 280), 0x51uLL);
  memcpy(v85, (v77 + 456), sizeof(v85));
  if (v85[80])
  {
    goto LABEL_39;
  }

  memcpy((v77 + 632), (v77 + 280), 0x51uLL);
  memcpy((v77 + 544), (v77 + 632), 0x51uLL);
  if (*(v77 + 624))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v67 = *(v77 + 544);
  memcpy((v77 + 808), (v77 + 280), 0x51uLL);
  memcpy((v77 + 720), (v77 + 808), 0x51uLL);
  if (*(v77 + 800))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v66 = *(v77 + 784);
  memcpy((v77 + 984), (v77 + 280), 0x51uLL);
  memcpy((v77 + 896), (v77 + 984), 0x51uLL);
  if (*(v77 + 976))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v65 = *(v77 + 952);
  memcpy((v77 + 1160), (v77 + 280), 0x51uLL);
  memcpy((v77 + 1072), (v77 + 1160), 0x51uLL);
  if (*(v77 + 1152))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v64 = *(v77 + 1096);
  memcpy((v77 + 1336), (v77 + 280), 0x51uLL);
  memcpy((v77 + 1248), (v77 + 1336), 0x51uLL);
  if (*(v77 + 1328))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v63 = *(v77 + 1288);
  memcpy((v77 + 1512), (v77 + 280), 0x51uLL);
  memcpy((v77 + 1424), (v77 + 1512), 0x51uLL);
  if (*(v77 + 1504))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v62 = *(v77 + 1472);
  memcpy((v77 + 1688), (v77 + 280), 0x51uLL);
  memcpy((v77 + 1600), (v77 + 1688), 0x51uLL);
  if (*(v77 + 1680))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v61 = *(v77 + 1632);
  memcpy((v77 + 1864), (v77 + 280), 0x51uLL);
  memcpy((v77 + 1776), (v77 + 1864), 0x51uLL);
  if (*(v77 + 1856))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v60 = *(v77 + 1784);
  memcpy((v77 + 2040), (v77 + 280), 0x51uLL);
  result = memcpy((v77 + 1952), (v77 + 2040), 0x51uLL);
  if (*(v77 + 2032))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = *(v77 + 1968);
  if (__OFADD__(v60, v5))
  {
    __break(1u);
    return result;
  }

  v56 = *(v77 + 6416);
  v54 = *(v77 + 6408);
  v55 = *(v77 + 6400);
  v7 = *(v77 + 6152);
  v53 = *(v77 + 6096);
  reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(v67, *(v77 + 6520), *(v77 + 6528), *(v77 + 188), *(v77 + 6536), *(v77 + 6544), v64, v63, v66, v65, 1.2, v62, v61, v60 + v5);
  v8 = MediaMLWorker.logger.unsafeMutableAddressor();
  v55(v7, v8, v53);
  oslog = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  v59 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v57))
  {
    v49 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v50 = createStorage<A>(capacity:type:)(0);
    v51 = createStorage<A>(capacity:type:)(0);
    *(v77 + 5816) = v49;
    *(v77 + 5824) = v50;
    *(v77 + 5832) = v51;
    serialize(_:at:)(0, (v77 + 5816));
    serialize(_:at:)(0, (v77 + 5816));
    *(v77 + 5840) = v59;
    v52 = swift_task_alloc();
    v52[2] = v77 + 5816;
    v52[3] = v77 + 5824;
    v52[4] = v77 + 5832;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v72)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v57, "Reported cellModelStats to Core Analytics", v49, 2u);
    destroyStorage<A>(_:count:)(v50);
    destroyStorage<A>(_:count:)(v51);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v47 = *(v77 + 6432);
  v48 = *(v77 + 6424);
  v45 = *(v77 + 6152);
  v46 = *(v77 + 6096);

  v48(v45, v46);
  memcpy((v77 + 2216), (v77 + 280), 0x51uLL);
  memcpy((v77 + 2128), (v77 + 2216), 0x51uLL);
  if (*(v77 + 2208))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v44 = *(v77 + 2192);
  if (v44 >= *modelMAPEThreshold.unsafeMutableAddressor())
  {
LABEL_39:
    v11 = *(v77 + 6544);
    v15 = *(v77 + 6528);
    v21 = *(v77 + 6264);
    v20 = *(v77 + 6256);
    v19 = *(v77 + 6248);
    v18 = *(v77 + 6240);
    v17 = *(v77 + 6232);
    v22 = *(v77 + 6216);
    v16 = *(v77 + 6224);

    v23 = *(v16 + 8);
    v23(v17, v22);
    v23(v18, v22);
    v23(v19, v22);
    v23(v20, v22);
    v23(v21, v22);
    v24 = *(v77 + 6296);
    v25 = *(v77 + 6280);
    v26 = *(v77 + 6264);
    v27 = *(v77 + 6256);
    v28 = *(v77 + 6248);
    v29 = *(v77 + 6240);
    v30 = *(v77 + 6232);
    v31 = *(v77 + 6208);
    v32 = *(v77 + 6200);
    v33 = *(v77 + 6192);
    v34 = *(v77 + 6184);
    v35 = *(v77 + 6176);
    v36 = *(v77 + 6168);
    v37 = *(v77 + 6160);
    v38 = *(v77 + 6152);
    v39 = *(v77 + 6144);
    v40 = *(v77 + 6136);
    v41 = *(v77 + 6128);
    v42 = *(v77 + 6120);
    v43 = *(v77 + 6112);
    v12 = *(v77 + 6088);
    OS_dispatch_semaphore.signal()();

    v13 = *(*(v77 + 5632) + 8);
    v14 = *(v77 + 5632);

    return v13();
  }

  else
  {
    memcpy((v77 + 2392), (v77 + 280), 0x51uLL);
    memcpy((v77 + 2304), (v77 + 2392), 0x51uLL);
    if (*(v77 + 2384))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    memcpy((v77 + 5360), (v77 + 2304), 0x50uLL);
    v9 = swift_task_alloc();
    *(v77 + 6616) = v9;
    *v9 = *(v77 + 5632);
    v9[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v10 = *(v77 + 6072);

    return MediaMLWorker.saveModelStatsToDB(modelStats:)(v77 + 5360);
  }
}

uint64_t MediaMLWorker.checkAndPruneProcessedCellDB()()
{
  v1[25] = v0;
  v1[13] = v1;
  v1[14] = 0;
  v1[16] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[20] = 0;
  v1[21] = 0;
  v2 = type metadata accessor for Logger();
  v1[26] = v2;
  v5 = *(v2 - 8);
  v1[27] = v5;
  v6 = *(v5 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[14] = v0;
  v3 = v1[13];

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), 0);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[30];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB());
  v0[34] = v4;
  if (v4)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {
    v5 = *(v10 + 264);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v79 = v0;
  v0[13] = v0;
  v73 = v0[17];
  v0[19] = v73;
  if (v73 >= *MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor())
  {
    v1 = MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor();
    v71 = v73 - *v1;
    if (__OFSUB__(v73, *v1))
    {
      __break(1u);
    }

    else
    {
      v1 = MAX_ALLOWED_PROCESSED_DATASIZE_PRUNE.unsafeMutableAddressor();
      v70 = v71 + *v1;
      v4 = __OFADD__(v71, *v1);
      *(v72 + 280) = v71 + *v1;
      if (!v4)
      {
        v5 = *(v72 + 232);
        v61 = *(v72 + 208);
        v60 = *(v72 + 216);
        *(v72 + 160) = v70;
        v59 = swift_allocObject();
        *(v72 + 288) = v59;
        *(v72 + 168) = v59 + 16;
        *(v59 + 16) = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
        v6 = MediaMLWorker.logger.unsafeMutableAddressor();
        v7 = *(v60 + 16);
        *(v72 + 296) = v7;
        *(v72 + 304) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v7(v5, v6, v61);
        v62 = swift_allocObject();
        *(v62 + 16) = v70;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        v65 = swift_allocObject();
        *(v65 + 16) = 8;
        v63 = swift_allocObject();
        *(v63 + 16) = partial apply for implicit closure #1 in MediaMLWorker.checkAndPruneProcessedCellDB();
        *(v63 + 24) = v62;
        v66 = swift_allocObject();
        *(v66 + 16) = _sSiIegd_SiIegr_TRTA_0;
        *(v66 + 24) = v63;
        *(v72 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v67 = v8;

        *v67 = closure #1 in OSLogArguments.append(_:)partial apply;
        v67[1] = v64;

        v67[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v67[3] = v65;

        v67[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        v67[5] = v66;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v68, v69))
        {
          v9 = *(v72 + 272);
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v57 = createStorage<A>(capacity:type:)(0);
          v58 = createStorage<A>(capacity:type:)(0);
          v74 = buf;
          v75 = v57;
          v76 = v58;
          serialize(_:at:)(0, &v74);
          serialize(_:at:)(1, &v74);
          v77 = closure #1 in OSLogArguments.append(_:)partial apply;
          v78 = v64;
          closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
          if (v9)
          {
            goto LABEL_14;
          }

          v77 = closure #1 in OSLogArguments.append(_:)partial apply;
          v78 = v65;
          closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
          v77 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
          v78 = v66;
          closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
          _os_log_impl(&_mh_execute_header, v68, v69, "processedcell data too large, deleting %ld rows", buf, 0xCu);
          destroyStorage<A>(_:count:)(v57);
          destroyStorage<A>(_:count:)(v58);
          UnsafeMutablePointer.deallocate()();

          v55 = 0;
        }

        else
        {

          v55 = *(v72 + 272);
        }

        *(v72 + 320) = v55;
        v53 = *(v72 + 232);
        v54 = *(v72 + 208);
        v52 = *(v72 + 216);

        v11 = *(v52 + 8);
        *(v72 + 328) = v11;
        *(v72 + 336) = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v11(v53, v54);
        if (v70 < *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor())
        {
          v51 = *(v72 + 248);
          *(v72 + 344) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedcell LIMIT ?", 0x21uLL, 1);
          v12 = swift_task_alloc();
          v2 = v51;
          *(v72 + 360) = v12;
          *(v12 + 16) = v70;
          v13 = *(v72 + 104);
          v1 = MediaMLWorker.checkAndPruneProcessedCellDB();

          return _swift_task_switch(v1, v2);
        }

        v48 = *(v72 + 288);
        v49 = *(v72 + 280);
        swift_beginAccess();
        v50 = *(v48 + 16);
        swift_endAccess();
        if (v50 >= v49)
        {
          *(v72 + 408) = v55;
          v26 = *(v72 + 248);
          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
          v2 = v26;
          *(v72 + 416) = v19;
          v20 = *(v72 + 104);
          v1 = MediaMLWorker.checkAndPruneProcessedCellDB();

          return _swift_task_switch(v1, v2);
        }

        v45 = *(v72 + 312);
        v37 = *(v72 + 304);
        v38 = *(v72 + 296);
        v39 = *(v72 + 288);
        v14 = *(v72 + 224);
        v36 = *(v72 + 208);
        v15 = MediaMLWorker.logger.unsafeMutableAddressor();
        v38(v14, v15, v36);

        oslog = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        v41 = swift_allocObject();
        *(v41 + 16) = 0;
        v42 = swift_allocObject();
        *(v42 + 16) = 8;
        v40 = swift_allocObject();
        *(v40 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB();
        *(v40 + 24) = v39;
        v43 = swift_allocObject();
        *(v43 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v43 + 24) = v40;
        _allocateUninitializedArray<A>(_:)();
        v44 = v16;

        *v44 = closure #1 in OSLogArguments.append(_:)partial apply;
        v44[1] = v41;

        v44[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v44[3] = v42;

        v44[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v44[5] = v43;
        _finalizeUninitializedArray<A>(_:)();

        if (!os_log_type_enabled(oslog, v47))
        {

          v32 = v55;
LABEL_26:
          *(v72 + 376) = v32;
          v29 = *(v72 + 336);
          v30 = *(v72 + 328);
          v31 = *(v72 + 248);
          v27 = *(v72 + 224);
          v28 = *(v72 + 208);

          v30(v27, v28);
          v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedcell LIMIT ?", 0x21uLL, 1);
          v2 = v31;
          *(v72 + 384) = v17;
          v18 = *(v72 + 104);
          v1 = MediaMLWorker.checkAndPruneProcessedCellDB();

          return _swift_task_switch(v1, v2);
        }

        v33 = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v34 = createStorage<A>(capacity:type:)(0);
        v35 = createStorage<A>(capacity:type:)(0);
        *(v72 + 176) = v33;
        *(v72 + 184) = v34;
        *(v72 + 192) = v35;
        serialize(_:at:)(0, (v72 + 176));
        serialize(_:at:)(1, (v72 + 176));
        *(v72 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v72 + 96) = v41;
        closure #1 in osLogInternal(_:log:type:)(v72 + 88, v72 + 176, v72 + 184, v72 + 192);
        if (!v55)
        {
          *(v72 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v72 + 96) = v42;
          closure #1 in osLogInternal(_:log:type:)(v72 + 88, v72 + 176, v72 + 184, v72 + 192);
          *(v72 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v72 + 96) = v43;
          closure #1 in osLogInternal(_:log:type:)(v72 + 88, v72 + 176, v72 + 184, v72 + 192);
          _os_log_impl(&_mh_execute_header, oslog, v47, "Deleting %ldth rows", v33, 0xCu);
          destroyStorage<A>(_:count:)(v34);
          destroyStorage<A>(_:count:)(v35);
          UnsafeMutablePointer.deallocate()();

          v32 = 0;
          goto LABEL_26;
        }

LABEL_14:
      }
    }

    __break(1u);
    return _swift_task_switch(v1, v2);
  }

  v21 = *(v72 + 248);
  v24 = *(v72 + 232);
  v25 = *(v72 + 224);

  v22 = *(*(v72 + 104) + 8);
  v23 = *(v72 + 104);

  return v22();
}

{
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[31];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #3 in MediaMLWorker.checkAndPruneProcessedCellDB());
  v0[46] = v4;
  if (v4)
  {
    v9 = v12[13];
    v8 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {
    v6 = v12[45];
    v11 = v12[44];

    v7 = v12[13];
    v8 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v8, 0);
}

{
  v0[6]._object = v0;
  v0[25]._object = v0[23]._countAndFlagsBits;
  object = v0[15]._object;
  v0[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
  v1 = v0[6]._object;

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), object);
}

{
  v1 = v0[49];
  v2 = v0[48];
  v3 = v0[47];
  v4 = v0[31];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #4 in MediaMLWorker.checkAndPruneProcessedCellDB());
  v0[50] = v3;
  if (v3)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {
    v5 = *(v10 + 392);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v40 = *(v0 + 288);
  *(v0 + 104) = v0;
  swift_beginAccess();
  v41 = *(v40 + 16);
  swift_endAccess();
  v1 = DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v42 = v41 + *v1;
  if (__OFADD__(v41, *v1))
  {
    __break(1u);
  }

  else
  {
    v13 = *(v39 + 288);
    swift_beginAccess();
    *(v13 + 16) = v42;
    swift_endAccess();
    v23 = *(v39 + 400);
    v14 = *(v39 + 288);
    v15 = *(v39 + 280);
    swift_beginAccess();
    v16 = *(v14 + 16);
    swift_endAccess();
    if (v16 < v15)
    {
      v36 = *(v39 + 312);
      v28 = *(v39 + 304);
      v29 = *(v39 + 296);
      v30 = *(v39 + 288);
      v4 = *(v39 + 224);
      v27 = *(v39 + 208);
      v5 = MediaMLWorker.logger.unsafeMutableAddressor();
      v29(v4, v5, v27);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = 8;
      v31 = swift_allocObject();
      *(v31 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB();
      *(v31 + 24) = v30;
      v34 = swift_allocObject();
      *(v34 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v34 + 24) = v31;
      _allocateUninitializedArray<A>(_:)();
      v35 = v6;

      *v35 = closure #1 in OSLogArguments.append(_:)partial apply;
      v35[1] = v32;

      v35[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v35[3] = v33;

      v35[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v35[5] = v34;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v37, v38))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v25 = createStorage<A>(capacity:type:)(0);
        v26 = createStorage<A>(capacity:type:)(0);
        *(v39 + 176) = buf;
        *(v39 + 184) = v25;
        *(v39 + 192) = v26;
        serialize(_:at:)(0, (v39 + 176));
        serialize(_:at:)(1, (v39 + 176));
        *(v39 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v39 + 96) = v32;
        closure #1 in osLogInternal(_:log:type:)(v39 + 88, v39 + 176, v39 + 184, v39 + 192);
        if (v23)
        {
        }

        *(v39 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v39 + 96) = v33;
        closure #1 in osLogInternal(_:log:type:)(v39 + 88, v39 + 176, v39 + 184, v39 + 192);
        *(v39 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v39 + 96) = v34;
        closure #1 in osLogInternal(_:log:type:)(v39 + 88, v39 + 176, v39 + 184, v39 + 192);
        _os_log_impl(&_mh_execute_header, v37, v38, "Deleting %ldth rows", buf, 0xCu);
        destroyStorage<A>(_:count:)(v25);
        destroyStorage<A>(_:count:)(v26);
        UnsafeMutablePointer.deallocate()();

        v22 = 0;
      }

      else
      {

        v22 = v23;
      }

      *(v39 + 376) = v22;
      v19 = *(v39 + 336);
      v20 = *(v39 + 328);
      v21 = *(v39 + 248);
      v17 = *(v39 + 224);
      v18 = *(v39 + 208);

      v20(v17, v18);
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedcell LIMIT ?", 0x21uLL, 1);
      v2 = v21;
      *(v39 + 384) = v8;
      v9 = *(v39 + 104);
      v1 = MediaMLWorker.checkAndPruneProcessedCellDB();
    }

    else
    {
      *(v39 + 408) = v23;
      v12 = *(v39 + 248);
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
      v2 = v12;
      *(v39 + 416) = v10;
      v11 = *(v39 + 104);
      v1 = MediaMLWorker.checkAndPruneProcessedCellDB();
    }
  }

  return _swift_task_switch(v1, v2);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v3 = *(v0 + 248);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 432) = v4;
  if (v4)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {
    v5 = *(v10 + 424);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v3 = *(v0 + 248);
  *(v0 + 104) = v0;
  *(v0 + 440) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);
  v1 = *(v0 + 104);

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), v3);
}

{
  v1 = *(v0 + 440);
  v2 = *(v0 + 432);
  v3 = *(v0 + 248);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 456) = v4;
  if (v4)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {
    v5 = *(v10 + 448);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = v0[36];
  v0[13] = v0;

  v2 = v0[31];
  v6 = v0[29];
  v7 = v0[28];

  v3 = *(v0[13] + 8);
  v4 = v0[13];

  return v3();
}

{
  v1 = v0[33];
  v0[13] = v0;

  v2 = v0[34];
  v7 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v8 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[45];
  v7 = v0[44];
  v8 = v0[36];
  v0[13] = v0;

  v2 = v0[46];
  v9 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v10 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[49];
  v7 = v0[36];
  v0[13] = v0;

  v2 = v0[50];
  v8 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v9 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[53];
  v7 = v0[36];
  v0[13] = v0;

  v2 = v0[54];
  v8 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v9 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[56];
  v7 = v0[36];
  v0[13] = v0;

  v2 = v0[57];
  v8 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v9 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

void MediaMLWorker.checkAndPruneProcessedCellDB()()
{
  v1 = v0[25];
  v0[13] = v0;
  v15 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.checkAndPruneProcessedCellDB(), 0, v15, v2, v2);
  v0[30] = 0;

  object = v14[7]._object;
  v14[15]._object = object;
  if (object)
  {
    v14[8]._countAndFlagsBits = object;
    v14[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from processedcell", 0x22uLL, 1);
    v3 = v14[6]._object;

    _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), object);
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v17 = SQLError.init(code:desc:)(-3, v4);
    code = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    v10 = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = code;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = v10;
    swift_willThrow();
    v6 = v14[14]._object;
    countAndFlagsBits = v14[14]._countAndFlagsBits;

    v7 = *(v14[6]._object + 1);
    v8 = v14[6]._object;

    v7();
  }
}

uint64_t MediaMLWorker.getRawCellDataFromDB()(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[7] = 0;
  v2[13] = 0;
  v2[5] = v1;
  v3 = v2[4];
  return _swift_task_switch(MediaMLWorker.getRawCellDataFromDB(), 0);
}

void MediaMLWorker.getRawCellDataFromDB()()
{
  v1 = v0[15];
  v0[4] = v0;
  v23 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getRawCellDataFromDB(), 0, v23, v2, v2);
  v0[16] = 0;

  v21 = v22[6];
  v22[17] = v21;
  if (v21)
  {
    v22[7] = v21;
    v22[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v22[3] = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("                                              WITH CTE AS (SELECT carrier, app_name, rssi/", 0x5AuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v22[8] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rssi, rsrp/", 0x16uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    v22[9] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rsrp, rsrq/", 0x16uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v6);

    v22[10] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rsrq, rscp/", 0x16uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v7);

    v22[11] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rscp, snr/", 0x15uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v8);

    v22[12] = *cell_snr_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_snr, bars, throughput_true FROM cell) SELECT carrier, app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, throughput_true, COUNT(throughput_true) OVER (partition by carrier, carrier, app_name, binned_rssi, binned_rsrp, binned_rscp, binned_rsrq, binned_snr, bars) as rowcount FROM CTE", 0x142uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v9);

    v20 = v22[2];
    v19 = v22[3];

    outlined destroy of DefaultStringInterpolation((v22 + 2));
    v22[18] = String.init(stringInterpolation:)();
    v22[19] = v10;
    v11 = v22[4];

    _swift_task_switch(MediaMLWorker.getRawCellDataFromDB(), v21);
  }

  else
  {
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v25 = SQLError.init(code:desc:)(-3, v12);
    code = v25.code;
    desc_8 = v25.desc.value._countAndFlagsBits;
    object = v25.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v13 = code;
    *(v13 + 8) = desc_8;
    *(v13 + 16) = object;
    swift_willThrow();
    v14 = *(v22[4] + 8);
    v15 = v22[4];

    v14();
  }
}

uint64_t MediaMLWorker.getRawCellDataFromDB()()
{
  v10 = v0[19];
  v11 = v0[18];
  v1 = v0[17];
  v2 = v0[16];
  v9 = v0[14];
  v0[4] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v11, v10, closure #2 in MediaMLWorker.getRawCellDataFromDB());
  v0[20] = v2;
  if (v2)
  {
    v6 = *(v8 + 32);
    v5 = MediaMLWorker.getRawCellDataFromDB();
  }

  else
  {
    v3 = *(v8 + 152);

    v4 = *(v8 + 32);
    v5 = MediaMLWorker.getRawCellDataFromDB();
  }

  return _swift_task_switch(v5, 0);
}

{
  v1 = *(v0 + 136);
  *(v0 + 32) = v0;

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

{
  v1 = v0[20];
  v2 = v0[19];
  v7 = v0[17];
  v0[4] = v0;

  swift_errorRetain();
  v0[13] = v1;
  swift_willThrow();

  v3 = v0[20];
  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

uint64_t MediaMLWorker.getCellDataStandardDeviation()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.getCellDataStandardDeviation(), 0);
}

void MediaMLWorker.getCellDataStandardDeviation()()
{
  v1 = v0[8];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getCellDataStandardDeviation(), 0, v13, v2, v2);
  v0[9] = 0;

  v11 = *(v12 + 32);
  *(v12 + 80) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH CTE AS (SELECT app_name, carrier, bars, AVG(throughput_true) AS throughput_mean FROM cell GROUP BY app_name, carrier, bars, session_id)\nSELECT app_name, carrier, bars, AVG(throughput_mean*throughput_mean)-(AVG(throughput_mean)*AVG(throughput_mean)) AS throughput_var\nFROM CTE\nGROUP BY app_name, carrier, bars", 0x139uLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.getCellDataStandardDeviation(), v11);
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

uint64_t MediaMLWorker.getCellDataStandardDeviation()()
{
  v10 = v0[12];
  v11 = v0[11];
  v1 = v0[10];
  v2 = v0[9];
  v9 = v0[7];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v11, v10, closure #2 in MediaMLWorker.getCellDataStandardDeviation());
  v0[13] = v2;
  if (v2)
  {
    v6 = *(v8 + 16);
    v5 = MediaMLWorker.getCellDataStandardDeviation();
  }

  else
  {
    v3 = *(v8 + 96);

    v4 = *(v8 + 16);
    v5 = MediaMLWorker.getCellDataStandardDeviation();
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

uint64_t MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1072) = v2;
  *(v3 + 1064) = a2;
  *(v3 + 1056) = a1;
  *(v3 + 800) = v3;
  *(v3 + 808) = 0;
  *(v3 + 816) = 0;
  *(v3 + 832) = 0;
  *(v3 + 880) = 0;
  *(v3 + 912) = 0;
  *(v3 + 656) = 0;
  *(v3 + 664) = 0;
  *(v3 + 672) = 0;
  *(v3 + 680) = 0;
  *(v3 + 920) = 0;
  *(v3 + 736) = 0;
  *(v3 + 744) = 0;
  *(v3 + 768) = 0;
  *(v3 + 776) = 0;
  *(v3 + 936) = 0;
  *(v3 + 952) = 0;
  *(v3 + 968) = 0;
  *(v3 + 984) = 0;
  *(v3 + 1000) = 0;
  *(v3 + 1016) = 0;
  *(v3 + 1032) = 0;
  *(v3 + 1048) = 0;
  v4 = type metadata accessor for AnyColumn();
  *(v3 + 1080) = v4;
  v12 = *(v4 - 8);
  *(v3 + 1088) = v12;
  v13 = *(v12 + 64);
  *(v3 + 1096) = swift_task_alloc();
  *(v3 + 1104) = swift_task_alloc();
  *(v3 + 1112) = swift_task_alloc();
  *(v3 + 1120) = swift_task_alloc();
  *(v3 + 1128) = swift_task_alloc();
  *(v3 + 1136) = swift_task_alloc();
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = swift_task_alloc();
  *(v3 + 1160) = swift_task_alloc();
  *(v3 + 1168) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 1176) = v5;
  v14 = *(v5 - 8);
  *(v3 + 1184) = v14;
  v15 = *(v14 + 64);
  *(v3 + 1192) = swift_task_alloc();
  *(v3 + 1200) = swift_task_alloc();
  *(v3 + 1208) = swift_task_alloc();
  *(v3 + 1216) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData5OrderOSgMd, &_s11TabularData5OrderOSgMR) - 8) + 64) + 15;
  *(v3 + 1224) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData0B13FrameProtocolPAAE7grouped2byQrSSd_tFQOyAA0bC0V_Qo_Md, &_s11TabularData0B13FrameProtocolPAAE7grouped2byQrSSd_tFQOyAA0bC0V_Qo_MR);
  *(v3 + 1232) = v7;
  v16 = *(v7 - 8);
  *(v3 + 1240) = v16;
  v8 = *(v16 + 64) + 15;
  *(v3 + 1248) = swift_task_alloc();
  v9 = type metadata accessor for DataFrame();
  *(v3 + 1256) = v9;
  v17 = *(v9 - 8);
  *(v3 + 1264) = v17;
  *(v3 + 1272) = *(v17 + 64);
  *(v3 + 1280) = swift_task_alloc();
  *(v3 + 1288) = swift_task_alloc();
  *(v3 + 1296) = swift_task_alloc();
  *(v3 + 808) = a2;
  *(v3 + 816) = v2;
  v10 = *(v3 + 800);

  return _swift_task_switch(MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:), 0);
}

void MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v224 = v0;
  v1 = *(v0 + 1072);
  *(v0 + 800) = v0;
  v213 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:), 0, v213, v2, v2);

  v211 = *(v212 + 824);
  *(v212 + 1304) = v211;
  if (!v211)
  {
    v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v226 = SQLError.init(code:desc:)(-3, v53);
    code = v226.code;
    desc_8 = v226.desc.value._countAndFlagsBits;
    object = v226.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v54 = code;
    *(v54 + 8) = desc_8;
    *(v54 + 16) = object;
    swift_willThrow();
LABEL_53:
    v55 = *(v212 + 1296);
    v58 = *(v212 + 1288);
    v59 = *(v212 + 1280);
    v60 = *(v212 + 1248);
    v61 = *(v212 + 1224);
    v62 = *(v212 + 1216);
    v63 = *(v212 + 1208);
    v64 = *(v212 + 1200);
    v65 = *(v212 + 1192);
    v66 = *(v212 + 1168);
    v67 = *(v212 + 1160);
    v68 = *(v212 + 1152);
    v69 = *(v212 + 1144);
    v70 = *(v212 + 1136);
    v71 = *(v212 + 1128);
    v72 = *(v212 + 1120);
    v73 = *(v212 + 1112);
    v74 = *(v212 + 1104);
    v75 = *(v212 + 1096);

    v56 = *(*(v212 + 800) + 8);
    v57 = *(v212 + 800);

    v56();
    return;
  }

  v3 = *(v212 + 1064);
  *(v212 + 832) = v211;
  v209 = *kMediaML_appName.unsafeMutableAddressor();

  v210 = DataFrame.containsColumn(_:)(v209);

  if (!v210)
  {
    goto LABEL_49;
  }

  v4 = *(v212 + 1064);
  v207 = *kMediaML_carrier.unsafeMutableAddressor();

  v208 = DataFrame.containsColumn(_:)(v207);

  if (!v208)
  {
    goto LABEL_49;
  }

  v5 = *(v212 + 1064);
  v205 = *kMediaML_binnedRssi.unsafeMutableAddressor();

  v206 = DataFrame.containsColumn(_:)(v205);

  if (!v206)
  {
    goto LABEL_49;
  }

  v6 = *(v212 + 1064);
  v203 = *kMediaML_binnedRsrp.unsafeMutableAddressor();

  v204 = DataFrame.containsColumn(_:)(v203);

  if (!v204)
  {
    goto LABEL_49;
  }

  v7 = *(v212 + 1064);
  v201 = *kMediaML_binnedRsrq.unsafeMutableAddressor();

  v202 = DataFrame.containsColumn(_:)(v201);

  if (!v202)
  {
    goto LABEL_49;
  }

  v8 = *(v212 + 1064);
  v199 = *kMediaML_binnedRscp.unsafeMutableAddressor();

  v200 = DataFrame.containsColumn(_:)(v199);

  if (!v200)
  {
    goto LABEL_49;
  }

  v9 = *(v212 + 1064);
  v197 = *kMediaML_binnedSnr.unsafeMutableAddressor();

  v198 = DataFrame.containsColumn(_:)(v197);

  if (!v198)
  {
    goto LABEL_49;
  }

  v10 = *(v212 + 1064);
  v195 = *kMediaML_bars.unsafeMutableAddressor();

  v196 = DataFrame.containsColumn(_:)(v195);

  if (!v196)
  {
    goto LABEL_49;
  }

  v11 = *(v212 + 1064);
  v193 = *kMediaML_count.unsafeMutableAddressor();

  v194 = DataFrame.containsColumn(_:)(v193);

  if (!v194 || (v12 = *(v212 + 1064), v191 = *kMediaML_throughputTrue.unsafeMutableAddressor(), , v192 = DataFrame.containsColumn(_:)(v191), , !v192))
  {
LABEL_49:
    v50 = *(v212 + 1192);
    v87 = *(v212 + 1176);
    v86 = *(v212 + 1184);
    v51 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v86 + 16))(v50, v51, v87);
    v89 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v90 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v89, v88))
    {
      v82 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = createStorage<A>(capacity:type:)(0);
      v84 = createStorage<A>(capacity:type:)(0);
      *(v212 + 840) = v82;
      *(v212 + 848) = v83;
      *(v212 + 856) = v84;
      serialize(_:at:)(0, (v212 + 840));
      serialize(_:at:)(0, (v212 + 840));
      *(v212 + 864) = v90;
      v85 = swift_task_alloc();
      v85[2] = v212 + 840;
      v85[3] = v212 + 848;
      v85[4] = v212 + 856;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v89, v88, "GetAndSavePreProcessedCellData: DataFrame did not contain all required columns", v82, 2u);
      destroyStorage<A>(_:count:)(v83);
      destroyStorage<A>(_:count:)(v84);
      UnsafeMutablePointer.deallocate()();
    }

    v80 = *(v212 + 1192);
    v81 = *(v212 + 1176);
    v79 = *(v212 + 1184);

    (*(v79 + 8))(v80, v81);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();

    goto LABEL_53;
  }

  v184 = *(v212 + 1296);
  v182 = *(v212 + 1256);
  v188 = *(v212 + 1248);
  v189 = *(v212 + 1232);
  v185 = *(v212 + 1224);
  v13 = *(v212 + 1064);
  v187 = *(v212 + 1240);
  _allocateUninitializedArray<A>(_:)();
  v181 = v14;
  v15 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v15, v181);
  v16 = kMediaML_carrier.unsafeMutableAddressor();
  outlined init with copy of String(v16, v181 + 2);
  v17 = kMediaML_binnedRssi.unsafeMutableAddressor();
  outlined init with copy of String(v17, v181 + 4);
  v18 = kMediaML_binnedRsrp.unsafeMutableAddressor();
  outlined init with copy of String(v18, v181 + 6);
  v19 = kMediaML_binnedRsrq.unsafeMutableAddressor();
  outlined init with copy of String(v19, v181 + 8);
  v20 = kMediaML_binnedRscp.unsafeMutableAddressor();
  outlined init with copy of String(v20, v181 + 10);
  v21 = kMediaML_binnedSnr.unsafeMutableAddressor();
  outlined init with copy of String(v21, v181 + 12);
  v22 = kMediaML_bars.unsafeMutableAddressor();
  outlined init with copy of String(v22, v181 + 14);
  v23 = kMediaML_count.unsafeMutableAddressor();
  outlined init with copy of String(v23, v181 + 16);
  _finalizeUninitializedArray<A>(_:)();
  DataFrameProtocol.grouped(by:)();

  v24 = kMediaML_throughputTrue.unsafeMutableAddressor();
  countAndFlagsBits = v24->_countAndFlagsBits;
  v186 = v24->_object;

  *(v212 + 872) = 0.5;
  v25 = type metadata accessor for Order();
  (*(*(v25 - 8) + 56))(v185, 1);
  *(v212 + 688) = v182;
  *(v212 + 696) = &protocol witness table for DataFrame;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Double and conformance Double();
  RowGroupingProtocol.quantiles<A>(_:_:quantile:order:)();
  outlined destroy of Order?(v185);

  (*(v187 + 8))(v188, v189);
  v26 = DataFrame.shape.getter();
  v190 = v26;
  *(v212 + 880) = v26;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
_swift_task_switch:
    _swift_task_switch(v26, v27);
    return;
  }

  *(v212 + 896) = v26 - 1;
  *(v212 + 904) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
  min<A>(_:_:)();
  v180 = *(v212 + 888);
  *(v212 + 912) = v180;
  if (v190 > 0)
  {
    v160 = *(v212 + 1296);
    v164 = *(v212 + 1288);
    v163 = *(v212 + 1272);
    v165 = *(v212 + 1256);
    v29 = *(v212 + 1216);
    v157 = *(v212 + 1176);
    v159 = *(v212 + 1264);
    v156 = *(v212 + 1184);
    v30 = MediaMLWorker.logger.unsafeMutableAddressor();
    v158 = *(v156 + 16);
    v158(v29, v30, v157);
    v161 = *(v159 + 16);
    v161(v164, v160, v165);
    v162 = *(v159 + 80);
    v167 = swift_allocObject();
    v166 = *(v159 + 32);
    v166(v167 + ((v162 + 16) & ~v162), v164, v165);
    v161(v164, v160, v165);
    v169 = swift_allocObject();
    v166(v169 + ((v162 + 16) & ~v162), v164, v165);
    oslog = Logger.logObject.getter();
    v179 = static os_log_type_t.info.getter();
    v171 = swift_allocObject();
    *(v171 + 16) = 0;
    v172 = swift_allocObject();
    *(v172 + 16) = 8;
    v168 = swift_allocObject();
    *(v168 + 16) = partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    *(v168 + 24) = v167;
    v173 = swift_allocObject();
    *(v173 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v173 + 24) = v168;
    v174 = swift_allocObject();
    *(v174 + 16) = 0;
    v175 = swift_allocObject();
    *(v175 + 16) = 8;
    v170 = swift_allocObject();
    *(v170 + 16) = partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    *(v170 + 24) = v169;
    v176 = swift_allocObject();
    *(v176 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v176 + 24) = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v177 = v31;

    *v177 = closure #1 in OSLogArguments.append(_:)partial apply;
    v177[1] = v171;

    v177[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v177[3] = v172;

    v177[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v177[5] = v173;

    v177[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v177[7] = v174;

    v177[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v177[9] = v175;

    v177[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v177[11] = v176;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v179))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v154 = createStorage<A>(capacity:type:)(0);
      v155 = createStorage<A>(capacity:type:)(0);
      v219 = buf;
      v220 = v154;
      v221 = v155;
      serialize(_:at:)(0, &v219);
      serialize(_:at:)(2, &v219);
      v222 = closure #1 in OSLogArguments.append(_:)partial apply;
      v223 = v171;
      closure #1 in osLogInternal(_:log:type:)(&v222, &v219, &v220, &v221);
      v222 = closure #1 in OSLogArguments.append(_:)partial apply;
      v223 = v172;
      closure #1 in osLogInternal(_:log:type:)(&v222, &v219, &v220, &v221);
      v222 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v223 = v173;
      closure #1 in osLogInternal(_:log:type:)(&v222, &v219, &v220, &v221);
      v222 = closure #1 in OSLogArguments.append(_:)partial apply;
      v223 = v174;
      closure #1 in osLogInternal(_:log:type:)(&v222, &v219, &v220, &v221);
      v222 = closure #1 in OSLogArguments.append(_:)partial apply;
      v223 = v175;
      closure #1 in osLogInternal(_:log:type:)(&v222, &v219, &v220, &v221);
      v222 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v223 = v176;
      closure #1 in osLogInternal(_:log:type:)(&v222, &v219, &v220, &v221);
      _os_log_impl(&_mh_execute_header, oslog, v179, "Processed cell data, shape =%ld,%ld", buf, 0x16u);
      destroyStorage<A>(_:count:)(v154);
      destroyStorage<A>(_:count:)(v155);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v142 = *(v212 + 1216);
    v32 = *(v212 + 1208);
    v144 = *(v212 + 1176);
    v141 = *(v212 + 1184);

    v143 = *(v141 + 8);
    v143(v142, v144);
    v33 = MediaMLWorker.logger.unsafeMutableAddressor();
    v158(v32, v33, v144);
    v145 = swift_allocObject();
    *(v145 + 16) = v180;
    log = Logger.logObject.getter();
    v152 = static os_log_type_t.debug.getter();
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = 8;
    v146 = swift_allocObject();
    *(v146 + 16) = partial apply for implicit closure #12 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    *(v146 + 24) = v145;
    v149 = swift_allocObject();
    *(v149 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v149 + 24) = v146;
    _allocateUninitializedArray<A>(_:)();
    v150 = v34;

    *v150 = closure #1 in OSLogArguments.append(_:)partial apply;
    v150[1] = v147;

    v150[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v150[3] = v148;

    v150[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v150[5] = v149;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v152))
    {
      v138 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v139 = createStorage<A>(capacity:type:)(0);
      v140 = createStorage<A>(capacity:type:)(0);
      v214 = v138;
      v215 = v139;
      v216 = v140;
      serialize(_:at:)(0, &v214);
      serialize(_:at:)(1, &v214);
      v217 = closure #1 in OSLogArguments.append(_:)partial apply;
      v218 = v147;
      closure #1 in osLogInternal(_:log:type:)(&v217, &v214, &v215, &v216);
      v217 = closure #1 in OSLogArguments.append(_:)partial apply;
      v218 = v148;
      closure #1 in osLogInternal(_:log:type:)(&v217, &v214, &v215, &v216);
      v217 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v218 = v149;
      closure #1 in osLogInternal(_:log:type:)(&v217, &v214, &v215, &v216);
      _os_log_impl(&_mh_execute_header, log, v152, "Writing %ld rows into processedcell table", v138, 0xCu);
      destroyStorage<A>(_:count:)(v139);
      destroyStorage<A>(_:count:)(v140);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v136 = *(v212 + 1208);
    v137 = *(v212 + 1176);

    v143(v136, v137);
    if (v180 < 0)
    {
      goto LABEL_42;
    }

    *(v212 + 704) = 0;
    *(v212 + 712) = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    *(v212 + 1312) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v212 + 792) & 1) == 0)
    {
      v35 = *(v212 + 1296);
      v133 = *(v212 + 1168);
      v134 = *(v212 + 1080);
      v132 = *(v212 + 1088);
      *(v212 + 920) = *(v212 + 784);
      v131 = *kMediaML_carrier.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135 = *(v132 + 8);
      v135(v133, v134);
      if (!*(v212 + 72))
      {
        goto LABEL_42;
      }

      v36 = *(v212 + 1296);
      v129 = *(v212 + 1160);
      v130 = *(v212 + 1080);
      outlined init with take of Any(v212 + 48, v212 + 16);
      swift_dynamicCast();
      v126 = *(v212 + 720);
      v127 = *(v212 + 728);
      *(v212 + 1320) = v127;
      *(v212 + 736) = v126;
      *(v212 + 744) = v127;

      v128 = *kMediaML_appName.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v129, v130);
      if (!*(v212 + 136))
      {
        goto LABEL_42;
      }

      v37 = *(v212 + 1296);
      v124 = *(v212 + 1152);
      v125 = *(v212 + 1080);
      outlined init with take of Any(v212 + 112, v212 + 80);
      swift_dynamicCast();
      v121 = *(v212 + 752);
      v122 = *(v212 + 760);
      *(v212 + 1328) = v122;
      *(v212 + 768) = v121;
      *(v212 + 776) = v122;

      v123 = *kMediaML_binnedRssi.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v124, v125);
      if (!*(v212 + 200))
      {
        goto LABEL_42;
      }

      v38 = *(v212 + 1296);
      v119 = *(v212 + 1144);
      v120 = *(v212 + 1080);
      outlined init with take of Any(v212 + 176, v212 + 144);
      swift_dynamicCast();
      v117 = *(v212 + 928);
      *(v212 + 936) = v117;

      v118 = *kMediaML_binnedRsrp.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v119, v120);
      if (!*(v212 + 264))
      {
        goto LABEL_42;
      }

      v39 = *(v212 + 1296);
      v115 = *(v212 + 1136);
      v116 = *(v212 + 1080);
      outlined init with take of Any(v212 + 240, v212 + 208);
      swift_dynamicCast();
      v113 = *(v212 + 944);
      *(v212 + 952) = v113;

      v114 = *kMediaML_binnedRsrq.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v115, v116);
      if (!*(v212 + 328))
      {
        goto LABEL_42;
      }

      v40 = *(v212 + 1296);
      v111 = *(v212 + 1128);
      v112 = *(v212 + 1080);
      outlined init with take of Any(v212 + 304, v212 + 272);
      swift_dynamicCast();
      v109 = *(v212 + 960);
      *(v212 + 968) = v109;

      v110 = *kMediaML_binnedRscp.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v111, v112);
      if (!*(v212 + 392))
      {
        goto LABEL_42;
      }

      v41 = *(v212 + 1296);
      v107 = *(v212 + 1120);
      v108 = *(v212 + 1080);
      outlined init with take of Any(v212 + 368, v212 + 336);
      swift_dynamicCast();
      v105 = *(v212 + 976);
      *(v212 + 984) = v105;

      v106 = *kMediaML_binnedSnr.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v107, v108);
      if (!*(v212 + 456))
      {
        goto LABEL_42;
      }

      v42 = *(v212 + 1296);
      v103 = *(v212 + 1112);
      v104 = *(v212 + 1080);
      outlined init with take of Any(v212 + 432, v212 + 400);
      swift_dynamicCast();
      v101 = *(v212 + 992);
      *(v212 + 1000) = v101;

      v102 = *kMediaML_bars.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v103, v104);
      if (!*(v212 + 520))
      {
        goto LABEL_42;
      }

      v43 = *(v212 + 1296);
      v99 = *(v212 + 1104);
      v100 = *(v212 + 1080);
      outlined init with take of Any(v212 + 496, v212 + 464);
      swift_dynamicCast();
      v97 = *(v212 + 1008);
      *(v212 + 1016) = v97;

      v98 = *kMediaML_count.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v99, v100);
      if (!*(v212 + 584))
      {
        goto LABEL_42;
      }

      v44 = *(v212 + 1296);
      v95 = *(v212 + 1096);
      v96 = *(v212 + 1080);
      outlined init with take of Any(v212 + 560, v212 + 528);
      swift_dynamicCast();
      v93 = *(v212 + 1024);
      *(v212 + 1032) = v93;

      v94 = *kMediaML_medianThroughputTrue.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v135(v95, v96);
      if (!*(v212 + 648))
      {
LABEL_42:
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v92 = *(v212 + 1304);
      outlined init with take of Any(v212 + 624, v212 + 592);
      swift_dynamicCast();
      v91 = *(v212 + 1040);
      *(v212 + 1048) = v91;

      *(v212 + 1336) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedcell (carrier, app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, count, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xB1uLL, 1);

      v45 = swift_task_alloc();
      v27 = v92;
      *(v212 + 1352) = v45;
      v45[2] = v126;
      v45[3] = v127;
      v45[4] = v121;
      v45[5] = v122;
      v45[6] = v117;
      v45[7] = v113;
      v45[8] = v109;
      v45[9] = v105;
      v45[10] = v101;
      v45[11] = v97;
      v45[12] = v93;
      v45[13] = v91;
      v46 = *(v212 + 800);
      v26 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);

      goto _swift_task_switch;
    }
  }

  v47 = swift_task_alloc();
  *(v212 + 1368) = v47;
  *v47 = *(v212 + 800);
  v47[1] = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  v48 = *(v212 + 1280);
  v49 = *(v212 + 1072);

  MediaMLWorker.getProcessedCellDataFromDB()(v48);
}

uint64_t MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[167];
  v4 = v0[164];
  v5 = v0[163];
  v0[100] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #2 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:));
  v0[170] = v4;
  if (v4)
  {
    v9 = v14[100];
    v8 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  else
  {
    v6 = v14[169];
    v13 = v14[168];
    v12 = v14[166];
    v11 = v14[165];

    v7 = v14[100];
    v8 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  return _swift_task_switch(v8, 0);
}

{
  v1 = *(v0 + 1328);
  v64 = *(v0 + 1320);
  *(v0 + 800) = v0;

  *(v0 + 1312) = *(v0 + 1360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
  IndexingIterator.next()();
  if (*(v0 + 792))
  {
    v15 = swift_task_alloc();
    *(v63 + 1368) = v15;
    *v15 = *(v63 + 800);
    v15[1] = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    v16 = *(v63 + 1280);
    v17 = *(v63 + 1072);

    return MediaMLWorker.getProcessedCellDataFromDB()(v16);
  }

  else
  {
    v2 = *(v63 + 1296);
    v60 = *(v63 + 1168);
    v61 = *(v63 + 1080);
    v59 = *(v63 + 1088);
    *(v63 + 920) = *(v0 + 784);
    v58 = *kMediaML_carrier.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62 = *(v59 + 8);
    v62(v60, v61);
    if (!*(v63 + 72))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v3 = *(v63 + 1296);
    v56 = *(v63 + 1160);
    v57 = *(v63 + 1080);
    outlined init with take of Any(v63 + 48, v63 + 16);
    swift_dynamicCast();
    v53 = *(v63 + 720);
    v54 = *(v63 + 728);
    *(v63 + 1320) = v54;
    *(v63 + 736) = v53;
    *(v63 + 744) = v54;

    v55 = *kMediaML_appName.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v56, v57);
    if (!*(v63 + 136))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v4 = *(v63 + 1296);
    v51 = *(v63 + 1152);
    v52 = *(v63 + 1080);
    outlined init with take of Any(v63 + 112, v63 + 80);
    swift_dynamicCast();
    v48 = *(v63 + 752);
    v49 = *(v63 + 760);
    *(v63 + 1328) = v49;
    *(v63 + 768) = v48;
    *(v63 + 776) = v49;

    v50 = *kMediaML_binnedRssi.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v51, v52);
    if (!*(v63 + 200))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v5 = *(v63 + 1296);
    v46 = *(v63 + 1144);
    v47 = *(v63 + 1080);
    outlined init with take of Any(v63 + 176, v63 + 144);
    swift_dynamicCast();
    v44 = *(v63 + 928);
    *(v63 + 936) = v44;

    v45 = *kMediaML_binnedRsrp.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v46, v47);
    if (!*(v63 + 264))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v6 = *(v63 + 1296);
    v42 = *(v63 + 1136);
    v43 = *(v63 + 1080);
    outlined init with take of Any(v63 + 240, v63 + 208);
    swift_dynamicCast();
    v40 = *(v63 + 944);
    *(v63 + 952) = v40;

    v41 = *kMediaML_binnedRsrq.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v42, v43);
    if (!*(v63 + 328))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v7 = *(v63 + 1296);
    v38 = *(v63 + 1128);
    v39 = *(v63 + 1080);
    outlined init with take of Any(v63 + 304, v63 + 272);
    swift_dynamicCast();
    v36 = *(v63 + 960);
    *(v63 + 968) = v36;

    v37 = *kMediaML_binnedRscp.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v38, v39);
    if (!*(v63 + 392))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v8 = *(v63 + 1296);
    v34 = *(v63 + 1120);
    v35 = *(v63 + 1080);
    outlined init with take of Any(v63 + 368, v63 + 336);
    swift_dynamicCast();
    v32 = *(v63 + 976);
    *(v63 + 984) = v32;

    v33 = *kMediaML_binnedSnr.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v34, v35);
    if (!*(v63 + 456))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v9 = *(v63 + 1296);
    v30 = *(v63 + 1112);
    v31 = *(v63 + 1080);
    outlined init with take of Any(v63 + 432, v63 + 400);
    swift_dynamicCast();
    v28 = *(v63 + 992);
    *(v63 + 1000) = v28;

    v29 = *kMediaML_bars.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v30, v31);
    if (!*(v63 + 520))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v10 = *(v63 + 1296);
    v26 = *(v63 + 1104);
    v27 = *(v63 + 1080);
    outlined init with take of Any(v63 + 496, v63 + 464);
    swift_dynamicCast();
    v24 = *(v63 + 1008);
    *(v63 + 1016) = v24;

    v25 = *kMediaML_count.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v26, v27);
    if (!*(v63 + 584))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v11 = *(v63 + 1296);
    v22 = *(v63 + 1096);
    v23 = *(v63 + 1080);
    outlined init with take of Any(v63 + 560, v63 + 528);
    swift_dynamicCast();
    v20 = *(v63 + 1024);
    *(v63 + 1032) = v20;

    v21 = *kMediaML_medianThroughputTrue.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v62(v22, v23);
    if (*(v63 + 648))
    {
      v19 = *(v63 + 1304);
      outlined init with take of Any(v63 + 624, v63 + 592);
      swift_dynamicCast();
      v18 = *(v63 + 1040);
      *(v63 + 1048) = v18;

      *(v63 + 1336) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedcell (carrier, app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, count, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xB1uLL, 1);

      v13 = swift_task_alloc();
      *(v63 + 1352) = v13;
      v13[2] = v53;
      v13[3] = v54;
      v13[4] = v48;
      v13[5] = v49;
      v13[6] = v44;
      v13[7] = v40;
      v13[8] = v36;
      v13[9] = v32;
      v13[10] = v28;
      v13[11] = v24;
      v13[12] = v20;
      v13[13] = v18;
      v14 = *(v63 + 800);

      return _swift_task_switch(MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:), v19);
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }
}

{
  v8 = *v1;
  v7 = (v8 + 800);
  v2 = *(*v1 + 1368);
  *(v8 + 800) = *v1;
  *(v8 + 1376) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  else
  {
    v3 = *v7;
    v4 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v66 = v0;
  v45 = v0[161];
  v41 = v0[160];
  v44 = v0[159];
  v40 = v0[158];
  v46 = v0[157];
  v1 = v0[150];
  v38 = v0[148];
  v39 = v0[147];
  v0[100] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v38 + 16))(v1, v2, v39);
  v42 = *(v40 + 16);
  v42(v45, v41, v46);
  v43 = *(v40 + 80);
  v48 = swift_allocObject();
  v47 = *(v40 + 32);
  v47(v48 + ((v43 + 16) & ~v43), v45, v46);
  v42(v45, v41, v46);
  v50 = swift_allocObject();
  v47(v50 + ((v43 + 16) & ~v43), v45, v46);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  *(v49 + 24) = v48;
  v54 = swift_allocObject();
  *(v54 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v54 + 24) = v49;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for implicit closure #14 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  *(v51 + 24) = v50;
  v57 = swift_allocObject();
  *(v57 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v57 + 24) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v58 = v3;

  *v58 = closure #1 in OSLogArguments.append(_:)partial apply;
  v58[1] = v52;

  v58[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v58[3] = v53;

  v58[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v58[5] = v54;

  v58[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v58[7] = v55;

  v58[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v58[9] = v56;

  v58[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v58[11] = v57;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v59, v60))
  {
    v4 = v37[172];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(0);
    v36 = createStorage<A>(capacity:type:)(0);
    v61 = buf;
    v62 = v35;
    v63 = v36;
    serialize(_:at:)(0, &v61);
    serialize(_:at:)(2, &v61);
    v64 = closure #1 in OSLogArguments.append(_:)partial apply;
    v65 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    if (v4)
    {
    }

    v64 = closure #1 in OSLogArguments.append(_:)partial apply;
    v65 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v65 = v54;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = closure #1 in OSLogArguments.append(_:)partial apply;
    v65 = v55;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = closure #1 in OSLogArguments.append(_:)partial apply;
    v65 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    v64 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v65 = v57;
    closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
    _os_log_impl(&_mh_execute_header, v59, v60, "Returning a dataframe of size=%ld,%ld", buf, 0x16u);
    destroyStorage<A>(_:count:)(v35);
    destroyStorage<A>(_:count:)(v36);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v15 = v37[162];
  v16 = v37[161];
  v17 = v37[160];
  v12 = v37[157];
  v18 = v37[156];
  v19 = v37[153];
  v20 = v37[152];
  v21 = v37[151];
  v22 = v37[150];
  v23 = v37[149];
  v9 = v37[147];
  v24 = v37[146];
  v25 = v37[145];
  v26 = v37[144];
  v27 = v37[143];
  v28 = v37[142];
  v29 = v37[141];
  v30 = v37[140];
  v31 = v37[139];
  v32 = v37[138];
  v33 = v37[137];
  v10 = v37[132];
  v14 = v37[163];
  v11 = v37[158];
  v8 = v37[148];

  (*(v8 + 8))(v22, v9);
  v42(v10, v17, v12);
  v13 = *(v11 + 8);
  v13(v17, v12);
  v13(v15, v12);

  v6 = *(v37[100] + 8);
  v7 = v37[100];

  return v6();
}

{
  v1 = v0[169];
  v7 = v0[168];
  v8 = v0[166];
  v9 = v0[165];
  v13 = v0[163];
  v11 = v0[162];
  v10 = v0[158];
  v12 = v0[157];
  v0[100] = v0;

  (*(v10 + 8))(v11, v12);

  v2 = v0[170];
  v3 = v0[162];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[152];
  v19 = v0[151];
  v20 = v0[150];
  v21 = v0[149];
  v22 = v0[146];
  v23 = v0[145];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[140];
  v29 = v0[139];
  v30 = v0[138];
  v31 = v0[137];

  v4 = *(v0[100] + 8);
  v5 = v0[100];

  return v4();
}

{
  v9 = v0[163];
  v1 = v0[162];
  v2 = v0[158];
  v3 = v0[157];
  v0[100] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[172];
  v5 = v0[162];
  v10 = v0[161];
  v11 = v0[160];
  v12 = v0[156];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[151];
  v16 = v0[150];
  v17 = v0[149];
  v18 = v0[146];
  v19 = v0[145];
  v20 = v0[144];
  v21 = v0[143];
  v22 = v0[142];
  v23 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[137];

  v6 = *(v0[100] + 8);
  v7 = v0[100];

  return v6();
}

uint64_t MediaMLWorker.cleanRawCellDataFromDB()()
{
  v1[6] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[5] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return _swift_task_switch(MediaMLWorker.cleanRawCellDataFromDB(), 0);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[7];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.cleanRawCellDataFromDB());
  v0[11] = v4;
  if (v4)
  {
    v8 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  else
  {
    v5 = *(v10 + 80);

    v6 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v0[1]._countAndFlagsBits = v0;
  v0[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
  v1 = v0[1]._countAndFlagsBits;

  return _swift_task_switch(MediaMLWorker.cleanRawCellDataFromDB(), countAndFlagsBits);
}

{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #3 in MediaMLWorker.cleanRawCellDataFromDB());
  v0[14] = v3;
  if (v3)
  {
    v8 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  else
  {
    v5 = *(v10 + 104);

    v6 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = *(v0 + 64);
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

{
  v1 = v0[10];
  v6 = v0[8];
  v0[2] = v0;

  v2 = v0[11];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

{
  v1 = v0[13];
  v6 = v0[8];
  v0[2] = v0;

  v2 = v0[14];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

void MediaMLWorker.cleanRawCellDataFromDB()()
{
  v1 = v0[6];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.cleanRawCellDataFromDB(), 0, v13, v2, v2);
  v0[7] = 0;

  v11 = *(v12 + 32);
  *(v12 + 64) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM cell", 0x10uLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.cleanRawCellDataFromDB(), v11);
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

uint64_t MediaMLWorker.checkAndPruneProcessedWifiDB()()
{
  v1[25] = v0;
  v1[13] = v1;
  v1[14] = 0;
  v1[16] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[20] = 0;
  v1[21] = 0;
  v2 = type metadata accessor for Logger();
  v1[26] = v2;
  v5 = *(v2 - 8);
  v1[27] = v5;
  v6 = *(v5 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[14] = v0;
  v3 = v1[13];

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), 0);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[30];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB());
  v0[34] = v4;
  if (v4)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {
    v5 = *(v10 + 264);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v79 = v0;
  v0[13] = v0;
  v73 = v0[17];
  v0[19] = v73;
  if (v73 >= *MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor())
  {
    v1 = MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor();
    v71 = v73 - *v1;
    if (__OFSUB__(v73, *v1))
    {
      __break(1u);
    }

    else
    {
      v1 = MAX_ALLOWED_PROCESSED_DATASIZE_PRUNE.unsafeMutableAddressor();
      v70 = v71 + *v1;
      v4 = __OFADD__(v71, *v1);
      *(v72 + 280) = v71 + *v1;
      if (!v4)
      {
        v5 = *(v72 + 232);
        v61 = *(v72 + 208);
        v60 = *(v72 + 216);
        *(v72 + 160) = v70;
        v59 = swift_allocObject();
        *(v72 + 288) = v59;
        *(v72 + 168) = v59 + 16;
        *(v59 + 16) = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
        v6 = MediaMLWorker.logger.unsafeMutableAddressor();
        v7 = *(v60 + 16);
        *(v72 + 296) = v7;
        *(v72 + 304) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v7(v5, v6, v61);
        v62 = swift_allocObject();
        *(v62 + 16) = v70;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        v65 = swift_allocObject();
        *(v65 + 16) = 8;
        v63 = swift_allocObject();
        *(v63 + 16) = partial apply for implicit closure #1 in MediaMLWorker.checkAndPruneProcessedWifiDB();
        *(v63 + 24) = v62;
        v66 = swift_allocObject();
        *(v66 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v66 + 24) = v63;
        *(v72 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v67 = v8;

        *v67 = closure #1 in OSLogArguments.append(_:)partial apply;
        v67[1] = v64;

        v67[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v67[3] = v65;

        v67[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v67[5] = v66;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v68, v69))
        {
          v9 = *(v72 + 272);
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v57 = createStorage<A>(capacity:type:)(0);
          v58 = createStorage<A>(capacity:type:)(0);
          v74 = buf;
          v75 = v57;
          v76 = v58;
          serialize(_:at:)(0, &v74);
          serialize(_:at:)(1, &v74);
          v77 = closure #1 in OSLogArguments.append(_:)partial apply;
          v78 = v64;
          closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
          if (v9)
          {
            goto LABEL_14;
          }

          v77 = closure #1 in OSLogArguments.append(_:)partial apply;
          v78 = v65;
          closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
          v77 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v78 = v66;
          closure #1 in osLogInternal(_:log:type:)(&v77, &v74, &v75, &v76);
          _os_log_impl(&_mh_execute_header, v68, v69, "processedWiFi raw data too large, deleting %ld rows", buf, 0xCu);
          destroyStorage<A>(_:count:)(v57);
          destroyStorage<A>(_:count:)(v58);
          UnsafeMutablePointer.deallocate()();

          v55 = 0;
        }

        else
        {

          v55 = *(v72 + 272);
        }

        *(v72 + 320) = v55;
        v53 = *(v72 + 232);
        v54 = *(v72 + 208);
        v52 = *(v72 + 216);

        v11 = *(v52 + 8);
        *(v72 + 328) = v11;
        *(v72 + 336) = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v11(v53, v54);
        if (v70 < *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor())
        {
          v51 = *(v72 + 248);
          *(v72 + 344) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedwifi LIMIT ?", 0x21uLL, 1);
          v12 = swift_task_alloc();
          v2 = v51;
          *(v72 + 360) = v12;
          *(v12 + 16) = v70;
          v13 = *(v72 + 104);
          v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();

          return _swift_task_switch(v1, v2);
        }

        v48 = *(v72 + 288);
        v49 = *(v72 + 280);
        swift_beginAccess();
        v50 = *(v48 + 16);
        swift_endAccess();
        if (v50 >= v49)
        {
          *(v72 + 408) = v55;
          v26 = *(v72 + 248);
          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
          v2 = v26;
          *(v72 + 416) = v19;
          v20 = *(v72 + 104);
          v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();

          return _swift_task_switch(v1, v2);
        }

        v45 = *(v72 + 312);
        v37 = *(v72 + 304);
        v38 = *(v72 + 296);
        v39 = *(v72 + 288);
        v14 = *(v72 + 224);
        v36 = *(v72 + 208);
        v15 = MediaMLWorker.logger.unsafeMutableAddressor();
        v38(v14, v15, v36);

        oslog = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        v41 = swift_allocObject();
        *(v41 + 16) = 0;
        v42 = swift_allocObject();
        *(v42 + 16) = 8;
        v40 = swift_allocObject();
        *(v40 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB();
        *(v40 + 24) = v39;
        v43 = swift_allocObject();
        *(v43 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v43 + 24) = v40;
        _allocateUninitializedArray<A>(_:)();
        v44 = v16;

        *v44 = closure #1 in OSLogArguments.append(_:)partial apply;
        v44[1] = v41;

        v44[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v44[3] = v42;

        v44[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v44[5] = v43;
        _finalizeUninitializedArray<A>(_:)();

        if (!os_log_type_enabled(oslog, v47))
        {

          v32 = v55;
LABEL_26:
          *(v72 + 376) = v32;
          v29 = *(v72 + 336);
          v30 = *(v72 + 328);
          v31 = *(v72 + 248);
          v27 = *(v72 + 224);
          v28 = *(v72 + 208);

          v30(v27, v28);
          v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedwifi LIMIT ?", 0x21uLL, 1);
          v2 = v31;
          *(v72 + 384) = v17;
          v18 = *(v72 + 104);
          v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();

          return _swift_task_switch(v1, v2);
        }

        v33 = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v34 = createStorage<A>(capacity:type:)(0);
        v35 = createStorage<A>(capacity:type:)(0);
        *(v72 + 176) = v33;
        *(v72 + 184) = v34;
        *(v72 + 192) = v35;
        serialize(_:at:)(0, (v72 + 176));
        serialize(_:at:)(1, (v72 + 176));
        *(v72 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v72 + 96) = v41;
        closure #1 in osLogInternal(_:log:type:)(v72 + 88, v72 + 176, v72 + 184, v72 + 192);
        if (!v55)
        {
          *(v72 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v72 + 96) = v42;
          closure #1 in osLogInternal(_:log:type:)(v72 + 88, v72 + 176, v72 + 184, v72 + 192);
          *(v72 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v72 + 96) = v43;
          closure #1 in osLogInternal(_:log:type:)(v72 + 88, v72 + 176, v72 + 184, v72 + 192);
          _os_log_impl(&_mh_execute_header, oslog, v47, "Deleting %ldth rows", v33, 0xCu);
          destroyStorage<A>(_:count:)(v34);
          destroyStorage<A>(_:count:)(v35);
          UnsafeMutablePointer.deallocate()();

          v32 = 0;
          goto LABEL_26;
        }

LABEL_14:
      }
    }

    __break(1u);
    return _swift_task_switch(v1, v2);
  }

  v21 = *(v72 + 248);
  v24 = *(v72 + 232);
  v25 = *(v72 + 224);

  v22 = *(*(v72 + 104) + 8);
  v23 = *(v72 + 104);

  return v22();
}

{
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[31];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #3 in MediaMLWorker.checkAndPruneProcessedWifiDB());
  v0[46] = v4;
  if (v4)
  {
    v9 = v12[13];
    v8 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {
    v6 = v12[45];
    v11 = v12[44];

    v7 = v12[13];
    v8 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v8, 0);
}

{
  v0[6]._object = v0;
  v0[25]._object = v0[23]._countAndFlagsBits;
  object = v0[15]._object;
  v0[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
  v1 = v0[6]._object;

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), object);
}

{
  v1 = v0[49];
  v2 = v0[48];
  v3 = v0[47];
  v4 = v0[31];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #4 in MediaMLWorker.checkAndPruneProcessedWifiDB());
  v0[50] = v3;
  if (v3)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {
    v5 = *(v10 + 392);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v40 = *(v0 + 288);
  *(v0 + 104) = v0;
  swift_beginAccess();
  v41 = *(v40 + 16);
  swift_endAccess();
  v1 = DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v42 = v41 + *v1;
  if (__OFADD__(v41, *v1))
  {
    __break(1u);
  }

  else
  {
    v13 = *(v39 + 288);
    swift_beginAccess();
    *(v13 + 16) = v42;
    swift_endAccess();
    v23 = *(v39 + 400);
    v14 = *(v39 + 288);
    v15 = *(v39 + 280);
    swift_beginAccess();
    v16 = *(v14 + 16);
    swift_endAccess();
    if (v16 < v15)
    {
      v36 = *(v39 + 312);
      v28 = *(v39 + 304);
      v29 = *(v39 + 296);
      v30 = *(v39 + 288);
      v4 = *(v39 + 224);
      v27 = *(v39 + 208);
      v5 = MediaMLWorker.logger.unsafeMutableAddressor();
      v29(v4, v5, v27);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = 8;
      v31 = swift_allocObject();
      *(v31 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB();
      *(v31 + 24) = v30;
      v34 = swift_allocObject();
      *(v34 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v34 + 24) = v31;
      _allocateUninitializedArray<A>(_:)();
      v35 = v6;

      *v35 = closure #1 in OSLogArguments.append(_:)partial apply;
      v35[1] = v32;

      v35[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v35[3] = v33;

      v35[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v35[5] = v34;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v37, v38))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v25 = createStorage<A>(capacity:type:)(0);
        v26 = createStorage<A>(capacity:type:)(0);
        *(v39 + 176) = buf;
        *(v39 + 184) = v25;
        *(v39 + 192) = v26;
        serialize(_:at:)(0, (v39 + 176));
        serialize(_:at:)(1, (v39 + 176));
        *(v39 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v39 + 96) = v32;
        closure #1 in osLogInternal(_:log:type:)(v39 + 88, v39 + 176, v39 + 184, v39 + 192);
        if (v23)
        {
        }

        *(v39 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v39 + 96) = v33;
        closure #1 in osLogInternal(_:log:type:)(v39 + 88, v39 + 176, v39 + 184, v39 + 192);
        *(v39 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v39 + 96) = v34;
        closure #1 in osLogInternal(_:log:type:)(v39 + 88, v39 + 176, v39 + 184, v39 + 192);
        _os_log_impl(&_mh_execute_header, v37, v38, "Deleting %ldth rows", buf, 0xCu);
        destroyStorage<A>(_:count:)(v25);
        destroyStorage<A>(_:count:)(v26);
        UnsafeMutablePointer.deallocate()();

        v22 = 0;
      }

      else
      {

        v22 = v23;
      }

      *(v39 + 376) = v22;
      v19 = *(v39 + 336);
      v20 = *(v39 + 328);
      v21 = *(v39 + 248);
      v17 = *(v39 + 224);
      v18 = *(v39 + 208);

      v20(v17, v18);
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedwifi LIMIT ?", 0x21uLL, 1);
      v2 = v21;
      *(v39 + 384) = v8;
      v9 = *(v39 + 104);
      v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();
    }

    else
    {
      *(v39 + 408) = v23;
      v12 = *(v39 + 248);
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
      v2 = v12;
      *(v39 + 416) = v10;
      v11 = *(v39 + 104);
      v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();
    }
  }

  return _swift_task_switch(v1, v2);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v3 = *(v0 + 248);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 432) = v4;
  if (v4)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {
    v5 = *(v10 + 424);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v3 = *(v0 + 248);
  *(v0 + 104) = v0;
  *(v0 + 440) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);
  v1 = *(v0 + 104);

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), v3);
}

{
  v1 = *(v0 + 440);
  v2 = *(v0 + 432);
  v3 = *(v0 + 248);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 456) = v4;
  if (v4)
  {
    v8 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {
    v5 = *(v10 + 448);

    v6 = *(v10 + 104);
    v7 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = v0[36];
  v0[13] = v0;

  v2 = v0[31];
  v6 = v0[29];
  v7 = v0[28];

  v3 = *(v0[13] + 8);
  v4 = v0[13];

  return v3();
}

{
  v1 = v0[33];
  v0[13] = v0;

  v2 = v0[34];
  v7 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v8 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[45];
  v7 = v0[44];
  v8 = v0[36];
  v0[13] = v0;

  v2 = v0[46];
  v9 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v10 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[49];
  v7 = v0[36];
  v0[13] = v0;

  v2 = v0[50];
  v8 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v9 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[53];
  v7 = v0[36];
  v0[13] = v0;

  v2 = v0[54];
  v8 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v9 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

{
  v1 = v0[56];
  v7 = v0[36];
  v0[13] = v0;

  v2 = v0[57];
  v8 = v0[31];
  swift_errorRetain();
  v0[18] = v2;
  swift_willThrow();

  v3 = v0[29];
  v9 = v0[28];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

void MediaMLWorker.checkAndPruneProcessedWifiDB()()
{
  v1 = v0[25];
  v0[13] = v0;
  v15 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.checkAndPruneProcessedWifiDB(), 0, v15, v2, v2);
  v0[30] = 0;

  object = v14[7]._object;
  v14[15]._object = object;
  if (object)
  {
    v14[8]._countAndFlagsBits = object;
    v14[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from processedwifi", 0x22uLL, 1);
    v3 = v14[6]._object;

    _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), object);
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v17 = SQLError.init(code:desc:)(-3, v4);
    code = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    v10 = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = code;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = v10;
    swift_willThrow();
    v6 = v14[14]._object;
    countAndFlagsBits = v14[14]._countAndFlagsBits;

    v7 = *(v14[6]._object + 1);
    v8 = v14[6]._object;

    v7();
  }
}

uint64_t MediaMLWorker.getRawWiFiDataFromDB()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.getRawWiFiDataFromDB(), 0);
}

void MediaMLWorker.getRawWiFiDataFromDB()()
{
  v1 = v0[8];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getRawWiFiDataFromDB(), 0, v13, v2, v2);
  v0[9] = 0;

  v11 = *(v12 + 32);
  *(v12 + 80) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT session_id, timestamp, app_name, ssid, hour, dow, rssi, cca, noise, snr, tx_rate, rx_rate, throughput_true FROM wifi", 0x7BuLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.getRawWiFiDataFromDB(), v11);
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

uint64_t MediaMLWorker.getRawWiFiDataFromDB()()
{
  v10 = v0[12];
  v11 = v0[11];
  v1 = v0[10];
  v2 = v0[9];
  v9 = v0[7];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v11, v10, closure #2 in MediaMLWorker.getRawWiFiDataFromDB());
  v0[13] = v2;
  if (v2)
  {
    v6 = *(v8 + 16);
    v5 = MediaMLWorker.getRawWiFiDataFromDB();
  }

  else
  {
    v3 = *(v8 + 96);

    v4 = *(v8 + 16);
    v5 = MediaMLWorker.getRawWiFiDataFromDB();
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

uint64_t MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1936) = v2;
  *(v3 + 1928) = a2;
  *(v3 + 1920) = a1;
  *(v3 + 1360) = v3;
  *(v3 + 1368) = 0;
  *(v3 + 1376) = 0;
  *(v3 + 1392) = 0;
  *(v3 + 1432) = 0;
  *(v3 + 1440) = 0;
  *(v3 + 1448) = 0;
  *(v3 + 1456) = 0;
  *(v3 + 1464) = 0;
  *(v3 + 1472) = 0;
  *(v3 + 1480) = 0;
  *(v3 + 1488) = 0;
  *(v3 + 1496) = 0;
  *(v3 + 1504) = 0;
  *(v3 + 1512) = 0;
  *(v3 + 1520) = 0;
  *(v3 + 1528) = 0;
  *(v3 + 1536) = 0;
  *(v3 + 1568) = 0;
  *(v3 + 1072) = 0;
  *(v3 + 1080) = 0;
  *(v3 + 1088) = 0;
  *(v3 + 1096) = 0;
  *(v3 + 1576) = 0;
  *(v3 + 1600) = 0;
  *(v3 + 1624) = 0;
  *(v3 + 1648) = 0;
  *(v3 + 1672) = 0;
  *(v3 + 1696) = 0;
  *(v3 + 1720) = 0;
  *(v3 + 1744) = 0;
  *(v3 + 1136) = 0;
  *(v3 + 1144) = 0;
  *(v3 + 1168) = 0;
  *(v3 + 1176) = 0;
  *(v3 + 1200) = 0;
  *(v3 + 1208) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 1944) = v4;
  v12 = *(v4 - 8);
  *(v3 + 1952) = v12;
  v13 = *(v12 + 64);
  *(v3 + 1960) = swift_task_alloc();
  *(v3 + 1968) = swift_task_alloc();
  *(v3 + 1976) = swift_task_alloc();
  *(v3 + 1984) = swift_task_alloc();
  v5 = type metadata accessor for DataFrame();
  *(v3 + 1992) = v5;
  v14 = *(v5 - 8);
  *(v3 + 2000) = v14;
  *(v3 + 2008) = *(v14 + 64);
  *(v3 + 2016) = swift_task_alloc();
  *(v3 + 2024) = swift_task_alloc();
  *(v3 + 2032) = swift_task_alloc();
  v6 = type metadata accessor for DataFrame.Slice();
  *(v3 + 2040) = v6;
  v15 = *(v6 - 8);
  *(v3 + 2048) = v15;
  v16 = *(v15 + 64);
  *(v3 + 2056) = swift_task_alloc();
  *(v3 + 2064) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMd, &_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMR);
  *(v3 + 2072) = v7;
  v17 = *(*(v7 - 8) + 64);
  *(v3 + 2080) = swift_task_alloc();
  *(v3 + 2088) = swift_task_alloc();
  v8 = type metadata accessor for AnyColumn();
  *(v3 + 2096) = v8;
  v18 = *(v8 - 8);
  *(v3 + 2104) = v18;
  v19 = *(v18 + 64);
  *(v3 + 2112) = swift_task_alloc();
  *(v3 + 2120) = swift_task_alloc();
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2168) = swift_task_alloc();
  *(v3 + 2176) = swift_task_alloc();
  *(v3 + 2184) = swift_task_alloc();
  *(v3 + 2192) = swift_task_alloc();
  v9 = type metadata accessor for AnyColumnSlice();
  *(v3 + 2200) = v9;
  v20 = *(v9 - 8);
  *(v3 + 2208) = v20;
  v21 = *(v20 + 64);
  *(v3 + 2216) = swift_task_alloc();
  *(v3 + 2224) = swift_task_alloc();
  *(v3 + 2232) = swift_task_alloc();
  *(v3 + 1368) = a2;
  *(v3 + 1376) = v2;
  v10 = *(v3 + 1360);

  return _swift_task_switch(MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:), 0);
}

void MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(v0 + 1936);
  *(v0 + 1360) = v0;
  v300 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:), 0, v300, v2, v2);

  v298 = *(v299 + 1384);
  *(v299 + 2240) = v298;
  if (!v298)
  {
    v53 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v302 = SQLError.init(code:desc:)(-3, v53);
    code = v302.code;
    desc_8 = v302.desc.value._countAndFlagsBits;
    object = v302.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v54 = code;
    *(v54 + 8) = desc_8;
    *(v54 + 16) = object;
    swift_willThrow();
LABEL_70:
    v55 = *(v299 + 2232);
    v58 = *(v299 + 2224);
    v59 = *(v299 + 2216);
    v60 = *(v299 + 2192);
    v61 = *(v299 + 2184);
    v62 = *(v299 + 2176);
    v63 = *(v299 + 2168);
    v64 = *(v299 + 2160);
    v65 = *(v299 + 2152);
    v66 = *(v299 + 2144);
    v67 = *(v299 + 2136);
    v68 = *(v299 + 2128);
    v69 = *(v299 + 2120);
    v70 = *(v299 + 2112);
    v71 = *(v299 + 2088);
    v72 = *(v299 + 2080);
    v73 = *(v299 + 2064);
    v74 = *(v299 + 2056);
    v75 = *(v299 + 2032);
    v76 = *(v299 + 2024);
    v77 = *(v299 + 2016);
    v78 = *(v299 + 1984);
    v79 = *(v299 + 1976);
    v80 = *(v299 + 1968);
    v81 = *(v299 + 1960);

    v56 = *(*(v299 + 1360) + 8);
    v57 = *(v299 + 1360);

    v56();
    return;
  }

  v3 = *(v299 + 1928);
  *(v299 + 1392) = v298;
  v296 = *kMediaML_rssi.unsafeMutableAddressor();

  v297 = DataFrame.containsColumn(_:)(v296);

  if (!v297)
  {
    goto LABEL_66;
  }

  v4 = *(v299 + 1928);
  v294 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v295 = DataFrame.containsColumn(_:)(v294);

  if (!v295)
  {
    goto LABEL_66;
  }

  v5 = *(v299 + 1928);
  v292 = *kMediaML_noise.unsafeMutableAddressor();

  v293 = DataFrame.containsColumn(_:)(v292);

  if (!v293)
  {
    goto LABEL_66;
  }

  v6 = *(v299 + 1928);
  v290 = *kMediaML_txRate.unsafeMutableAddressor();

  v291 = DataFrame.containsColumn(_:)(v290);

  if (!v291)
  {
    goto LABEL_66;
  }

  v7 = *(v299 + 1928);
  v288 = *kMediaML_rxRate.unsafeMutableAddressor();

  v289 = DataFrame.containsColumn(_:)(v288);

  if (!v289)
  {
    goto LABEL_66;
  }

  v8 = *(v299 + 1928);
  v286 = *kMediaML_dayOfWeek.unsafeMutableAddressor();

  v287 = DataFrame.containsColumn(_:)(v286);

  if (!v287)
  {
    goto LABEL_66;
  }

  v9 = *(v299 + 1928);
  v284 = *kMediaML_hourOfDay.unsafeMutableAddressor();

  v285 = DataFrame.containsColumn(_:)(v284);

  if (!v285 || (v10 = *(v299 + 1928), v282 = *kMediaML_ssid.unsafeMutableAddressor(), , v283 = DataFrame.containsColumn(_:)(v282), , !v283))
  {
LABEL_66:
    v50 = *(v299 + 1960);
    v93 = *(v299 + 1944);
    v92 = *(v299 + 1952);
    v51 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v92 + 16))(v50, v51, v93);
    v95 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v96 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v95, v94))
    {
      v88 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v89 = createStorage<A>(capacity:type:)(0);
      v90 = createStorage<A>(capacity:type:)(0);
      *(v299 + 1400) = v88;
      *(v299 + 1408) = v89;
      *(v299 + 1416) = v90;
      serialize(_:at:)(0, (v299 + 1400));
      serialize(_:at:)(0, (v299 + 1400));
      *(v299 + 1424) = v96;
      v91 = swift_task_alloc();
      v91[2] = v299 + 1400;
      v91[3] = v299 + 1408;
      v91[4] = v299 + 1416;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v95, v94, "getAndSavePreProcessedWifiData: DataFrame did not contain all required columns", v88, 2u);
      destroyStorage<A>(_:count:)(v89);
      destroyStorage<A>(_:count:)(v90);
      UnsafeMutablePointer.deallocate()();
    }

    v86 = *(v299 + 1960);
    v87 = *(v299 + 1944);
    v85 = *(v299 + 1952);

    (*(v85 + 8))(v86, v87);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();

    goto LABEL_70;
  }

  v279 = *(v299 + 2232);
  v273 = *(v299 + 2224);
  v281 = *(v299 + 2200);
  v275 = *(v299 + 2192);
  v276 = *(v299 + 2096);
  v280 = *(v299 + 2088);
  v11 = *(v299 + 1928);
  v278 = *(v299 + 2208);
  v274 = *(v299 + 2104);
  v12 = kMediaML_sessionID.unsafeMutableAddressor();
  countAndFlagsBits = v12->_countAndFlagsBits;
  v277 = v12->_object;

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v13 = *(v274 + 8);
  *(v299 + 2248) = v13;
  *(v299 + 2256) = (v274 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v275, v276);

  v14 = *(v278 + 16);
  *(v299 + 2264) = v14;
  *(v299 + 2272) = (v278 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v273, v279, v281);
  *(v299 + 2280) = lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice();
  Collection<>.makeIterator()();
LABEL_13:
  v15 = *(v299 + 2088);
  v16 = *(v299 + 2072);
  IndexingIterator.next()();
  if (*(v299 + 40) == 1)
  {
    outlined destroy of IndexingIterator<AnyColumnSlice>(*(v299 + 2088));
    v47 = swift_task_alloc();
    *(v299 + 2384) = v47;
    *v47 = *(v299 + 1360);
    v47[1] = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
    v48 = *(v299 + 2016);
    v49 = *(v299 + 1936);

    MediaMLWorker.getProcessedWiFiDataFromDB()(v48);
  }

  else
  {
    v269 = *(v299 + 2064);
    v17 = *(v299 + 1928);
    *(v299 + 48) = *(v299 + 16);
    *(v299 + 64) = *(v299 + 32);
    v18 = kMediaML_sessionID.unsafeMutableAddressor();
    v271 = v18->_countAndFlagsBits;
    v270 = v18->_object;

    *(swift_task_alloc() + 16) = v299 + 48;
    DataFrame.filter<A>(on:_:_:)();
    v267 = *(v299 + 2280);
    v264 = *(v299 + 2272);
    v265 = *(v299 + 2264);
    v260 = *(v299 + 2224);
    v263 = *(v299 + 2216);
    v268 = *(v299 + 2200);
    v266 = *(v299 + 2080);
    v19 = *(v299 + 2064);
    v261 = *(v299 + 2208);

    v20 = kMediaML_ssid.unsafeMutableAddressor();
    v259 = v20->_countAndFlagsBits;
    v262 = v20->_object;

    DataFrame.Slice.subscript.getter();
    AnyColumnSlice.distinct()();
    v21 = *(v261 + 8);
    *(v299 + 2288) = v21;
    *(v299 + 2296) = (v261 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v260, v268);

    v265(v260, v263, v268);
    Collection<>.makeIterator()();
    while (1)
    {
      v22 = *(v299 + 2080);
      v23 = *(v299 + 2072);
      IndexingIterator.next()();
      if (*(v299 + 104) == 1)
      {
        v98 = *(v299 + 2296);
        v99 = *(v299 + 2288);
        v100 = *(v299 + 2216);
        v97 = *(v299 + 2200);
        v102 = *(v299 + 2064);
        v103 = *(v299 + 2040);
        v101 = *(v299 + 2048);
        outlined destroy of IndexingIterator<AnyColumnSlice>(*(v299 + 2080));
        v99(v100, v97);
        (*(v101 + 8))(v102, v103);
        outlined destroy of Any?((v299 + 48));
        goto LABEL_13;
      }

      v24 = *(v299 + 2064);
      v256 = *(v299 + 2056);
      *(v299 + 112) = *(v299 + 80);
      *(v299 + 128) = *(v299 + 96);
      v25 = kMediaML_ssid.unsafeMutableAddressor();
      v258 = v25->_countAndFlagsBits;
      v257 = v25->_object;

      *(swift_task_alloc() + 16) = v299 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      v229 = *(v299 + 2056);
      v236 = *(v299 + 2032);
      v240 = *(v299 + 2024);
      v239 = *(v299 + 2008);
      v241 = *(v299 + 1992);
      v230 = *(v299 + 1984);
      v233 = *(v299 + 1944);
      v235 = *(v299 + 2000);
      v232 = *(v299 + 1952);

      DataFrame.init(_:)();
      *(v299 + 1432) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1440) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1448) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1456) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1464) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1472) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1480) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1488) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1496) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1504) = _allocateUninitializedArray<A>(_:)();
      *(v299 + 1512) = 0;
      v231 = DataFrame.shape.getter();
      *(v299 + 1520) = v231;
      v26 = MediaMLWorker.logger.unsafeMutableAddressor();
      v234 = *(v232 + 16);
      v234(v230, v26, v233);
      v237 = *(v235 + 16);
      v237(v240, v236, v241);
      v238 = *(v235 + 80);
      v243 = swift_allocObject();
      v242 = *(v235 + 32);
      v242(v243 + ((v238 + 16) & ~v238), v240, v241);
      v237(v240, v236, v241);
      v245 = swift_allocObject();
      v242(v245 + ((v238 + 16) & ~v238), v240, v241);
      oslog = Logger.logObject.getter();
      v255 = static os_log_type_t.debug.getter();
      v247 = swift_allocObject();
      *(v247 + 16) = 0;
      v248 = swift_allocObject();
      *(v248 + 16) = 8;
      v244 = swift_allocObject();
      *(v244 + 16) = partial apply for implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v244 + 24) = v243;
      v249 = swift_allocObject();
      *(v249 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v249 + 24) = v244;
      v250 = swift_allocObject();
      *(v250 + 16) = 0;
      v251 = swift_allocObject();
      *(v251 + 16) = 8;
      v246 = swift_allocObject();
      *(v246 + 16) = partial apply for implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v246 + 24) = v245;
      v252 = swift_allocObject();
      *(v252 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v252 + 24) = v246;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v253 = v27;

      *v253 = closure #1 in OSLogArguments.append(_:)partial apply;
      v253[1] = v247;

      v253[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v253[3] = v248;

      v253[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v253[5] = v249;

      v253[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v253[7] = v250;

      v253[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v253[9] = v251;

      v253[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v253[11] = v252;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v255))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v227 = createStorage<A>(capacity:type:)(0);
        v228 = createStorage<A>(capacity:type:)(0);
        *(v299 + 1896) = buf;
        *(v299 + 1904) = v227;
        *(v299 + 1912) = v228;
        serialize(_:at:)(0, (v299 + 1896));
        serialize(_:at:)(2, (v299 + 1896));
        *(v299 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1336) = v247;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1328, v299 + 1896, v299 + 1904, v299 + 1912);
        *(v299 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1336) = v248;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1328, v299 + 1896, v299 + 1904, v299 + 1912);
        *(v299 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v299 + 1336) = v249;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1328, v299 + 1896, v299 + 1904, v299 + 1912);
        *(v299 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1336) = v250;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1328, v299 + 1896, v299 + 1904, v299 + 1912);
        *(v299 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1336) = v251;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1328, v299 + 1896, v299 + 1904, v299 + 1912);
        *(v299 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v299 + 1336) = v252;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1328, v299 + 1896, v299 + 1904, v299 + 1912);
        _os_log_impl(&_mh_execute_header, oslog, v255, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
        destroyStorage<A>(_:count:)(v227);
        destroyStorage<A>(_:count:)(v228);
        UnsafeMutablePointer.deallocate()();
      }

      v222 = *(v299 + 1984);
      v223 = *(v299 + 1944);
      v221 = *(v299 + 1952);

      v224 = *(v221 + 8);
      v224(v222, v223);
      for (i = 0; i < v231; ++i)
      {
        v219 = *(v299 + 2256);
        v220 = *(v299 + 2248);
        v217 = *(v299 + 2184);
        v218 = *(v299 + 2096);
        v28 = *(v299 + 2032);
        v216 = *kMediaML_rssi.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v220(v217, v218);
        if (!*(v299 + 488))
        {
          goto LABEL_54;
        }

        v214 = *(v299 + 2256);
        v215 = *(v299 + 2248);
        v212 = *(v299 + 2176);
        v213 = *(v299 + 2096);
        v210 = *(v299 + 2032);
        outlined init with take of Any(v299 + 464, v299 + 432);
        swift_dynamicCast();
        *(v299 + 1792) = *(v299 + 1784);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();

        v211 = *kMediaML_throughputTrue.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v215(v212, v213);
        if (!*(v299 + 552))
        {
          goto LABEL_54;
        }

        v208 = *(v299 + 2256);
        v209 = *(v299 + 2248);
        v206 = *(v299 + 2168);
        v207 = *(v299 + 2096);
        v204 = *(v299 + 2032);
        outlined init with take of Any(v299 + 528, v299 + 496);
        swift_dynamicCast();
        *(v299 + 1808) = *(v299 + 1800);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        v205 = *kMediaML_noise.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v209(v206, v207);
        if (!*(v299 + 616))
        {
          goto LABEL_54;
        }

        v202 = *(v299 + 2256);
        v203 = *(v299 + 2248);
        v200 = *(v299 + 2160);
        v201 = *(v299 + 2096);
        v198 = *(v299 + 2032);
        outlined init with take of Any(v299 + 592, v299 + 560);
        swift_dynamicCast();
        *(v299 + 1824) = *(v299 + 1816);
        Array.append(_:)();

        v199 = *kMediaML_txRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v203(v200, v201);
        if (!*(v299 + 680))
        {
          goto LABEL_54;
        }

        v196 = *(v299 + 2256);
        v197 = *(v299 + 2248);
        v194 = *(v299 + 2152);
        v195 = *(v299 + 2096);
        v192 = *(v299 + 2032);
        outlined init with take of Any(v299 + 656, v299 + 624);
        swift_dynamicCast();
        *(v299 + 1840) = *(v299 + 1832);
        Array.append(_:)();

        v193 = *kMediaML_rxRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v197(v194, v195);
        if (!*(v299 + 744))
        {
          goto LABEL_54;
        }

        v190 = *(v299 + 2256);
        v191 = *(v299 + 2248);
        v188 = *(v299 + 2144);
        v189 = *(v299 + 2096);
        v186 = *(v299 + 2032);
        outlined init with take of Any(v299 + 720, v299 + 688);
        swift_dynamicCast();
        *(v299 + 1856) = *(v299 + 1848);
        Array.append(_:)();

        v187 = *kMediaML_dayOfWeek.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v191(v188, v189);
        if (!*(v299 + 808))
        {
          goto LABEL_54;
        }

        v184 = *(v299 + 2256);
        v185 = *(v299 + 2248);
        v182 = *(v299 + 2136);
        v183 = *(v299 + 2096);
        v180 = *(v299 + 2032);
        outlined init with take of Any(v299 + 784, v299 + 752);
        swift_dynamicCast();
        *(v299 + 1872) = *(v299 + 1864);
        Array.append(_:)();

        v181 = *kMediaML_hourOfDay.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v185(v182, v183);
        if (!*(v299 + 872))
        {
          goto LABEL_54;
        }

        v178 = *(v299 + 2256);
        v179 = *(v299 + 2248);
        v176 = *(v299 + 2128);
        v177 = *(v299 + 2096);
        v174 = *(v299 + 2032);
        outlined init with take of Any(v299 + 848, v299 + 816);
        swift_dynamicCast();
        *(v299 + 1888) = *(v299 + 1880);
        Array.append(_:)();

        v175 = *kMediaML_ssid.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v179(v176, v177);
        if (!*(v299 + 936))
        {
          goto LABEL_54;
        }

        v172 = *(v299 + 2256);
        v173 = *(v299 + 2248);
        v170 = *(v299 + 2120);
        v171 = *(v299 + 2096);
        v168 = *(v299 + 2032);
        outlined init with take of Any(v299 + 912, v299 + 880);
        swift_dynamicCast();
        v29 = *(v299 + 1240);
        *(v299 + 1248) = *(v299 + 1232);
        *(v299 + 1256) = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();

        v169 = *kMediaML_appName.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v173(v170, v171);
        if (!*(v299 + 1000))
        {
          goto LABEL_54;
        }

        v166 = *(v299 + 2256);
        v167 = *(v299 + 2248);
        v164 = *(v299 + 2112);
        v165 = *(v299 + 2096);
        v162 = *(v299 + 2032);
        outlined init with take of Any(v299 + 976, v299 + 944);
        swift_dynamicCast();
        v30 = *(v299 + 1272);
        *(v299 + 1280) = *(v299 + 1264);
        *(v299 + 1288) = v30;
        Array.append(_:)();

        v163 = *kMediaML_sessionID.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v167(v164, v165);
        if (!*(v299 + 1064))
        {
          goto LABEL_54;
        }

        outlined init with take of Any(v299 + 1040, v299 + 1008);
        swift_dynamicCast();
        v31 = *(v299 + 1304);
        *(v299 + 1312) = *(v299 + 1296);
        *(v299 + 1320) = v31;
        Array.append(_:)();

        if (__OFADD__(i, 1))
        {
          goto LABEL_74;
        }

        *(v299 + 1512) = i + 1;
      }

      v35 = *(v299 + 1976);
      v146 = *(v299 + 1944);
      v145 = *(v299 + 1432);

      v144 = *(v299 + 1440);

      v143 = *(v299 + 1448);

      v142 = *(v299 + 1456);

      v141 = *(v299 + 1464);

      v140 = *(v299 + 1472);

      v139 = *(v299 + 1480);

      v138 = *(v299 + 1488);

      v147 = preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v145, v144, v143, v142, v141, v140, v139, v138);
      *(v299 + 2304) = v147;

      *(v299 + 1528) = v147;
      v36 = MediaMLWorker.logger.unsafeMutableAddressor();
      v234(v35, v36, v146);
      outlined init with copy of Any?(v299 + 48, v299 + 144);
      v149 = swift_allocObject();
      *(v149 + 16) = *(v299 + 144);
      *(v149 + 32) = *(v299 + 160);

      v148 = swift_allocObject();
      *(v148 + 16) = v147;

      v151 = swift_allocObject();
      *(v151 + 16) = partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v151 + 24) = v148;

      log = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();
      v153 = swift_allocObject();
      *(v153 + 16) = 32;
      v154 = swift_allocObject();
      *(v154 + 16) = 8;
      v150 = swift_allocObject();
      *(v150 + 16) = partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v150 + 24) = v149;
      v155 = swift_allocObject();
      *(v155 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
      *(v155 + 24) = v150;
      v156 = swift_allocObject();
      *(v156 + 16) = 32;
      v157 = swift_allocObject();
      *(v157 + 16) = 8;
      v152 = swift_allocObject();
      *(v152 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v152 + 24) = v151;
      v158 = swift_allocObject();
      *(v158 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v158 + 24) = v152;
      _allocateUninitializedArray<A>(_:)();
      v159 = v37;

      *v159 = closure #1 in OSLogArguments.append(_:)partial apply;
      v159[1] = v153;

      v159[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v159[3] = v154;

      v159[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v159[5] = v155;

      v159[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v159[7] = v156;

      v159[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v159[9] = v157;

      v159[10] = closure #1 in OSLogArguments.append(_:)partial apply;
      v159[11] = v158;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v161))
      {
        v135 = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v136 = createStorage<A>(capacity:type:)(0);
        v137 = createStorage<A>(capacity:type:)(2);
        *(v299 + 1760) = v135;
        *(v299 + 1768) = v136;
        *(v299 + 1776) = v137;
        serialize(_:at:)(2, (v299 + 1760));
        serialize(_:at:)(2, (v299 + 1760));
        *(v299 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1224) = v153;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1216, v299 + 1760, v299 + 1768, v299 + 1776);
        *(v299 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1224) = v154;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1216, v299 + 1760, v299 + 1768, v299 + 1776);
        *(v299 + 1216) = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        *(v299 + 1224) = v155;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1216, v299 + 1760, v299 + 1768, v299 + 1776);
        *(v299 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1224) = v156;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1216, v299 + 1760, v299 + 1768, v299 + 1776);
        *(v299 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1224) = v157;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1216, v299 + 1760, v299 + 1768, v299 + 1776);
        *(v299 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v299 + 1224) = v158;
        closure #1 in osLogInternal(_:log:type:)(v299 + 1216, v299 + 1760, v299 + 1768, v299 + 1776);
        _os_log_impl(&_mh_execute_header, log, v161, "processedData for session=%s %s", v135, 0x16u);
        destroyStorage<A>(_:count:)(v136);
        destroyStorage<A>(_:count:)(v137);
        UnsafeMutablePointer.deallocate()();
      }

      v133 = *(v299 + 1976);
      v134 = *(v299 + 1944);

      v224(v133, v134);
      *(v299 + 2312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      v32 = Array.count.getter();
      *(v299 + 1536) = v32;
      if (__OFSUB__(v32, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto _swift_task_switch;
      }

      *(v299 + 1552) = v32 - 1;
      *(v299 + 1560) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
      min<A>(_:_:)();
      v132 = *(v299 + 1544);
      *(v299 + 1568) = v132;
      if (Array.count.getter() > 0)
      {
        if (v132 < 0)
        {
          goto LABEL_54;
        }

        *(v299 + 1104) = 0;
        *(v299 + 1112) = v132;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
        lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
        Collection<>.makeIterator()();
        *(v299 + 2320) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
        IndexingIterator.next()();
        if ((*(v299 + 1352) & 1) == 0)
        {
          break;
        }
      }

      v46 = *(v299 + 2304);
      v106 = *(v299 + 2032);
      v105 = *(v299 + 1992);
      v104 = *(v299 + 2000);

      outlined destroy of [String]((v299 + 1504));
      outlined destroy of [String]((v299 + 1496));
      outlined destroy of [String]((v299 + 1488));
      outlined destroy of [Int]((v299 + 1480));
      outlined destroy of [Int]((v299 + 1472));
      outlined destroy of [Double]((v299 + 1464));
      outlined destroy of [Double]((v299 + 1456));
      outlined destroy of [Int]((v299 + 1448));
      outlined destroy of [Double]((v299 + 1440));
      outlined destroy of [Int]((v299 + 1432));
      (*(v104 + 8))(v106, v105);
      outlined destroy of Any?((v299 + 112));
    }

    v128 = *(v299 + 2312);
    v127 = *(v299 + 2304);
    *(v299 + 1576) = *(v299 + 1344);
    Array.subscript.getter();
    v126 = *(v299 + 1584);
    Array.subscript.getter();

    swift_dynamicCast();
    v129 = *(v299 + 1592);
    *(v299 + 1600) = v129;
    Array.subscript.getter();
    v130 = *(v299 + 1608);
    Array.subscript.getter();

    swift_dynamicCast();
    v131 = *(v299 + 1616);
    if (((*&v131 >> 52) & 0x7FFLL) == 0x7FF)
    {
      goto LABEL_54;
    }

    if (v131 <= -9.22337204e18)
    {
      goto LABEL_54;
    }

    if (v131 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    v39 = *(v299 + 2312);
    v40 = *(v299 + 2304);
    *(v299 + 1624) = v131;
    Array.subscript.getter();
    v124 = *(v299 + 1632);
    Array.subscript.getter();

    swift_dynamicCast();
    v125 = *(v299 + 1640);
    if (((*&v125 >> 52) & 0x7FFLL) == 0x7FF || v125 <= -9.22337204e18 || v125 >= 9.22337204e18)
    {
LABEL_54:
      _assertionFailure(_:_:file:line:flags:)();
      return;
    }

    v112 = *(v299 + 2312);
    v111 = *(v299 + 2304);
    v123 = *(v299 + 2240);
    *(v299 + 1648) = v125;
    Array.subscript.getter();
    v107 = *(v299 + 1656);
    Array.subscript.getter();

    swift_dynamicCast();
    v121 = *(v299 + 1664);
    *(v299 + 1672) = v121;
    Array.subscript.getter();
    v108 = *(v299 + 1680);
    Array.subscript.getter();

    swift_dynamicCast();
    v122 = *(v299 + 1688);
    *(v299 + 1696) = v122;
    Array.subscript.getter();
    v109 = *(v299 + 1704);
    Array.subscript.getter();

    swift_dynamicCast();
    v120 = *(v299 + 1712);
    *(v299 + 1720) = v120;
    Array.subscript.getter();
    v110 = *(v299 + 1728);
    Array.subscript.getter();

    swift_dynamicCast();
    v119 = *(v299 + 1736);
    *(v299 + 1744) = v119;
    Array.subscript.getter();
    v113 = *(v299 + 1752);
    Array.subscript.getter();

    swift_dynamicCast();
    v117 = *(v299 + 1120);
    v118 = *(v299 + 1128);
    *(v299 + 2328) = v118;
    *(v299 + 1136) = v117;
    *(v299 + 1144) = v118;
    v41 = *(v299 + 1496);
    Array.subscript.getter();
    v115 = *(v299 + 1152);
    v116 = *(v299 + 1160);
    *(v299 + 2336) = v116;
    *(v299 + 1168) = v115;
    *(v299 + 1176) = v116;
    v42 = *(v299 + 1504);
    Array.subscript.getter();
    v43 = *(v299 + 1184);
    v114 = *(v299 + 1192);
    *(v299 + 2344) = v114;
    *(v299 + 1200) = v43;
    *(v299 + 1208) = v114;
    *(v299 + 2352) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedwifi (session_id, app_name, ssid, hour, dow, rssi, noise, tx_rate, rx_rate, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0x97uLL, 1);

    v44 = swift_task_alloc();
    v33 = v123;
    *(v299 + 2368) = v44;
    v44[2] = v43;
    v44[3] = v114;
    v44[4] = v115;
    v44[5] = v116;
    v44[6] = v117;
    v44[7] = v118;
    v44[8] = v119;
    v44[9] = v120;
    v44[10] = v131;
    v44[11] = v125;
    v44[12] = v121;
    v44[13] = v122;
    v44[14] = v129;
    v45 = *(v299 + 1360);
    v32 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);

_swift_task_switch:
    _swift_task_switch(v32, v33);
  }
}

  _swift_task_switch(v32, v33);
}

uint64_t MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = v0[296];
  v2 = v0[295];
  v3 = v0[294];
  v4 = v0[290];
  v5 = v0[280];
  v0[170] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #4 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:));
  v0[297] = v4;
  if (v4)
  {
    v9 = v15[170];
    v8 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  else
  {
    v6 = v15[296];
    v14 = v15[295];
    v11 = v15[293];
    v12 = v15[292];
    v13 = v15[291];

    v7 = v15[170];
    v8 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  return _swift_task_switch(v8, 0);
}

{
  v1 = v0[293];
  v216 = v0[292];
  v217 = v0[291];
  v0[170] = v0;

  for (i = v0[297]; ; i = 0)
  {
    *(v215 + 2320) = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v215 + 1352) & 1) == 0)
    {
      break;
    }

    v48 = i;
    while (2)
    {
      v32 = *(v215 + 2304);
      v47 = *(v215 + 2032);
      v46 = *(v215 + 1992);
      v45 = *(v215 + 2000);

      outlined destroy of [String]((v215 + 1504));
      outlined destroy of [String]((v215 + 1496));
      outlined destroy of [String]((v215 + 1488));
      outlined destroy of [Int]((v215 + 1480));
      outlined destroy of [Int]((v215 + 1472));
      outlined destroy of [Double]((v215 + 1464));
      outlined destroy of [Double]((v215 + 1456));
      outlined destroy of [Int]((v215 + 1448));
      outlined destroy of [Double]((v215 + 1440));
      outlined destroy of [Int]((v215 + 1432));
      (*(v45 + 8))(v47, v46);
      outlined destroy of Any?((v215 + 112));
      for (j = v48; ; j = 0)
      {
        v7 = *(v215 + 2080);
        v8 = *(v215 + 2072);
        IndexingIterator.next()();
        if (*(v215 + 104) != 1)
        {
          break;
        }

        v39 = *(v215 + 2296);
        v40 = *(v215 + 2288);
        v41 = *(v215 + 2216);
        v38 = *(v215 + 2200);
        v43 = *(v215 + 2064);
        v44 = *(v215 + 2040);
        v42 = *(v215 + 2048);
        outlined destroy of IndexingIterator<AnyColumnSlice>(*(v215 + 2080));
        v40(v41, v38);
        (*(v42 + 8))(v43, v44);
        outlined destroy of Any?((v215 + 48));
        v33 = *(v215 + 2088);
        v34 = *(v215 + 2072);
        IndexingIterator.next()();
        if (*(v215 + 40) == 1)
        {
          outlined destroy of IndexingIterator<AnyColumnSlice>(*(v215 + 2088));
          v35 = swift_task_alloc();
          *(v215 + 2384) = v35;
          *v35 = *(v215 + 1360);
          v35[1] = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
          v36 = *(v215 + 2016);
          v37 = *(v215 + 1936);

          return MediaMLWorker.getProcessedWiFiDataFromDB()(v36);
        }

        v212 = *(v215 + 2064);
        v2 = *(v215 + 1928);
        *(v215 + 48) = *(v215 + 16);
        *(v215 + 64) = *(v215 + 32);
        v3 = kMediaML_sessionID.unsafeMutableAddressor();
        countAndFlagsBits = v3->_countAndFlagsBits;
        object = v3->_object;

        *(swift_task_alloc() + 16) = v215 + 48;
        DataFrame.filter<A>(on:_:_:)();
        if (j)
        {
        }

        v209 = *(v215 + 2280);
        v206 = *(v215 + 2272);
        v207 = *(v215 + 2264);
        v202 = *(v215 + 2224);
        v205 = *(v215 + 2216);
        v210 = *(v215 + 2200);
        v208 = *(v215 + 2080);
        v4 = *(v215 + 2064);
        v203 = *(v215 + 2208);

        v5 = kMediaML_ssid.unsafeMutableAddressor();
        v201 = v5->_countAndFlagsBits;
        v204 = v5->_object;

        DataFrame.Slice.subscript.getter();
        AnyColumnSlice.distinct()();
        v6 = *(v203 + 8);
        *(v215 + 2288) = v6;
        *(v215 + 2296) = (v203 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v6(v202, v210);

        v207(v202, v205, v210);
        Collection<>.makeIterator()();
      }

      v9 = *(v215 + 2064);
      v198 = *(v215 + 2056);
      *(v215 + 112) = *(v215 + 80);
      *(v215 + 128) = *(v215 + 96);
      v10 = kMediaML_ssid.unsafeMutableAddressor();
      v200 = v10->_countAndFlagsBits;
      v199 = v10->_object;

      *(swift_task_alloc() + 16) = v215 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      if (j)
      {
      }

      v171 = *(v215 + 2056);
      v178 = *(v215 + 2032);
      v182 = *(v215 + 2024);
      v181 = *(v215 + 2008);
      v183 = *(v215 + 1992);
      v172 = *(v215 + 1984);
      v175 = *(v215 + 1944);
      v177 = *(v215 + 2000);
      v174 = *(v215 + 1952);

      DataFrame.init(_:)();
      *(v215 + 1432) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1440) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1448) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1456) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1464) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1472) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1480) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1488) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1496) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1504) = _allocateUninitializedArray<A>(_:)();
      *(v215 + 1512) = 0;
      v173 = DataFrame.shape.getter();
      *(v215 + 1520) = v173;
      v11 = MediaMLWorker.logger.unsafeMutableAddressor();
      v176 = *(v174 + 16);
      v176(v172, v11, v175);
      v179 = *(v177 + 16);
      v179(v182, v178, v183);
      v180 = *(v177 + 80);
      v185 = swift_allocObject();
      v184 = *(v177 + 32);
      v184(v185 + ((v180 + 16) & ~v180), v182, v183);
      v179(v182, v178, v183);
      v187 = swift_allocObject();
      v184(v187 + ((v180 + 16) & ~v180), v182, v183);
      oslog = Logger.logObject.getter();
      v197 = static os_log_type_t.debug.getter();
      v189 = swift_allocObject();
      *(v189 + 16) = 0;
      v190 = swift_allocObject();
      *(v190 + 16) = 8;
      v186 = swift_allocObject();
      *(v186 + 16) = partial apply for implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v186 + 24) = v185;
      v191 = swift_allocObject();
      *(v191 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v191 + 24) = v186;
      v192 = swift_allocObject();
      *(v192 + 16) = 0;
      v193 = swift_allocObject();
      *(v193 + 16) = 8;
      v188 = swift_allocObject();
      *(v188 + 16) = partial apply for implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v188 + 24) = v187;
      v194 = swift_allocObject();
      *(v194 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v194 + 24) = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v195 = v12;

      *v195 = closure #1 in OSLogArguments.append(_:)partial apply;
      v195[1] = v189;

      v195[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v195[3] = v190;

      v195[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v195[5] = v191;

      v195[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v195[7] = v192;

      v195[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v195[9] = v193;

      v195[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v195[11] = v194;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v197))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v169 = createStorage<A>(capacity:type:)(0);
        v170 = createStorage<A>(capacity:type:)(0);
        *(v215 + 1896) = buf;
        *(v215 + 1904) = v169;
        *(v215 + 1912) = v170;
        serialize(_:at:)(0, (v215 + 1896));
        serialize(_:at:)(2, (v215 + 1896));
        *(v215 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1336) = v189;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1328, v215 + 1896, v215 + 1904, v215 + 1912);
        *(v215 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1336) = v190;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1328, v215 + 1896, v215 + 1904, v215 + 1912);
        *(v215 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v215 + 1336) = v191;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1328, v215 + 1896, v215 + 1904, v215 + 1912);
        *(v215 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1336) = v192;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1328, v215 + 1896, v215 + 1904, v215 + 1912);
        *(v215 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1336) = v193;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1328, v215 + 1896, v215 + 1904, v215 + 1912);
        *(v215 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v215 + 1336) = v194;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1328, v215 + 1896, v215 + 1904, v215 + 1912);
        _os_log_impl(&_mh_execute_header, oslog, v197, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
        destroyStorage<A>(_:count:)(v169);
        destroyStorage<A>(_:count:)(v170);
        UnsafeMutablePointer.deallocate()();
      }

      v164 = *(v215 + 1984);
      v165 = *(v215 + 1944);
      v163 = *(v215 + 1952);

      v166 = *(v163 + 8);
      v166(v164, v165);
      for (k = 0; k < v173; ++k)
      {
        v161 = *(v215 + 2256);
        v162 = *(v215 + 2248);
        v159 = *(v215 + 2184);
        v160 = *(v215 + 2096);
        v13 = *(v215 + 2032);
        v158 = *kMediaML_rssi.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v162(v159, v160);
        if (!*(v215 + 488))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v156 = *(v215 + 2256);
        v157 = *(v215 + 2248);
        v154 = *(v215 + 2176);
        v155 = *(v215 + 2096);
        v152 = *(v215 + 2032);
        outlined init with take of Any(v215 + 464, v215 + 432);
        swift_dynamicCast();
        *(v215 + 1792) = *(v215 + 1784);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();

        v153 = *kMediaML_throughputTrue.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v157(v154, v155);
        if (!*(v215 + 552))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v150 = *(v215 + 2256);
        v151 = *(v215 + 2248);
        v148 = *(v215 + 2168);
        v149 = *(v215 + 2096);
        v146 = *(v215 + 2032);
        outlined init with take of Any(v215 + 528, v215 + 496);
        swift_dynamicCast();
        *(v215 + 1808) = *(v215 + 1800);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        v147 = *kMediaML_noise.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v151(v148, v149);
        if (!*(v215 + 616))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v144 = *(v215 + 2256);
        v145 = *(v215 + 2248);
        v142 = *(v215 + 2160);
        v143 = *(v215 + 2096);
        v140 = *(v215 + 2032);
        outlined init with take of Any(v215 + 592, v215 + 560);
        swift_dynamicCast();
        *(v215 + 1824) = *(v215 + 1816);
        Array.append(_:)();

        v141 = *kMediaML_txRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v145(v142, v143);
        if (!*(v215 + 680))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v138 = *(v215 + 2256);
        v139 = *(v215 + 2248);
        v136 = *(v215 + 2152);
        v137 = *(v215 + 2096);
        v134 = *(v215 + 2032);
        outlined init with take of Any(v215 + 656, v215 + 624);
        swift_dynamicCast();
        *(v215 + 1840) = *(v215 + 1832);
        Array.append(_:)();

        v135 = *kMediaML_rxRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v139(v136, v137);
        if (!*(v215 + 744))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v132 = *(v215 + 2256);
        v133 = *(v215 + 2248);
        v130 = *(v215 + 2144);
        v131 = *(v215 + 2096);
        v128 = *(v215 + 2032);
        outlined init with take of Any(v215 + 720, v215 + 688);
        swift_dynamicCast();
        *(v215 + 1856) = *(v215 + 1848);
        Array.append(_:)();

        v129 = *kMediaML_dayOfWeek.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v133(v130, v131);
        if (!*(v215 + 808))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v126 = *(v215 + 2256);
        v127 = *(v215 + 2248);
        v124 = *(v215 + 2136);
        v125 = *(v215 + 2096);
        v122 = *(v215 + 2032);
        outlined init with take of Any(v215 + 784, v215 + 752);
        swift_dynamicCast();
        *(v215 + 1872) = *(v215 + 1864);
        Array.append(_:)();

        v123 = *kMediaML_hourOfDay.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v127(v124, v125);
        if (!*(v215 + 872))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v120 = *(v215 + 2256);
        v121 = *(v215 + 2248);
        v118 = *(v215 + 2128);
        v119 = *(v215 + 2096);
        v116 = *(v215 + 2032);
        outlined init with take of Any(v215 + 848, v215 + 816);
        swift_dynamicCast();
        *(v215 + 1888) = *(v215 + 1880);
        Array.append(_:)();

        v117 = *kMediaML_ssid.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v121(v118, v119);
        if (!*(v215 + 936))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v114 = *(v215 + 2256);
        v115 = *(v215 + 2248);
        v112 = *(v215 + 2120);
        v113 = *(v215 + 2096);
        v110 = *(v215 + 2032);
        outlined init with take of Any(v215 + 912, v215 + 880);
        swift_dynamicCast();
        v14 = *(v215 + 1240);
        *(v215 + 1248) = *(v215 + 1232);
        *(v215 + 1256) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();

        v111 = *kMediaML_appName.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v115(v112, v113);
        if (!*(v215 + 1000))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v108 = *(v215 + 2256);
        v109 = *(v215 + 2248);
        v106 = *(v215 + 2112);
        v107 = *(v215 + 2096);
        v104 = *(v215 + 2032);
        outlined init with take of Any(v215 + 976, v215 + 944);
        swift_dynamicCast();
        v15 = *(v215 + 1272);
        *(v215 + 1280) = *(v215 + 1264);
        *(v215 + 1288) = v15;
        Array.append(_:)();

        v105 = *kMediaML_sessionID.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v109(v106, v107);
        if (!*(v215 + 1064))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        outlined init with take of Any(v215 + 1040, v215 + 1008);
        swift_dynamicCast();
        v16 = *(v215 + 1304);
        *(v215 + 1312) = *(v215 + 1296);
        *(v215 + 1320) = v16;
        Array.append(_:)();

        if (__OFADD__(k, 1))
        {
          goto LABEL_62;
        }

        *(v215 + 1512) = k + 1;
      }

      v20 = *(v215 + 1976);
      v88 = *(v215 + 1944);
      v87 = *(v215 + 1432);

      v86 = *(v215 + 1440);

      v85 = *(v215 + 1448);

      v84 = *(v215 + 1456);

      v83 = *(v215 + 1464);

      v82 = *(v215 + 1472);

      v81 = *(v215 + 1480);

      v80 = *(v215 + 1488);

      v89 = preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v87, v86, v85, v84, v83, v82, v81, v80);
      *(v215 + 2304) = v89;

      *(v215 + 1528) = v89;
      v21 = MediaMLWorker.logger.unsafeMutableAddressor();
      v176(v20, v21, v88);
      outlined init with copy of Any?(v215 + 48, v215 + 144);
      v91 = swift_allocObject();
      *(v91 + 16) = *(v215 + 144);
      *(v91 + 32) = *(v215 + 160);

      v90 = swift_allocObject();
      *(v90 + 16) = v89;

      v93 = swift_allocObject();
      *(v93 + 16) = partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v93 + 24) = v90;

      log = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      v95 = swift_allocObject();
      *(v95 + 16) = 32;
      v96 = swift_allocObject();
      *(v96 + 16) = 8;
      v92 = swift_allocObject();
      *(v92 + 16) = partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v92 + 24) = v91;
      v97 = swift_allocObject();
      *(v97 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
      *(v97 + 24) = v92;
      v98 = swift_allocObject();
      *(v98 + 16) = 32;
      v99 = swift_allocObject();
      *(v99 + 16) = 8;
      v94 = swift_allocObject();
      *(v94 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v94 + 24) = v93;
      v100 = swift_allocObject();
      *(v100 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v100 + 24) = v94;
      _allocateUninitializedArray<A>(_:)();
      v101 = v22;

      *v101 = closure #1 in OSLogArguments.append(_:)partial apply;
      v101[1] = v95;

      v101[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v101[3] = v96;

      v101[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v101[5] = v97;

      v101[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v101[7] = v98;

      v101[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v101[9] = v99;

      v101[10] = closure #1 in OSLogArguments.append(_:)partial apply;
      v101[11] = v100;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v103))
      {
        v77 = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v78 = createStorage<A>(capacity:type:)(0);
        v79 = createStorage<A>(capacity:type:)(2);
        *(v215 + 1760) = v77;
        *(v215 + 1768) = v78;
        *(v215 + 1776) = v79;
        serialize(_:at:)(2, (v215 + 1760));
        serialize(_:at:)(2, (v215 + 1760));
        *(v215 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1224) = v95;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1216, v215 + 1760, v215 + 1768, v215 + 1776);
        *(v215 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1224) = v96;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1216, v215 + 1760, v215 + 1768, v215 + 1776);
        *(v215 + 1216) = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        *(v215 + 1224) = v97;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1216, v215 + 1760, v215 + 1768, v215 + 1776);
        *(v215 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1224) = v98;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1216, v215 + 1760, v215 + 1768, v215 + 1776);
        *(v215 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1224) = v99;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1216, v215 + 1760, v215 + 1768, v215 + 1776);
        *(v215 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v215 + 1224) = v100;
        closure #1 in osLogInternal(_:log:type:)(v215 + 1216, v215 + 1760, v215 + 1768, v215 + 1776);
        _os_log_impl(&_mh_execute_header, log, v103, "processedData for session=%s %s", v77, 0x16u);
        destroyStorage<A>(_:count:)(v78);
        destroyStorage<A>(_:count:)(v79);
        UnsafeMutablePointer.deallocate()();
      }

      v75 = *(v215 + 1976);
      v76 = *(v215 + 1944);

      v166(v75, v76);
      *(v215 + 2312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      v17 = Array.count.getter();
      *(v215 + 1536) = v17;
      if (__OFSUB__(v17, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
        return _swift_task_switch(v17, v18);
      }

      *(v215 + 1552) = v17 - 1;
      *(v215 + 1560) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
      min<A>(_:_:)();
      v74 = *(v215 + 1544);
      *(v215 + 1568) = v74;
      if (Array.count.getter() <= 0)
      {
        v48 = 0;
        continue;
      }

      break;
    }

    if (v74 < 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v215 + 1104) = 0;
    *(v215 + 1112) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
  }

  v70 = *(v215 + 2312);
  v69 = *(v215 + 2304);
  *(v215 + 1576) = *(v215 + 1344);
  Array.subscript.getter();
  v68 = *(v215 + 1584);
  Array.subscript.getter();

  swift_dynamicCast();
  v71 = *(v215 + 1592);
  *(v215 + 1600) = v71;
  Array.subscript.getter();
  v72 = *(v215 + 1608);
  Array.subscript.getter();

  swift_dynamicCast();
  v73 = *(v215 + 1616);
  if (((*&v73 >> 52) & 0x7FFLL) == 0x7FF)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v73 <= -9.22337204e18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v73 >= 9.22337204e18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v25 = *(v215 + 2312);
  v26 = *(v215 + 2304);
  *(v215 + 1624) = v73;
  Array.subscript.getter();
  v66 = *(v215 + 1632);
  Array.subscript.getter();

  swift_dynamicCast();
  v67 = *(v215 + 1640);
  if (((*&v67 >> 52) & 0x7FFLL) == 0x7FF || v67 <= -9.22337204e18 || v67 >= 9.22337204e18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v54 = *(v215 + 2312);
  v53 = *(v215 + 2304);
  v65 = *(v215 + 2240);
  *(v215 + 1648) = v67;
  Array.subscript.getter();
  v49 = *(v215 + 1656);
  Array.subscript.getter();

  swift_dynamicCast();
  v63 = *(v215 + 1664);
  *(v215 + 1672) = v63;
  Array.subscript.getter();
  v50 = *(v215 + 1680);
  Array.subscript.getter();

  swift_dynamicCast();
  v64 = *(v215 + 1688);
  *(v215 + 1696) = v64;
  Array.subscript.getter();
  v51 = *(v215 + 1704);
  Array.subscript.getter();

  swift_dynamicCast();
  v62 = *(v215 + 1712);
  *(v215 + 1720) = v62;
  Array.subscript.getter();
  v52 = *(v215 + 1728);
  Array.subscript.getter();

  swift_dynamicCast();
  v61 = *(v215 + 1736);
  *(v215 + 1744) = v61;
  Array.subscript.getter();
  v55 = *(v215 + 1752);
  Array.subscript.getter();

  swift_dynamicCast();
  v59 = *(v215 + 1120);
  v60 = *(v215 + 1128);
  *(v215 + 2328) = v60;
  *(v215 + 1136) = v59;
  *(v215 + 1144) = v60;
  v27 = *(v215 + 1496);
  Array.subscript.getter();
  v57 = *(v215 + 1152);
  v58 = *(v215 + 1160);
  *(v215 + 2336) = v58;
  *(v215 + 1168) = v57;
  *(v215 + 1176) = v58;
  v28 = *(v215 + 1504);
  Array.subscript.getter();
  v29 = *(v215 + 1184);
  v56 = *(v215 + 1192);
  *(v215 + 2344) = v56;
  *(v215 + 1200) = v29;
  *(v215 + 1208) = v56;
  *(v215 + 2352) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedwifi (session_id, app_name, ssid, hour, dow, rssi, noise, tx_rate, rx_rate, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0x97uLL, 1);

  v30 = swift_task_alloc();
  v18 = v65;
  *(v215 + 2368) = v30;
  v30[2] = v29;
  v30[3] = v56;
  v30[4] = v57;
  v30[5] = v58;
  v30[6] = v59;
  v30[7] = v60;
  v30[8] = v61;
  v30[9] = v62;
  v30[10] = v73;
  v30[11] = v67;
  v30[12] = v63;
  v30[13] = v64;
  v30[14] = v71;
  v31 = *(v215 + 1360);
  v17 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);

  return _swift_task_switch(v17, v18);
}

{
  v8 = *v1;
  v7 = (v8 + 1360);
  v2 = *(*v1 + 2384);
  *(v8 + 1360) = *v1;
  *(v8 + 2392) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  else
  {
    v3 = *v7;
    v4 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v73 = v0;
  v52 = v0[253];
  v48 = v0[252];
  v51 = v0[251];
  v47 = v0[250];
  v53 = v0[249];
  v1 = v0[246];
  v45 = v0[244];
  v46 = v0[243];
  v0[170] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v45 + 16))(v1, v2, v46);
  v49 = *(v47 + 16);
  v49(v52, v48, v53);
  v50 = *(v47 + 80);
  v55 = swift_allocObject();
  v54 = *(v47 + 32);
  v54(v55 + ((v50 + 16) & ~v50), v52, v53);
  v49(v52, v48, v53);
  v57 = swift_allocObject();
  v54(v57 + ((v50 + 16) & ~v50), v52, v53);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #12 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  *(v56 + 24) = v55;
  v61 = swift_allocObject();
  *(v61 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v61 + 24) = v56;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  *(v58 + 24) = v57;
  v64 = swift_allocObject();
  *(v64 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v64 + 24) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v65 = v3;

  *v65 = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[1] = v59;

  v65[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[3] = v60;

  v65[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v65[5] = v61;

  v65[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[7] = v62;

  v65[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v65[9] = v63;

  v65[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v65[11] = v64;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v66, v67))
  {
    v4 = v44[299];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = createStorage<A>(capacity:type:)(0);
    v43 = createStorage<A>(capacity:type:)(0);
    v68 = buf;
    v69 = v42;
    v70 = v43;
    serialize(_:at:)(0, &v68);
    serialize(_:at:)(2, &v68);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    if (v4)
    {
    }

    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v72 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append(_:)partial apply;
    v72 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    v71 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v72 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v71, &v68, &v69, &v70);
    _os_log_impl(&_mh_execute_header, v66, v67, "Returning a dataframe of size=%ld,%ld", buf, 0x16u);
    destroyStorage<A>(_:count:)(v42);
    destroyStorage<A>(_:count:)(v43);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v16 = v44[279];
  v17 = v44[278];
  v18 = v44[277];
  v14 = v44[275];
  v19 = v44[274];
  v20 = v44[273];
  v21 = v44[272];
  v22 = v44[271];
  v23 = v44[270];
  v24 = v44[269];
  v25 = v44[268];
  v26 = v44[267];
  v27 = v44[266];
  v28 = v44[265];
  v29 = v44[264];
  v30 = v44[261];
  v31 = v44[260];
  v32 = v44[258];
  v33 = v44[257];
  v34 = v44[254];
  v35 = v44[253];
  v36 = v44[252];
  v12 = v44[249];
  v37 = v44[248];
  v38 = v44[247];
  v39 = v44[246];
  v40 = v44[245];
  v9 = v44[243];
  v10 = v44[240];
  v15 = v44[280];
  v13 = v44[276];
  v11 = v44[250];
  v8 = v44[244];

  (*(v8 + 8))(v39, v9);
  v49(v10, v36, v12);
  (*(v11 + 8))(v36, v12);
  (*(v13 + 8))(v16, v14);

  v6 = *(v44[170] + 8);
  v7 = v44[170];

  return v6();
}

{
  v1 = v0[296];
  v7 = v0[295];
  v8 = v0[293];
  v9 = v0[292];
  v10 = v0[291];
  v11 = v0[288];
  v22 = v0[287];
  v23 = v0[286];
  v25 = v0[280];
  v24 = v0[279];
  v16 = v0[277];
  v21 = v0[275];
  v20 = v0[261];
  v15 = v0[260];
  v18 = v0[258];
  v17 = v0[256];
  v19 = v0[255];
  v14 = v0[254];
  v12 = v0[250];
  v13 = v0[249];
  v0[170] = v0;

  outlined destroy of [String](v0 + 188);
  outlined destroy of [String](v0 + 187);
  outlined destroy of [String](v0 + 186);
  outlined destroy of [Int](v0 + 185);
  outlined destroy of [Int](v0 + 184);
  outlined destroy of [Double](v0 + 183);
  outlined destroy of [Double](v0 + 182);
  outlined destroy of [Int](v0 + 181);
  outlined destroy of [Double](v0 + 180);
  outlined destroy of [Int](v0 + 179);
  (*(v12 + 8))(v14, v13);
  outlined destroy of Any?(v0 + 14);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v15);
  v23(v16, v21);
  (*(v17 + 8))(v18, v19);
  outlined destroy of Any?(v0 + 6);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v20);
  v23(v24, v21);

  v2 = v0[297];
  v3 = v0[279];
  v26 = v0[278];
  v27 = v0[277];
  v28 = v0[274];
  v29 = v0[273];
  v30 = v0[272];
  v31 = v0[271];
  v32 = v0[270];
  v33 = v0[269];
  v34 = v0[268];
  v35 = v0[267];
  v36 = v0[266];
  v37 = v0[265];
  v38 = v0[264];
  v39 = v0[261];
  v40 = v0[260];
  v41 = v0[258];
  v42 = v0[257];
  v43 = v0[254];
  v44 = v0[253];
  v45 = v0[252];
  v46 = v0[248];
  v47 = v0[247];
  v48 = v0[246];
  v49 = v0[245];

  v4 = *(v0[170] + 8);
  v5 = v0[170];

  return v4();
}

{
  v9 = v0[280];
  v1 = v0[279];
  v2 = v0[276];
  v3 = v0[275];
  v0[170] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[299];
  v5 = v0[279];
  v10 = v0[278];
  v11 = v0[277];
  v12 = v0[274];
  v13 = v0[273];
  v14 = v0[272];
  v15 = v0[271];
  v16 = v0[270];
  v17 = v0[269];
  v18 = v0[268];
  v19 = v0[267];
  v20 = v0[266];
  v21 = v0[265];
  v22 = v0[264];
  v23 = v0[261];
  v24 = v0[260];
  v25 = v0[258];
  v26 = v0[257];
  v27 = v0[254];
  v28 = v0[253];
  v29 = v0[252];
  v30 = v0[248];
  v31 = v0[247];
  v32 = v0[246];
  v33 = v0[245];

  v6 = *(v0[170] + 8);
  v7 = v0[170];

  return v6();
}

uint64_t MediaMLWorker.cleanRawWiFiDataFromDB()()
{
  v1[6] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[5] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return _swift_task_switch(MediaMLWorker.cleanRawWiFiDataFromDB(), 0);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[7];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.cleanRawWiFiDataFromDB());
  v0[11] = v4;
  if (v4)
  {
    v8 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  else
  {
    v5 = *(v10 + 80);

    v6 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v0[1]._countAndFlagsBits = v0;
  v0[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
  v1 = v0[1]._countAndFlagsBits;

  return _swift_task_switch(MediaMLWorker.cleanRawWiFiDataFromDB(), countAndFlagsBits);
}

{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #3 in MediaMLWorker.cleanRawWiFiDataFromDB());
  v0[14] = v3;
  if (v3)
  {
    v8 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  else
  {
    v5 = *(v10 + 104);

    v6 = *(v10 + 16);
    v7 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = *(v0 + 64);
  *(v0 + 16) = v0;

  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

{
  v1 = v0[10];
  v6 = v0[8];
  v0[2] = v0;

  v2 = v0[11];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

{
  v1 = v0[13];
  v6 = v0[8];
  v0[2] = v0;

  v2 = v0[14];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

void MediaMLWorker.cleanRawWiFiDataFromDB()()
{
  v1 = v0[6];
  v0[2] = v0;
  v13 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.cleanRawWiFiDataFromDB(), 0, v13, v2, v2);
  v0[7] = 0;

  v11 = *(v12 + 32);
  *(v12 + 64) = v11;
  if (v11)
  {
    *(v12 + 40) = v11;
    *(v12 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM wifi", 0x10uLL, 1);
    v3 = *(v12 + 16);

    _swift_task_switch(MediaMLWorker.cleanRawWiFiDataFromDB(), v11);
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

void reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(Swift::Int a1, uint64_t a2, void *a3, Swift::Int32 a4, uint64_t a5, void *a6, Swift::Int a7, Swift::Int a8, double a9, double a10, Swift::Double a11, Swift::Int a12, Swift::Int a13, Swift::Int a14)
{
  string._countAndFlagsBits = a2;
  string._object = a3;
  v23._countAndFlagsBits = a5;
  v23._object = a6;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML.ValidationError", 0x21uLL, 1);
  v26 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v14;
  *v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InterfaceType", 0xDuLL, 1);
  type metadata accessor for NSNumber();
  v24[1]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a1).super.super.isa;
  *(v24 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InterfaceType_string", 0x14uLL, 1);
  v24[2]._object = NSNumber.__allocating_init(value:)(a1).super.super.isa;
  v24[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ValidationError_MAPE", 0x14uLL, 1);
  v24[4]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a9 * 1000.0).super.super.isa;
  *(v24 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingError_MAPE", 0x12uLL, 1);
  v24[5]._object = NSNumber.__allocating_init(value:)(a10 * 1000.0).super.super.isa;
  v24[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ValidationError_RMSE", 0x14uLL, 1);
  v24[7]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a11).super.super.isa;
  *(v24 + 120) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CarrierCount", 0xCuLL, 1);
  v24[8]._object = NSNumber.__allocating_init(value:)(a7).super.super.isa;
  v24[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppCount", 8uLL, 1);
  v24[10]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a8).super.super.isa;
  *(v24 + 168) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SessionCount", 0xCuLL, 1);
  v24[11]._object = NSNumber.__allocating_init(value:)(a12).super.super.isa;
  v24[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SSIDCount", 9uLL, 1);
  v24[13]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a13).super.super.isa;
  *(v24 + 216) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingDataCount", 0x11uLL, 1);
  v24[14]._object = NSNumber.__allocating_init(value:)(a14).super.super.isa;
  v24[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trialExperimentId", 0x11uLL, 1);
  type metadata accessor for NSString();

  v24[16]._countAndFlagsBits = NSString.__allocating_init(string:)(string);
  *(v24 + 264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trialDeploymentId", 0x11uLL, 1);
  v24[17]._object = NSNumber.__allocating_init(value:)(a4).super.super.isa;
  v24[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trialTreatmentId", 0x10uLL, 1);

  v24[19]._countAndFlagsBits = NSString.__allocating_init(string:)(v23);
  _finalizeUninitializedArray<A>(_:)();
  type metadata accessor for NSObject();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t MediaMLWorker.saveModelStatsToDB(modelStats:)(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return _swift_task_switch(MediaMLWorker.saveModelStatsToDB(modelStats:), 0);
}

void MediaMLWorker.saveModelStatsToDB(modelStats:)()
{
  v1 = v0[8];
  v0[2] = v0;
  v15 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.saveModelStatsToDB(modelStats:), 0, v15, v2, v2);
  v0[9] = 0;

  v13 = *(v14 + 40);
  *(v14 + 80) = v13;
  if (v13)
  {
    v12 = *(v14 + 56);
    *(v14 + 48) = v13;
    *(v14 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO modelStats (interfaceType, trainingRowCount, validationRowCount, carrierCount, ssidCount, appNameCount, sessionIDCount, trainingMAPE, validationMAPE, trainingDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xD5uLL, 1);
    v3 = swift_task_alloc();
    *(v14 + 104) = v3;
    *(v3 + 16) = v12;
    v4 = *(v14 + 16);

    _swift_task_switch(MediaMLWorker.saveModelStatsToDB(modelStats:), v13);
  }

  else
  {
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v17 = SQLError.init(code:desc:)(-3, v5);
    code = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    object = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v6 = code;
    *(v6 + 8) = desc_8;
    *(v6 + 16) = object;
    swift_willThrow();
    v7 = *(*(v14 + 16) + 8);
    v8 = *(v14 + 16);

    v7();
  }
}

uint64_t MediaMLWorker.saveModelStatsToDB(modelStats:)()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[9];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #2 in MediaMLWorker.saveModelStatsToDB(modelStats:));
  v0[14] = v5;
  if (v5)
  {
    v9 = v12[2];
    v8 = MediaMLWorker.saveModelStatsToDB(modelStats:);
  }

  else
  {
    v6 = v12[13];
    v11 = v12[12];

    v7 = v12[2];
    v8 = MediaMLWorker.saveModelStatsToDB(modelStats:);
  }

  return _swift_task_switch(v8, 0);
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
  v6 = v0[12];
  v7 = v0[10];
  v0[2] = v0;

  v2 = v0[14];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)(uint64_t a1)
{
  v2[14] = v1;
  v2[13] = a1;
  v2[4] = v2;
  v2[7] = 0;
  v2[8] = 0;
  v2[10] = 0;
  v2[7] = a1;
  v2[8] = v1;
  v3 = v2[4];
  return _swift_task_switch(MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:), 0);
}

void MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)()
{
  v1 = v0[14];
  v0[4] = v0;
  v21 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:), 0, v21, v2, v2);
  v0[15] = 0;

  v19 = v20[9];
  v20[16] = v19;
  if (v19)
  {
    v16 = v20[13];
    v20[10] = v19;
    v20[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v20[3] = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM modelStats WHERE interfaceType = ", 0x2DuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v20[5] = *v16;
    v20[11] = v20[5];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" AND trainingDate < ", 0x14uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    v20[6] = v16[9];
    v20[12] = v20[6];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v6);

    v18 = v20[2];
    v17 = v20[3];

    outlined destroy of DefaultStringInterpolation((v20 + 2));
    v20[17] = String.init(stringInterpolation:)();
    v20[18] = v7;
    v8 = v20[4];

    _swift_task_switch(MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:), v19);
  }

  else
  {
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v23 = SQLError.init(code:desc:)(-3, v9);
    code = v23.code;
    desc_8 = v23.desc.value._countAndFlagsBits;
    object = v23.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v10 = code;
    *(v10 + 8) = desc_8;
    *(v10 + 16) = object;
    swift_willThrow();
    v11 = *(v20[4] + 8);
    v12 = v20[4];

    v11();
  }
}

uint64_t MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  *(v0 + 32) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 152) = v4;
  if (v4)
  {
    v8 = *(v10 + 32);
    v7 = MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:);
  }

  else
  {
    v5 = *(v10 + 144);

    v6 = *(v10 + 32);
    v7 = MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:);
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = *(v0 + 128);
  *(v0 + 32) = v0;

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

{
  v1 = v0[18];
  v6 = v0[16];
  v0[4] = v0;

  v2 = v0[19];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  *(v1 + 680) = v0;
  *(v1 + 480) = v1;
  *(v1 + 488) = 0;
  *(v1 + 504) = 0;
  *(v1 + 512) = 0;
  *(v1 + 552) = 0;
  *(v1 + 560) = 0;
  *(v1 + 568) = 0;
  *(v1 + 576) = 0;
  *(v1 + 608) = 0;
  *(v1 + 336) = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 616) = 0;
  *(v1 + 400) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 0;
  *(v1 + 440) = 0;
  *(v1 + 632) = 0;
  v2 = type metadata accessor for Logger();
  *(v1 + 688) = v2;
  v10 = *(v2 - 8);
  *(v1 + 696) = v10;
  v11 = *(v10 + 64);
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 712) = swift_task_alloc();
  *(v1 + 720) = swift_task_alloc();
  v3 = type metadata accessor for DataFrame.Slice();
  *(v1 + 728) = v3;
  v12 = *(v3 - 8);
  *(v1 + 736) = v12;
  v13 = *(v12 + 64);
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMd, &_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMR);
  *(v1 + 760) = v4;
  v14 = *(*(v4 - 8) + 64);
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  v5 = type metadata accessor for AnyColumn();
  *(v1 + 784) = v5;
  v15 = *(v5 - 8);
  *(v1 + 792) = v15;
  v16 = *(v15 + 64);
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  v6 = type metadata accessor for AnyColumnSlice();
  *(v1 + 816) = v6;
  v17 = *(v6 - 8);
  *(v1 + 824) = v17;
  v18 = *(v17 + 64);
  *(v1 + 832) = swift_task_alloc();
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  v7 = type metadata accessor for DataFrame();
  *(v1 + 856) = v7;
  v19 = *(v7 - 8);
  *(v1 + 864) = v19;
  *(v1 + 872) = *(v19 + 64);
  *(v1 + 880) = swift_task_alloc();
  *(v1 + 888) = swift_task_alloc();
  *(v1 + 896) = swift_task_alloc();
  *(v1 + 488) = v0;
  v8 = *(v1 + 480);

  return _swift_task_switch(MediaMLWorker.saveWiFiDataStandardDeviation(), 0);
}

{
  v8 = *v1;
  v7 = (v8 + 480);
  v2 = *(*v1 + 912);
  *(v8 + 480) = *v1;
  *(v8 + 920) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  else
  {
    v3 = *v7;
    v4 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  return _swift_task_switch(v4, 0);
}

{
  v218 = v0;
  v1 = v0[112];
  v0[60] = v0;
  DateIn = getDateInEpoch()();
  v0[116] = DateIn;
  v0[64] = DateIn;
  v211 = *kMediaML_appName.unsafeMutableAddressor();

  v212 = DataFrame.containsColumn(_:)(v211);

  if (!v212)
  {
    goto LABEL_45;
  }

  v3 = *(v210 + 896);
  v208 = *kMediaML_ssid.unsafeMutableAddressor();

  v209 = DataFrame.containsColumn(_:)(v208);

  if (!v209 || (v4 = *(v210 + 896), v206 = *kMediaML_throughputStdDev.unsafeMutableAddressor(), , v207 = DataFrame.containsColumn(_:)(v206), , !v207))
  {
LABEL_45:
    v36 = *(v210 + 704);
    v69 = *(v210 + 688);
    v68 = *(v210 + 696);
    v37 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v68 + 16))(v36, v37, v69);
    v71 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v72 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v71, v70))
    {
      v38 = *(v210 + 920);
      v64 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v65 = createStorage<A>(capacity:type:)(0);
      v66 = createStorage<A>(capacity:type:)(0);
      *(v210 + 520) = v64;
      *(v210 + 528) = v65;
      *(v210 + 536) = v66;
      serialize(_:at:)(0, (v210 + 520));
      serialize(_:at:)(0, (v210 + 520));
      *(v210 + 544) = v72;
      v67 = swift_task_alloc();
      v67[2] = v210 + 520;
      v67[3] = v210 + 528;
      v67[4] = v210 + 536;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v38)
      {
      }

      _os_log_impl(&_mh_execute_header, v71, v70, "saveWiFiDataStandardDeviation: DataFrame stddevDF did not contain all required columns", v64, 2u);
      destroyStorage<A>(_:count:)(v65);
      destroyStorage<A>(_:count:)(v66);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v47 = *(v210 + 896);
    v48 = *(v210 + 856);
    v44 = *(v210 + 704);
    v45 = *(v210 + 688);
    v49 = *(v210 + 904);
    v46 = *(v210 + 864);
    v43 = *(v210 + 696);

    (*(v43 + 8))(v44, v45);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    (*(v46 + 8))(v47, v48);

    v40 = *(v210 + 896);
    v50 = *(v210 + 888);
    v51 = *(v210 + 880);
    v52 = *(v210 + 848);
    v53 = *(v210 + 840);
    v54 = *(v210 + 832);
    v55 = *(v210 + 808);
    v56 = *(v210 + 800);
    v57 = *(v210 + 776);
    v58 = *(v210 + 768);
    v59 = *(v210 + 752);
    v60 = *(v210 + 744);
    v61 = *(v210 + 720);
    v62 = *(v210 + 712);
    v63 = *(v210 + 704);

    v41 = *(*(v210 + 480) + 8);
    v42 = *(v210 + 480);

    return v41();
  }

  v5 = *(v210 + 896);
  v202 = *(v210 + 848);
  v196 = *(v210 + 840);
  v204 = *(v210 + 816);
  v198 = *(v210 + 808);
  v199 = *(v210 + 784);
  v203 = *(v210 + 776);
  v201 = *(v210 + 824);
  v197 = *(v210 + 792);
  v6 = kMediaML_appName.unsafeMutableAddressor();
  countAndFlagsBits = v6->_countAndFlagsBits;
  object = v6->_object;

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v7 = *(v197 + 8);
  *(v210 + 936) = v7;
  *(v210 + 944) = (v197 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v198, v199);

  v8 = *(v201 + 16);
  *(v210 + 952) = v8;
  *(v210 + 960) = (v201 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v196, v202, v204);
  *(v210 + 968) = lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice();
  Collection<>.makeIterator()();
  v205 = *(v210 + 920);
LABEL_7:
  v9 = *(v210 + 776);
  v10 = *(v210 + 760);
  IndexingIterator.next()();
  if (*(v210 + 40) != 1)
  {
    v11 = *(v210 + 896);
    v192 = *(v210 + 752);
    *(v210 + 48) = *(v210 + 16);
    *(v210 + 64) = *(v210 + 32);
    v12 = kMediaML_appName.unsafeMutableAddressor();
    v194 = v12->_countAndFlagsBits;
    v193 = v12->_object;

    *(swift_task_alloc() + 16) = v210 + 48;
    DataFrame.filter<A>(on:_:_:)();
    if (!v205)
    {
      v190 = *(v210 + 968);
      v187 = *(v210 + 960);
      v188 = *(v210 + 952);
      v183 = *(v210 + 840);
      v186 = *(v210 + 832);
      v191 = *(v210 + 816);
      v189 = *(v210 + 768);
      v13 = *(v210 + 752);
      v184 = *(v210 + 824);

      v14 = kMediaML_ssid.unsafeMutableAddressor();
      v182 = v14->_countAndFlagsBits;
      v185 = v14->_object;

      DataFrame.Slice.subscript.getter();
      AnyColumnSlice.distinct()();
      v15 = *(v184 + 8);
      *(v210 + 976) = v15;
      *(v210 + 984) = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v15(v183, v191);

      v188(v183, v186, v191);
      Collection<>.makeIterator()();
      while (1)
      {
        v16 = *(v210 + 768);
        v17 = *(v210 + 760);
        IndexingIterator.next()();
        if (*(v210 + 104) == 1)
        {
          v122 = *(v210 + 984);
          v123 = *(v210 + 976);
          v124 = *(v210 + 832);
          v121 = *(v210 + 816);
          v126 = *(v210 + 752);
          v127 = *(v210 + 728);
          v125 = *(v210 + 736);
          outlined destroy of IndexingIterator<AnyColumnSlice>(*(v210 + 768));
          v123(v124, v121);
          (*(v125 + 8))(v126, v127);
          outlined destroy of Any?((v210 + 48));
          v205 = 0;
          goto LABEL_7;
        }

        v18 = *(v210 + 752);
        v179 = *(v210 + 744);
        *(v210 + 112) = *(v210 + 80);
        *(v210 + 128) = *(v210 + 96);
        v19 = kMediaML_ssid.unsafeMutableAddressor();
        v181 = v19->_countAndFlagsBits;
        v180 = v19->_object;

        *(swift_task_alloc() + 16) = v210 + 112;
        DataFrame.Slice.filter<A>(on:_:_:)();
        v159 = *(v210 + 888);
        v163 = *(v210 + 880);
        v162 = *(v210 + 872);
        v164 = *(v210 + 856);
        v153 = *(v210 + 744);
        v154 = *(v210 + 720);
        v157 = *(v210 + 688);
        v158 = *(v210 + 864);
        v156 = *(v210 + 696);

        DataFrame.init(_:)();
        v155 = DataFrame.shape.getter();
        *(v210 + 552) = v155;
        *(v210 + 560) = _allocateUninitializedArray<A>(_:)();
        *(v210 + 568) = 0;
        v20 = MediaMLWorker.logger.unsafeMutableAddressor();
        (*(v156 + 16))(v154, v20, v157);
        v160 = *(v158 + 16);
        v160(v163, v159, v164);
        v161 = *(v158 + 80);
        v166 = swift_allocObject();
        v165 = *(v158 + 32);
        v165(v166 + ((v161 + 16) & ~v161), v163, v164);
        v160(v163, v159, v164);
        v168 = swift_allocObject();
        v165(v168 + ((v161 + 16) & ~v161), v163, v164);
        oslog = Logger.logObject.getter();
        v178 = static os_log_type_t.debug.getter();
        v170 = swift_allocObject();
        *(v170 + 16) = 0;
        v171 = swift_allocObject();
        *(v171 + 16) = 8;
        v167 = swift_allocObject();
        *(v167 + 16) = partial apply for implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation();
        *(v167 + 24) = v166;
        v172 = swift_allocObject();
        *(v172 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v172 + 24) = v167;
        v173 = swift_allocObject();
        *(v173 + 16) = 0;
        v174 = swift_allocObject();
        *(v174 + 16) = 8;
        v169 = swift_allocObject();
        *(v169 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation();
        *(v169 + 24) = v168;
        v175 = swift_allocObject();
        *(v175 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v175 + 24) = v169;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v176 = v21;

        *v176 = closure #1 in OSLogArguments.append(_:)partial apply;
        v176[1] = v170;

        v176[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v176[3] = v171;

        v176[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v176[5] = v172;

        v176[6] = closure #1 in OSLogArguments.append(_:)partial apply;
        v176[7] = v173;

        v176[8] = closure #1 in OSLogArguments.append(_:)partial apply;
        v176[9] = v174;

        v176[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v176[11] = v175;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(oslog, v178))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v151 = createStorage<A>(capacity:type:)(0);
          v152 = createStorage<A>(capacity:type:)(0);
          *(v210 + 656) = buf;
          *(v210 + 664) = v151;
          *(v210 + 672) = v152;
          serialize(_:at:)(0, (v210 + 656));
          serialize(_:at:)(2, (v210 + 656));
          *(v210 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v210 + 456) = v170;
          closure #1 in osLogInternal(_:log:type:)(v210 + 448, v210 + 656, v210 + 664, v210 + 672);
          *(v210 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v210 + 456) = v171;
          closure #1 in osLogInternal(_:log:type:)(v210 + 448, v210 + 656, v210 + 664, v210 + 672);
          *(v210 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v210 + 456) = v172;
          closure #1 in osLogInternal(_:log:type:)(v210 + 448, v210 + 656, v210 + 664, v210 + 672);
          *(v210 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v210 + 456) = v173;
          closure #1 in osLogInternal(_:log:type:)(v210 + 448, v210 + 656, v210 + 664, v210 + 672);
          *(v210 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v210 + 456) = v174;
          closure #1 in osLogInternal(_:log:type:)(v210 + 448, v210 + 656, v210 + 664, v210 + 672);
          *(v210 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v210 + 456) = v175;
          closure #1 in osLogInternal(_:log:type:)(v210 + 448, v210 + 656, v210 + 664, v210 + 672);
          _os_log_impl(&_mh_execute_header, oslog, v178, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
          destroyStorage<A>(_:count:)(v151);
          destroyStorage<A>(_:count:)(v152);
          UnsafeMutablePointer.deallocate()();
        }

        v147 = *(v210 + 720);
        v148 = *(v210 + 688);
        v146 = *(v210 + 696);

        (*(v146 + 8))(v147, v148);
        for (i = 0; i < v155; ++i)
        {
          v144 = *(v210 + 944);
          v145 = *(v210 + 936);
          v22 = *(v210 + 888);
          v142 = *(v210 + 800);
          v143 = *(v210 + 784);
          v141 = *kMediaML_throughputStdDev.unsafeMutableAddressor();

          DataFrame.subscript.getter();
          AnyColumn.subscript.getter();
          v145(v142, v143);
          if (!*(v210 + 328))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          outlined init with take of Any(v210 + 304, v210 + 272);
          swift_dynamicCast();
          *(v210 + 648) = *(v210 + 640);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
          Array.append(_:)();

          if (__OFADD__(i, 1))
          {
            goto LABEL_55;
          }

          *(v210 + 568) = i + 1;
        }

        v139 = *(v210 + 560);

        v140 = Array.count.getter();
        *(v210 + 576) = v140;

        v23 = v140;
        if (__OFSUB__(v140, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
          return _swift_task_switch(v23, v24);
        }

        *(v210 + 592) = v140 - 1;
        *(v210 + 600) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
        min<A>(_:_:)();
        v138 = *(v210 + 584);
        *(v210 + 608) = v138;
        if (v140 > 0)
        {
          if (v138 < 0)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          *(v210 + 368) = 0;
          *(v210 + 376) = v138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
          lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
          Collection<>.makeIterator()();
          *(v210 + 992) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
          IndexingIterator.next()();
          if ((*(v210 + 472) & 1) == 0)
          {
            break;
          }
        }

        v130 = *(v210 + 888);
        v129 = *(v210 + 856);
        v128 = *(v210 + 864);
        outlined destroy of [Double]((v210 + 560));
        (*(v128 + 8))(v130, v129);
        outlined destroy of Any?((v210 + 112));
      }

      *(v210 + 616) = *(v210 + 464);
      outlined init with copy of Any?(v210 + 48, v210 + 176);
      if (!*(v210 + 200))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v210 + 176, v210 + 144);
      swift_dynamicCast();
      v136 = *(v210 + 384);
      v137 = *(v210 + 392);
      *(v210 + 1000) = v137;
      *(v210 + 400) = v136;
      *(v210 + 408) = v137;
      outlined init with copy of Any?(v210 + 112, v210 + 240);
      if (!*(v210 + 264))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v134 = *(v210 + 928);
      v135 = *(v210 + 904);
      outlined init with take of Any(v210 + 240, v210 + 208);
      swift_dynamicCast();
      v131 = *(v210 + 416);
      v132 = *(v210 + 424);
      *(v210 + 1008) = v132;
      *(v210 + 432) = v131;
      *(v210 + 440) = v132;
      v28 = *(v210 + 560);
      Array.subscript.getter();
      v133 = *(v210 + 624);
      *(v210 + 632) = v133;
      *(v210 + 1016) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO wifiStdDev (app_name, ssid, throughput_stddev, training_date) VALUES (?, ?, ?, ?)", 0x5DuLL, 1);

      v29 = swift_task_alloc();
      v24 = v135;
      *(v210 + 1032) = v29;
      v29[2] = v136;
      v29[3] = v137;
      v29[4] = v131;
      v29[5] = v132;
      v29[6] = v133;
      v29[7] = v134;
      v30 = *(v210 + 480);
      v23 = MediaMLWorker.saveWiFiDataStandardDeviation();

      return _swift_task_switch(v23, v24);
    }
  }

  v101 = *(v210 + 896);
  v105 = *(v210 + 880);
  v104 = *(v210 + 872);
  v106 = *(v210 + 856);
  v31 = *(v210 + 712);
  v99 = *(v210 + 688);
  v100 = *(v210 + 864);
  v98 = *(v210 + 696);
  outlined destroy of IndexingIterator<AnyColumnSlice>(*(v210 + 776));
  v32 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v98 + 16))(v31, v32, v99);
  v102 = *(v100 + 16);
  v102(v105, v101, v106);
  v103 = *(v100 + 80);
  v108 = swift_allocObject();
  v107 = *(v100 + 32);
  v107(v108 + ((v103 + 16) & ~v103), v105, v106);
  v102(v105, v101, v106);
  v110 = swift_allocObject();
  v107(v110 + ((v103 + 16) & ~v103), v105, v106);
  log = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  v112 = swift_allocObject();
  *(v112 + 16) = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = 8;
  v109 = swift_allocObject();
  *(v109 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation();
  *(v109 + 24) = v108;
  v114 = swift_allocObject();
  *(v114 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v114 + 24) = v109;
  v115 = swift_allocObject();
  *(v115 + 16) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = 8;
  v111 = swift_allocObject();
  *(v111 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation();
  *(v111 + 24) = v110;
  v117 = swift_allocObject();
  *(v117 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v117 + 24) = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v118 = v33;

  *v118 = closure #1 in OSLogArguments.append(_:)partial apply;
  v118[1] = v112;

  v118[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v118[3] = v113;

  v118[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v118[5] = v114;

  v118[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v118[7] = v115;

  v118[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v118[9] = v116;

  v118[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v118[11] = v117;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v120))
  {
    v95 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v96 = createStorage<A>(capacity:type:)(0);
    v97 = createStorage<A>(capacity:type:)(0);
    v213 = v95;
    v214 = v96;
    v215 = v97;
    serialize(_:at:)(0, &v213);
    serialize(_:at:)(2, &v213);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v112;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    if (v205)
    {
    }

    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v113;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v217 = v114;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v115;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append(_:)partial apply;
    v217 = v116;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    v216 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v217 = v117;
    closure #1 in osLogInternal(_:log:type:)(&v216, &v213, &v214, &v215);
    _os_log_impl(&_mh_execute_header, log, v120, "Returning a dataframe of size=%ld,%ld", v95, 0x16u);
    destroyStorage<A>(_:count:)(v96);
    destroyStorage<A>(_:count:)(v97);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v80 = *(v210 + 896);
  v81 = *(v210 + 888);
  v82 = *(v210 + 880);
  v78 = *(v210 + 856);
  v83 = *(v210 + 848);
  v84 = *(v210 + 840);
  v85 = *(v210 + 832);
  v76 = *(v210 + 816);
  v86 = *(v210 + 808);
  v87 = *(v210 + 800);
  v88 = *(v210 + 776);
  v89 = *(v210 + 768);
  v90 = *(v210 + 752);
  v91 = *(v210 + 744);
  v92 = *(v210 + 720);
  v93 = *(v210 + 712);
  v94 = *(v210 + 704);
  v74 = *(v210 + 688);
  v79 = *(v210 + 904);
  v77 = *(v210 + 864);
  v75 = *(v210 + 824);
  v73 = *(v210 + 696);

  (*(v73 + 8))(v93, v74);
  (*(v75 + 8))(v83, v76);
  (*(v77 + 8))(v80, v78);

  v34 = *(*(v210 + 480) + 8);
  v35 = *(v210 + 480);

  return v34();
}

{
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[124];
  v5 = v0[113];
  v0[60] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation());
  v0[130] = v4;
  if (v4)
  {
    v9 = v14[60];
    v8 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  else
  {
    v6 = v14[129];
    v13 = v14[128];
    v12 = v14[126];
    v11 = v14[125];

    v7 = v14[60];
    v8 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  return _swift_task_switch(v8, 0);
}

{
  v161 = v0;
  v1 = v0[126];
  v154 = v0[125];
  v0[60] = v0;

  for (i = v0[130]; ; i = 0)
  {
    *(v153 + 992) = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v153 + 472) & 1) == 0)
    {
      break;
    }

    v87 = i;
    while (2)
    {
      v86 = *(v153 + 888);
      v85 = *(v153 + 856);
      v84 = *(v153 + 864);
      outlined destroy of [Double]((v153 + 560));
      (*(v84 + 8))(v86, v85);
      outlined destroy of Any?((v153 + 112));
      for (j = v87; ; j = 0)
      {
        v7 = *(v153 + 768);
        v8 = *(v153 + 760);
        IndexingIterator.next()();
        if (*(v153 + 104) != 1)
        {
          break;
        }

        v78 = *(v153 + 984);
        v79 = *(v153 + 976);
        v80 = *(v153 + 832);
        v77 = *(v153 + 816);
        v82 = *(v153 + 752);
        v83 = *(v153 + 728);
        v81 = *(v153 + 736);
        outlined destroy of IndexingIterator<AnyColumnSlice>(*(v153 + 768));
        v79(v80, v77);
        (*(v81 + 8))(v82, v83);
        outlined destroy of Any?((v153 + 48));
        v22 = *(v153 + 776);
        v23 = *(v153 + 760);
        IndexingIterator.next()();
        if (*(v153 + 40) == 1)
        {
          v57 = *(v153 + 896);
          v61 = *(v153 + 880);
          v60 = *(v153 + 872);
          v62 = *(v153 + 856);
          v24 = *(v153 + 712);
          v55 = *(v153 + 688);
          v56 = *(v153 + 864);
          v54 = *(v153 + 696);
          outlined destroy of IndexingIterator<AnyColumnSlice>(*(v153 + 776));
          v25 = MediaMLWorker.logger.unsafeMutableAddressor();
          (*(v54 + 16))(v24, v25, v55);
          v58 = *(v56 + 16);
          v58(v61, v57, v62);
          v59 = *(v56 + 80);
          v64 = swift_allocObject();
          v63 = *(v56 + 32);
          v63(v64 + ((v59 + 16) & ~v59), v61, v62);
          v58(v61, v57, v62);
          v66 = swift_allocObject();
          v63(v66 + ((v59 + 16) & ~v59), v61, v62);
          log = Logger.logObject.getter();
          v76 = static os_log_type_t.debug.getter();
          v68 = swift_allocObject();
          *(v68 + 16) = 0;
          v69 = swift_allocObject();
          *(v69 + 16) = 8;
          v65 = swift_allocObject();
          *(v65 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation();
          *(v65 + 24) = v64;
          v70 = swift_allocObject();
          *(v70 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
          *(v70 + 24) = v65;
          v71 = swift_allocObject();
          *(v71 + 16) = 0;
          v72 = swift_allocObject();
          *(v72 + 16) = 8;
          v67 = swift_allocObject();
          *(v67 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation();
          *(v67 + 24) = v66;
          v73 = swift_allocObject();
          *(v73 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
          *(v73 + 24) = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          _allocateUninitializedArray<A>(_:)();
          v74 = v26;

          *v74 = closure #1 in OSLogArguments.append(_:)partial apply;
          v74[1] = v68;

          v74[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v74[3] = v69;

          v74[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v74[5] = v70;

          v74[6] = closure #1 in OSLogArguments.append(_:)partial apply;
          v74[7] = v71;

          v74[8] = closure #1 in OSLogArguments.append(_:)partial apply;
          v74[9] = v72;

          v74[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v74[11] = v73;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(log, v76))
          {
            v51 = static UnsafeMutablePointer.allocate(capacity:)();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v52 = createStorage<A>(capacity:type:)(0);
            v53 = createStorage<A>(capacity:type:)(0);
            v156 = v51;
            v157 = v52;
            v158 = v53;
            serialize(_:at:)(0, &v156);
            serialize(_:at:)(2, &v156);
            v159 = closure #1 in OSLogArguments.append(_:)partial apply;
            v160 = v68;
            closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
            if (j)
            {
            }

            v159 = closure #1 in OSLogArguments.append(_:)partial apply;
            v160 = v69;
            closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
            v159 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
            v160 = v70;
            closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
            v159 = closure #1 in OSLogArguments.append(_:)partial apply;
            v160 = v71;
            closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
            v159 = closure #1 in OSLogArguments.append(_:)partial apply;
            v160 = v72;
            closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
            v159 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
            v160 = v73;
            closure #1 in osLogInternal(_:log:type:)(&v159, &v156, &v157, &v158);
            _os_log_impl(&_mh_execute_header, log, v76, "Returning a dataframe of size=%ld,%ld", v51, 0x16u);
            destroyStorage<A>(_:count:)(v52);
            destroyStorage<A>(_:count:)(v53);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v36 = *(v153 + 896);
          v37 = *(v153 + 888);
          v38 = *(v153 + 880);
          v34 = *(v153 + 856);
          v39 = *(v153 + 848);
          v40 = *(v153 + 840);
          v41 = *(v153 + 832);
          v32 = *(v153 + 816);
          v42 = *(v153 + 808);
          v43 = *(v153 + 800);
          v44 = *(v153 + 776);
          v45 = *(v153 + 768);
          v46 = *(v153 + 752);
          v47 = *(v153 + 744);
          v48 = *(v153 + 720);
          v49 = *(v153 + 712);
          v50 = *(v153 + 704);
          v30 = *(v153 + 688);
          v35 = *(v153 + 904);
          v33 = *(v153 + 864);
          v31 = *(v153 + 824);
          v29 = *(v153 + 696);

          (*(v29 + 8))(v49, v30);
          (*(v31 + 8))(v39, v32);
          (*(v33 + 8))(v36, v34);

          v27 = *(*(v153 + 480) + 8);
          v28 = *(v153 + 480);

          return v27();
        }

        v2 = *(v153 + 896);
        v150 = *(v153 + 752);
        *(v153 + 48) = *(v153 + 16);
        *(v153 + 64) = *(v153 + 32);
        v3 = kMediaML_appName.unsafeMutableAddressor();
        countAndFlagsBits = v3->_countAndFlagsBits;
        object = v3->_object;

        *(swift_task_alloc() + 16) = v153 + 48;
        DataFrame.filter<A>(on:_:_:)();
        if (j)
        {
        }

        v147 = *(v153 + 968);
        v144 = *(v153 + 960);
        v145 = *(v153 + 952);
        v140 = *(v153 + 840);
        v143 = *(v153 + 832);
        v148 = *(v153 + 816);
        v146 = *(v153 + 768);
        v4 = *(v153 + 752);
        v141 = *(v153 + 824);

        v5 = kMediaML_ssid.unsafeMutableAddressor();
        v139 = v5->_countAndFlagsBits;
        v142 = v5->_object;

        DataFrame.Slice.subscript.getter();
        AnyColumnSlice.distinct()();
        v6 = *(v141 + 8);
        *(v153 + 976) = v6;
        *(v153 + 984) = (v141 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v6(v140, v148);

        v145(v140, v143, v148);
        Collection<>.makeIterator()();
      }

      v9 = *(v153 + 752);
      v136 = *(v153 + 744);
      *(v153 + 112) = *(v153 + 80);
      *(v153 + 128) = *(v153 + 96);
      v10 = kMediaML_ssid.unsafeMutableAddressor();
      v138 = v10->_countAndFlagsBits;
      v137 = v10->_object;

      *(swift_task_alloc() + 16) = v153 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      if (j)
      {
      }

      v116 = *(v153 + 888);
      v120 = *(v153 + 880);
      v119 = *(v153 + 872);
      v121 = *(v153 + 856);
      v110 = *(v153 + 744);
      v111 = *(v153 + 720);
      v114 = *(v153 + 688);
      v115 = *(v153 + 864);
      v113 = *(v153 + 696);

      DataFrame.init(_:)();
      v112 = DataFrame.shape.getter();
      *(v153 + 552) = v112;
      *(v153 + 560) = _allocateUninitializedArray<A>(_:)();
      *(v153 + 568) = 0;
      v11 = MediaMLWorker.logger.unsafeMutableAddressor();
      (*(v113 + 16))(v111, v11, v114);
      v117 = *(v115 + 16);
      v117(v120, v116, v121);
      v118 = *(v115 + 80);
      v123 = swift_allocObject();
      v122 = *(v115 + 32);
      v122(v123 + ((v118 + 16) & ~v118), v120, v121);
      v117(v120, v116, v121);
      v125 = swift_allocObject();
      v122(v125 + ((v118 + 16) & ~v118), v120, v121);
      oslog = Logger.logObject.getter();
      v135 = static os_log_type_t.debug.getter();
      v127 = swift_allocObject();
      *(v127 + 16) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = 8;
      v124 = swift_allocObject();
      *(v124 + 16) = partial apply for implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation();
      *(v124 + 24) = v123;
      v129 = swift_allocObject();
      *(v129 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v129 + 24) = v124;
      v130 = swift_allocObject();
      *(v130 + 16) = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = 8;
      v126 = swift_allocObject();
      *(v126 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation();
      *(v126 + 24) = v125;
      v132 = swift_allocObject();
      *(v132 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v132 + 24) = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v133 = v12;

      *v133 = closure #1 in OSLogArguments.append(_:)partial apply;
      v133[1] = v127;

      v133[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v133[3] = v128;

      v133[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v133[5] = v129;

      v133[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v133[7] = v130;

      v133[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v133[9] = v131;

      v133[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v133[11] = v132;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v135))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v108 = createStorage<A>(capacity:type:)(0);
        v109 = createStorage<A>(capacity:type:)(0);
        *(v153 + 656) = buf;
        *(v153 + 664) = v108;
        *(v153 + 672) = v109;
        serialize(_:at:)(0, (v153 + 656));
        serialize(_:at:)(2, (v153 + 656));
        *(v153 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v153 + 456) = v127;
        closure #1 in osLogInternal(_:log:type:)(v153 + 448, v153 + 656, v153 + 664, v153 + 672);
        *(v153 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v153 + 456) = v128;
        closure #1 in osLogInternal(_:log:type:)(v153 + 448, v153 + 656, v153 + 664, v153 + 672);
        *(v153 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v153 + 456) = v129;
        closure #1 in osLogInternal(_:log:type:)(v153 + 448, v153 + 656, v153 + 664, v153 + 672);
        *(v153 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v153 + 456) = v130;
        closure #1 in osLogInternal(_:log:type:)(v153 + 448, v153 + 656, v153 + 664, v153 + 672);
        *(v153 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v153 + 456) = v131;
        closure #1 in osLogInternal(_:log:type:)(v153 + 448, v153 + 656, v153 + 664, v153 + 672);
        *(v153 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v153 + 456) = v132;
        closure #1 in osLogInternal(_:log:type:)(v153 + 448, v153 + 656, v153 + 664, v153 + 672);
        _os_log_impl(&_mh_execute_header, oslog, v135, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
        destroyStorage<A>(_:count:)(v108);
        destroyStorage<A>(_:count:)(v109);
        UnsafeMutablePointer.deallocate()();
      }

      v104 = *(v153 + 720);
      v105 = *(v153 + 688);
      v103 = *(v153 + 696);

      (*(v103 + 8))(v104, v105);
      for (k = 0; k < v112; ++k)
      {
        v101 = *(v153 + 944);
        v102 = *(v153 + 936);
        v13 = *(v153 + 888);
        v99 = *(v153 + 800);
        v100 = *(v153 + 784);
        v98 = *kMediaML_throughputStdDev.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v102(v99, v100);
        if (!*(v153 + 328))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        outlined init with take of Any(v153 + 304, v153 + 272);
        swift_dynamicCast();
        *(v153 + 648) = *(v153 + 640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        if (__OFADD__(k, 1))
        {
          goto LABEL_46;
        }

        *(v153 + 568) = k + 1;
      }

      v96 = *(v153 + 560);

      v97 = Array.count.getter();
      *(v153 + 576) = v97;

      v14 = v97;
      if (__OFSUB__(v97, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return _swift_task_switch(v14, v15);
      }

      *(v153 + 592) = v97 - 1;
      *(v153 + 600) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
      min<A>(_:_:)();
      v95 = *(v153 + 584);
      *(v153 + 608) = v95;
      if (v97 <= 0)
      {
        v87 = 0;
        continue;
      }

      break;
    }

    if (v95 < 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v153 + 368) = 0;
    *(v153 + 376) = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
  }

  *(v153 + 616) = *(v153 + 464);
  outlined init with copy of Any?(v153 + 48, v153 + 176);
  if (!*(v153 + 200))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  outlined init with take of Any(v153 + 176, v153 + 144);
  swift_dynamicCast();
  v93 = *(v153 + 384);
  v94 = *(v153 + 392);
  *(v153 + 1000) = v94;
  *(v153 + 400) = v93;
  *(v153 + 408) = v94;
  outlined init with copy of Any?(v153 + 112, v153 + 240);
  if (!*(v153 + 264))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v91 = *(v153 + 928);
  v92 = *(v153 + 904);
  outlined init with take of Any(v153 + 240, v153 + 208);
  swift_dynamicCast();
  v88 = *(v153 + 416);
  v89 = *(v153 + 424);
  *(v153 + 1008) = v89;
  *(v153 + 432) = v88;
  *(v153 + 440) = v89;
  v19 = *(v153 + 560);
  Array.subscript.getter();
  v90 = *(v153 + 624);
  *(v153 + 632) = v90;
  *(v153 + 1016) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO wifiStdDev (app_name, ssid, throughput_stddev, training_date) VALUES (?, ?, ?, ?)", 0x5DuLL, 1);

  v20 = swift_task_alloc();
  v15 = v92;
  *(v153 + 1032) = v20;
  v20[2] = v93;
  v20[3] = v94;
  v20[4] = v88;
  v20[5] = v89;
  v20[6] = v90;
  v20[7] = v91;
  v21 = *(v153 + 480);
  v14 = MediaMLWorker.saveWiFiDataStandardDeviation();

  return _swift_task_switch(v14, v15);
}

{
  v1 = v0[113];
  v0[60] = v0;

  v2 = v0[115];
  v3 = v0[112];
  v7 = v0[111];
  v8 = v0[110];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[104];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[97];
  v15 = v0[96];
  v16 = v0[94];
  v17 = v0[93];
  v18 = v0[90];
  v19 = v0[89];
  v20 = v0[88];

  v4 = *(v0[60] + 8);
  v5 = v0[60];

  return v4();
}

{
  v1 = v0[129];
  v7 = v0[128];
  v8 = v0[126];
  v9 = v0[125];
  v19 = v0[123];
  v20 = v0[122];
  v25 = v0[113];
  v22 = v0[112];
  v11 = v0[111];
  v10 = v0[108];
  v23 = v0[107];
  v21 = v0[106];
  v13 = v0[104];
  v18 = v0[102];
  v17 = v0[97];
  v12 = v0[96];
  v15 = v0[94];
  v14 = v0[92];
  v16 = v0[91];
  v0[60] = v0;

  outlined destroy of [Double](v0 + 70);
  v24 = *(v10 + 8);
  v24(v11, v23);
  outlined destroy of Any?(v0 + 14);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v12);
  v20(v13, v18);
  (*(v14 + 8))(v15, v16);
  outlined destroy of Any?(v0 + 6);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v17);
  v20(v21, v18);
  v24(v22, v23);

  v2 = v0[130];
  v3 = v0[112];
  v26 = v0[111];
  v27 = v0[110];
  v28 = v0[106];
  v29 = v0[105];
  v30 = v0[104];
  v31 = v0[101];
  v32 = v0[100];
  v33 = v0[97];
  v34 = v0[96];
  v35 = v0[94];
  v36 = v0[93];
  v37 = v0[90];
  v38 = v0[89];
  v39 = v0[88];

  v4 = *(v0[60] + 8);
  v5 = v0[60];

  return v4();
}

void MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(v0 + 680);
  *(v0 + 480) = v0;
  v30 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.saveWiFiDataStandardDeviation(), 0, v30, v2, v2);

  v28 = v29[62];
  v29[113] = v28;
  if (v28)
  {
    v29[63] = v28;
    v3 = swift_task_alloc();
    v29[114] = v3;
    *v3 = v29[60];
    v3[1] = MediaMLWorker.saveWiFiDataStandardDeviation();
    v4 = v29[112];
    v5 = v29[85];

    MediaMLWorker.getWiFiDataStandardDeviation()(v4);
  }

  else
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v32 = SQLError.init(code:desc:)(-3, v6);
    code = v32.code;
    desc_8 = v32.desc.value._countAndFlagsBits;
    object = v32.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v7 = code;
    *(v7 + 8) = desc_8;
    *(v7 + 16) = object;
    swift_willThrow();
    v8 = v29[112];
    v14 = v29[111];
    v15 = v29[110];
    v16 = v29[106];
    v17 = v29[105];
    v18 = v29[104];
    v19 = v29[101];
    v20 = v29[100];
    v21 = v29[97];
    v22 = v29[96];
    v23 = v29[94];
    v24 = v29[93];
    v25 = v29[90];
    v26 = v29[89];
    v27 = v29[88];

    v9 = *(v29[60] + 8);
    v10 = v29[60];

    v9();
  }
}

uint64_t MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[4] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v2[9] = 0;
  v2[6] = a1;
  v2[7] = v1;
  v3 = v2[4];
  return _swift_task_switch(MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:), 0);
}

void MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)()
{
  v1 = v0[12];
  v0[4] = v0;
  v20 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:), 0, v20, v2, v2);
  v0[13] = 0;

  v18 = v19[8];
  v19[14] = v18;
  if (v18)
  {
    v15 = v19[11];
    v19[9] = v18;
    v19[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v19[3] = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM wifiStdDev WHERE training_date < ", 0x2DuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v19[5] = *(v15 + 72);
    v19[10] = v19[5];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    v17 = v19[2];
    v16 = v19[3];

    outlined destroy of DefaultStringInterpolation((v19 + 2));
    v19[15] = String.init(stringInterpolation:)();
    v19[16] = v6;
    v7 = v19[4];

    _swift_task_switch(MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:), v18);
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v22 = SQLError.init(code:desc:)(-3, v8);
    code = v22.code;
    desc_8 = v22.desc.value._countAndFlagsBits;
    object = v22.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v9 = code;
    *(v9 + 8) = desc_8;
    *(v9 + 16) = object;
    swift_willThrow();
    v10 = *(v19[4] + 8);
    v11 = v19[4];

    v10();
  }
}

uint64_t MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  *(v0 + 32) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 136) = v4;
  if (v4)
  {
    v8 = *(v10 + 32);
    v7 = MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:);
  }

  else
  {
    v5 = *(v10 + 128);

    v6 = *(v10 + 32);
    v7 = MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:);
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = *(v0 + 112);
  *(v0 + 32) = v0;

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

{
  v1 = v0[16];
  v6 = v0[14];
  v0[4] = v0;

  v2 = v0[17];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t a1)
{
  *(v2 + 840) = v1;
  *(v2 + 832) = a1;
  *(v2 + 608) = v2;
  *(v2 + 616) = 0;
  *(v2 + 624) = 0;
  *(v2 + 640) = 0;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0;
  *(v2 + 696) = 0;
  *(v2 + 704) = 0;
  *(v2 + 712) = 0;
  *(v2 + 744) = 0;
  *(v2 + 464) = 0;
  *(v2 + 472) = 0;
  *(v2 + 480) = 0;
  *(v2 + 488) = 0;
  *(v2 + 752) = 0;
  *(v2 + 528) = 0;
  *(v2 + 536) = 0;
  *(v2 + 560) = 0;
  *(v2 + 568) = 0;
  *(v2 + 768) = 0;
  *(v2 + 784) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 848) = v3;
  v11 = *(v3 - 8);
  *(v2 + 856) = v11;
  v12 = *(v11 + 64);
  *(v2 + 864) = swift_task_alloc();
  *(v2 + 872) = swift_task_alloc();
  *(v2 + 880) = swift_task_alloc();
  v4 = type metadata accessor for DataFrame();
  *(v2 + 888) = v4;
  v13 = *(v4 - 8);
  *(v2 + 896) = v13;
  *(v2 + 904) = *(v13 + 64);
  *(v2 + 912) = swift_task_alloc();
  *(v2 + 920) = swift_task_alloc();
  *(v2 + 928) = swift_task_alloc();
  v5 = type metadata accessor for DataFrame.Slice();
  *(v2 + 936) = v5;
  v14 = *(v5 - 8);
  *(v2 + 944) = v14;
  v15 = *(v14 + 64);
  *(v2 + 952) = swift_task_alloc();
  *(v2 + 960) = swift_task_alloc();
  *(v2 + 968) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMd, &_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMR);
  *(v2 + 976) = v6;
  v16 = *(*(v6 - 8) + 64);
  *(v2 + 984) = swift_task_alloc();
  *(v2 + 992) = swift_task_alloc();
  *(v2 + 1000) = swift_task_alloc();
  v7 = type metadata accessor for AnyColumn();
  *(v2 + 1008) = v7;
  v17 = *(v7 - 8);
  *(v2 + 1016) = v17;
  v18 = *(v17 + 64);
  *(v2 + 1024) = swift_task_alloc();
  *(v2 + 1032) = swift_task_alloc();
  v8 = type metadata accessor for AnyColumnSlice();
  *(v2 + 1040) = v8;
  v19 = *(v8 - 8);
  *(v2 + 1048) = v19;
  v20 = *(v19 + 64);
  *(v2 + 1056) = swift_task_alloc();
  *(v2 + 1064) = swift_task_alloc();
  *(v2 + 1072) = swift_task_alloc();
  *(v2 + 1080) = swift_task_alloc();
  *(v2 + 616) = a1;
  *(v2 + 624) = v1;
  v9 = *(v2 + 608);

  return _swift_task_switch(MediaMLWorker.saveCellDataStandardDeviation(dataFrame:), 0);
}

void MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v258 = v0;
  v1 = *(v0 + 840);
  *(v0 + 608) = v0;
  v252 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:), 0, v252, v2, v2);

  v250 = *(v251 + 632);
  *(v251 + 1088) = v250;
  if (!v250)
  {
    v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v260 = SQLError.init(code:desc:)(-3, v47);
    code = v260.code;
    desc_8 = v260.desc.value._countAndFlagsBits;
    object = v260.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v48 = code;
    *(v48 + 8) = desc_8;
    *(v48 + 16) = object;
    swift_willThrow();
LABEL_53:
    v49 = *(v251 + 1080);
    v52 = *(v251 + 1072);
    v53 = *(v251 + 1064);
    v54 = *(v251 + 1056);
    v55 = *(v251 + 1032);
    v56 = *(v251 + 1024);
    v57 = *(v251 + 1000);
    v58 = *(v251 + 992);
    v59 = *(v251 + 984);
    v60 = *(v251 + 968);
    v61 = *(v251 + 960);
    v62 = *(v251 + 952);
    v63 = *(v251 + 928);
    v64 = *(v251 + 920);
    v65 = *(v251 + 912);
    v66 = *(v251 + 880);
    v67 = *(v251 + 872);
    v68 = *(v251 + 864);

    v50 = *(*(v251 + 608) + 8);
    v51 = *(v251 + 608);

    v50();
    return;
  }

  v3 = *(v251 + 832);
  *(v251 + 640) = v250;
  v248 = *kMediaML_appName.unsafeMutableAddressor();

  v249 = DataFrame.containsColumn(_:)(v248);

  if (!v249)
  {
    goto LABEL_49;
  }

  v4 = *(v251 + 832);
  v246 = *kMediaML_carrier.unsafeMutableAddressor();

  v247 = DataFrame.containsColumn(_:)(v246);

  if (!v247)
  {
    goto LABEL_49;
  }

  v5 = *(v251 + 832);
  v244 = *kMediaML_bars.unsafeMutableAddressor();

  v245 = DataFrame.containsColumn(_:)(v244);

  if (!v245 || (v6 = *(v251 + 832), v242 = *kMediaML_throughputStdDev.unsafeMutableAddressor(), , v243 = DataFrame.containsColumn(_:)(v242), , !v243))
  {
LABEL_49:
    v44 = *(v251 + 864);
    v80 = *(v251 + 848);
    v79 = *(v251 + 856);
    v45 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v79 + 16))(v44, v45, v80);
    v82 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v83 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v82, v81))
    {
      v75 = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = createStorage<A>(capacity:type:)(0);
      v77 = createStorage<A>(capacity:type:)(0);
      *(v251 + 648) = v75;
      *(v251 + 656) = v76;
      *(v251 + 664) = v77;
      serialize(_:at:)(0, (v251 + 648));
      serialize(_:at:)(0, (v251 + 648));
      *(v251 + 672) = v83;
      v78 = swift_task_alloc();
      v78[2] = v251 + 648;
      v78[3] = v251 + 656;
      v78[4] = v251 + 664;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v82, v81, "saveCellDataStandardDeviation: DataFrame did not contain all required columns", v75, 2u);
      destroyStorage<A>(_:count:)(v76);
      destroyStorage<A>(_:count:)(v77);
      UnsafeMutablePointer.deallocate()();
    }

    v73 = *(v251 + 864);
    v74 = *(v251 + 848);
    v72 = *(v251 + 856);

    (*(v72 + 8))(v73, v74);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();

    goto LABEL_53;
  }

  v239 = *(v251 + 1080);
  v233 = *(v251 + 1072);
  v241 = *(v251 + 1040);
  v235 = *(v251 + 1032);
  v236 = *(v251 + 1008);
  v240 = *(v251 + 1000);
  v7 = *(v251 + 832);
  v238 = *(v251 + 1048);
  v234 = *(v251 + 1016);
  DateIn = getDateInEpoch()();
  *(v251 + 1096) = DateIn;
  *(v251 + 680) = DateIn;
  v9 = kMediaML_appName.unsafeMutableAddressor();
  countAndFlagsBits = v9->_countAndFlagsBits;
  v237 = v9->_object;

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v10 = *(v234 + 8);
  *(v251 + 1104) = v10;
  *(v251 + 1112) = (v234 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v235, v236);

  v11 = *(v238 + 16);
  *(v251 + 1120) = v11;
  *(v251 + 1128) = (v238 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v233, v239, v241);
  *(v251 + 1136) = lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice();
  Collection<>.makeIterator()();
  while (1)
  {
    v12 = *(v251 + 1000);
    v13 = *(v251 + 976);
    IndexingIterator.next()();
    if (*(v251 + 40) == 1)
    {
      v117 = *(v251 + 912);
      v116 = *(v251 + 904);
      v118 = *(v251 + 888);
      v39 = *(v251 + 872);
      v111 = *(v251 + 848);
      v113 = *(v251 + 832);
      v112 = *(v251 + 896);
      v110 = *(v251 + 856);
      outlined destroy of IndexingIterator<AnyColumnSlice>(*(v251 + 1000));
      v40 = MediaMLWorker.logger.unsafeMutableAddressor();
      (*(v110 + 16))(v39, v40, v111);
      v114 = *(v112 + 16);
      v114(v117, v113, v118);
      v115 = *(v112 + 80);
      v120 = swift_allocObject();
      v119 = *(v112 + 32);
      v119(v120 + ((v115 + 16) & ~v115), v117, v118);
      v114(v117, v113, v118);
      v122 = swift_allocObject();
      v119(v122 + ((v115 + 16) & ~v115), v117, v118);
      log = Logger.logObject.getter();
      v132 = static os_log_type_t.debug.getter();
      v124 = swift_allocObject();
      *(v124 + 16) = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = 8;
      v121 = swift_allocObject();
      *(v121 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
      *(v121 + 24) = v120;
      v126 = swift_allocObject();
      *(v126 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v126 + 24) = v121;
      v127 = swift_allocObject();
      *(v127 + 16) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = 8;
      v123 = swift_allocObject();
      *(v123 + 16) = partial apply for implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
      *(v123 + 24) = v122;
      v129 = swift_allocObject();
      *(v129 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v129 + 24) = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v130 = v41;

      *v130 = closure #1 in OSLogArguments.append(_:)partial apply;
      v130[1] = v124;

      v130[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v130[3] = v125;

      v130[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v130[5] = v126;

      v130[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v130[7] = v127;

      v130[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v130[9] = v128;

      v130[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v130[11] = v129;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v132))
      {
        v107 = static UnsafeMutablePointer.allocate(capacity:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v108 = createStorage<A>(capacity:type:)(0);
        v109 = createStorage<A>(capacity:type:)(0);
        v253 = v107;
        v254 = v108;
        v255 = v109;
        serialize(_:at:)(0, &v253);
        serialize(_:at:)(2, &v253);
        v256 = closure #1 in OSLogArguments.append(_:)partial apply;
        v257 = v124;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v253, &v254, &v255);
        v256 = closure #1 in OSLogArguments.append(_:)partial apply;
        v257 = v125;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v253, &v254, &v255);
        v256 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v257 = v126;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v253, &v254, &v255);
        v256 = closure #1 in OSLogArguments.append(_:)partial apply;
        v257 = v127;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v253, &v254, &v255);
        v256 = closure #1 in OSLogArguments.append(_:)partial apply;
        v257 = v128;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v253, &v254, &v255);
        v256 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v257 = v129;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v253, &v254, &v255);
        _os_log_impl(&_mh_execute_header, log, v132, "Returning a dataframe of size=%ld,%ld", v107, 0x16u);
        destroyStorage<A>(_:count:)(v108);
        destroyStorage<A>(_:count:)(v109);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v89 = *(v251 + 1080);
      v90 = *(v251 + 1072);
      v91 = *(v251 + 1064);
      v92 = *(v251 + 1056);
      v87 = *(v251 + 1040);
      v93 = *(v251 + 1032);
      v94 = *(v251 + 1024);
      v95 = *(v251 + 1000);
      v96 = *(v251 + 992);
      v97 = *(v251 + 984);
      v98 = *(v251 + 968);
      v99 = *(v251 + 960);
      v100 = *(v251 + 952);
      v101 = *(v251 + 928);
      v102 = *(v251 + 920);
      v103 = *(v251 + 912);
      v104 = *(v251 + 880);
      v105 = *(v251 + 872);
      v106 = *(v251 + 864);
      v85 = *(v251 + 848);
      v88 = *(v251 + 1088);
      v86 = *(v251 + 1048);
      v84 = *(v251 + 856);

      (*(v84 + 8))(v105, v85);
      (*(v86 + 8))(v89, v87);

      v42 = *(*(v251 + 608) + 8);
      v43 = *(v251 + 608);

      v42();
      return;
    }

    v229 = *(v251 + 968);
    v14 = *(v251 + 832);
    *(v251 + 48) = *(v251 + 16);
    *(v251 + 64) = *(v251 + 32);
    v15 = kMediaML_appName.unsafeMutableAddressor();
    v231 = v15->_countAndFlagsBits;
    v230 = v15->_object;

    *(swift_task_alloc() + 16) = v251 + 48;
    DataFrame.filter<A>(on:_:_:)();
    v227 = *(v251 + 1136);
    v224 = *(v251 + 1128);
    v225 = *(v251 + 1120);
    v220 = *(v251 + 1072);
    v223 = *(v251 + 1064);
    v228 = *(v251 + 1040);
    v226 = *(v251 + 992);
    v16 = *(v251 + 968);
    v221 = *(v251 + 1048);

    v17 = kMediaML_carrier.unsafeMutableAddressor();
    v219 = v17->_countAndFlagsBits;
    v222 = v17->_object;

    DataFrame.Slice.subscript.getter();
    AnyColumnSlice.distinct()();
    v18 = *(v221 + 8);
    *(v251 + 1144) = v18;
    *(v251 + 1152) = (v221 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v220, v228);

    v225(v220, v223, v228);
    Collection<>.makeIterator()();
LABEL_11:
    v19 = *(v251 + 992);
    v20 = *(v251 + 976);
    IndexingIterator.next()();
    if (*(v251 + 104) != 1)
    {
      break;
    }

    v134 = *(v251 + 1152);
    v135 = *(v251 + 1144);
    v136 = *(v251 + 1064);
    v133 = *(v251 + 1040);
    v138 = *(v251 + 968);
    v139 = *(v251 + 936);
    v137 = *(v251 + 944);
    outlined destroy of IndexingIterator<AnyColumnSlice>(*(v251 + 992));
    v135(v136, v133);
    (*(v137 + 8))(v138, v139);
    outlined destroy of Any?((v251 + 48));
  }

  v21 = *(v251 + 968);
  v216 = *(v251 + 960);
  *(v251 + 112) = *(v251 + 80);
  *(v251 + 128) = *(v251 + 96);
  v22 = kMediaML_carrier.unsafeMutableAddressor();
  v218 = v22->_countAndFlagsBits;
  v217 = v22->_object;

  *(swift_task_alloc() + 16) = v251 + 112;
  DataFrame.Slice.filter<A>(on:_:_:)();
  v214 = *(v251 + 1136);
  v211 = *(v251 + 1128);
  v212 = *(v251 + 1120);
  v207 = *(v251 + 1112);
  v208 = *(v251 + 1104);
  v204 = *(v251 + 1072);
  v210 = *(v251 + 1056);
  v215 = *(v251 + 1040);
  v205 = *(v251 + 1032);
  v206 = *(v251 + 1008);
  v213 = *(v251 + 984);
  v202 = *(v251 + 960);
  v23 = *(v251 + 928);

  DataFrame.init(_:)();
  v24 = kMediaML_bars.unsafeMutableAddressor();
  v203 = v24->_countAndFlagsBits;
  v209 = v24->_object;

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v208(v205, v206);

  v212(v204, v210, v215);
  Collection<>.makeIterator()();
  while (1)
  {
    v25 = *(v251 + 984);
    v26 = *(v251 + 976);
    IndexingIterator.next()();
    if (*(v251 + 168) == 1)
    {
      v141 = *(v251 + 1152);
      v142 = *(v251 + 1144);
      v143 = *(v251 + 1056);
      v140 = *(v251 + 1040);
      v145 = *(v251 + 928);
      v146 = *(v251 + 888);
      v144 = *(v251 + 896);
      outlined destroy of IndexingIterator<AnyColumnSlice>(*(v251 + 984));
      v142(v143, v140);
      (*(v144 + 8))(v145, v146);
      outlined destroy of Any?((v251 + 112));
      goto LABEL_11;
    }

    v199 = *(v251 + 952);
    v27 = *(v251 + 928);
    *(v251 + 176) = *(v251 + 144);
    *(v251 + 192) = *(v251 + 160);
    v28 = kMediaML_bars.unsafeMutableAddressor();
    v201 = v28->_countAndFlagsBits;
    v200 = v28->_object;

    *(swift_task_alloc() + 16) = v251 + 176;
    DataFrame.filter<A>(on:_:_:)();
    v173 = *(v251 + 952);
    v179 = *(v251 + 920);
    v183 = *(v251 + 912);
    v182 = *(v251 + 904);
    v184 = *(v251 + 888);
    v174 = *(v251 + 880);
    v177 = *(v251 + 848);
    v178 = *(v251 + 896);
    v176 = *(v251 + 856);

    DataFrame.init(_:)();
    v175 = DataFrame.shape.getter();
    *(v251 + 688) = v175;
    *(v251 + 696) = _allocateUninitializedArray<A>(_:)();
    *(v251 + 704) = 0;
    v29 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v176 + 16))(v174, v29, v177);
    v180 = *(v178 + 16);
    v180(v183, v179, v184);
    v181 = *(v178 + 80);
    v186 = swift_allocObject();
    v185 = *(v178 + 32);
    v185(v186 + ((v181 + 16) & ~v181), v183, v184);
    v180(v183, v179, v184);
    v188 = swift_allocObject();
    v185(v188 + ((v181 + 16) & ~v181), v183, v184);
    oslog = Logger.logObject.getter();
    v198 = static os_log_type_t.debug.getter();
    v190 = swift_allocObject();
    *(v190 + 16) = 0;
    v191 = swift_allocObject();
    *(v191 + 16) = 8;
    v187 = swift_allocObject();
    *(v187 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v187 + 24) = v186;
    v192 = swift_allocObject();
    *(v192 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v192 + 24) = v187;
    v193 = swift_allocObject();
    *(v193 + 16) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = 8;
    v189 = swift_allocObject();
    *(v189 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v189 + 24) = v188;
    v195 = swift_allocObject();
    *(v195 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v195 + 24) = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v196 = v30;

    *v196 = closure #1 in OSLogArguments.append(_:)partial apply;
    v196[1] = v190;

    v196[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v196[3] = v191;

    v196[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v196[5] = v192;

    v196[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v196[7] = v193;

    v196[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v196[9] = v194;

    v196[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v196[11] = v195;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v198))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v171 = createStorage<A>(capacity:type:)(0);
      v172 = createStorage<A>(capacity:type:)(0);
      *(v251 + 808) = buf;
      *(v251 + 816) = v171;
      *(v251 + 824) = v172;
      serialize(_:at:)(0, (v251 + 808));
      serialize(_:at:)(2, (v251 + 808));
      *(v251 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v251 + 584) = v190;
      closure #1 in osLogInternal(_:log:type:)(v251 + 576, v251 + 808, v251 + 816, v251 + 824);
      *(v251 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v251 + 584) = v191;
      closure #1 in osLogInternal(_:log:type:)(v251 + 576, v251 + 808, v251 + 816, v251 + 824);
      *(v251 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v251 + 584) = v192;
      closure #1 in osLogInternal(_:log:type:)(v251 + 576, v251 + 808, v251 + 816, v251 + 824);
      *(v251 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v251 + 584) = v193;
      closure #1 in osLogInternal(_:log:type:)(v251 + 576, v251 + 808, v251 + 816, v251 + 824);
      *(v251 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v251 + 584) = v194;
      closure #1 in osLogInternal(_:log:type:)(v251 + 576, v251 + 808, v251 + 816, v251 + 824);
      *(v251 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v251 + 584) = v195;
      closure #1 in osLogInternal(_:log:type:)(v251 + 576, v251 + 808, v251 + 816, v251 + 824);
      _os_log_impl(&_mh_execute_header, oslog, v198, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
      destroyStorage<A>(_:count:)(v171);
      destroyStorage<A>(_:count:)(v172);
      UnsafeMutablePointer.deallocate()();
    }

    v167 = *(v251 + 880);
    v168 = *(v251 + 848);
    v166 = *(v251 + 856);

    (*(v166 + 8))(v167, v168);
    for (i = 0; i < v175; ++i)
    {
      v164 = *(v251 + 1112);
      v165 = *(v251 + 1104);
      v162 = *(v251 + 1024);
      v163 = *(v251 + 1008);
      v31 = *(v251 + 920);
      v161 = *kMediaML_throughputStdDev.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v165(v162, v163);
      if (!*(v251 + 456))
      {
        goto LABEL_36;
      }

      outlined init with take of Any(v251 + 432, v251 + 400);
      swift_dynamicCast();
      *(v251 + 800) = *(v251 + 792);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();

      if (__OFADD__(i, 1))
      {
        goto LABEL_57;
      }

      *(v251 + 704) = i + 1;
    }

    v159 = *(v251 + 696);

    v160 = Array.count.getter();
    *(v251 + 712) = v160;

    v32 = v160;
    if (__OFSUB__(v160, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto _swift_task_switch;
    }

    *(v251 + 728) = v160 - 1;
    *(v251 + 736) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
    min<A>(_:_:)();
    v158 = *(v251 + 720);
    *(v251 + 744) = v158;
    if (v160 > 0)
    {
      if (v158 < 0)
      {
        goto LABEL_36;
      }

      *(v251 + 496) = 0;
      *(v251 + 504) = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
      Collection<>.makeIterator()();
      *(v251 + 1160) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
      IndexingIterator.next()();
      if ((*(v251 + 600) & 1) == 0)
      {
        break;
      }
    }

    v149 = *(v251 + 920);
    v148 = *(v251 + 888);
    v147 = *(v251 + 896);
    outlined destroy of [Double]((v251 + 696));
    (*(v147 + 8))(v149, v148);
    outlined destroy of Any?((v251 + 176));
  }

  *(v251 + 752) = *(v251 + 592);
  outlined init with copy of Any?(v251 + 48, v251 + 240);
  if (!*(v251 + 264))
  {
    goto LABEL_36;
  }

  outlined init with take of Any(v251 + 240, v251 + 208);
  swift_dynamicCast();
  v156 = *(v251 + 512);
  v157 = *(v251 + 520);
  *(v251 + 1168) = v157;
  *(v251 + 528) = v156;
  *(v251 + 536) = v157;
  outlined init with copy of Any?(v251 + 112, v251 + 304);
  if (!*(v251 + 328))
  {
    goto LABEL_36;
  }

  outlined init with take of Any(v251 + 304, v251 + 272);
  swift_dynamicCast();
  v154 = *(v251 + 544);
  v155 = *(v251 + 552);
  *(v251 + 1176) = v155;
  *(v251 + 560) = v154;
  *(v251 + 568) = v155;
  outlined init with copy of Any?(v251 + 176, v251 + 368);
  if (!*(v251 + 392))
  {
LABEL_36:
    _assertionFailure(_:_:file:line:flags:)();
    return;
  }

  v152 = *(v251 + 1096);
  v153 = *(v251 + 1088);
  outlined init with take of Any(v251 + 368, v251 + 336);
  swift_dynamicCast();
  v150 = *(v251 + 760);
  *(v251 + 768) = v150;
  v36 = *(v251 + 696);
  Array.subscript.getter();
  v151 = *(v251 + 776);
  *(v251 + 784) = v151;
  *(v251 + 1184) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO cellStdDev (app_name, carrier, bars, throughput_stddev, training_date) VALUES (?, ?, ?, ?, ?)", 0x69uLL, 1);

  v37 = swift_task_alloc();
  v33 = v153;
  *(v251 + 1200) = v37;
  v37[2] = v156;
  v37[3] = v157;
  v37[4] = v154;
  v37[5] = v155;
  v37[6] = v150;
  v37[7] = v151;
  v37[8] = v152;
  v38 = *(v251 + 608);
  v32 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);

uint64_t MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[145];
  v5 = v0[136];
  v0[76] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v3, v2, partial apply for closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:));
  v0[151] = v4;
  if (v4)
  {
    v9 = v14[76];
    v8 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  }

  else
  {
    v6 = v14[150];
    v13 = v14[149];
    v12 = v14[147];
    v11 = v14[146];

    v7 = v14[76];
    v8 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  }

  return _swift_task_switch(v8, 0);
}

{
  v194 = v0;
  v1 = v0[147];
  v187 = v0[146];
  v0[76] = v0;

  for (i = v0[151]; ; i = 0)
  {
    *(v186 + 1160) = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v186 + 600) & 1) == 0)
    {
      *(v186 + 752) = *(v186 + 592);
      outlined init with copy of Any?(v186 + 48, v186 + 240);
      if (!*(v186 + 264))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v186 + 240, v186 + 208);
      swift_dynamicCast();
      v108 = *(v186 + 512);
      v109 = *(v186 + 520);
      *(v186 + 1168) = v109;
      *(v186 + 528) = v108;
      *(v186 + 536) = v109;
      outlined init with copy of Any?(v186 + 112, v186 + 304);
      if (!*(v186 + 328))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v186 + 304, v186 + 272);
      swift_dynamicCast();
      v106 = *(v186 + 544);
      v107 = *(v186 + 552);
      *(v186 + 1176) = v107;
      *(v186 + 560) = v106;
      *(v186 + 568) = v107;
      outlined init with copy of Any?(v186 + 176, v186 + 368);
      if (!*(v186 + 392))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v104 = *(v186 + 1096);
      v105 = *(v186 + 1088);
      outlined init with take of Any(v186 + 368, v186 + 336);
      swift_dynamicCast();
      v102 = *(v186 + 760);
      *(v186 + 768) = v102;
      v25 = *(v186 + 696);
      Array.subscript.getter();
      v103 = *(v186 + 776);
      *(v186 + 784) = v103;
      *(v186 + 1184) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO cellStdDev (app_name, carrier, bars, throughput_stddev, training_date) VALUES (?, ?, ?, ?, ?)", 0x69uLL, 1);

      v26 = swift_task_alloc();
      v21 = v105;
      *(v186 + 1200) = v26;
      v26[2] = v108;
      v26[3] = v109;
      v26[4] = v106;
      v26[5] = v107;
      v26[6] = v102;
      v26[7] = v103;
      v26[8] = v104;
      v27 = *(v186 + 608);
      v20 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);

      return _swift_task_switch(v20, v21);
    }

    v101 = i;
LABEL_38:
    v100 = *(v186 + 920);
    v99 = *(v186 + 888);
    v98 = *(v186 + 896);
    outlined destroy of [Double]((v186 + 696));
    (*(v98 + 8))(v100, v99);
    outlined destroy of Any?((v186 + 176));
    v168 = v101;
LABEL_7:
    v13 = *(v186 + 984);
    v14 = *(v186 + 976);
    IndexingIterator.next()();
    if (*(v186 + 168) == 1)
    {
      break;
    }

    v151 = *(v186 + 952);
    v15 = *(v186 + 928);
    *(v186 + 176) = *(v186 + 144);
    *(v186 + 192) = *(v186 + 160);
    v16 = kMediaML_bars.unsafeMutableAddressor();
    countAndFlagsBits = v16->_countAndFlagsBits;
    object = v16->_object;

    *(swift_task_alloc() + 16) = v186 + 176;
    DataFrame.filter<A>(on:_:_:)();
    if (v168)
    {
    }

    v125 = *(v186 + 952);
    v131 = *(v186 + 920);
    v135 = *(v186 + 912);
    v134 = *(v186 + 904);
    v136 = *(v186 + 888);
    v126 = *(v186 + 880);
    v129 = *(v186 + 848);
    v130 = *(v186 + 896);
    v128 = *(v186 + 856);

    DataFrame.init(_:)();
    v127 = DataFrame.shape.getter();
    *(v186 + 688) = v127;
    *(v186 + 696) = _allocateUninitializedArray<A>(_:)();
    *(v186 + 704) = 0;
    v17 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v128 + 16))(v126, v17, v129);
    v132 = *(v130 + 16);
    v132(v135, v131, v136);
    v133 = *(v130 + 80);
    v138 = swift_allocObject();
    v137 = *(v130 + 32);
    v137(v138 + ((v133 + 16) & ~v133), v135, v136);
    v132(v135, v131, v136);
    v140 = swift_allocObject();
    v137(v140 + ((v133 + 16) & ~v133), v135, v136);
    oslog = Logger.logObject.getter();
    v150 = static os_log_type_t.debug.getter();
    v142 = swift_allocObject();
    *(v142 + 16) = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = 8;
    v139 = swift_allocObject();
    *(v139 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v139 + 24) = v138;
    v144 = swift_allocObject();
    *(v144 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v144 + 24) = v139;
    v145 = swift_allocObject();
    *(v145 + 16) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = 8;
    v141 = swift_allocObject();
    *(v141 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v141 + 24) = v140;
    v147 = swift_allocObject();
    *(v147 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v147 + 24) = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v148 = v18;

    *v148 = closure #1 in OSLogArguments.append(_:)partial apply;
    v148[1] = v142;

    v148[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v148[3] = v143;

    v148[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v148[5] = v144;

    v148[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v148[7] = v145;

    v148[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v148[9] = v146;

    v148[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v148[11] = v147;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v150))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v123 = createStorage<A>(capacity:type:)(0);
      v124 = createStorage<A>(capacity:type:)(0);
      *(v186 + 808) = buf;
      *(v186 + 816) = v123;
      *(v186 + 824) = v124;
      serialize(_:at:)(0, (v186 + 808));
      serialize(_:at:)(2, (v186 + 808));
      *(v186 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v186 + 584) = v142;
      closure #1 in osLogInternal(_:log:type:)(v186 + 576, v186 + 808, v186 + 816, v186 + 824);
      *(v186 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v186 + 584) = v143;
      closure #1 in osLogInternal(_:log:type:)(v186 + 576, v186 + 808, v186 + 816, v186 + 824);
      *(v186 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v186 + 584) = v144;
      closure #1 in osLogInternal(_:log:type:)(v186 + 576, v186 + 808, v186 + 816, v186 + 824);
      *(v186 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v186 + 584) = v145;
      closure #1 in osLogInternal(_:log:type:)(v186 + 576, v186 + 808, v186 + 816, v186 + 824);
      *(v186 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v186 + 584) = v146;
      closure #1 in osLogInternal(_:log:type:)(v186 + 576, v186 + 808, v186 + 816, v186 + 824);
      *(v186 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v186 + 584) = v147;
      closure #1 in osLogInternal(_:log:type:)(v186 + 576, v186 + 808, v186 + 816, v186 + 824);
      _os_log_impl(&_mh_execute_header, oslog, v150, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
      destroyStorage<A>(_:count:)(v123);
      destroyStorage<A>(_:count:)(v124);
      UnsafeMutablePointer.deallocate()();
    }

    v119 = *(v186 + 880);
    v120 = *(v186 + 848);
    v118 = *(v186 + 856);

    (*(v118 + 8))(v119, v120);
    for (j = 0; j < v127; ++j)
    {
      v116 = *(v186 + 1112);
      v117 = *(v186 + 1104);
      v114 = *(v186 + 1024);
      v115 = *(v186 + 1008);
      v19 = *(v186 + 920);
      v113 = *kMediaML_throughputStdDev.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v117(v114, v115);
      if (!*(v186 + 456))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v186 + 432, v186 + 400);
      swift_dynamicCast();
      *(v186 + 800) = *(v186 + 792);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();

      if (__OFADD__(j, 1))
      {
        goto LABEL_51;
      }

      *(v186 + 704) = j + 1;
    }

    v111 = *(v186 + 696);

    v112 = Array.count.getter();
    *(v186 + 712) = v112;

    v20 = v112;
    if (__OFSUB__(v112, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      return _swift_task_switch(v20, v21);
    }

    *(v186 + 728) = v112 - 1;
    *(v186 + 736) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
    min<A>(_:_:)();
    v110 = *(v186 + 720);
    *(v186 + 744) = v110;
    if (v112 <= 0)
    {
      v101 = 0;
      goto LABEL_38;
    }

    if (v110 < 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v186 + 496) = 0;
    *(v186 + 504) = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
  }

  v92 = *(v186 + 1152);
  v93 = *(v186 + 1144);
  v94 = *(v186 + 1056);
  v91 = *(v186 + 1040);
  v96 = *(v186 + 928);
  v97 = *(v186 + 888);
  v95 = *(v186 + 896);
  outlined destroy of IndexingIterator<AnyColumnSlice>(*(v186 + 984));
  v93(v94, v91);
  (*(v95 + 8))(v96, v97);
  outlined destroy of Any?((v186 + 112));
  for (k = v168; ; k = 0)
  {
    v7 = *(v186 + 992);
    v8 = *(v186 + 976);
    IndexingIterator.next()();
    if (*(v186 + 104) != 1)
    {
      v9 = *(v186 + 968);
      v169 = *(v186 + 960);
      *(v186 + 112) = *(v186 + 80);
      *(v186 + 128) = *(v186 + 96);
      v10 = kMediaML_carrier.unsafeMutableAddressor();
      v171 = v10->_countAndFlagsBits;
      v170 = v10->_object;

      *(swift_task_alloc() + 16) = v186 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      if (k)
      {
      }

      v166 = *(v186 + 1136);
      v163 = *(v186 + 1128);
      v164 = *(v186 + 1120);
      v159 = *(v186 + 1112);
      v160 = *(v186 + 1104);
      v156 = *(v186 + 1072);
      v162 = *(v186 + 1056);
      v167 = *(v186 + 1040);
      v157 = *(v186 + 1032);
      v158 = *(v186 + 1008);
      v165 = *(v186 + 984);
      v154 = *(v186 + 960);
      v11 = *(v186 + 928);

      DataFrame.init(_:)();
      v12 = kMediaML_bars.unsafeMutableAddressor();
      v155 = v12->_countAndFlagsBits;
      v161 = v12->_object;

      DataFrame.subscript.getter();
      AnyColumn.distinct()();
      v160(v157, v158);

      v164(v156, v162, v167);
      Collection<>.makeIterator()();
      v168 = 0;
      goto LABEL_7;
    }

    v85 = *(v186 + 1152);
    v86 = *(v186 + 1144);
    v87 = *(v186 + 1064);
    v84 = *(v186 + 1040);
    v89 = *(v186 + 968);
    v90 = *(v186 + 936);
    v88 = *(v186 + 944);
    outlined destroy of IndexingIterator<AnyColumnSlice>(*(v186 + 992));
    v86(v87, v84);
    (*(v88 + 8))(v89, v90);
    outlined destroy of Any?((v186 + 48));
    v28 = *(v186 + 1000);
    v29 = *(v186 + 976);
    IndexingIterator.next()();
    if (*(v186 + 40) == 1)
    {
      break;
    }

    v183 = *(v186 + 968);
    v2 = *(v186 + 832);
    *(v186 + 48) = *(v186 + 16);
    *(v186 + 64) = *(v186 + 32);
    v3 = kMediaML_appName.unsafeMutableAddressor();
    v185 = v3->_countAndFlagsBits;
    v184 = v3->_object;

    *(swift_task_alloc() + 16) = v186 + 48;
    DataFrame.filter<A>(on:_:_:)();
    if (k)
    {
    }

    v180 = *(v186 + 1136);
    v177 = *(v186 + 1128);
    v178 = *(v186 + 1120);
    v173 = *(v186 + 1072);
    v176 = *(v186 + 1064);
    v181 = *(v186 + 1040);
    v179 = *(v186 + 992);
    v4 = *(v186 + 968);
    v174 = *(v186 + 1048);

    v5 = kMediaML_carrier.unsafeMutableAddressor();
    v172 = v5->_countAndFlagsBits;
    v175 = v5->_object;

    DataFrame.Slice.subscript.getter();
    AnyColumnSlice.distinct()();
    v6 = *(v174 + 8);
    *(v186 + 1144) = v6;
    *(v186 + 1152) = (v174 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v173, v181);

    v178(v173, v176, v181);
    Collection<>.makeIterator()();
  }

  v68 = *(v186 + 912);
  v67 = *(v186 + 904);
  v69 = *(v186 + 888);
  v30 = *(v186 + 872);
  v62 = *(v186 + 848);
  v64 = *(v186 + 832);
  v63 = *(v186 + 896);
  v61 = *(v186 + 856);
  outlined destroy of IndexingIterator<AnyColumnSlice>(*(v186 + 1000));
  v31 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v61 + 16))(v30, v31, v62);
  v65 = *(v63 + 16);
  v65(v68, v64, v69);
  v66 = *(v63 + 80);
  v71 = swift_allocObject();
  v70 = *(v63 + 32);
  v70(v71 + ((v66 + 16) & ~v66), v68, v69);
  v65(v68, v64, v69);
  v73 = swift_allocObject();
  v70(v73 + ((v66 + 16) & ~v66), v68, v69);
  log = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 8;
  v72 = swift_allocObject();
  *(v72 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  *(v72 + 24) = v71;
  v77 = swift_allocObject();
  *(v77 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v77 + 24) = v72;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v74 = swift_allocObject();
  *(v74 + 16) = partial apply for implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  *(v74 + 24) = v73;
  v80 = swift_allocObject();
  *(v80 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v80 + 24) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v81 = v32;

  *v81 = closure #1 in OSLogArguments.append(_:)partial apply;
  v81[1] = v75;

  v81[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v81[3] = v76;

  v81[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v81[5] = v77;

  v81[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v81[7] = v78;

  v81[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v81[9] = v79;

  v81[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v81[11] = v80;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v83))
  {
    v58 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v59 = createStorage<A>(capacity:type:)(0);
    v60 = createStorage<A>(capacity:type:)(0);
    v189 = v58;
    v190 = v59;
    v191 = v60;
    serialize(_:at:)(0, &v189);
    serialize(_:at:)(2, &v189);
    v192 = closure #1 in OSLogArguments.append(_:)partial apply;
    v193 = v75;
    closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
    if (k)
    {
    }

    v192 = closure #1 in OSLogArguments.append(_:)partial apply;
    v193 = v76;
    closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
    v192 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v193 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
    v192 = closure #1 in OSLogArguments.append(_:)partial apply;
    v193 = v78;
    closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
    v192 = closure #1 in OSLogArguments.append(_:)partial apply;
    v193 = v79;
    closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
    v192 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v193 = v80;
    closure #1 in osLogInternal(_:log:type:)(&v192, &v189, &v190, &v191);
    _os_log_impl(&_mh_execute_header, log, v83, "Returning a dataframe of size=%ld,%ld", v58, 0x16u);
    destroyStorage<A>(_:count:)(v59);
    destroyStorage<A>(_:count:)(v60);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v40 = *(v186 + 1080);
  v41 = *(v186 + 1072);
  v42 = *(v186 + 1064);
  v43 = *(v186 + 1056);
  v38 = *(v186 + 1040);
  v44 = *(v186 + 1032);
  v45 = *(v186 + 1024);
  v46 = *(v186 + 1000);
  v47 = *(v186 + 992);
  v48 = *(v186 + 984);
  v49 = *(v186 + 968);
  v50 = *(v186 + 960);
  v51 = *(v186 + 952);
  v52 = *(v186 + 928);
  v53 = *(v186 + 920);
  v54 = *(v186 + 912);
  v55 = *(v186 + 880);
  v56 = *(v186 + 872);
  v57 = *(v186 + 864);
  v36 = *(v186 + 848);
  v39 = *(v186 + 1088);
  v37 = *(v186 + 1048);
  v35 = *(v186 + 856);

  (*(v35 + 8))(v56, v36);
  (*(v37 + 8))(v40, v38);

  v33 = *(*(v186 + 608) + 8);
  v34 = *(v186 + 608);

  return v33();
}

{
  v1 = v0[150];
  v7 = v0[149];
  v8 = v0[147];
  v9 = v0[146];
  v24 = v0[144];
  v25 = v0[143];
  v27 = v0[136];
  v26 = v0[135];
  v18 = v0[133];
  v13 = v0[132];
  v23 = v0[130];
  v22 = v0[125];
  v17 = v0[124];
  v12 = v0[123];
  v20 = v0[121];
  v19 = v0[118];
  v21 = v0[117];
  v14 = v0[116];
  v11 = v0[115];
  v10 = v0[112];
  v15 = v0[111];
  v0[76] = v0;

  outlined destroy of [Double](v0 + 87);
  v16 = *(v10 + 8);
  v16(v11, v15);
  outlined destroy of Any?(v0 + 22);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v12);
  v25(v13, v23);
  v16(v14, v15);
  outlined destroy of Any?(v0 + 14);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v17);
  v25(v18, v23);
  (*(v19 + 8))(v20, v21);
  outlined destroy of Any?(v0 + 6);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v22);
  v25(v26, v23);

  v2 = v0[151];
  v3 = v0[135];
  v28 = v0[134];
  v29 = v0[133];
  v30 = v0[132];
  v31 = v0[129];
  v32 = v0[128];
  v33 = v0[125];
  v34 = v0[124];
  v35 = v0[123];
  v36 = v0[121];
  v37 = v0[120];
  v38 = v0[119];
  v39 = v0[116];
  v40 = v0[115];
  v41 = v0[114];
  v42 = v0[110];
  v43 = v0[109];
  v44 = v0[108];

  v4 = *(v0[76] + 8);
  v5 = v0[76];

  return v4();
}

uint64_t MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[4] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v2[9] = 0;
  v2[6] = a1;
  v2[7] = v1;
  v3 = v2[4];
  return _swift_task_switch(MediaMLWorker.deletePreviousCellStdDevDB(modelStats:), 0);
}

void MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)()
{
  v1 = v0[12];
  v0[4] = v0;
  v20 = MediaMLWorker.database.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.deletePreviousCellStdDevDB(modelStats:), 0, v20, v2, v2);
  v0[13] = 0;

  v18 = v19[8];
  v19[14] = v18;
  if (v18)
  {
    v15 = v19[11];
    v19[9] = v18;
    v19[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v19[3] = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM cellStdDev WHERE training_date < ", 0x2DuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v19[5] = *(v15 + 72);
    v19[10] = v19[5];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    v17 = v19[2];
    v16 = v19[3];

    outlined destroy of DefaultStringInterpolation((v19 + 2));
    v19[15] = String.init(stringInterpolation:)();
    v19[16] = v6;
    v7 = v19[4];

    _swift_task_switch(MediaMLWorker.deletePreviousCellStdDevDB(modelStats:), v18);
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v22 = SQLError.init(code:desc:)(-3, v8);
    code = v22.code;
    desc_8 = v22.desc.value._countAndFlagsBits;
    object = v22.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v9 = code;
    *(v9 + 8) = desc_8;
    *(v9 + 16) = object;
    swift_willThrow();
    v10 = *(v19[4] + 8);
    v11 = v19[4];

    v10();
  }
}

uint64_t MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  *(v0 + 32) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 136) = v4;
  if (v4)
  {
    v8 = *(v10 + 32);
    v7 = MediaMLWorker.deletePreviousCellStdDevDB(modelStats:);
  }

  else
  {
    v5 = *(v10 + 128);

    v6 = *(v10 + 32);
    v7 = MediaMLWorker.deletePreviousCellStdDevDB(modelStats:);
  }

  return _swift_task_switch(v7, 0);
}

{
  v1 = *(v0 + 112);
  *(v0 + 32) = v0;

  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);

  return v2();
}

{
  v1 = v0[16];
  v6 = v0[14];
  v0[4] = v0;

  v2 = v0[17];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  outlined init with copy of TaskPriority?(v55, v58);
  v59 = type metadata accessor for TaskPriority();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    outlined destroy of TaskPriority?(v58);
    v45 = 0;
  }

  else
  {
    v44 = TaskPriority.rawValue.getter();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = String.utf8CString.getter();

    v8 = *(v27 + 16);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    outlined destroy of TaskPriority?(v55);

    v19 = v17;
  }

  else
  {

    outlined destroy of TaskPriority?(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v12 = a8;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v13 = *(a5 - 8);
  v14 = a5 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v11 - v15;
  result = v9();
  v17 = v8;
  if (v8)
  {
    return (*(v13 + 32))(v12, v16, v11);
  }

  return result;
}

uint64_t closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, &type metadata for Int, &protocol witness table for Int);
  if (v2)
  {

    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #3 in MediaMLWorker.checkAndPruneProcessedWifiDB()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  *v3 = a2;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t implicit closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB()(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t closure #4 in MediaMLWorker.checkAndPruneProcessedWifiDB()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v2;
  v3 = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v6[3] = &type metadata for Int;
  v6[4] = &protocol witness table for Int;
  *v6 = v3;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, &type metadata for Int, &protocol witness table for Int);
  if (v2)
  {

    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #3 in MediaMLWorker.checkAndPruneProcessedCellDB()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  *v3 = a2;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t implicit closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB()(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t closure #4 in MediaMLWorker.checkAndPruneProcessedCellDB()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v2;
  v3 = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v6[3] = &type metadata for Int;
  v6[4] = &protocol witness table for Int;
  *v6 = v3;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t *closure #2 in MediaMLWorker.getRawCellDataFromDB()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v107 = partial apply for closure #1 in closure #2 in MediaMLWorker.getRawCellDataFromDB();
  v125 = 0;
  v124 = 0;
  v96 = &v123;
  v123 = 0;
  v97 = &v122;
  v122 = 0;
  v98 = &v121;
  v121 = 0;
  v99 = &v120;
  v120 = 0;
  v100 = &v119;
  v119 = 0;
  v101 = &v118;
  v118 = 0;
  v102 = &v117;
  v117 = 0;
  v103 = &v116;
  v116 = 0;
  v104 = &v115;
  v115 = 0;
  v105 = &v114;
  v114 = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v77 = &v16 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v78);
  v82 = &v16 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v83);
  v87 = &v16 - v86;
  v95 = 0;
  v88 = type metadata accessor for DataFrame();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v92 = &v16 - v91;
  v125 = &v16 - v91;
  v124 = a1;
  v93 = &type metadata for String;
  v123 = _allocateUninitializedArray<A>(_:)();
  v122 = _allocateUninitializedArray<A>(_:)();
  v94 = &type metadata for Int;
  v121 = _allocateUninitializedArray<A>(_:)();
  v120 = _allocateUninitializedArray<A>(_:)();
  v119 = _allocateUninitializedArray<A>(_:)();
  v118 = _allocateUninitializedArray<A>(_:)();
  v117 = _allocateUninitializedArray<A>(_:)();
  v116 = _allocateUninitializedArray<A>(_:)();
  v115 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v106;
  v114 = v3;
  v110[2] = v96;
  v110[3] = v97;
  v110[4] = v98;
  v110[5] = v99;
  v110[6] = v100;
  v110[7] = v101;
  v110[8] = v102;
  v110[9] = v103;
  v110[10] = v104;
  v110[11] = v105;
  (*(*a1 + 144))(v107, v110);
  v108 = v4;
  v109 = v4;
  if (v4)
  {
    v16 = v109;
    outlined destroy of [Int](&v114);
    outlined destroy of [Double](&v115);
    outlined destroy of [Int](&v116);
    outlined destroy of [Int](&v117);
    outlined destroy of [Int](&v118);
    outlined destroy of [Int](&v119);
    outlined destroy of [Int](&v120);
    outlined destroy of [Int](&v121);
    outlined destroy of [String](&v122);
    return outlined destroy of [String](&v123);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_carrier.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v71 = &v123;
    v17 = v123;

    v19 = &v113;
    v113 = v17;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v25 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v26 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v28 = *(v84 + 8);
    v27 = v84 + 8;
    v28(v87, v83);
    v6 = kMediaML_appName.unsafeMutableAddressor();
    v21 = v6->_countAndFlagsBits;
    v23 = v6->_object;

    v70 = &v122;
    v22 = v122;

    v112[1] = v22;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v28(v87, v83);
    v7 = kMediaML_binnedRssi.unsafeMutableAddressor();
    v32 = v7->_countAndFlagsBits;
    v30 = v7->_object;

    v69 = &v121;
    v29 = v121;

    v31 = v112;
    v112[0] = v29;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v58 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v59 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61 = *(v79 + 8);
    v60 = v79 + 8;
    v61(v82, v78);
    v8 = kMediaML_binnedRsrp.unsafeMutableAddressor();
    v33 = v8->_countAndFlagsBits;
    v35 = v8->_object;

    v68 = &v120;
    v34 = v120;

    v111[5] = v34;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61(v82, v78);
    v9 = kMediaML_binnedRsrq.unsafeMutableAddressor();
    v36 = v9->_countAndFlagsBits;
    v38 = v9->_object;

    v67 = &v119;
    v37 = v119;

    v111[4] = v37;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61(v82, v78);
    v10 = kMediaML_binnedRscp.unsafeMutableAddressor();
    v39 = v10->_countAndFlagsBits;
    v41 = v10->_object;

    v66 = &v118;
    v40 = v118;

    v111[3] = v40;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61(v82, v78);
    v11 = kMediaML_binnedSnr.unsafeMutableAddressor();
    v42 = v11->_countAndFlagsBits;
    v44 = v11->_object;

    v65 = &v117;
    v43 = v117;

    v111[2] = v43;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61(v82, v78);
    v12 = kMediaML_bars.unsafeMutableAddressor();
    v45 = v12->_countAndFlagsBits;
    v47 = v12->_object;

    v64 = &v116;
    v46 = v116;

    v111[1] = v46;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61(v82, v78);
    v13 = kMediaML_throughputTrue.unsafeMutableAddressor();
    v52 = v13->_countAndFlagsBits;
    v49 = v13->_object;

    v63 = &v115;
    v48 = v115;

    v50 = v111;
    v111[0] = v48;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v53 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v74 + 8))(v77, v73);
    v14 = kMediaML_count.unsafeMutableAddressor();
    v54 = v14->_countAndFlagsBits;
    v56 = v14->_object;

    v62 = &v114;
    v55 = v114;

    v110[12] = v55;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v61(v82, v78);
    (*(v89 + 32))(v72, v92, v88);
    outlined destroy of [Int](v62);
    outlined destroy of [Double](v63);
    outlined destroy of [Int](v64);
    outlined destroy of [Int](v65);
    outlined destroy of [Int](v66);
    outlined destroy of [Int](v67);
    outlined destroy of [Int](v68);
    outlined destroy of [Int](v69);
    outlined destroy of [String](v70);
    return outlined destroy of [String](v71);
  }
}