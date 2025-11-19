@interface HKClinicalGateway
- (HKClinicalGateway)initWithDaemonClinicalGateway:(id)a3;
- (id)clinicalSharingGatewayFeature;
@end

@implementation HKClinicalGateway

- (HKClinicalGateway)initWithDaemonClinicalGateway:(id)a3
{
  v5 = a3;
  v6 = [v5 authSchemaDefinitions];
  v71 = 0;
  v7 = [HKClinicalGatewayEndpointSchema endpointSchemasFromDefinitions:v6 error:&v71];
  v8 = v71;

  if (!v7)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v34 = v9;
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      *buf = 138543874;
      v73 = v36;
      v74 = 2114;
      v75 = v37;
      v76 = 2114;
      v77 = v8;
      _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@.%{public}@ error parsing auth schema definitions: %{public}@", buf, 0x20u);
    }
  }

  v10 = [v5 resourceSchemaDefinitions];
  v70 = 0;
  v11 = [HKClinicalGatewayEndpointSchema endpointSchemasFromDefinitions:v10 error:&v70];
  v12 = v70;

  if (!v11)
  {
    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v38 = v13;
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      *buf = 138543874;
      v73 = v40;
      v74 = 2114;
      v75 = v41;
      v76 = 2114;
      v77 = v12;
      _os_log_error_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%{public}@.%{public}@ error parsing resource schema definitions: %{public}@", buf, 0x20u);

      v11 = 0;
    }
  }

  v14 = [v5 featureDefinitions];
  v69 = 0;
  v15 = [HKClinicalGatewayFeature gatewayFeaturesFromDefinitions:v14 error:&v69];
  v16 = v69;

  if (v15)
  {
    v67 = [v15 hk_filter:&stru_1081C8];
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v42 = v17;
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      NSStringFromSelector(a2);
      v46 = v45 = v11;
      *buf = 138543874;
      v73 = v44;
      v74 = 2114;
      v75 = v46;
      v76 = 2114;
      v77 = v16;
      _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%{public}@.%{public}@ error parsing gateway feature definitions: %{public}@", buf, 0x20u);

      v11 = v45;
    }

    v67 = 0;
  }

  v18 = [v5 gatewayVersions];
  v68 = 0;
  v19 = [HKClinicalGatewayReference gatewayReferencesFromDefinitions:v18 error:&v68];
  v20 = v68;

  v21 = v19;
  v65 = v19;
  if (!v19)
  {
    _HKInitializeLogging();
    v22 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v47 = v22;
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(a2);
      *buf = 138543874;
      v73 = v49;
      v74 = 2114;
      v75 = v50;
      v76 = 2114;
      v77 = v20;
      _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@.%{public}@ error parsing gateway version definitions: %{public}@", buf, 0x20u);
    }

    v21 = &__NSArray0__struct;
  }

  v58 = v21;
  v66 = [v5 externalID];
  v62 = [v5 title];
  v60 = [v5 subtitle];
  v59 = [v5 displayableDescription];
  v57 = [v5 phoneNumber];
  v56 = [v5 informationURL];
  v23 = [v5 passwordResetURL];
  v55 = [v5 patientPortalURL];
  v24 = [v5 signupURL];
  v25 = [v5 lastReportedStatus];
  if (v25 >= 4)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v53 = v26;
  v51 = [v5 type];
  [v5 brand];
  v27 = v52 = self;
  v28 = [v5 country];
  v29 = [v5 baseURL];
  [v5 FHIRVersion];
  v30 = v64 = v20;
  if (v7)
  {
    v31 = v7;
  }

  else
  {
    v31 = &__NSArray0__struct;
  }

  v61 = v11;
  if (!v11)
  {
    v11 = &__NSArray0__struct;
  }

  v63 = v7;
  if (v67)
  {
    v32 = v67;
  }

  else
  {
    v32 = &__NSArray0__struct;
  }

  v54 = -[HKClinicalGateway initWithExternalID:title:subtitle:displayableDescription:phoneNumber:informationURL:passwordResetURL:patientPortalURL:signupURL:status:type:brand:country:baseURL:FHIRVersion:authSchemas:resourceSchemas:features:gatewayVersions:minCompatibleAPIVersion:](v52, "initWithExternalID:title:subtitle:displayableDescription:phoneNumber:informationURL:passwordResetURL:patientPortalURL:signupURL:status:type:brand:country:baseURL:FHIRVersion:authSchemas:resourceSchemas:features:gatewayVersions:minCompatibleAPIVersion:", v66, v62, v60, v59, v57, v56, v23, v55, v24, v53, v51, v27, v28, v29, v30, v31, v11, v32, v58, [v5 minCompatibleAPIVersion]);

  return v54;
}

- (id)clinicalSharingGatewayFeature
{
  v2 = [(HKClinicalGateway *)self features];
  v3 = [v2 hk_firstObjectPassingTest:&stru_1081E8];

  return v3;
}

@end