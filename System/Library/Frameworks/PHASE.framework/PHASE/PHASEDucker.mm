@interface PHASEDucker
- (PHASEDucker)init;
- (PHASEDucker)initWithEngine:(id)engine sourceGroups:(id)groups targetGroups:(id)targetGroups gain:(double)gain gainHighFrequency:(double)frequency gainLowFrequency:(double)lowFrequency attackTime:(double)time releaseTime:(double)self0 attackCurve:(int64_t)self1 releaseCurve:(int64_t)self2;
- (void)activate;
- (void)deactivate;
@end

@implementation PHASEDucker

- (PHASEDucker)init
{
  [(PHASEDucker *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDucker)initWithEngine:(id)engine sourceGroups:(id)groups targetGroups:(id)targetGroups gain:(double)gain gainHighFrequency:(double)frequency gainLowFrequency:(double)lowFrequency attackTime:(double)time releaseTime:(double)self0 attackCurve:(int64_t)self1 releaseCurve:(int64_t)self2
{
  curveCopy = curve;
  releaseCurveCopy = releaseCurve;
  v92 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  groupsCopy = groups;
  targetGroupsCopy = targetGroups;
  v83.receiver = self;
  v83.super_class = PHASEDucker;
  v22 = [(PHASEDucker *)&v83 init];
  if (v22)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v23 = groupsCopy;
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
          engine = [v27 engine];
          v29 = engine == engineCopy;

          if (!v29)
          {
            v62 = **(Phase::Logger::GetInstance(v30) + 448);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v27 identifier];
              v64 = identifier;
              uTF8String = [identifier UTF8String];
              *buf = 136315650;
              v86 = "PHASEDucker.mm";
              v87 = 1024;
              v88 = 84;
              v89 = 2080;
              v90 = uTF8String;
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
    v31 = targetGroupsCopy;
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
          engine2 = [v35 engine];
          v37 = engine2 == engineCopy;

          if (!v37)
          {
            v66 = **(Phase::Logger::GetInstance(v38) + 448);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v35 identifier];
              v68 = identifier2;
              uTF8String2 = [identifier2 UTF8String];
              *buf = 136315650;
              v86 = "PHASEDucker.mm";
              v87 = 1024;
              v88 = 95;
              v89 = 2080;
              v90 = uTF8String2;
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
    v22->_gain = PHASEGetPropertyBounded<double>(v44, v45, gain, 0.0, 1.0);

    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = NSStringFromSelector(a2);
    v22->_gainHighFrequency = PHASEGetPropertyBounded<double>(v47, v48, frequency, 0.0, 1.0);

    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = NSStringFromSelector(a2);
    v22->_gainLowFrequency = PHASEGetPropertyBounded<double>(v50, v51, lowFrequency, 0.0, 1.0);

    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = NSStringFromSelector(a2);
    v22->_attackTime = PHASEGetPropertyBounded<double>(v53, v54, time, 0.0, 1.79769313e308);

    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = NSStringFromSelector(a2);
    v22->_releaseTime = PHASEGetPropertyBounded<double>(v56, v57, releaseTime, 0.0, 1.79769313e308);

    objc_storeWeak(&v22->_engine, engineCopy);
    v22->_attackCurve = curveCopy;
    v22->_releaseCurve = releaseCurveCopy;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v22->_identifier;
    v22->_identifier = uUIDString;

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