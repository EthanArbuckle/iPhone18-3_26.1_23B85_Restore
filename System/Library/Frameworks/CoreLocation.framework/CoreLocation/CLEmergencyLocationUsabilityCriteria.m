@interface CLEmergencyLocationUsabilityCriteria
- (CLEmergencyLocationUsabilityCriteria)init;
- (void)printUsabilityCriteria:(id)a3;
@end

@implementation CLEmergencyLocationUsabilityCriteria

- (CLEmergencyLocationUsabilityCriteria)init
{
  v3.receiver = self;
  v3.super_class = CLEmergencyLocationUsabilityCriteria;
  result = [(CLEmergencyLocationUsabilityCriteria *)&v3 init];
  if (result)
  {
    *&result->_vuncCheckRequiredForUsability = 256;
    *&result->_maxUsableAge = xmmword_19BA8D710;
    result->_maxUsableVunc = 30.0;
    result->_minUsableIntegrity = 50;
  }

  return result;
}

- (void)printUsabilityCriteria:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CLEmergencyLocationUsabilityCriteria *)self vuncCheckRequiredForUsability];
    v7 = [(CLEmergencyLocationUsabilityCriteria *)self altitudeStitchingEnabled];
    [(CLEmergencyLocationUsabilityCriteria *)self maxUsableAge];
    v9 = v8;
    [(CLEmergencyLocationUsabilityCriteria *)self maxUsableHunc];
    v11 = v10;
    [(CLEmergencyLocationUsabilityCriteria *)self maxUsableVunc];
    *buf = 138544898;
    v17 = a3;
    v18 = 1026;
    v19 = v6;
    v20 = 1026;
    v21 = v7;
    v22 = 2050;
    v23 = v9;
    v24 = 2050;
    v25 = v11;
    v26 = 2050;
    v27 = v12;
    v28 = 1026;
    v29 = [(CLEmergencyLocationUsabilityCriteria *)self minUsableIntegrity];
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@,vuncCheckRequiredForUsability,%{public}d,altitudeStitchingEnabled,%{public}d,maxUsableAge,%{public}f,maxUsableHunc,%{public}f,maxUsableVunc,%{public}f,minUsableIntegrity,%{public}d", buf, 0x3Cu);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    [(CLEmergencyLocationUsabilityCriteria *)self vuncCheckRequiredForUsability];
    [(CLEmergencyLocationUsabilityCriteria *)self altitudeStitchingEnabled];
    [(CLEmergencyLocationUsabilityCriteria *)self maxUsableAge];
    [(CLEmergencyLocationUsabilityCriteria *)self maxUsableHunc];
    [(CLEmergencyLocationUsabilityCriteria *)self maxUsableVunc];
    [(CLEmergencyLocationUsabilityCriteria *)self minUsableIntegrity];
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationUsabilityCriteria printUsabilityCriteria:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end