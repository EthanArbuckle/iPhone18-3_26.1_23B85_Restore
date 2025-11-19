@interface CLEmergencyLocationSelectorConfig
- (id)initForFeature:(int64_t)a3 withUpdatesEnabled:(BOOL)a4;
- (void)dealloc;
- (void)printConfiguration;
- (void)setDefaultsForSIP;
@end

@implementation CLEmergencyLocationSelectorConfig

- (id)initForFeature:(int64_t)a3 withUpdatesEnabled:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CLEmergencyLocationSelectorConfig;
  v6 = [(CLEmergencyLocationSelectorConfig *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_firstUpdateEnabled = 0;
    v6->_feature = a3;
    v6->_firstUpdateTimeout = 25.0;
    v6->_periodicUpdatesEnabled = a4;
    v6->_firstLocationUsabilityCriteria = objc_alloc_init(CLEmergencyLocationUsabilityCriteria);
    v7->_locationUpdateUsabilityCriteria = objc_alloc_init(CLEmergencyLocationUsabilityCriteria);
    v7->_firstLocationEarlyReturnEnabled = 1;
    __asm { FMOV            V0.2D, #10.0 }

    *&v7->_firstLocationTimeout = _Q0;
    v7->_locationUpdateMinDelay = 1.0;
    *&v7->_firstLocationMaxEarlyReturnHunc = xmmword_19BA8D720;
    *&v7->_locationUpdateHuncReductionToSendEarly = xmmword_19BA8D730;
    *&v7->_locationUpdateDistanceMovedToSendEarly = xmmword_19BA8D740;
    if (!v7->_feature)
    {
      [(CLEmergencyLocationSelectorConfig *)v7 setDefaultsForSIP];
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorConfig,initForFeature:withUpdatesEnabled:,completed", buf, 2u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelectorConfig initForFeature:withUpdatesEnabled:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v11 = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,CLEmergencyLocationSelectorConfig,self:%{private}@,dealloc,initiated", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v8 = 138477827;
    v9 = self;
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelectorConfig dealloc]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v7.receiver = self;
  v7.super_class = CLEmergencyLocationSelectorConfig;
  [(CLEmergencyLocationSelectorConfig *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setDefaultsForSIP
{
  self->_firstLocationTimeout = 6.0;
  [(CLEmergencyLocationUsabilityCriteria *)self->_firstLocationUsabilityCriteria setMaxUsableHunc:1000.0];
  self->_firstLocationMaxEarlyReturnVunc = 1.79769313e308;
  periodicUpdatesEnabled = self->_periodicUpdatesEnabled;
  self->_firstUpdateEnabled = periodicUpdatesEnabled;
  self->_firstUpdateTimeout = 25.0;
  if (periodicUpdatesEnabled)
  {
    *&self->_locationUpdateTimeout = xmmword_19BA8D750;
    self->_firstLocationMaxEarlyReturnHunc = 165.0;
  }

  else
  {
    self->_firstLocationEarlyReturnEnabled = 0;
  }
}

- (void)printConfiguration
{
  v52 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v3 = qword_1ED519090;
  v4 = "NSt3__110__function6__funcIZN36CLGeoFeatureAccess3dBuildingGeometry23buildingsWithinDistanceERNS_6vectorI25ExtrudedBuildingFootprintNS_9allocatorIS4_EEEERKdSA_SA_E3$_0NS5_ISB_EEFPU37objcproto26GEOMapFeatureAccessRequest11objc_objectU13block_pointerFvP7NSErrorEEEE" + 216;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [CLEmergencyLocationSelectorConfig featureString:[(CLEmergencyLocationSelectorConfig *)self feature]];
    v6 = [(CLEmergencyLocationSelectorConfig *)self firstUpdateEnabled];
    v7 = [(CLEmergencyLocationSelectorConfig *)self periodicUpdatesEnabled];
    [(CLEmergencyLocationSelectorConfig *)self firstLocationMaxEarlyReturnHunc];
    v9 = v8;
    [(CLEmergencyLocationSelectorConfig *)self firstLocationMaxEarlyReturnVunc];
    v10 = -1.0;
    if (v11 != 1.79769313e308)
    {
      [(CLEmergencyLocationSelectorConfig *)self firstLocationMaxEarlyReturnVunc];
      v10 = v12;
    }

    [(CLEmergencyLocationSelectorConfig *)self locationUpdateHuncReductionToSendEarly];
    v14 = v13;
    [(CLEmergencyLocationSelectorConfig *)self locationUpdateDistanceMovedToSendEarly];
    v16 = v15;
    v17 = [(CLEmergencyLocationSelectorConfig *)self firstLocationEarlyReturnEnabled];
    [(CLEmergencyLocationSelectorConfig *)self firstLocationTimeout];
    v19 = v18;
    [(CLEmergencyLocationSelectorConfig *)self locationUpdateTimeout];
    v21 = v20;
    [(CLEmergencyLocationSelectorConfig *)self locationUpdateMinDelay];
    *buf = 138545922;
    v31 = v5;
    v32 = 1026;
    v33 = v6;
    v34 = 1026;
    v35 = v7;
    v36 = 2050;
    v37 = v9;
    v38 = 2050;
    v39 = v10;
    v40 = 2050;
    v41 = v14;
    v42 = 2050;
    v43 = v16;
    v44 = 1026;
    v45 = v17;
    v46 = 2050;
    v47 = v19;
    v48 = 2050;
    v49 = v21;
    v50 = 2050;
    v51 = v22;
    v4 = "est11objc_objectU13block_pointerFvP7NSErrorEEEE";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,printConfiguration,firstUpdateEnabled,%{public}d,periodicUpdatesEnabled,%{public}d,firstLocationMaxEarlyReturnHunc,%{public}f,firstLocationMaxEarlyReturnVunc,%{public}f,locationUpdateHuncReductionToSendEarly,%{public}f,locationUpdateDistanceMovedToSendEarly,%{public}f,firstLocationEarlyReturnEnabled,%{public}d,firstLocationTimeout,%{public}f,locationUpdateTimeout,%{public}f,locationUpdateMinDelay,%{public}f", buf, 0x64u);
  }

  v23 = sub_19B87DD40();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    [CLEmergencyLocationSelectorConfig featureString:[(CLEmergencyLocationSelectorConfig *)self feature]];
    [(CLEmergencyLocationSelectorConfig *)self firstUpdateEnabled];
    [(CLEmergencyLocationSelectorConfig *)self periodicUpdatesEnabled];
    [(CLEmergencyLocationSelectorConfig *)self firstLocationMaxEarlyReturnHunc];
    [(CLEmergencyLocationSelectorConfig *)self firstLocationMaxEarlyReturnVunc];
    if (v24 != 1.79769313e308)
    {
      [(CLEmergencyLocationSelectorConfig *)self firstLocationMaxEarlyReturnVunc];
    }

    [(CLEmergencyLocationSelectorConfig *)self locationUpdateHuncReductionToSendEarly];
    [(CLEmergencyLocationSelectorConfig *)self locationUpdateDistanceMovedToSendEarly];
    [(CLEmergencyLocationSelectorConfig *)self firstLocationEarlyReturnEnabled];
    [(CLEmergencyLocationSelectorConfig *)self firstLocationTimeout];
    [(CLEmergencyLocationSelectorConfig *)self locationUpdateTimeout];
    [(CLEmergencyLocationSelectorConfig *)self locationUpdateMinDelay];
    v29 = *(v4 + 241);
    v25 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLEmergencyLocationSelectorConfig printConfiguration]", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v26 = [(CLEmergencyLocationSelectorConfig *)self firstLocationUsabilityCriteria];
  -[CLEmergencyLocationUsabilityCriteria printUsabilityCriteria:](v26, "printUsabilityCriteria:", [MEMORY[0x1E696AEC0] stringWithFormat:@"#CLELS, %@, first location usability criteria", +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", -[CLEmergencyLocationSelectorConfig feature](self, "feature"))]);
  v27 = [(CLEmergencyLocationSelectorConfig *)self locationUpdateUsabilityCriteria];
  -[CLEmergencyLocationUsabilityCriteria printUsabilityCriteria:](v27, "printUsabilityCriteria:", [MEMORY[0x1E696AEC0] stringWithFormat:@"#CLELS, %@, location update usability criteria", +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", -[CLEmergencyLocationSelectorConfig feature](self, "feature"))]);
  v28 = *MEMORY[0x1E69E9840];
}

@end