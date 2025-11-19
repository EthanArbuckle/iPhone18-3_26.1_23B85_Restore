@interface PHASEDucker
- (PHASEDucker)init;
- (PHASEDucker)initWithEngine:(id)a3 sourceGroups:(id)a4 targetGroups:(id)a5 gain:(double)a6 gainHighFrequency:(double)a7 gainLowFrequency:(double)a8 attackTime:(double)a9 releaseTime:(double)a10 attackCurve:(int64_t)a11 releaseCurve:(int64_t)a12;
- (void)activate;
- (void)deactivate;
@end

@implementation PHASEDucker

- (PHASEDucker)init
{
  [(PHASEDucker *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDucker)initWithEngine:(id)a3 sourceGroups:(id)a4 targetGroups:(id)a5 gain:(double)a6 gainHighFrequency:(double)a7 gainLowFrequency:(double)a8 attackTime:(double)a9 releaseTime:(double)a10 attackCurve:(int64_t)a11 releaseCurve:(int64_t)a12
{
  v71 = a11;
  v72 = a12;
  v92 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v74 = a4;
  v73 = a5;
  v83.receiver = self;
  v83.super_class = PHASEDucker;
  v22 = [(PHASEDucker *)&v83 init];
  if (v22)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v23 = v74;
    v24 = [v23 countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v24)
    {
      v25 = *v80;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v80 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v79 + 1) + 8 * i);
          v28 = [v27 engine];
          v29 = v28 == v21;

          if (!v29)
          {
            v62 = **(Phase::Logger::GetInstance(v30) + 448);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [v27 identifier];
              v64 = v63;
              v65 = [v63 UTF8String];
              *buf = 136315650;
              v86 = "PHASEDucker.mm";
              v87 = 1024;
              v88 = 84;
              v89 = 2080;
              v90 = v65;
              _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to initialize ducker: Group %s is from a different engine instance", buf, 0x1Cu);
            }

LABEL_26:
            v61 = 0;
            goto LABEL_27;
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v31 = v73;
    v32 = [v31 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v32)
    {
      v33 = *v76;
      while (2)
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v76 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v75 + 1) + 8 * j);
          v36 = [v35 engine];
          v37 = v36 == v21;

          if (!v37)
          {
            v66 = **(Phase::Logger::GetInstance(v38) + 448);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = [v35 identifier];
              v68 = v67;
              v69 = [v67 UTF8String];
              *buf = 136315650;
              v86 = "PHASEDucker.mm";
              v87 = 1024;
              v88 = 95;
              v89 = 2080;
              v90 = v69;
              _os_log_impl(&dword_23A302000, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to initialize ducker: Group %s is from a different engine instance", buf, 0x1Cu);
            }

            goto LABEL_26;
          }
        }

        v32 = [v31 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v39 = [MEMORY[0x277CBEB98] setWithSet:v23];
    sourceGroups = v22->_sourceGroups;
    v22->_sourceGroups = v39;

    v41 = [MEMORY[0x277CBEB98] setWithSet:v31];
    targetGroups = v22->_targetGroups;
    v22->_targetGroups = v41;

    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = NSStringFromSelector(a2);
    v22->_gain = PHASEGetPropertyBounded<double>(v44, v45, a6, 0.0, 1.0);

    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = NSStringFromSelector(a2);
    v22->_gainHighFrequency = PHASEGetPropertyBounded<double>(v47, v48, a7, 0.0, 1.0);

    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = NSStringFromSelector(a2);
    v22->_gainLowFrequency = PHASEGetPropertyBounded<double>(v50, v51, a8, 0.0, 1.0);

    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = NSStringFromSelector(a2);
    v22->_attackTime = PHASEGetPropertyBounded<double>(v53, v54, a9, 0.0, 1.79769313e308);

    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = NSStringFromSelector(a2);
    v22->_releaseTime = PHASEGetPropertyBounded<double>(v56, v57, a10, 0.0, 1.79769313e308);

    objc_storeWeak(&v22->_engine, v21);
    v22->_attackCurve = v71;
    v22->_releaseCurve = v72;
    v58 = [MEMORY[0x277CCAD78] UUID];
    v59 = [v58 UUIDString];
    identifier = v22->_identifier;
    v22->_identifier = v59;

    v22->_active = 0;
  }

  v61 = v22;
LABEL_27:

  return v61;
}

- (void)activate
{

  JUMPOUT(0x23EE864A0);
}

- (void)deactivate
{

  JUMPOUT(0x23EE864A0);
}

@end